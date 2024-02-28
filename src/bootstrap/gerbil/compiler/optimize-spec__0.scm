(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709127358)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl134177_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135305 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl134177_ __tmp135305))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134177_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134177_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134177_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134177_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl134177_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134160_ . _args134162_)
        (let ((__tmp135307
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134162_)
                     (gxc#compile-e__0 _stx134160_)
                     (let ((_arg1134167_ (car _args134162_))
                           (_rest134169_ (cdr _args134162_)))
                       (if (null? _rest134169_)
                           (gxc#compile-e__1 _stx134160_ _arg1134167_)
                           (let ((_arg2134172_ (car _rest134169_))
                                 (_rest134174_ (cdr _rest134169_)))
                             (if (null? _rest134174_)
                                 (gxc#compile-e__2
                                  _stx134160_
                                  _arg1134167_
                                  _arg2134172_)
                                 (apply gxc#compile-e
                                        _stx134160_
                                        _arg1134167_
                                        _arg2134172_
                                        _rest134174_))))))))
              (__tmp135306 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp135307
           gxc#current-compile-methods
           __tmp135306))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134157_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135308 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl134157_ __tmp135308))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134157_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134157_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl134157_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx134140_ . _args134142_)
        (let ((__tmp135310
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134142_)
                     (gxc#compile-e__0 _stx134140_)
                     (let ((_arg1134147_ (car _args134142_))
                           (_rest134149_ (cdr _args134142_)))
                       (if (null? _rest134149_)
                           (gxc#compile-e__1 _stx134140_ _arg1134147_)
                           (let ((_arg2134152_ (car _rest134149_))
                                 (_rest134154_ (cdr _rest134149_)))
                             (if (null? _rest134154_)
                                 (gxc#compile-e__2
                                  _stx134140_
                                  _arg1134147_
                                  _arg2134152_)
                                 (apply gxc#compile-e
                                        _stx134140_
                                        _arg1134147_
                                        _arg2134152_
                                        _rest134154_))))))))
              (__tmp135309 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135310
           gxc#current-compile-methods
           __tmp135309))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134137_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135311 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl134137_ __tmp135311))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134137_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134137_ '%#call gxc#subst-object-refs-call%))
           _tbl134137_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx134120_ . _args134122_)
        (let ((__tmp135313
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134122_)
                     (gxc#compile-e__0 _stx134120_)
                     (let ((_arg1134127_ (car _args134122_))
                           (_rest134129_ (cdr _args134122_)))
                       (if (null? _rest134129_)
                           (gxc#compile-e__1 _stx134120_ _arg1134127_)
                           (let ((_arg2134132_ (car _rest134129_))
                                 (_rest134134_ (cdr _rest134129_)))
                             (if (null? _rest134134_)
                                 (gxc#compile-e__2
                                  _stx134120_
                                  _arg1134127_
                                  _arg2134132_)
                                 (apply gxc#compile-e
                                        _stx134120_
                                        _arg1134127_
                                        _arg2134132_
                                        _rest134134_))))))))
              (__tmp135312 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135313
           gxc#current-compile-methods
           __tmp135312))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx131332_)
        (letrec ((_generate-method-bind131334_
                  (lambda (_$klass134113_
                           _$method-table134114_
                           _id134115_
                           _$id134116_)
                    (let ((_$tmp134118_
                           (let ((__tmp135314 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135314))))
                      (let ((__tmp135362
                             (let ()
                               (declare (not safe))
                               (cons _$id134116_ '())))
                            (__tmp135315
                             (let ((__tmp135316
                                    (let ((__tmp135317
                                           (let ((__tmp135360
                                                  (let ((__tmp135361
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135361)))
                                                 (__tmp135318
                                                  (let ((__tmp135319
                                                         (let ((__tmp135320
                                                                (let ((__tmp135321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135322
                                      (let ((__tmp135323
                                             (let ((__tmp135343
                                                    (let ((__tmp135344
                                                           (let ((__tmp135359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134118_ '())))
                         (__tmp135345
                          (let ((__tmp135346
                                 (let ((__tmp135347
                                        (let ((__tmp135357
                                               (let ((__tmp135358
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135358)))
                                              (__tmp135348
                                               (let ((__tmp135355
                                                      (let ((__tmp135356
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134114_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135356)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135349
                                                      (let ((__tmp135353
                                                             (let ((__tmp135354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134115_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135354)))
                    (__tmp135350
                     (let ((__tmp135351
                            (let ((__tmp135352
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135352))))
                       (declare (not safe))
                       (cons __tmp135351 '()))))
                (declare (not safe))
                (cons __tmp135353 __tmp135350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135355
                                                       __tmp135349))))
                                          (declare (not safe))
                                          (cons __tmp135357 __tmp135348))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135347))))
                            (declare (not safe))
                            (cons __tmp135346 '()))))
                     (declare (not safe))
                     (cons __tmp135359 __tmp135345))))
              (declare (not safe))
              (cons __tmp135344 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135324
                                                    (let ((__tmp135325
                                                           (let ((__tmp135326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135341
                                 (let ((__tmp135342
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134118_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135342)))
                                (__tmp135327
                                 (let ((__tmp135339
                                        (let ((__tmp135340
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134118_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135340)))
                                       (__tmp135328
                                        (let ((__tmp135329
                                               (let ((__tmp135330
                                                      (let ((__tmp135337
                                                             (let ((__tmp135338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135338)))
                    (__tmp135331
                     (let ((__tmp135335
                            (let ((__tmp135336
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135336)))
                           (__tmp135332
                            (let ((__tmp135333
                                   (let ((__tmp135334
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134115_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135334))))
                              (declare (not safe))
                              (cons __tmp135333 '()))))
                       (declare (not safe))
                       (cons __tmp135335 __tmp135332))))
                (declare (not safe))
                (cons __tmp135337 __tmp135331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135330))))
                                          (declare (not safe))
                                          (cons __tmp135329 '()))))
                                   (declare (not safe))
                                   (cons __tmp135339 __tmp135328))))
                            (declare (not safe))
                            (cons __tmp135341 __tmp135327))))
                     (declare (not safe))
                     (cons '%#if __tmp135326))))
              (declare (not safe))
              (cons __tmp135325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135343
                                                     __tmp135324))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135323))))
                                 (declare (not safe))
                                 (cons __tmp135322 '()))))
                          (declare (not safe))
                          (cons '() __tmp135321))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135319 '()))))
                                             (declare (not safe))
                                             (cons __tmp135360 __tmp135318))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135317))))
                               (declare (not safe))
                               (cons __tmp135316 '()))))
                        (declare (not safe))
                        (cons __tmp135362 __tmp135315)))))
                 (_generate-slot-bind131335_
                  (lambda (_$klass134107_ _id134108_ _$id134109_)
                    (let ((_$tmp134111_
                           (let ((__tmp135363 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135363))))
                      (let ((__tmp135400
                             (let ()
                               (declare (not safe))
                               (cons _$id134109_ '())))
                            (__tmp135364
                             (let ((__tmp135365
                                    (let ((__tmp135366
                                           (let ((__tmp135386
                                                  (let ((__tmp135387
                                                         (let ((__tmp135399
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134111_ '())))
                       (__tmp135388
                        (let ((__tmp135389
                               (let ((__tmp135390
                                      (let ((__tmp135397
                                             (let ((__tmp135398
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135398)))
                                            (__tmp135391
                                             (let ((__tmp135395
                                                    (let ((__tmp135396
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135396)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135392
                                                    (let ((__tmp135393
                                                           (let ((__tmp135394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134108_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135394))))
              (declare (not safe))
              (cons __tmp135393 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135395
                                                     __tmp135392))))
                                        (declare (not safe))
                                        (cons __tmp135397 __tmp135391))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135390))))
                          (declare (not safe))
                          (cons __tmp135389 '()))))
                   (declare (not safe))
                   (cons __tmp135399 __tmp135388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135387 '())))
                                                 (__tmp135367
                                                  (let ((__tmp135368
                                                         (let ((__tmp135369
                                                                (let ((__tmp135384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135385
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134111_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135385)))
                              (__tmp135370
                               (let ((__tmp135382
                                      (let ((__tmp135383
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134111_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135383)))
                                     (__tmp135371
                                      (let ((__tmp135372
                                             (let ((__tmp135373
                                                    (let ((__tmp135380
                                                           (let ((__tmp135381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135381)))
                  (__tmp135374
                   (let ((__tmp135378
                          (let ((__tmp135379
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135379)))
                         (__tmp135375
                          (let ((__tmp135376
                                 (let ((__tmp135377
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134108_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135377))))
                            (declare (not safe))
                            (cons __tmp135376 '()))))
                     (declare (not safe))
                     (cons __tmp135378 __tmp135375))))
              (declare (not safe))
              (cons __tmp135380 __tmp135374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135373))))
                                        (declare (not safe))
                                        (cons __tmp135372 '()))))
                                 (declare (not safe))
                                 (cons __tmp135382 __tmp135371))))
                          (declare (not safe))
                          (cons __tmp135384 __tmp135370))))
                   (declare (not safe))
                   (cons '%#if __tmp135369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135368 '()))))
                                             (declare (not safe))
                                             (cons __tmp135386 __tmp135367))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135366))))
                               (declare (not safe))
                               (cons __tmp135365 '()))))
                        (declare (not safe))
                        (cons __tmp135400 __tmp135364)))))
                 (_generate-specializer-impl131336_
                  (lambda (_$klass134101_
                           _$method-table134102_
                           _methods-bind134103_
                           _slots-bind134104_
                           _specializer-impl134105_)
                    (let ((__tmp135401
                           (let ((__tmp135402
                                  (let ((__tmp135408
                                         (let ((__tmp135409
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134102_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134101_ __tmp135409)))
                                        (__tmp135403
                                         (let ((__tmp135404
                                                (let ((__tmp135405
                                                       (let ((__tmp135407
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134104_ _methods-bind134103_)))
                     (__tmp135406
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134105_ '()))))
                 (declare (not safe))
                 (cons __tmp135407 __tmp135406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135405))))
                                           (declare (not safe))
                                           (cons __tmp135404 '()))))
                                    (declare (not safe))
                                    (cons __tmp135408 __tmp135403))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135402))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135401 _stx131332_))))
                 (_generate-specializer-def131337_
                  (lambda (_id134097_
                           _specializer-id134098_
                           _specializer-impl134099_)
                    (let ((__tmp135410
                           (let ((__tmp135411
                                  (let ((__tmp135412
                                         (let ((__tmp135425
                                                (let ((__tmp135426
                                                       (let ((__tmp135427
                                                              (let ((__tmp135429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134098_ '())))
                            (__tmp135428
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134099_ '()))))
                        (declare (not safe))
                        (cons __tmp135429 __tmp135428))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135426
                                                   _stx131332_)))
                                               (__tmp135413
                                                (let ((__tmp135414
                                                       (let ((__tmp135415
                                                              (let ((__tmp135416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135423
                                    (let ((__tmp135424
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135424)))
                                   (__tmp135417
                                    (let ((__tmp135421
                                           (let ((__tmp135422
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134097_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135422)))
                                          (__tmp135418
                                           (let ((__tmp135419
                                                  (let ((__tmp135420
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135420))))
                                             (declare (not safe))
                                             (cons __tmp135419 '()))))
                                      (declare (not safe))
                                      (cons __tmp135421 __tmp135418))))
                               (declare (not safe))
                               (cons __tmp135423 __tmp135417))))
                        (declare (not safe))
                        (cons '%#call __tmp135416))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135415 _stx131332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135414 '()))))
                                           (declare (not safe))
                                           (cons __tmp135425 __tmp135413))))
                                    (declare (not safe))
                                    (cons _stx131332_ __tmp135412))))
                             (declare (not safe))
                             (cons '%#begin __tmp135411))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135410 _stx131332_)))))
          (let* ((___stx134266134267_ _stx131332_)
                 (_g131340131360_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134266134267_)))))
            (let ((___kont134268134269_
                   (lambda (_L131404_ _L131405_)
                     (let ((_method-calls131424_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131425_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131426_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131428_
                                 (lambda ()
                                   (if (let ((__tmp135431
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131424_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135431))
                                       (let ((__tmp135430
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131425_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135430))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131404_))
                             (let* ((___stx134180134181_ _L131404_)
                                    (_g131815131833_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134180134181_)))))
                               (let ((___kont134182134183_
                                      (lambda (_L131869_ _L131870_ _L131871_)
                                        (for-each
                                         (lambda (_g131886131888_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131886131888_
                                              _L131871_
                                              _method-calls131424_
                                              _slot-refs131425_)))
                                         _L131869_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131428_))
                                            _stx131332_
                                            (let* ((_specializer-id131897_
                                                    (let* ((_id131891_
                                                            (let ((__tmp135553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131405_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135553 '"::specialize")))
                   (_specializer-id131894_
                    (let ((__tmp135554
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131332_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131891_ __tmp135554))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131894_))
              _specializer-id131894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131899_
                                                    (let ((__tmp135555
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135555)))
                                                   (_$method-table131901_
                                                    (let ((__tmp135556
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135556)))
                                                   (_methods131903_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131424_)))
                                                   (_$methods131907_
                                                    (map (lambda (_id131905_)
                                                           (let ((__tmp135557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131905_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135557)))
                 _methods131903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135558_
                                                    (for-each
                                                     (lambda (_g131908131911_
                                                              _g131909131913_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131424_
                                                          _g131908131911_
                                                          _g131909131913_)))
                                                     _methods131903_
                                                     _$methods131907_))
                                                   (_methods-bind131924_
                                                    (map (lambda (_g131916131919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131917131921_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131334_
                      _$klass131899_
                      _$method-table131901_
                      _g131916131919_
                      _g131917131921_)))
                 _methods131903_
                 _$methods131907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131926_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131425_)))
                                                   (_$slots131930_
                                                    (map (lambda (_id131928_)
                                                           (let ((__tmp135559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131928_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135559)))
                 _slots131926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135560_
                                                    (for-each
                                                     (lambda (_g131931131934_
                                                              _g131932131936_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131425_
                                                          _g131931131934_
                                                          _g131932131936_)))
                                                     _slots131926_
                                                     _$slots131930_))
                                                   (_slots-bind131947_
                                                    (map (lambda (_g131939131942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131940131944_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131335_
                      _$klass131899_
                      _g131939131942_
                      _g131940131944_)))
                 _slots131926_
                 _$slots131930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131953_
                                                    (map (lambda (_g131948131950_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131948131950_
                                                              _L131871_
                                                              _$klass131899_
                                                              _method-calls131424_
                                                              _slot-refs131425_)))
                                                         _L131869_))
                                                   (_specializer-impl131955_
                                                    (let ((__tmp135561
                                                           (let ((__tmp135562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135563
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131871_ _L131870_))))
                            (declare (not safe))
                            (cons __tmp135563 _specializer-body131953_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135562))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135561 _stx131332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131957_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131336_
                                                       _$klass131899_
                                                       _$method-table131901_
                                                       _methods-bind131924_
                                                       _slots-bind131947_
                                                       _specializer-impl131955_))))
                                              (let ((__tmp135565
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131405_)))
                                                    (__tmp135564
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131897_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135565
                                                 '" => "
                                                 __tmp135564))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131337_
                                                 _L131405_
                                                 _specializer-id131897_
                                                 _specializer-impl131957_))))))
                                     (___kont134184134185_
                                      (lambda () _stx131332_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134180134181_))
                                     (let ((_e131822131845_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134180134181_))))
                                       (let ((_tl131820131850_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131822131845_)))
                                             (_hd131821131848_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131822131845_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131820131850_))
                                             (let ((_e131825131853_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131820131850_))))
                                               (let ((_tl131823131858_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131825131853_)))
                                                     (_hd131824131856_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131825131853_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131824131856_))
                                                     (let ((_e131828131861_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131824131856_))))
                                                       (let ((_tl131826131866_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131828131861_)))
                     (_hd131827131864_
                      (let () (declare (not safe)) (##car _e131828131861_))))
                 (___kont134182134183_
                  _tl131823131858_
                  _tl131826131866_
                  _hd131827131864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134184134185_))))
                                             (___kont134184134185_))))
                                     (___kont134184134185_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131404_))
                                 (let* ((_g131963131982_
                                         (lambda (_g131964131979_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131964131979_))))
                                        (_g131962132265_
                                         (lambda (_g131964131985_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131964131985_))
                                               (let ((_e131968131987_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131964131985_))))
                                                 (let ((_hd131967131990_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131968131987_)))
                                                       (_tl131966131992_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131968131987_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131966131992_))
                                                       (let ((_g135536_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131966131992_ '0))))
                 (begin
                   (let ((_g135537_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135536_)
                                (##vector-length _g135536_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135537_ 2)))
                         (error "Context expects 2 values" _g135537_)))
                   (let ((_target131969131995_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135536_ 0)))
                         (_tl131971131997_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135536_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131971131997_))
                         (letrec ((_loop131972132000_
                                   (lambda (_hd131970132003_
                                            _clause131976132005_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131970132003_))
                                         (let ((_e131973132008_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131970132003_))))
                                           (let ((_lp-hd131974132011_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131973132008_)))
                                                 (_lp-tl131975132013_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131973132008_))))
                                             (let ((__tmp135552
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131974132011_
                                                            _clause131976132005_))))
                                               (declare (not safe))
                                               (_loop131972132000_
                                                _lp-tl131975132013_
                                                __tmp135552))))
                                         (let ((_clause131977132016_
                                                (reverse _clause131976132005_)))
                                           ((lambda (_L132019_)
                                              (for-each
                                               (lambda (_clause132032_)
                                                 (let* ((___stx134206134207_
                                                         _clause132032_)
                                                        (_g132035132050_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134206134207_)))))
                                                   (let ((___kont134208134209_
                                                          (lambda (_L132078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132079_
                           _L132080_)
                    (for-each
                     (lambda (_g132095132097_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132095132097_
                          _L132080_
                          _method-calls131424_
                          _slot-refs131425_)))
                     _L132078_)))
                 (___kont134210134211_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134206134207_))
                                                         (let ((_e132042132062_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134206134207_))))
                   (let ((_tl132040132067_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132042132062_)))
                         (_hd132041132065_
                          (let ()
                            (declare (not safe))
                            (##car _e132042132062_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132041132065_))
                         (let ((_e132045132070_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132041132065_))))
                           (let ((_tl132043132075_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132045132070_)))
                                 (_hd132044132073_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132045132070_))))
                             (___kont134208134209_
                              _tl132040132067_
                              _tl132043132075_
                              _hd132044132073_)))
                         (___kont134210134211_))))
                 (___kont134210134211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135538
                                                      (lambda (_g132102132105_
                                                               _g132103132107_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132102132105_
                                                                _g132103132107_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135538
                                                         '()
                                                         _L132019_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131428_))
                                                  _stx131332_
                                                  (let* ((_specializer-id132116_
                                                          (let* ((_id132110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135539
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131405_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135539 '"::specialize")))
                         (_specializer-id132113_
                          (let ((__tmp135540
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131332_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132110_ __tmp135540))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132113_))
                    _specializer-id132113_))
                 (_$klass132118_
                  (let ((__tmp135541 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135541)))
                 (_$method-table132120_
                  (let ((__tmp135542 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135542)))
                 (_methods132122_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131424_)))
                 (_$methods132126_
                  (map (lambda (_id132124_)
                         (let ((__tmp135543 (gensym _id132124_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135543)))
                       _methods132122_))
                 (_g135544_
                  (for-each
                   (lambda (_g132127132130_ _g132128132132_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131424_
                        _g132127132130_
                        _g132128132132_)))
                   _methods132122_
                   _$methods132126_))
                 (_methods-bind132143_
                  (map (lambda (_g132135132138_ _g132136132140_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131334_
                            _$klass132118_
                            _$method-table132120_
                            _g132135132138_
                            _g132136132140_)))
                       _methods132122_
                       _$methods132126_))
                 (_slots132145_
                  (let () (declare (not safe)) (hash-keys _slot-refs131425_)))
                 (_$slots132149_
                  (map (lambda (_id132147_)
                         (let ((__tmp135545 (gensym _id132147_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135545)))
                       _slots132145_))
                 (_g135546_
                  (for-each
                   (lambda (_g132150132153_ _g132151132155_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131425_
                        _g132150132153_
                        _g132151132155_)))
                   _slots132145_
                   _$slots132149_))
                 (_slots-bind132166_
                  (map (lambda (_g132158132161_ _g132159132163_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131335_
                            _$klass132118_
                            _g132158132161_
                            _g132159132163_)))
                       _slots132145_
                       _$slots132149_))
                 (_specializer-clauses132258_
                  (map (lambda (_clause132168_)
                         (let* ((___stx134226134227_ _clause132168_)
                                (_g132171132186_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134226134227_)))))
                           (let ((___kont134228134229_
                                  (lambda (_L132214_ _L132215_ _L132216_)
                                    (let* ((_body132246_
                                            (map (lambda (_g132241132243_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132241132243_
                                                      _L132216_
                                                      _$klass132118_
                                                      _method-calls131424_
                                                      _slot-refs131425_)))
                                                 _L132214_))
                                           (__tmp135547
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132216_ _L132215_))))
                                      (declare (not safe))
                                      (cons __tmp135547 _body132246_))))
                                 (___kont134230134231_
                                  (lambda () _clause132168_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134226134227_))
                                 (let ((_e132178132198_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134226134227_))))
                                   (let ((_tl132176132203_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132178132198_)))
                                         (_hd132177132201_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132178132198_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132177132201_))
                                         (let ((_e132181132206_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132177132201_))))
                                           (let ((_tl132179132211_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132181132206_)))
                                                 (_hd132180132209_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132181132206_))))
                                             (___kont134228134229_
                                              _tl132176132203_
                                              _tl132179132211_
                                              _hd132180132209_)))
                                         (___kont134230134231_))))
                                 (___kont134230134231_)))))
                       (let ((__tmp135548
                              (lambda (_g132250132253_ _g132251132255_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132250132253_ _g132251132255_)))))
                         (declare (not safe))
                         (foldr1 __tmp135548 '() _L132019_))))
                 (_specializer-impl132260_
                  (let ((__tmp135549
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132258_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135549 _stx131332_)))
                 (_specializer-impl132262_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131336_
                     _$klass132118_
                     _$method-table132120_
                     _methods-bind132143_
                     _slots-bind132166_
                     _specializer-impl132260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135551
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131405_)))
                                                          (__tmp135550
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132116_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135551
                                                       '" => "
                                                       __tmp135550))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131337_
                                                       _L131405_
                                                       _specializer-id132116_
                                                       _specializer-impl132262_)))))
                                            _clause131977132016_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131972132000_ _target131969131995_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131963131982_ _g131964131985_))))))
               (let ()
                 (declare (not safe))
                 (_g131963131982_ _g131964131985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131963131982_
                                                  _g131964131985_))))))
                                   (declare (not safe))
                                   (_g131962132265_ _L131404_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131404_))
                                     (let* ((_g132268132298_
                                             (lambda (_g132269132295_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132269132295_))))
                                            (_g132267132903_
                                             (lambda (_g132269132301_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132269132301_))
                                                   (let ((_e132275132303_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132269132301_))))
                                                     (let ((_hd132274132306_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132275132303_)))
                                                           (_tl132273132308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132275132303_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132273132308_))
                                                           (let ((_e132278132311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132273132308_))))
                     (let ((_hd132277132314_
                            (let ()
                              (declare (not safe))
                              (##car _e132278132311_)))
                           (_tl132276132316_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132278132311_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132277132314_))
                           (let ((_e132281132319_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132277132314_))))
                             (let ((_hd132280132322_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132281132319_)))
                                   (_tl132279132324_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132281132319_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132280132322_))
                                   (let ((_e132284132327_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132280132322_))))
                                     (let ((_hd132283132330_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132284132327_)))
                                           (_tl132282132332_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132284132327_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132283132330_))
                                           (let ((_e132287132335_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132283132330_))))
                                             (let ((_hd132286132338_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132287132335_)))
                                                   (_tl132285132340_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132287132335_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132285132340_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132282132332_))
                                                       (let ((_e132290132343_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132282132332_))))
                 (let ((_hd132289132346_
                        (let () (declare (not safe)) (##car _e132290132343_)))
                       (_tl132288132348_
                        (let () (declare (not safe)) (##cdr _e132290132343_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132288132348_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132279132324_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132276132316_))
                               (let ((_e132293132351_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132276132316_))))
                                 (let ((_hd132292132354_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132293132351_)))
                                       (_tl132291132356_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132293132351_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132291132356_))
                                       ((lambda (_L132359_ _L132360_ _L132361_)
                                          (let* ((_g132384132402_
                                                  (lambda (_g132385132399_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132385132399_))))
                                                 (_g132383132453_
                                                  (lambda (_g132385132405_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132385132405_))
                                                        (let ((_e132391132407_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132385132405_))))
                  (let ((_hd132390132410_
                         (let () (declare (not safe)) (##car _e132391132407_)))
                        (_tl132389132412_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132391132407_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132389132412_))
                        (let ((_e132394132415_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132389132412_))))
                          (let ((_hd132393132418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132394132415_)))
                                (_tl132392132420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132394132415_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132393132418_))
                                (let ((_e132397132423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132393132418_))))
                                  (let ((_hd132396132426_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132397132423_)))
                                        (_tl132395132428_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132397132423_))))
                                    ((lambda (_L132431_ _L132432_ _L132433_)
                                       (for-each
                                        (lambda (_g132448132450_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132448132450_
                                             _L132433_
                                             _method-calls131424_
                                             _slot-refs131425_)))
                                        _L132431_))
                                     _tl132392132420_
                                     _tl132395132428_
                                     _hd132396132426_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132384132402_ _g132385132405_)))))
                        (let ()
                          (declare (not safe))
                          (_g132384132402_ _g132385132405_)))))
                (let ()
                  (declare (not safe))
                  (_g132384132402_ _g132385132405_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132383132453_ _L132360_))
                                          (let* ((_g132456132475_
                                                  (lambda (_g132457132472_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132457132472_))))
                                                 (_g132455132594_
                                                  (lambda (_g132457132478_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132457132478_))
                                                        (let ((_e132461132480_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132457132478_))))
                  (let ((_hd132460132483_
                         (let () (declare (not safe)) (##car _e132461132480_)))
                        (_tl132459132485_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132461132480_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132459132485_))
                        (let ((_g135506_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132459132485_
                                  '0))))
                          (begin
                            (let ((_g135507_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135506_)
                                         (##vector-length _g135506_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135507_ 2)))
                                  (error "Context expects 2 values"
                                         _g135507_)))
                            (let ((_target132462132488_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135506_ 0)))
                                  (_tl132464132490_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135506_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132464132490_))
                                  (letrec ((_loop132465132493_
                                            (lambda (_hd132463132496_
                                                     _clause132469132498_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132463132496_))
                                                  (let ((_e132466132501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132463132496_))))
                                                    (let ((_lp-hd132467132504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132466132501_)))
                                                          (_lp-tl132468132506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132466132501_))))
                                                      (let ((__tmp135509
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132467132504_ _clause132469132498_))))
                (declare (not safe))
                (_loop132465132493_ _lp-tl132468132506_ __tmp135509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132470132509_
                                                         (reverse _clause132469132498_)))
                                                    ((lambda (_L132512_)
                                                       (for-each
                                                        (lambda (_clause132525_)
                                                          (let* ((_g132527132542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132528132539_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132528132539_))))
                         (_g132526132584_
                          (lambda (_g132528132545_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132528132545_))
                                (let ((_e132534132547_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132528132545_))))
                                  (let ((_hd132533132550_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132534132547_)))
                                        (_tl132532132552_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132534132547_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132533132550_))
                                        (let ((_e132537132555_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132533132550_))))
                                          (let ((_hd132536132558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132537132555_)))
                                                (_tl132535132560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132537132555_))))
                                            ((lambda (_L132563_
                                                      _L132564_
                                                      _L132565_)
                                               (for-each
                                                (lambda (_g132579132581_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132579132581_
                                                     _L132565_
                                                     _method-calls131424_
                                                     _slot-refs131425_)))
                                                _L132563_))
                                             _tl132532132552_
                                             _tl132535132560_
                                             _hd132536132558_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132527132542_ _g132528132545_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132527132542_ _g132528132545_))))))
                    (declare (not safe))
                    (_g132526132584_ _clause132525_)))
                (let ((__tmp135508
                       (lambda (_g132586132589_ _g132587132591_)
                         (let ()
                           (declare (not safe))
                           (cons _g132586132589_ _g132587132591_)))))
                  (declare (not safe))
                  (foldr1 __tmp135508 '() _L132512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132470132509_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132465132493_
                                       _target132462132488_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132456132475_ _g132457132478_))))))
                        (let ()
                          (declare (not safe))
                          (_g132456132475_ _g132457132478_)))))
                (let ()
                  (declare (not safe))
                  (_g132456132475_ _g132457132478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132455132594_ _L132359_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131428_))
                                              _stx131332_
                                              (let* ((_specializer-id132603_
                                                      (let* ((_id132597_
                                                              (let ((__tmp135510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131405_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135510 '"::specialize")))
                     (_specializer-id132600_
                      (let ((__tmp135511
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131332_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132597_ __tmp135511))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132600_))
                _specializer-id132600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132605_
                                                      (let ((__tmp135512
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135512)))
                                                     (_$method-table132607_
                                                      (let ((__tmp135513
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135513)))
                                                     (_methods132609_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131424_)))
                                                     (_$methods132613_
                                                      (map (lambda (_id132611_)
                                                             (let ((__tmp135514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132611_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135514)))
                   _methods132609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135515_
                                                      (for-each
                                                       (lambda (_g132614132617_
                                                                _g132615132619_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131424_
                                                            _g132614132617_
                                                            _g132615132619_)))
                                                       _methods132609_
                                                       _$methods132613_))
                                                     (_methods-bind132630_
                                                      (map (lambda (_g132622132625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132623132627_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131334_
                        _$klass132605_
                        _$method-table132607_
                        _g132622132625_
                        _g132623132627_)))
                   _methods132609_
                   _$methods132613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132632_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131425_)))
                                                     (_$slots132636_
                                                      (map (lambda (_id132634_)
                                                             (let ((__tmp135516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132634_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135516)))
                   _slots132632_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135517_
                                                      (for-each
                                                       (lambda (_g132637132640_
                                                                _g132638132642_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131425_
                                                            _g132637132640_
                                                            _g132638132642_)))
                                                       _slots132632_
                                                       _$slots132636_))
                                                     (_slots-bind132653_
                                                      (map (lambda (_g132645132648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132646132650_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131335_
                        _$klass132605_
                        _g132645132648_
                        _g132646132650_)))
                   _slots132632_
                   _$slots132636_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132739_
                                                      (let* ((_g132655132673_
                                                              (lambda (_g132656132670_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132656132670_))))
                     (_g132654132736_
                      (lambda (_g132656132676_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132656132676_))
                            (let ((_e132662132678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132656132676_))))
                              (let ((_hd132661132681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132662132678_)))
                                    (_tl132660132683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132662132678_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132660132683_))
                                    (let ((_e132665132686_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132660132683_))))
                                      (let ((_hd132664132689_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132665132686_)))
                                            (_tl132663132691_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132665132686_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132664132689_))
                                            (let ((_e132668132694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132664132689_))))
                                              (let ((_hd132667132697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132668132694_)))
                                                    (_tl132666132699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132668132694_))))
                                                ((lambda (_L132702_
                                                          _L132703_
                                                          _L132704_)
                                                   (let* ((_body132734_
                                                           (map (lambda (_g132729132731_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132729132731_
                             _L132704_
                             _$klass132605_
                             _method-calls131424_
                             _slot-refs131425_)))
                        _L132702_))
                  (__tmp135518
                   (let ((__tmp135519
                          (let ((__tmp135520
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132704_ _L132703_))))
                            (declare (not safe))
                            (cons __tmp135520 _body132734_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135518
                                                      _L132360_)))
                                                 _tl132663132691_
                                                 _tl132666132699_
                                                 _hd132667132697_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132655132673_
                                               _g132656132676_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132655132673_ _g132656132676_)))))
                            (let ()
                              (declare (not safe))
                              (_g132655132673_ _g132656132676_))))))
                (declare (not safe))
                (_g132654132736_ _L132360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132896_
                                                      (let* ((_g132741132760_
                                                              (lambda (_g132742132757_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132742132757_))))
                     (_g132740132893_
                      (lambda (_g132742132763_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132742132763_))
                            (let ((_e132746132765_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132742132763_))))
                              (let ((_hd132745132768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132746132765_)))
                                    (_tl132744132770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132746132765_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132744132770_))
                                    (let ((_g135521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132744132770_
                                              '0))))
                                      (begin
                                        (let ((_g135522_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135521_)
                                                     (##vector-length
                                                      _g135521_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135522_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135522_)))
                                        (let ((_target132747132773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135521_ 0)))
                                              (_tl132749132775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135521_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132749132775_))
                                              (letrec ((_loop132750132778_
                                                        (lambda (_hd132748132781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132754132783_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132748132781_))
                      (let ((_e132751132786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132748132781_))))
                        (let ((_lp-hd132752132789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132751132786_)))
                              (_lp-tl132753132791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132751132786_))))
                          (let ((__tmp135526
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132752132789_
                                         _clause132754132783_))))
                            (declare (not safe))
                            (_loop132750132778_
                             _lp-tl132753132791_
                             __tmp135526))))
                      (let ((_clause132755132794_
                             (reverse _clause132754132783_)))
                        ((lambda (_L132797_)
                           (let* ((_clauses132891_
                                   (map (lambda (_clause132811_)
                                          (let* ((___stx134246134247_
                                                  _clause132811_)
                                                 (_g132814132829_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134246134247_)))))
                                            (let ((___kont134248134249_
                                                   (lambda (_L132857_
                                                            _L132858_
                                                            _L132859_)
                                                     (let* ((_body132879_
                                                             (map (lambda (_g132874132876_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132874132876_
                               _L132859_
                               _$klass132605_
                               _method-calls131424_
                               _slot-refs131425_)))
                          _L132857_))
                    (__tmp135523
                     (let () (declare (not safe)) (cons _L132859_ _L132858_))))
               (declare (not safe))
               (cons __tmp135523 _body132879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134250134251_
                                                   (lambda () _clause132811_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134246134247_))
                                                  (let ((_e132821132841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134246134247_))))
                                                    (let ((_tl132819132846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132821132841_)))
                                                          (_hd132820132844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132821132841_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132820132844_))
                                                          (let ((_e132824132849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132820132844_))))
                    (let ((_tl132822132854_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132824132849_)))
                          (_hd132823132852_
                           (let ()
                             (declare (not safe))
                             (##car _e132824132849_))))
                      (___kont134248134249_
                       _tl132819132846_
                       _tl132822132854_
                       _hd132823132852_)))
                  (___kont134250134251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134250134251_)))))
                                        (let ((__tmp135524
                                               (lambda (_g132883132886_
                                                        _g132884132888_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132883132886_
                                                         _g132884132888_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135524 '() _L132797_))))
                                  (__tmp135525
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132891_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135525 _L132359_)))
                         _clause132755132794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132750132778_
                                                   _target132747132773_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132741132760_
                                                 _g132742132763_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132741132760_ _g132742132763_)))))
                            (let ()
                              (declare (not safe))
                              (_g132741132760_ _g132742132763_))))))
                (declare (not safe))
                (_g132740132893_ _L132359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132898_
                                                      (let ((__tmp135527
                                                             (let ((__tmp135528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135530
                                   (let ((__tmp135531
                                          (let ((__tmp135533
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132361_ '())))
                                                (__tmp135532
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132739_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135533 __tmp135532))))
                                     (declare (not safe))
                                     (cons __tmp135531 '())))
                                  (__tmp135529
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132896_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135530 __tmp135529))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135528))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135527 _stx131332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132900_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131336_
                                                         _$klass132605_
                                                         _$method-table132607_
                                                         _methods-bind132630_
                                                         _slots-bind132653_
                                                         _specializer-impl132898_))))
                                                (let ((__tmp135535
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131405_)))
                                                      (__tmp135534
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132603_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135535
                                                   '" => "
                                                   __tmp135534))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131337_
                                                   _L131405_
                                                   _specializer-id132603_
                                                   _specializer-impl132900_)))))
                                        _hd132292132354_
                                        _hd132289132346_
                                        _hd132286132338_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132268132298_ _g132269132301_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132268132298_ _g132269132301_)))
                           (let ()
                             (declare (not safe))
                             (_g132268132298_ _g132269132301_)))
                       (let ()
                         (declare (not safe))
                         (_g132268132298_ _g132269132301_)))))
               (let () (declare (not safe)) (_g132268132298_ _g132269132301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132268132298_
                                                      _g132269132301_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132268132298_
                                              _g132269132301_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132268132298_ _g132269132301_)))))
                           (let ()
                             (declare (not safe))
                             (_g132268132298_ _g132269132301_)))))
                   (let ()
                     (declare (not safe))
                     (_g132268132298_ _g132269132301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132268132298_
                                                      _g132269132301_))))))
                                       (declare (not safe))
                                       (_g132267132903_ _L131404_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131404_))
                                         (let* ((_g132906132959_
                                                 (lambda (_g132907132956_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132907132956_))))
                                                (_g132905134090_
                                                 (lambda (_g132907132962_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132907132962_))
                                                       (let ((_e132915132964_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132907132962_))))
                 (let ((_hd132914132967_
                        (let () (declare (not safe)) (##car _e132915132964_)))
                       (_tl132913132969_
                        (let () (declare (not safe)) (##cdr _e132915132964_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132914132967_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132914132967_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132913132969_))
                               (let ((_e132918132972_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132913132969_))))
                                 (let ((_hd132917132975_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132918132972_)))
                                       (_tl132916132977_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132918132972_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132917132975_))
                                       (let ((_e132921132980_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132917132975_))))
                                         (let ((_hd132920132983_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132921132980_)))
                                               (_tl132919132985_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132921132980_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132920132983_))
                                               (let ((_e132924132988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132920132983_))))
                                                 (let ((_hd132923132991_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132924132988_)))
                                                       (_tl132922132993_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132924132988_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132923132991_))
                                                       (let ((_e132927132996_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132923132991_))))
                 (let ((_hd132926132999_
                        (let () (declare (not safe)) (##car _e132927132996_)))
                       (_tl132925133001_
                        (let () (declare (not safe)) (##cdr _e132927132996_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132925133001_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132922132993_))
                           (let ((_e132930133004_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132922132993_))))
                             (let ((_hd132929133007_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132930133004_)))
                                   (_tl132928133009_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132930133004_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132929133007_))
                                   (let ((_e132933133012_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132929133007_))))
                                     (let ((_hd132932133015_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132933133012_)))
                                           (_tl132931133017_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132933133012_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132932133015_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132932133015_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132931133017_))
                                                   (let ((_e132936133020_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132931133017_))))
                                                     (let ((_hd132935133023_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132936133020_)))
                                                           (_tl132934133025_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132936133020_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132935133023_))
                                                           (let ((_e132939133028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132935133023_))))
                     (let ((_hd132938133031_
                            (let ()
                              (declare (not safe))
                              (##car _e132939133028_)))
                           (_tl132937133033_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132939133028_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132938133031_))
                           (let ((_e132942133036_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132938133031_))))
                             (let ((_hd132941133039_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132942133036_)))
                                   (_tl132940133041_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132942133036_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132941133039_))
                                   (let ((_e132945133044_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132941133039_))))
                                     (let ((_hd132944133047_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132945133044_)))
                                           (_tl132943133049_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132945133044_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132943133049_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132940133041_))
                                               (let ((_e132948133052_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132940133041_))))
                                                 (let ((_hd132947133055_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132948133052_)))
                                                       (_tl132946133057_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132948133052_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132946133057_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132937133033_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132934133025_))
                       (let ((_e132951133060_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132934133025_))))
                         (let ((_hd132950133063_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132951133060_)))
                               (_tl132949133065_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132951133060_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132949133065_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132928133009_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132919132985_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132916132977_))
                                           (let ((_e132954133068_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132916132977_))))
                                             (let ((_hd132953133071_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132954133068_)))
                                                   (_tl132952133073_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132954133068_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132952133073_))
                                                   ((lambda (_L133076_
                                                             _L133077_
                                                             _L133078_
                                                             _L133079_
                                                             _L133080_)
                                                      (let* ((_g133119133181_
                                                              (lambda (_g133120133178_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133120133178_))))
                     (_g133118134087_
                      (lambda (_g133120133184_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133120133184_))
                            (let ((_e133128133186_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133120133184_))))
                              (let ((_hd133127133189_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133128133186_)))
                                    (_tl133126133191_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133128133186_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133127133189_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133127133189_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133126133191_))
                                            (let ((_e133131133194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133126133191_))))
                                              (let ((_hd133130133197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133131133194_)))
                                                    (_tl133129133199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133131133194_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133129133199_))
                                                    (let ((_e133134133202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133129133199_))))
                                                      (let ((_hd133133133205_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133134133202_)))
                    (_tl133132133207_
                     (let () (declare (not safe)) (##cdr _e133134133202_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133133133205_))
                    (let ((_e133137133210_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133133133205_))))
                      (let ((_hd133136133213_
                             (let ()
                               (declare (not safe))
                               (##car _e133137133210_)))
                            (_tl133135133215_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133137133210_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133136133213_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133136133213_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133135133215_))
                                    (let ((_e133140133218_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133135133215_))))
                                      (let ((_hd133139133221_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133140133218_)))
                                            (_tl133138133223_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133140133218_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133139133221_))
                                            (let ((_e133143133226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133139133221_))))
                                              (let ((_hd133142133229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133143133226_)))
                                                    (_tl133141133231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133143133226_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133142133229_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133142133229_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133141133231_))
                                                            (let ((_e133146133234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133141133231_))))
                      (let ((_hd133145133237_
                             (let ()
                               (declare (not safe))
                               (##car _e133146133234_)))
                            (_tl133144133239_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133146133234_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133144133239_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133138133223_))
                                (let ((_e133149133242_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133138133223_))))
                                  (let ((_hd133148133245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133149133242_)))
                                        (_tl133147133247_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133149133242_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133148133245_))
                                        (let ((_e133152133250_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133148133245_))))
                                          (let ((_hd133151133253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133152133250_)))
                                                (_tl133150133255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133152133250_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133151133253_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133151133253_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133150133255_))
                                                        (let ((_e133155133258_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133150133255_))))
                  (let ((_hd133154133261_
                         (let () (declare (not safe)) (##car _e133155133258_)))
                        (_tl133153133263_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133155133258_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133153133263_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133147133247_))
                            (let ((_e133158133266_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133147133247_))))
                              (let ((_hd133157133269_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133158133266_)))
                                    (_tl133156133271_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133158133266_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133157133269_))
                                    (let ((_e133161133274_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133157133269_))))
                                      (let ((_hd133160133277_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133161133274_)))
                                            (_tl133159133279_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133161133274_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133160133277_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133160133277_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133159133279_))
                                                    (let ((_e133164133282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133159133279_))))
                                                      (let ((_hd133163133285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133164133282_)))
                    (_tl133162133287_
                     (let () (declare (not safe)) (##cdr _e133164133282_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133162133287_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133156133271_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133156133271_))
                                  '1)
                            (let ((_g135432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133156133271_
                                      '1))))
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
                                (let ((_target133165133290_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135432_ 0)))
                                      (_tl133167133292_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135432_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133167133292_))
                                      (let ((_e133176133295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133167133292_))))
                                        (let ((_hd133175133298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133176133295_)))
                                              (_tl133174133300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133176133295_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133174133300_))
                                              (letrec ((_loop133168133303_
                                                        (lambda (_hd133166133306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133172133308_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133166133306_))
                      (let ((_e133169133311_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133166133306_))))
                        (let ((_lp-hd133170133314_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133169133311_)))
                              (_lp-tl133171133316_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133169133311_))))
                          (let ((__tmp135505
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133170133314_
                                         _kw-ref133172133308_))))
                            (declare (not safe))
                            (_loop133168133303_
                             _lp-tl133171133316_
                             __tmp135505))))
                      (let ((_kw-ref133173133319_
                             (reverse _kw-ref133172133308_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133132133207_))
                            ((lambda (_L133322_
                                      _L133323_
                                      _L133324_
                                      _L133325_
                                      _L133326_)
                               (let* ((_kw-count133377_
                                       (length (let ((__tmp135434
                                                      (lambda (_g133369133372_
                                                               _g133370133374_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133369133372_
                                                                _g133370133374_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135434
                                                         '()
                                                         _L133323_))))
                                      (_self-index133379_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133377_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133078_))
                                     (let* ((_g133382133396_
                                             (lambda (_g133383133393_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133383133393_))))
                                            (_g133381133509_
                                             (lambda (_g133383133399_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133383133399_))
                                                   (let ((_e133388133401_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133383133399_))))
                                                     (let ((_hd133387133404_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133388133401_)))
                                                           (_tl133386133406_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133388133401_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133386133406_))
                                                           (let ((_e133391133409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133386133406_))))
                     (let ((_hd133390133412_
                            (let ()
                              (declare (not safe))
                              (##car _e133391133409_)))
                           (_tl133389133414_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133391133409_))))
                       ((lambda (_L133417_ _L133418_)
                          (let ((_self133434_
                                 (list-ref _L133418_ _self-index133379_)))
                            (for-each
                             (lambda (_g133435133437_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133435133437_
                                  _self133434_
                                  _method-calls131424_
                                  _slot-refs131425_)))
                             _L133417_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131428_))
                                _stx131332_
                                (let* ((_specializer-id133446_
                                        (let* ((_id133440_
                                                (let ((__tmp135478
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131405_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135478
                                                   '"::specialize")))
                                               (_specializer-id133443_
                                                (let ((__tmp135479
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131332_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133440_
                                                   __tmp135479))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133443_))
                                          _specializer-id133443_))
                                       (_$klass133448_
                                        (let ((__tmp135480 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135480)))
                                       (_$method-table133450_
                                        (let ((__tmp135481
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135481)))
                                       (_methods133452_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131424_)))
                                       (_$methods133456_
                                        (map (lambda (_id133454_)
                                               (let ((__tmp135482
                                                      (gensym _id133454_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135482)))
                                             _methods133452_))
                                       (_g135483_
                                        (for-each
                                         (lambda (_g133457133460_
                                                  _g133458133462_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131424_
                                              _g133457133460_
                                              _g133458133462_)))
                                         _methods133452_
                                         _$methods133456_))
                                       (_methods-bind133473_
                                        (map (lambda (_g133465133468_
                                                      _g133466133470_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131334_
                                                  _$klass133448_
                                                  _$method-table133450_
                                                  _g133465133468_
                                                  _g133466133470_)))
                                             _methods133452_
                                             _$methods133456_))
                                       (_slots133475_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131425_)))
                                       (_$slots133479_
                                        (map (lambda (_id133477_)
                                               (let ((__tmp135484
                                                      (gensym _id133477_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135484)))
                                             _slots133475_))
                                       (_g135485_
                                        (for-each
                                         (lambda (_g133480133483_
                                                  _g133481133485_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131425_
                                              _g133480133483_
                                              _g133481133485_)))
                                         _slots133475_
                                         _$slots133479_))
                                       (_slots-bind133496_
                                        (map (lambda (_g133488133491_
                                                      _g133489133493_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131335_
                                                  _$klass133448_
                                                  _g133488133491_
                                                  _g133489133493_)))
                                             _slots133475_
                                             _$slots133479_))
                                       (_specializer-impl133504_
                                        (let* ((_specializer-body133502_
                                                (map (lambda (_g133497133499_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133497133499_
                                                          _self133434_
                                                          _$klass133448_
                                                          _method-calls131424_
                                                          _slot-refs131425_)))
                                                     _L133417_))
                                               (__tmp135486
                                                (let ((__tmp135487
                                                       (let ((__tmp135489
                                                              (let ((__tmp135490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135502
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133080_ '())))
                                   (__tmp135491
                                    (let ((__tmp135492
                                           (let ((__tmp135493
                                                  (let ((__tmp135495
                                                         (let ((__tmp135496
                                                                (let ((__tmp135501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133079_ '())))
                              (__tmp135497
                               (let ((__tmp135498
                                      (let ((__tmp135499
                                             (let ((__tmp135500
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133418_
                                                            _specializer-body133502_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135500))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135499
                                         _L133078_))))
                                 (declare (not safe))
                                 (cons __tmp135498 '()))))
                          (declare (not safe))
                          (cons __tmp135501 __tmp135497))))
                   (declare (not safe))
                   (cons __tmp135496 '())))
                (__tmp135494
                 (let () (declare (not safe)) (cons _L133077_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135495
                                                          __tmp135494))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135493))))
                                      (declare (not safe))
                                      (cons __tmp135492 '()))))
                               (declare (not safe))
                               (cons __tmp135502 __tmp135491))))
                        (declare (not safe))
                        (cons __tmp135490 '())))
                     (__tmp135488
                      (let () (declare (not safe)) (cons _L133076_ '()))))
                 (declare (not safe))
                 (cons __tmp135489 __tmp135488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135487))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135486
                                           _stx131332_)))
                                       (_specializer-impl133506_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131336_
                                           _$klass133448_
                                           _$method-table133450_
                                           _methods-bind133473_
                                           _slots-bind133496_
                                           _specializer-impl133504_))))
                                  (let ((__tmp135504
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131405_)))
                                        (__tmp135503
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133446_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135504
                                     '" => "
                                     __tmp135503))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131337_
                                     _L131405_
                                     _specializer-id133446_
                                     _specializer-impl133506_))))))
                        _tl133389133414_
                        _hd133390133412_)))
                   (let ()
                     (declare (not safe))
                     (_g133382133396_ _g133383133399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133382133396_
                                                      _g133383133399_))))))
                                       (declare (not safe))
                                       (_g133381133509_ _L133078_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133078_))
                                         (let* ((_g133512133542_
                                                 (lambda (_g133513133539_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133513133539_))))
                                                (_g133511134084_
                                                 (lambda (_g133513133545_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133513133545_))
                                                       (let ((_e133519133547_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133513133545_))))
                 (let ((_hd133518133550_
                        (let () (declare (not safe)) (##car _e133519133547_)))
                       (_tl133517133552_
                        (let () (declare (not safe)) (##cdr _e133519133547_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133517133552_))
                       (let ((_e133522133555_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133517133552_))))
                         (let ((_hd133521133558_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133522133555_)))
                               (_tl133520133560_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133522133555_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133521133558_))
                               (let ((_e133525133563_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133521133558_))))
                                 (let ((_hd133524133566_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133525133563_)))
                                       (_tl133523133568_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133525133563_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133524133566_))
                                       (let ((_e133528133571_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133524133566_))))
                                         (let ((_hd133527133574_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133528133571_)))
                                               (_tl133526133576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133528133571_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133527133574_))
                                               (let ((_e133531133579_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133527133574_))))
                                                 (let ((_hd133530133582_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133531133579_)))
                                                       (_tl133529133584_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133531133579_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133529133584_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133526133576_))
                                                           (let ((_e133534133587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133526133576_))))
                     (let ((_hd133533133590_
                            (let ()
                              (declare (not safe))
                              (##car _e133534133587_)))
                           (_tl133532133592_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133534133587_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133532133592_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133523133568_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133520133560_))
                                   (let ((_e133537133595_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133520133560_))))
                                     (let ((_hd133536133598_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133537133595_)))
                                           (_tl133535133600_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133537133595_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133535133600_))
                                           ((lambda (_L133603_
                                                     _L133604_
                                                     _L133605_)
                                              (let* ((_g133628133642_
                                                      (lambda (_g133629133639_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133629133639_))))
                                                     (_g133627133683_
                                                      (lambda (_g133629133645_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133629133645_))
                                                            (let ((_e133634133647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133629133645_))))
                      (let ((_hd133633133650_
                             (let ()
                               (declare (not safe))
                               (##car _e133634133647_)))
                            (_tl133632133652_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133634133647_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133632133652_))
                            (let ((_e133637133655_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133632133652_))))
                              (let ((_hd133636133658_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133637133655_)))
                                    (_tl133635133660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133637133655_))))
                                ((lambda (_L133663_ _L133664_)
                                   (let ((_self133677_
                                          (list-ref
                                           _L133664_
                                           _self-index133379_)))
                                     (for-each
                                      (lambda (_g133678133680_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133678133680_
                                           _self133677_
                                           _method-calls131424_
                                           _slot-refs131425_)))
                                      _L133663_)))
                                 _tl133635133660_
                                 _hd133636133658_)))
                            (let ()
                              (declare (not safe))
                              (_g133628133642_ _g133629133645_)))))
                    (let ()
                      (declare (not safe))
                      (_g133628133642_ _g133629133645_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133627133683_ _L133604_))
                                              (let* ((_g133686133705_
                                                      (lambda (_g133687133702_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133687133702_))))
                                                     (_g133685133810_
                                                      (lambda (_g133687133708_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133687133708_))
                                                            (let ((_e133691133710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133687133708_))))
                      (let ((_hd133690133713_
                             (let ()
                               (declare (not safe))
                               (##car _e133691133710_)))
                            (_tl133689133715_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133691133710_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133689133715_))
                            (let ((_g135435_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133689133715_
                                      '0))))
                              (begin
                                (let ((_g135436_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135435_)
                                             (##vector-length _g135435_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135436_ 2)))
                                      (error "Context expects 2 values"
                                             _g135436_)))
                                (let ((_target133692133718_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135435_ 0)))
                                      (_tl133694133720_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135435_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133694133720_))
                                      (letrec ((_loop133695133723_
                                                (lambda (_hd133693133726_
                                                         _clause133699133728_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133693133726_))
                                                      (let ((_e133696133731_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133693133726_))))
                (let ((_lp-hd133697133734_
                       (let () (declare (not safe)) (##car _e133696133731_)))
                      (_lp-tl133698133736_
                       (let () (declare (not safe)) (##cdr _e133696133731_))))
                  (let ((__tmp135438
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133697133734_ _clause133699133728_))))
                    (declare (not safe))
                    (_loop133695133723_ _lp-tl133698133736_ __tmp135438))))
              (let ((_clause133700133739_ (reverse _clause133699133728_)))
                ((lambda (_L133742_)
                   (for-each
                    (lambda (_clause133755_)
                      (let* ((_g133757133768_
                              (lambda (_g133758133765_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133758133765_))))
                             (_g133756133800_
                              (lambda (_g133758133771_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133758133771_))
                                    (let ((_e133763133773_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133758133771_))))
                                      (let ((_hd133762133776_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133763133773_)))
                                            (_tl133761133778_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133763133773_))))
                                        ((lambda (_L133781_ _L133782_)
                                           (let ((_self133794_
                                                  (list-ref
                                                   _L133782_
                                                   _self-index133379_)))
                                             (for-each
                                              (lambda (_g133795133797_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133795133797_
                                                   _self133794_
                                                   _method-calls131424_
                                                   _slot-refs131425_)))
                                              _L133781_)))
                                         _tl133761133778_
                                         _hd133762133776_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133757133768_ _g133758133771_))))))
                        (declare (not safe))
                        (_g133756133800_ _clause133755_)))
                    (let ((__tmp135437
                           (lambda (_g133802133805_ _g133803133807_)
                             (let ()
                               (declare (not safe))
                               (cons _g133802133805_ _g133803133807_)))))
                      (declare (not safe))
                      (foldr1 __tmp135437 '() _L133742_))))
                 _clause133700133739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133695133723_
                                           _target133692133718_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133686133705_ _g133687133708_))))))
                            (let ()
                              (declare (not safe))
                              (_g133686133705_ _g133687133708_)))))
                    (let ()
                      (declare (not safe))
                      (_g133686133705_ _g133687133708_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133685133810_ _L133603_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131428_))
                                                  _stx131332_
                                                  (let* ((_specializer-id133819_
                                                          (let* ((_id133813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135439
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131405_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135439 '"::specialize")))
                         (_specializer-id133816_
                          (let ((__tmp135440
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131332_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133813_ __tmp135440))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133816_))
                    _specializer-id133816_))
                 (_$klass133821_
                  (let ((__tmp135441 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135441)))
                 (_$method-table133823_
                  (let ((__tmp135442 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135442)))
                 (_methods133825_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131424_)))
                 (_$methods133829_
                  (map (lambda (_id133827_)
                         (let ((__tmp135443 (gensym _id133827_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135443)))
                       _methods133825_))
                 (_g135444_
                  (for-each
                   (lambda (_g133830133833_ _g133831133835_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131424_
                        _g133830133833_
                        _g133831133835_)))
                   _methods133825_
                   _$methods133829_))
                 (_methods-bind133846_
                  (map (lambda (_g133838133841_ _g133839133843_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131334_
                            _$klass133821_
                            _$method-table133823_
                            _g133838133841_
                            _g133839133843_)))
                       _methods133825_
                       _$methods133829_))
                 (_slots133848_
                  (let () (declare (not safe)) (hash-keys _slot-refs131425_)))
                 (_$slots133852_
                  (map (lambda (_id133850_)
                         (let ((__tmp135445 (gensym _id133850_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135445)))
                       _slots133848_))
                 (_g135446_
                  (for-each
                   (lambda (_g133853133856_ _g133854133858_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131425_
                        _g133853133856_
                        _g133854133858_)))
                   _slots133848_
                   _$slots133852_))
                 (_slots-bind133869_
                  (map (lambda (_g133861133864_ _g133862133866_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131335_
                            _$klass133821_
                            _g133861133864_
                            _g133862133866_)))
                       _slots133848_
                       _$slots133852_))
                 (_specializer-lambda-expr133942_
                  (let* ((_g133871133885_
                          (lambda (_g133872133882_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133872133882_))))
                         (_g133870133939_
                          (lambda (_g133872133888_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133872133888_))
                                (let ((_e133877133890_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133872133888_))))
                                  (let ((_hd133876133893_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133877133890_)))
                                        (_tl133875133895_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133877133890_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133875133895_))
                                        (let ((_e133880133898_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133875133895_))))
                                          (let ((_hd133879133901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133880133898_)))
                                                (_tl133878133903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133880133898_))))
                                            ((lambda (_L133906_ _L133907_)
                                               (let* ((_self133930_
                                                       (list-ref
                                                        _L133907_
                                                        _self-index133379_))
                                                      (_body133936_
                                                       (map (lambda (_g133931133933_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133931133933_
                         _self133930_
                         _$klass133821_
                         _method-calls131424_
                         _slot-refs131425_)))
                    _L133906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135447
                                                        (let ((__tmp135448
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133907_ _body133936_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135447
                                                    _L133604_))))
                                             _tl133878133903_
                                             _hd133879133901_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133871133885_ _g133872133888_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133871133885_ _g133872133888_))))))
                    (declare (not safe))
                    (_g133870133939_ _L133604_)))
                 (_specializer-case-lambda-expr134077_
                  (let* ((_g133944133963_
                          (lambda (_g133945133960_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133945133960_))))
                         (_g133943134074_
                          (lambda (_g133945133966_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133945133966_))
                                (let ((_e133949133968_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133945133966_))))
                                  (let ((_hd133948133971_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133949133968_)))
                                        (_tl133947133973_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133949133968_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133947133973_))
                                        (let ((_g135449_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133947133973_
                                                  '0))))
                                          (begin
                                            (let ((_g135450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135449_)
                                                         (##vector-length
                                                          _g135449_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135450_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135450_)))
                                            (let ((_target133950133976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135449_
                                                      0)))
                                                  (_tl133952133978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135449_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133952133978_))
                                                  (letrec ((_loop133953133981_
                                                            (lambda (_hd133951133984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133957133986_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133951133984_))
                          (let ((_e133954133989_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133951133984_))))
                            (let ((_lp-hd133955133992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133954133989_)))
                                  (_lp-tl133956133994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133954133989_))))
                              (let ((__tmp135453
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133955133992_
                                             _clause133957133986_))))
                                (declare (not safe))
                                (_loop133953133981_
                                 _lp-tl133956133994_
                                 __tmp135453))))
                          (let ((_clause133958133997_
                                 (reverse _clause133957133986_)))
                            ((lambda (_L134000_)
                               (let* ((_clauses134072_
                                       (map (lambda (_clause134014_)
                                              (let* ((_g134016134027_
                                                      (lambda (_g134017134024_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134017134024_))))
                                                     (_g134015134062_
                                                      (lambda (_g134017134030_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134017134030_))
                                                            (let ((_e134022134032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134017134030_))))
                      (let ((_hd134021134035_
                             (let ()
                               (declare (not safe))
                               (##car _e134022134032_)))
                            (_tl134020134037_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134022134032_))))
                        ((lambda (_L134040_ _L134041_)
                           (let* ((_self134053_
                                   (list-ref _L134041_ _self-index133379_))
                                  (_body134059_
                                   (map (lambda (_g134054134056_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134054134056_
                                             _self134053_
                                             _$klass133821_
                                             _method-calls131424_
                                             _slot-refs131425_)))
                                        _L134040_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134041_ _body134059_))))
                         _tl134020134037_
                         _hd134021134035_)))
                    (let ()
                      (declare (not safe))
                      (_g134016134027_ _g134017134030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134015134062_
                                                 _clause134014_)))
                                            (let ((__tmp135451
                                                   (lambda (_g134064134067_
                                                            _g134065134069_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134064134067_
                                                             _g134065134069_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135451
                                                      '()
                                                      _L134000_))))
                                      (__tmp135452
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134072_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135452
                                  _L133603_)))
                             _clause133958133997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133953133981_
                                                       _target133950133976_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133944133963_
                                                     _g133945133966_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133944133963_ _g133945133966_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133944133963_ _g133945133966_))))))
                    (declare (not safe))
                    (_g133943134074_ _L133603_)))
                 (_specializer-impl134079_
                  (let ((__tmp135454
                         (let ((__tmp135455
                                (let ((__tmp135457
                                       (let ((__tmp135458
                                              (let ((__tmp135475
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133080_ '())))
                                                    (__tmp135459
                                                     (let ((__tmp135460
                                                            (let ((__tmp135461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135463
                                  (let ((__tmp135464
                                         (let ((__tmp135474
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133079_ '())))
                                               (__tmp135465
                                                (let ((__tmp135466
                                                       (let ((__tmp135467
                                                              (let ((__tmp135468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135470
                                    (let ((__tmp135471
                                           (let ((__tmp135473
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133605_ '())))
                                                 (__tmp135472
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133942_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135473 __tmp135472))))
                                      (declare (not safe))
                                      (cons __tmp135471 '())))
                                   (__tmp135469
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134077_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135470 __tmp135469))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135468))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135467 _stx131332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135466 '()))))
                                           (declare (not safe))
                                           (cons __tmp135474 __tmp135465))))
                                    (declare (not safe))
                                    (cons __tmp135464 '())))
                                 (__tmp135462
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133077_ '()))))
                             (declare (not safe))
                             (cons __tmp135463 __tmp135462))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135461))))
               (declare (not safe))
               (cons __tmp135460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135475
                                                      __tmp135459))))
                                         (declare (not safe))
                                         (cons __tmp135458 '())))
                                      (__tmp135456
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133076_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135457 __tmp135456))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135455))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135454 _stx131332_)))
                 (_specializer-impl134081_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131336_
                     _$klass133821_
                     _$method-table133823_
                     _methods-bind133846_
                     _slots-bind133869_
                     _specializer-impl134079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135477
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131405_)))
                                                          (__tmp135476
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133819_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135477
                                                       '" => "
                                                       __tmp135476))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131337_
                                                       _L131405_
                                                       _specializer-id133819_
                                                       _specializer-impl134081_)))))
                                            _hd133536133598_
                                            _hd133533133590_
                                            _hd133530133582_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133512133542_
                                              _g133513133545_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133512133542_ _g133513133545_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133512133542_ _g133513133545_)))
                           (let ()
                             (declare (not safe))
                             (_g133512133542_ _g133513133545_)))))
                   (let ()
                     (declare (not safe))
                     (_g133512133542_ _g133513133545_)))
               (let ()
                 (declare (not safe))
                 (_g133512133542_ _g133513133545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133512133542_
                                                  _g133513133545_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133512133542_ _g133513133545_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133512133542_ _g133513133545_)))))
                       (let ()
                         (declare (not safe))
                         (_g133512133542_ _g133513133545_)))))
               (let ()
                 (declare (not safe))
                 (_g133512133542_ _g133513133545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133511134084_ _L133078_))
                                         _stx131332_))))
                             _hd133175133298_
                             _kw-ref133173133319_
                             _hd133163133285_
                             _hd133154133261_
                             _hd133145133237_)
                            (let ()
                              (declare (not safe))
                              (_g133119133181_ _g133120133184_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133168133303_
                                                   _target133165133290_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133119133181_
                                                 _g133120133184_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133119133181_ _g133120133184_))))))
                            (let ()
                              (declare (not safe))
                              (_g133119133181_ _g133120133184_)))
                        (let ()
                          (declare (not safe))
                          (_g133119133181_ _g133120133184_)))
                    (let ()
                      (declare (not safe))
                      (_g133119133181_ _g133120133184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133119133181_
                                                       _g133120133184_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133119133181_
                                                   _g133120133184_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133119133181_
                                               _g133120133184_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133119133181_ _g133120133184_)))))
                            (let ()
                              (declare (not safe))
                              (_g133119133181_ _g133120133184_)))
                        (let ()
                          (declare (not safe))
                          (_g133119133181_ _g133120133184_)))))
                (let ()
                  (declare (not safe))
                  (_g133119133181_ _g133120133184_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133119133181_
                                                       _g133120133184_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133119133181_
                                                   _g133120133184_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133119133181_ _g133120133184_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133119133181_ _g133120133184_)))
                            (let ()
                              (declare (not safe))
                              (_g133119133181_ _g133120133184_)))))
                    (let ()
                      (declare (not safe))
                      (_g133119133181_ _g133120133184_)))
                (let ()
                  (declare (not safe))
                  (_g133119133181_ _g133120133184_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133119133181_
                                                       _g133120133184_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133119133181_
                                               _g133120133184_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133119133181_ _g133120133184_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133119133181_ _g133120133184_)))
                            (let ()
                              (declare (not safe))
                              (_g133119133181_ _g133120133184_)))))
                    (let ()
                      (declare (not safe))
                      (_g133119133181_ _g133120133184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133119133181_
                                                       _g133120133184_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133119133181_
                                               _g133120133184_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133119133181_ _g133120133184_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133119133181_ _g133120133184_)))))
                            (let ()
                              (declare (not safe))
                              (_g133119133181_ _g133120133184_))))))
                (declare (not safe))
                (_g133118134087_ _L133077_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132953133071_
                                                    _hd132950133063_
                                                    _hd132947133055_
                                                    _hd132944133047_
                                                    _hd132926132999_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132906132959_
                                                      _g132907132962_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132906132959_
                                              _g132907132962_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132906132959_ _g132907132962_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132906132959_ _g132907132962_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132906132959_ _g132907132962_)))))
                       (let ()
                         (declare (not safe))
                         (_g132906132959_ _g132907132962_)))
                   (let ()
                     (declare (not safe))
                     (_g132906132959_ _g132907132962_)))
               (let ()
                 (declare (not safe))
                 (_g132906132959_ _g132907132962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132906132959_
                                                  _g132907132962_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132906132959_
                                              _g132907132962_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132906132959_ _g132907132962_)))))
                           (let ()
                             (declare (not safe))
                             (_g132906132959_ _g132907132962_)))))
                   (let ()
                     (declare (not safe))
                     (_g132906132959_ _g132907132962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132906132959_
                                                      _g132907132962_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132906132959_
                                                  _g132907132962_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132906132959_
                                              _g132907132962_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132906132959_ _g132907132962_)))))
                           (let ()
                             (declare (not safe))
                             (_g132906132959_ _g132907132962_)))
                       (let ()
                         (declare (not safe))
                         (_g132906132959_ _g132907132962_)))))
               (let ()
                 (declare (not safe))
                 (_g132906132959_ _g132907132962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132906132959_
                                                  _g132907132962_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132906132959_ _g132907132962_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132906132959_ _g132907132962_)))
                           (let ()
                             (declare (not safe))
                             (_g132906132959_ _g132907132962_)))
                       (let ()
                         (declare (not safe))
                         (_g132906132959_ _g132907132962_)))))
               (let ()
                 (declare (not safe))
                 (_g132906132959_ _g132907132962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132905134090_ _L131404_))
                                         _stx131332_))))))))
                  (___kont134270134271_ (lambda () _stx131332_)))
              (let ((___match134299134300_
                     (lambda (_e131346131372_
                              _hd131345131375_
                              _tl131344131377_
                              _e131349131380_
                              _hd131348131383_
                              _tl131347131385_
                              _e131352131388_
                              _hd131351131391_
                              _tl131350131393_
                              _e131355131396_
                              _hd131354131399_
                              _tl131353131401_)
                       (let ((_L131404_ _hd131354131399_)
                             (_L131405_ _hd131351131391_))
                         (if (let ((__tmp135566
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131405_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135566))
                             (___kont134268134269_ _L131404_ _L131405_)
                             (___kont134270134271_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134266134267_))
                    (let ((_e131346131372_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134266134267_))))
                      (let ((_tl131344131377_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131346131372_)))
                            (_hd131345131375_
                             (let ()
                               (declare (not safe))
                               (##car _e131346131372_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131344131377_))
                            (let ((_e131349131380_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131344131377_))))
                              (let ((_tl131347131385_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131349131380_)))
                                    (_hd131348131383_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131349131380_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131348131383_))
                                    (let ((_e131352131388_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131348131383_))))
                                      (let ((_tl131350131393_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131352131388_)))
                                            (_hd131351131391_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131352131388_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131350131393_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131347131385_))
                                                (let ((_e131355131396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131347131385_))))
                                                  (let ((_tl131353131401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131355131396_)))
                                                        (_hd131354131399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131355131396_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131353131401_))
                                                        (___match134299134300_
                                                         _e131346131372_
                                                         _hd131345131375_
                                                         _tl131344131377_
                                                         _e131349131380_
                                                         _hd131348131383_
                                                         _tl131347131385_
                                                         _e131352131388_
                                                         _hd131351131391_
                                                         _tl131350131393_
                                                         _e131355131396_
                                                         _hd131354131399_
                                                         _tl131353131401_)
                                                        (___kont134270134271_))))
                                                (___kont134270134271_))
                                            (___kont134270134271_))))
                                    (___kont134270134271_))))
                            (___kont134270134271_))))
                    (___kont134270134271_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx130291_ _self130292_ _methods130293_ _slots130294_)
        (let* ((___stx134302134303_ _stx130291_)
               (_g130302130524_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134302134303_)))))
          (let ((___kont134304134305_
                 (lambda (_L131281_ _L131282_ _L131283_ _L131284_)
                   (let ((__tmp135567
                          (let () (declare (not safe)) (gx#stx-e _L131282_))))
                     (declare (not safe))
                     (hash-put! _methods130293_ __tmp135567 '#t))
                   (for-each
                    (lambda (_g131317131319_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131317131319_
                         _self130292_
                         _methods130293_
                         _slots130294_)))
                    (let ((__tmp135568
                           (lambda (_g131321131324_ _g131322131326_)
                             (let ()
                               (declare (not safe))
                               (cons _g131321131324_ _g131322131326_)))))
                      (declare (not safe))
                      (foldr1 __tmp135568 '() _L131281_)))))
                (___kont134308134309_
                 (lambda (_L131116_ _L131117_ _L131118_ _L131119_ _L131120_)
                   (let ((__tmp135569
                          (let () (declare (not safe)) (gx#stx-e _L131117_))))
                     (declare (not safe))
                     (hash-put! _methods130293_ __tmp135569 '#t))
                   (for-each
                    (lambda (_g131160131162_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131160131162_
                         _self130292_
                         _methods130293_
                         _slots130294_)))
                    (let ((__tmp135570
                           (lambda (_g131164131167_ _g131165131169_)
                             (let ()
                               (declare (not safe))
                               (cons _g131164131167_ _g131165131169_)))))
                      (declare (not safe))
                      (foldr1 __tmp135570 '() _L131116_)))))
                (___kont134312134313_
                 (lambda (_L130949_ _L130950_ _L130951_)
                   (let ((__tmp135571
                          (let () (declare (not safe)) (gx#stx-e _L130949_))))
                     (declare (not safe))
                     (hash-put! _slots130294_ __tmp135571 '#t))))
                (___kont134314134315_
                 (lambda (_L130826_ _L130827_ _L130828_ _L130829_)
                   (let ((__tmp135572
                          (let () (declare (not safe)) (gx#stx-e _L130827_))))
                     (declare (not safe))
                     (hash-put! _slots130294_ __tmp135572 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130826_
                      _self130292_
                      _methods130293_
                      _slots130294_))))
                (___kont134316134317_
                 (lambda (_L130700_ _L130701_)
                   (let* ((_accessor130723_
                           (let ((__tmp135573
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130701_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135573)))
                          (_klass130725_
                           (let ((__tmp135574
                                  (##structure-ref
                                   _accessor130723_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130291_
                              __tmp135574)))
                          (_slot130727_
                           (##structure-ref
                            _accessor130723_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135576
                                     (##structure-ref
                                      _accessor130723_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135576))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130725_
                                     _slot130727_))
                                  (##structure-ref
                                   _klass130725_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135575
                                (##structure-ref
                                 _accessor130723_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots130294_ __tmp135575 '#t))))))
                (___kont134318134319_
                 (lambda (_L130600_ _L130601_ _L130602_)
                   (let* ((_mutator130629_
                           (let ((__tmp135577
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130602_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135577)))
                          (_klass130631_
                           (let ((__tmp135578
                                  (##structure-ref
                                   _mutator130629_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130291_
                              __tmp135578)))
                          (_slot130633_
                           (##structure-ref
                            _mutator130629_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135579
                                     (##structure-ref
                                      _mutator130629_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135579))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130631_
                                     _slot130633_))
                                  (##structure-ref
                                   _klass130631_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots130294_ _slot130633_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130600_
                        _self130292_
                        _methods130293_
                        _slots130294_)))))
                (___kont134320134321_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx130291_
                      _self130292_
                      _methods130293_
                      _slots130294_)))))
            (let* ((___match134801134802_
                    (lambda (_e130498130536_
                             _hd130497130539_
                             _tl130496130541_
                             _e130501130544_
                             _hd130500130547_
                             _tl130499130549_
                             _e130504130552_
                             _hd130503130555_
                             _tl130502130557_
                             _e130507130560_
                             _hd130506130563_
                             _tl130505130565_
                             _e130510130568_
                             _hd130509130571_
                             _tl130508130573_
                             _e130513130576_
                             _hd130512130579_
                             _tl130511130581_
                             _e130516130584_
                             _hd130515130587_
                             _tl130514130589_
                             _e130519130592_
                             _hd130518130595_
                             _tl130517130597_)
                      (let ((_L130600_ _hd130518130595_)
                            (_L130601_ _hd130515130587_)
                            (_L130602_ _hd130506130563_))
                        (if (and (let ((__tmp135580
                                        (let ((__tmp135581
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130602_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135581))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135580
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130601_
                                    _self130292_)))
                            (___kont134318134319_
                             _L130600_
                             _L130601_
                             _L130602_)
                            (___kont134320134321_)))))
                   (___match134799134800_
                    (lambda (_e130498130536_
                             _hd130497130539_
                             _tl130496130541_
                             _e130501130544_
                             _hd130500130547_
                             _tl130499130549_
                             _e130504130552_
                             _hd130503130555_
                             _tl130502130557_
                             _e130507130560_
                             _hd130506130563_
                             _tl130505130565_
                             _e130510130568_
                             _hd130509130571_
                             _tl130508130573_
                             _e130513130576_
                             _hd130512130579_
                             _tl130511130581_
                             _e130516130584_
                             _hd130515130587_
                             _tl130514130589_
                             _e130519130592_
                             _hd130518130595_
                             _tl130517130597_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130517130597_))
                          (___match134801134802_
                           _e130498130536_
                           _hd130497130539_
                           _tl130496130541_
                           _e130501130544_
                           _hd130500130547_
                           _tl130499130549_
                           _e130504130552_
                           _hd130503130555_
                           _tl130502130557_
                           _e130507130560_
                           _hd130506130563_
                           _tl130505130565_
                           _e130510130568_
                           _hd130509130571_
                           _tl130508130573_
                           _e130513130576_
                           _hd130512130579_
                           _tl130511130581_
                           _e130516130584_
                           _hd130515130587_
                           _tl130514130589_
                           _e130519130592_
                           _hd130518130595_
                           _tl130517130597_)
                          (___kont134320134321_))))
                   (___match134793134794_
                    (lambda (_e130498130536_
                             _hd130497130539_
                             _tl130496130541_
                             _e130501130544_
                             _hd130500130547_
                             _tl130499130549_
                             _e130504130552_
                             _hd130503130555_
                             _tl130502130557_
                             _e130507130560_
                             _hd130506130563_
                             _tl130505130565_
                             _e130510130568_
                             _hd130509130571_
                             _tl130508130573_
                             _e130513130576_
                             _hd130512130579_
                             _tl130511130581_
                             _e130516130584_
                             _hd130515130587_
                             _tl130514130589_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130508130573_))
                          (let ((_e130519130592_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130508130573_))))
                            (let ((_tl130517130597_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130519130592_)))
                                  (_hd130518130595_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130519130592_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130517130597_))
                                  (___match134801134802_
                                   _e130498130536_
                                   _hd130497130539_
                                   _tl130496130541_
                                   _e130501130544_
                                   _hd130500130547_
                                   _tl130499130549_
                                   _e130504130552_
                                   _hd130503130555_
                                   _tl130502130557_
                                   _e130507130560_
                                   _hd130506130563_
                                   _tl130505130565_
                                   _e130510130568_
                                   _hd130509130571_
                                   _tl130508130573_
                                   _e130513130576_
                                   _hd130512130579_
                                   _tl130511130581_
                                   _e130516130584_
                                   _hd130515130587_
                                   _tl130514130589_
                                   _e130519130592_
                                   _hd130518130595_
                                   _tl130517130597_)
                                  (___kont134320134321_))))
                          (___kont134320134321_))))
                   (___match134739134740_
                    (lambda (_e130474130644_
                             _hd130473130647_
                             _tl130472130649_
                             _e130477130652_
                             _hd130476130655_
                             _tl130475130657_
                             _e130480130660_
                             _hd130479130663_
                             _tl130478130665_
                             _e130483130668_
                             _hd130482130671_
                             _tl130481130673_
                             _e130486130676_
                             _hd130485130679_
                             _tl130484130681_
                             _e130489130684_
                             _hd130488130687_
                             _tl130487130689_
                             _e130492130692_
                             _hd130491130695_
                             _tl130490130697_)
                      (let ((_L130700_ _hd130491130695_)
                            (_L130701_ _hd130482130671_))
                        (if (and (let ((__tmp135582
                                        (let ((__tmp135583
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130701_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135583))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135582
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130700_
                                    _self130292_)))
                            (___kont134316134317_ _L130700_ _L130701_)
                            (___kont134320134321_)))))
                   (___match134737134738_
                    (lambda (_e130474130644_
                             _hd130473130647_
                             _tl130472130649_
                             _e130477130652_
                             _hd130476130655_
                             _tl130475130657_
                             _e130480130660_
                             _hd130479130663_
                             _tl130478130665_
                             _e130483130668_
                             _hd130482130671_
                             _tl130481130673_
                             _e130486130676_
                             _hd130485130679_
                             _tl130484130681_
                             _e130489130684_
                             _hd130488130687_
                             _tl130487130689_
                             _e130492130692_
                             _hd130491130695_
                             _tl130490130697_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130484130681_))
                          (___match134739134740_
                           _e130474130644_
                           _hd130473130647_
                           _tl130472130649_
                           _e130477130652_
                           _hd130476130655_
                           _tl130475130657_
                           _e130480130660_
                           _hd130479130663_
                           _tl130478130665_
                           _e130483130668_
                           _hd130482130671_
                           _tl130481130673_
                           _e130486130676_
                           _hd130485130679_
                           _tl130484130681_
                           _e130489130684_
                           _hd130488130687_
                           _tl130487130689_
                           _e130492130692_
                           _hd130491130695_
                           _tl130490130697_)
                          (___match134793134794_
                           _e130474130644_
                           _hd130473130647_
                           _tl130472130649_
                           _e130477130652_
                           _hd130476130655_
                           _tl130475130657_
                           _e130480130660_
                           _hd130479130663_
                           _tl130478130665_
                           _e130483130668_
                           _hd130482130671_
                           _tl130481130673_
                           _e130486130676_
                           _hd130485130679_
                           _tl130484130681_
                           _e130489130684_
                           _hd130488130687_
                           _tl130487130689_
                           _e130492130692_
                           _hd130491130695_
                           _tl130490130697_))))
                   (___match134683134684_
                    (lambda (_e130439130738_
                             _hd130438130741_
                             _tl130437130743_
                             _e130442130746_
                             _hd130441130749_
                             _tl130440130751_
                             _e130445130754_
                             _hd130444130757_
                             _tl130443130759_
                             _e130448130762_
                             _hd130447130765_
                             _tl130446130767_
                             _e130451130770_
                             _hd130450130773_
                             _tl130449130775_
                             _e130454130778_
                             _hd130453130781_
                             _tl130452130783_
                             _e130457130786_
                             _hd130456130789_
                             _tl130455130791_
                             _e130460130794_
                             _hd130459130797_
                             _tl130458130799_
                             _e130463130802_
                             _hd130462130805_
                             _tl130461130807_
                             _e130466130810_
                             _hd130465130813_
                             _tl130464130815_
                             _e130469130818_
                             _hd130468130821_
                             _tl130467130823_)
                      (let ((_L130826_ _hd130468130821_)
                            (_L130827_ _hd130465130813_)
                            (_L130828_ _hd130456130789_)
                            (_L130829_ _hd130447130765_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130829_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130829_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130828_
                                    _self130292_)))
                            (___kont134314134315_
                             _L130826_
                             _L130827_
                             _L130828_
                             _L130829_)
                            (___kont134320134321_)))))
                   (___match134675134676_
                    (lambda (_e130439130738_
                             _hd130438130741_
                             _tl130437130743_
                             _e130442130746_
                             _hd130441130749_
                             _tl130440130751_
                             _e130445130754_
                             _hd130444130757_
                             _tl130443130759_
                             _e130448130762_
                             _hd130447130765_
                             _tl130446130767_
                             _e130451130770_
                             _hd130450130773_
                             _tl130449130775_
                             _e130454130778_
                             _hd130453130781_
                             _tl130452130783_
                             _e130457130786_
                             _hd130456130789_
                             _tl130455130791_
                             _e130460130794_
                             _hd130459130797_
                             _tl130458130799_
                             _e130463130802_
                             _hd130462130805_
                             _tl130461130807_
                             _e130466130810_
                             _hd130465130813_
                             _tl130464130815_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130458130799_))
                          (let ((_e130469130818_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130458130799_))))
                            (let ((_tl130467130823_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130469130818_)))
                                  (_hd130468130821_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130469130818_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130467130823_))
                                  (___match134683134684_
                                   _e130439130738_
                                   _hd130438130741_
                                   _tl130437130743_
                                   _e130442130746_
                                   _hd130441130749_
                                   _tl130440130751_
                                   _e130445130754_
                                   _hd130444130757_
                                   _tl130443130759_
                                   _e130448130762_
                                   _hd130447130765_
                                   _tl130446130767_
                                   _e130451130770_
                                   _hd130450130773_
                                   _tl130449130775_
                                   _e130454130778_
                                   _hd130453130781_
                                   _tl130452130783_
                                   _e130457130786_
                                   _hd130456130789_
                                   _tl130455130791_
                                   _e130460130794_
                                   _hd130459130797_
                                   _tl130458130799_
                                   _e130463130802_
                                   _hd130462130805_
                                   _tl130461130807_
                                   _e130466130810_
                                   _hd130465130813_
                                   _tl130464130815_
                                   _e130469130818_
                                   _hd130468130821_
                                   _tl130467130823_)
                                  (___kont134320134321_))))
                          (___match134799134800_
                           _e130439130738_
                           _hd130438130741_
                           _tl130437130743_
                           _e130442130746_
                           _hd130441130749_
                           _tl130440130751_
                           _e130445130754_
                           _hd130444130757_
                           _tl130443130759_
                           _e130448130762_
                           _hd130447130765_
                           _tl130446130767_
                           _e130451130770_
                           _hd130450130773_
                           _tl130449130775_
                           _e130454130778_
                           _hd130453130781_
                           _tl130452130783_
                           _e130457130786_
                           _hd130456130789_
                           _tl130455130791_
                           _e130460130794_
                           _hd130459130797_
                           _tl130458130799_))))
                   (___match134597134598_
                    (lambda (_e130405130869_
                             _hd130404130872_
                             _tl130403130874_
                             _e130408130877_
                             _hd130407130880_
                             _tl130406130882_
                             _e130411130885_
                             _hd130410130888_
                             _tl130409130890_
                             _e130414130893_
                             _hd130413130896_
                             _tl130412130898_
                             _e130417130901_
                             _hd130416130904_
                             _tl130415130906_
                             _e130420130909_
                             _hd130419130912_
                             _tl130418130914_
                             _e130423130917_
                             _hd130422130920_
                             _tl130421130922_
                             _e130426130925_
                             _hd130425130928_
                             _tl130424130930_
                             _e130429130933_
                             _hd130428130936_
                             _tl130427130938_
                             _e130432130941_
                             _hd130431130944_
                             _tl130430130946_)
                      (let ((_L130949_ _hd130431130944_)
                            (_L130950_ _hd130422130920_)
                            (_L130951_ _hd130413130896_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130951_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130951_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130950_
                                    _self130292_)))
                            (___kont134312134313_
                             _L130949_
                             _L130950_
                             _L130951_)
                            (___match134801134802_
                             _e130405130869_
                             _hd130404130872_
                             _tl130403130874_
                             _e130408130877_
                             _hd130407130880_
                             _tl130406130882_
                             _e130411130885_
                             _hd130410130888_
                             _tl130409130890_
                             _e130414130893_
                             _hd130413130896_
                             _tl130412130898_
                             _e130417130901_
                             _hd130416130904_
                             _tl130415130906_
                             _e130420130909_
                             _hd130419130912_
                             _tl130418130914_
                             _e130423130917_
                             _hd130422130920_
                             _tl130421130922_
                             _e130426130925_
                             _hd130425130928_
                             _tl130424130930_)))))
                   (___match134595134596_
                    (lambda (_e130405130869_
                             _hd130404130872_
                             _tl130403130874_
                             _e130408130877_
                             _hd130407130880_
                             _tl130406130882_
                             _e130411130885_
                             _hd130410130888_
                             _tl130409130890_
                             _e130414130893_
                             _hd130413130896_
                             _tl130412130898_
                             _e130417130901_
                             _hd130416130904_
                             _tl130415130906_
                             _e130420130909_
                             _hd130419130912_
                             _tl130418130914_
                             _e130423130917_
                             _hd130422130920_
                             _tl130421130922_
                             _e130426130925_
                             _hd130425130928_
                             _tl130424130930_
                             _e130429130933_
                             _hd130428130936_
                             _tl130427130938_
                             _e130432130941_
                             _hd130431130944_
                             _tl130430130946_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130424130930_))
                          (___match134597134598_
                           _e130405130869_
                           _hd130404130872_
                           _tl130403130874_
                           _e130408130877_
                           _hd130407130880_
                           _tl130406130882_
                           _e130411130885_
                           _hd130410130888_
                           _tl130409130890_
                           _e130414130893_
                           _hd130413130896_
                           _tl130412130898_
                           _e130417130901_
                           _hd130416130904_
                           _tl130415130906_
                           _e130420130909_
                           _hd130419130912_
                           _tl130418130914_
                           _e130423130917_
                           _hd130422130920_
                           _tl130421130922_
                           _e130426130925_
                           _hd130425130928_
                           _tl130424130930_
                           _e130429130933_
                           _hd130428130936_
                           _tl130427130938_
                           _e130432130941_
                           _hd130431130944_
                           _tl130430130946_)
                          (___match134675134676_
                           _e130405130869_
                           _hd130404130872_
                           _tl130403130874_
                           _e130408130877_
                           _hd130407130880_
                           _tl130406130882_
                           _e130411130885_
                           _hd130410130888_
                           _tl130409130890_
                           _e130414130893_
                           _hd130413130896_
                           _tl130412130898_
                           _e130417130901_
                           _hd130416130904_
                           _tl130415130906_
                           _e130420130909_
                           _hd130419130912_
                           _tl130418130914_
                           _e130423130917_
                           _hd130422130920_
                           _tl130421130922_
                           _e130426130925_
                           _hd130425130928_
                           _tl130424130930_
                           _e130429130933_
                           _hd130428130936_
                           _tl130427130938_
                           _e130432130941_
                           _hd130431130944_
                           _tl130430130946_))))
                   (___match134585134586_
                    (lambda (_e130405130869_
                             _hd130404130872_
                             _tl130403130874_
                             _e130408130877_
                             _hd130407130880_
                             _tl130406130882_
                             _e130411130885_
                             _hd130410130888_
                             _tl130409130890_
                             _e130414130893_
                             _hd130413130896_
                             _tl130412130898_
                             _e130417130901_
                             _hd130416130904_
                             _tl130415130906_
                             _e130420130909_
                             _hd130419130912_
                             _tl130418130914_
                             _e130423130917_
                             _hd130422130920_
                             _tl130421130922_
                             _e130426130925_
                             _hd130425130928_
                             _tl130424130930_
                             _e130429130933_
                             _hd130428130936_
                             _tl130427130938_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130428130936_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130427130938_))
                              (let ((_e130432130941_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130427130938_))))
                                (let ((_tl130430130946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130432130941_)))
                                      (_hd130431130944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130432130941_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130430130946_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130424130930_))
                                          (___match134597134598_
                                           _e130405130869_
                                           _hd130404130872_
                                           _tl130403130874_
                                           _e130408130877_
                                           _hd130407130880_
                                           _tl130406130882_
                                           _e130411130885_
                                           _hd130410130888_
                                           _tl130409130890_
                                           _e130414130893_
                                           _hd130413130896_
                                           _tl130412130898_
                                           _e130417130901_
                                           _hd130416130904_
                                           _tl130415130906_
                                           _e130420130909_
                                           _hd130419130912_
                                           _tl130418130914_
                                           _e130423130917_
                                           _hd130422130920_
                                           _tl130421130922_
                                           _e130426130925_
                                           _hd130425130928_
                                           _tl130424130930_
                                           _e130429130933_
                                           _hd130428130936_
                                           _tl130427130938_
                                           _e130432130941_
                                           _hd130431130944_
                                           _tl130430130946_)
                                          (___match134675134676_
                                           _e130405130869_
                                           _hd130404130872_
                                           _tl130403130874_
                                           _e130408130877_
                                           _hd130407130880_
                                           _tl130406130882_
                                           _e130411130885_
                                           _hd130410130888_
                                           _tl130409130890_
                                           _e130414130893_
                                           _hd130413130896_
                                           _tl130412130898_
                                           _e130417130901_
                                           _hd130416130904_
                                           _tl130415130906_
                                           _e130420130909_
                                           _hd130419130912_
                                           _tl130418130914_
                                           _e130423130917_
                                           _hd130422130920_
                                           _tl130421130922_
                                           _e130426130925_
                                           _hd130425130928_
                                           _tl130424130930_
                                           _e130429130933_
                                           _hd130428130936_
                                           _tl130427130938_
                                           _e130432130941_
                                           _hd130431130944_
                                           _tl130430130946_))
                                      (___match134799134800_
                                       _e130405130869_
                                       _hd130404130872_
                                       _tl130403130874_
                                       _e130408130877_
                                       _hd130407130880_
                                       _tl130406130882_
                                       _e130411130885_
                                       _hd130410130888_
                                       _tl130409130890_
                                       _e130414130893_
                                       _hd130413130896_
                                       _tl130412130898_
                                       _e130417130901_
                                       _hd130416130904_
                                       _tl130415130906_
                                       _e130420130909_
                                       _hd130419130912_
                                       _tl130418130914_
                                       _e130423130917_
                                       _hd130422130920_
                                       _tl130421130922_
                                       _e130426130925_
                                       _hd130425130928_
                                       _tl130424130930_))))
                              (___match134799134800_
                               _e130405130869_
                               _hd130404130872_
                               _tl130403130874_
                               _e130408130877_
                               _hd130407130880_
                               _tl130406130882_
                               _e130411130885_
                               _hd130410130888_
                               _tl130409130890_
                               _e130414130893_
                               _hd130413130896_
                               _tl130412130898_
                               _e130417130901_
                               _hd130416130904_
                               _tl130415130906_
                               _e130420130909_
                               _hd130419130912_
                               _tl130418130914_
                               _e130423130917_
                               _hd130422130920_
                               _tl130421130922_
                               _e130426130925_
                               _hd130425130928_
                               _tl130424130930_))
                          (___match134799134800_
                           _e130405130869_
                           _hd130404130872_
                           _tl130403130874_
                           _e130408130877_
                           _hd130407130880_
                           _tl130406130882_
                           _e130411130885_
                           _hd130410130888_
                           _tl130409130890_
                           _e130414130893_
                           _hd130413130896_
                           _tl130412130898_
                           _e130417130901_
                           _hd130416130904_
                           _tl130415130906_
                           _e130420130909_
                           _hd130419130912_
                           _tl130418130914_
                           _e130423130917_
                           _hd130422130920_
                           _tl130421130922_
                           _e130426130925_
                           _hd130425130928_
                           _tl130424130930_))))
                   (___match134517134518_
                    (lambda (_e130354130988_
                             _hd130353130991_
                             _tl130352130993_
                             _e130357130996_
                             _hd130356130999_
                             _tl130355131001_
                             _e130360131004_
                             _hd130359131007_
                             _tl130358131009_
                             _e130363131012_
                             _hd130362131015_
                             _tl130361131017_
                             _e130366131020_
                             _hd130365131023_
                             _tl130364131025_
                             _e130369131028_
                             _hd130368131031_
                             _tl130367131033_
                             _e130372131036_
                             _hd130371131039_
                             _tl130370131041_
                             _e130375131044_
                             _hd130374131047_
                             _tl130373131049_
                             _e130378131052_
                             _hd130377131055_
                             _tl130376131057_
                             _e130381131060_
                             _hd130380131063_
                             _tl130379131065_
                             _e130384131068_
                             _hd130383131071_
                             _tl130382131073_
                             _e130387131076_
                             _hd130386131079_
                             _tl130385131081_
                             _e130390131084_
                             _hd130389131087_
                             _tl130388131089_
                             ___splice134310134311_
                             _target130391131092_
                             _tl130393131094_)
                      (letrec ((_loop130394131097_
                                (lambda (_hd130392131100_ _args130398131102_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130392131100_))
                                      (let ((_e130395131105_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130392131100_))))
                                        (let ((_lp-tl130397131110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130395131105_)))
                                              (_lp-hd130396131108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130395131105_))))
                                          (let ((__tmp135584
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130396131108_
                                                         _args130398131102_))))
                                            (declare (not safe))
                                            (_loop130394131097_
                                             _lp-tl130397131110_
                                             __tmp135584))))
                                      (let ((_args130399131113_
                                             (reverse _args130398131102_)))
                                        (let ((_L131116_ _args130399131113_)
                                              (_L131117_ _hd130389131087_)
                                              (_L131118_ _hd130380131063_)
                                              (_L131119_ _hd130371131039_)
                                              (_L131120_ _hd130362131015_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131120_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131119_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131118_
                                                      _self130292_)))
                                              (___kont134308134309_
                                               _L131116_
                                               _L131117_
                                               _L131118_
                                               _L131119_
                                               _L131120_)
                                              (___kont134320134321_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130394131097_ _target130391131092_ '())))))
                   (___match134475134476_
                    (lambda (_e130354130988_
                             _hd130353130991_
                             _tl130352130993_
                             _e130357130996_
                             _hd130356130999_
                             _tl130355131001_
                             _e130360131004_
                             _hd130359131007_
                             _tl130358131009_
                             _e130363131012_
                             _hd130362131015_
                             _tl130361131017_
                             _e130366131020_
                             _hd130365131023_
                             _tl130364131025_
                             _e130369131028_
                             _hd130368131031_
                             _tl130367131033_
                             _e130372131036_
                             _hd130371131039_
                             _tl130370131041_
                             _e130375131044_
                             _hd130374131047_
                             _tl130373131049_
                             _e130378131052_
                             _hd130377131055_
                             _tl130376131057_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130377131055_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130376131057_))
                              (let ((_e130381131060_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130376131057_))))
                                (let ((_tl130379131065_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130381131060_)))
                                      (_hd130380131063_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130381131060_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130379131065_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130373131049_))
                                          (let ((_e130384131068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130373131049_))))
                                            (let ((_tl130382131073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130384131068_)))
                                                  (_hd130383131071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130384131068_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130383131071_))
                                                  (let ((_e130387131076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130383131071_))))
                                                    (let ((_tl130385131081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130387131076_)))
                                                          (_hd130386131079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130387131076_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130386131079_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130386131079_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130385131081_))
                          (let ((_e130390131084_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130385131081_))))
                            (let ((_tl130388131089_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130390131084_)))
                                  (_hd130389131087_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130390131084_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130388131089_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130382131073_))
                                      (let ((___splice134310134311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130382131073_
                                                '0))))
                                        (let ((_tl130393131094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134310134311_
                                                  '1)))
                                              (_target130391131092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134310134311_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130393131094_))
                                              (___match134517134518_
                                               _e130354130988_
                                               _hd130353130991_
                                               _tl130352130993_
                                               _e130357130996_
                                               _hd130356130999_
                                               _tl130355131001_
                                               _e130360131004_
                                               _hd130359131007_
                                               _tl130358131009_
                                               _e130363131012_
                                               _hd130362131015_
                                               _tl130361131017_
                                               _e130366131020_
                                               _hd130365131023_
                                               _tl130364131025_
                                               _e130369131028_
                                               _hd130368131031_
                                               _tl130367131033_
                                               _e130372131036_
                                               _hd130371131039_
                                               _tl130370131041_
                                               _e130375131044_
                                               _hd130374131047_
                                               _tl130373131049_
                                               _e130378131052_
                                               _hd130377131055_
                                               _tl130376131057_
                                               _e130381131060_
                                               _hd130380131063_
                                               _tl130379131065_
                                               _e130384131068_
                                               _hd130383131071_
                                               _tl130382131073_
                                               _e130387131076_
                                               _hd130386131079_
                                               _tl130385131081_
                                               _e130390131084_
                                               _hd130389131087_
                                               _tl130388131089_
                                               ___splice134310134311_
                                               _target130391131092_
                                               _tl130393131094_)
                                              (___kont134320134321_))))
                                      (___kont134320134321_))
                                  (___kont134320134321_))))
                          (___kont134320134321_))
                      (___kont134320134321_))
                  (___kont134320134321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134320134321_))))
                                          (___match134799134800_
                                           _e130354130988_
                                           _hd130353130991_
                                           _tl130352130993_
                                           _e130357130996_
                                           _hd130356130999_
                                           _tl130355131001_
                                           _e130360131004_
                                           _hd130359131007_
                                           _tl130358131009_
                                           _e130363131012_
                                           _hd130362131015_
                                           _tl130361131017_
                                           _e130366131020_
                                           _hd130365131023_
                                           _tl130364131025_
                                           _e130369131028_
                                           _hd130368131031_
                                           _tl130367131033_
                                           _e130372131036_
                                           _hd130371131039_
                                           _tl130370131041_
                                           _e130375131044_
                                           _hd130374131047_
                                           _tl130373131049_))
                                      (___match134799134800_
                                       _e130354130988_
                                       _hd130353130991_
                                       _tl130352130993_
                                       _e130357130996_
                                       _hd130356130999_
                                       _tl130355131001_
                                       _e130360131004_
                                       _hd130359131007_
                                       _tl130358131009_
                                       _e130363131012_
                                       _hd130362131015_
                                       _tl130361131017_
                                       _e130366131020_
                                       _hd130365131023_
                                       _tl130364131025_
                                       _e130369131028_
                                       _hd130368131031_
                                       _tl130367131033_
                                       _e130372131036_
                                       _hd130371131039_
                                       _tl130370131041_
                                       _e130375131044_
                                       _hd130374131047_
                                       _tl130373131049_))))
                              (___match134799134800_
                               _e130354130988_
                               _hd130353130991_
                               _tl130352130993_
                               _e130357130996_
                               _hd130356130999_
                               _tl130355131001_
                               _e130360131004_
                               _hd130359131007_
                               _tl130358131009_
                               _e130363131012_
                               _hd130362131015_
                               _tl130361131017_
                               _e130366131020_
                               _hd130365131023_
                               _tl130364131025_
                               _e130369131028_
                               _hd130368131031_
                               _tl130367131033_
                               _e130372131036_
                               _hd130371131039_
                               _tl130370131041_
                               _e130375131044_
                               _hd130374131047_
                               _tl130373131049_))
                          (___match134585134586_
                           _e130354130988_
                           _hd130353130991_
                           _tl130352130993_
                           _e130357130996_
                           _hd130356130999_
                           _tl130355131001_
                           _e130360131004_
                           _hd130359131007_
                           _tl130358131009_
                           _e130363131012_
                           _hd130362131015_
                           _tl130361131017_
                           _e130366131020_
                           _hd130365131023_
                           _tl130364131025_
                           _e130369131028_
                           _hd130368131031_
                           _tl130367131033_
                           _e130372131036_
                           _hd130371131039_
                           _tl130370131041_
                           _e130375131044_
                           _hd130374131047_
                           _tl130373131049_
                           _e130378131052_
                           _hd130377131055_
                           _tl130376131057_))))
                   (___match134407134408_
                    (lambda (_e130310131177_
                             _hd130309131180_
                             _tl130308131182_
                             _e130313131185_
                             _hd130312131188_
                             _tl130311131190_
                             _e130316131193_
                             _hd130315131196_
                             _tl130314131198_
                             _e130319131201_
                             _hd130318131204_
                             _tl130317131206_
                             _e130322131209_
                             _hd130321131212_
                             _tl130320131214_
                             _e130325131217_
                             _hd130324131220_
                             _tl130323131222_
                             _e130328131225_
                             _hd130327131228_
                             _tl130326131230_
                             _e130331131233_
                             _hd130330131236_
                             _tl130329131238_
                             _e130334131241_
                             _hd130333131244_
                             _tl130332131246_
                             _e130337131249_
                             _hd130336131252_
                             _tl130335131254_
                             ___splice134306134307_
                             _target130338131257_
                             _tl130340131259_)
                      (letrec ((_loop130341131262_
                                (lambda (_hd130339131265_ _args130345131267_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130339131265_))
                                      (let ((_e130342131270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130339131265_))))
                                        (let ((_lp-tl130344131275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130342131270_)))
                                              (_lp-hd130343131273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130342131270_))))
                                          (let ((__tmp135585
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130343131273_
                                                         _args130345131267_))))
                                            (declare (not safe))
                                            (_loop130341131262_
                                             _lp-tl130344131275_
                                             __tmp135585))))
                                      (let ((_args130346131278_
                                             (reverse _args130345131267_)))
                                        (let ((_L131281_ _args130346131278_)
                                              (_L131282_ _hd130336131252_)
                                              (_L131283_ _hd130327131228_)
                                              (_L131284_ _hd130318131204_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131284_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131283_
                                                      _self130292_)))
                                              (___kont134304134305_
                                               _L131281_
                                               _L131282_
                                               _L131283_
                                               _L131284_)
                                              (___match134595134596_
                                               _e130310131177_
                                               _hd130309131180_
                                               _tl130308131182_
                                               _e130313131185_
                                               _hd130312131188_
                                               _tl130311131190_
                                               _e130316131193_
                                               _hd130315131196_
                                               _tl130314131198_
                                               _e130319131201_
                                               _hd130318131204_
                                               _tl130317131206_
                                               _e130322131209_
                                               _hd130321131212_
                                               _tl130320131214_
                                               _e130325131217_
                                               _hd130324131220_
                                               _tl130323131222_
                                               _e130328131225_
                                               _hd130327131228_
                                               _tl130326131230_
                                               _e130331131233_
                                               _hd130330131236_
                                               _tl130329131238_
                                               _e130334131241_
                                               _hd130333131244_
                                               _tl130332131246_
                                               _e130337131249_
                                               _hd130336131252_
                                               _tl130335131254_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130341131262_ _target130338131257_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134302134303_))
                  (let ((_e130310131177_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134302134303_))))
                    (let ((_tl130308131182_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130310131177_)))
                          (_hd130309131180_
                           (let ()
                             (declare (not safe))
                             (##car _e130310131177_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130308131182_))
                          (let ((_e130313131185_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130308131182_))))
                            (let ((_tl130311131190_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130313131185_)))
                                  (_hd130312131188_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130313131185_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130312131188_))
                                  (let ((_e130316131193_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130312131188_))))
                                    (let ((_tl130314131198_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130316131193_)))
                                          (_hd130315131196_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130316131193_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130315131196_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130315131196_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130314131198_))
                                                  (let ((_e130319131201_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130314131198_))))
                                                    (let ((_tl130317131206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130319131201_)))
                                                          (_hd130318131204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130319131201_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130317131206_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130311131190_))
                      (let ((_e130322131209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130311131190_))))
                        (let ((_tl130320131214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130322131209_)))
                              (_hd130321131212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130322131209_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130321131212_))
                              (let ((_e130325131217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130321131212_))))
                                (let ((_tl130323131222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130325131217_)))
                                      (_hd130324131220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130325131217_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130324131220_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130324131220_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130323131222_))
                                              (let ((_e130328131225_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130323131222_))))
                                                (let ((_tl130326131230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130328131225_)))
                                                      (_hd130327131228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130328131225_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130326131230_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130320131214_))
                                                          (let ((_e130331131233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130320131214_))))
                    (let ((_tl130329131238_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130331131233_)))
                          (_hd130330131236_
                           (let ()
                             (declare (not safe))
                             (##car _e130331131233_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130330131236_))
                          (let ((_e130334131241_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130330131236_))))
                            (let ((_tl130332131246_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130334131241_)))
                                  (_hd130333131244_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130334131241_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130333131244_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130333131244_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130332131246_))
                                          (let ((_e130337131249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130332131246_))))
                                            (let ((_tl130335131254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130337131249_)))
                                                  (_hd130336131252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130337131249_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130335131254_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130329131238_))
                                                      (let ((___splice134306134307_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130329131238_ '0))))
                (let ((_tl130340131259_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134306134307_ '1)))
                      (_target130338131257_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134306134307_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130340131259_))
                      (___match134407134408_
                       _e130310131177_
                       _hd130309131180_
                       _tl130308131182_
                       _e130313131185_
                       _hd130312131188_
                       _tl130311131190_
                       _e130316131193_
                       _hd130315131196_
                       _tl130314131198_
                       _e130319131201_
                       _hd130318131204_
                       _tl130317131206_
                       _e130322131209_
                       _hd130321131212_
                       _tl130320131214_
                       _e130325131217_
                       _hd130324131220_
                       _tl130323131222_
                       _e130328131225_
                       _hd130327131228_
                       _tl130326131230_
                       _e130331131233_
                       _hd130330131236_
                       _tl130329131238_
                       _e130334131241_
                       _hd130333131244_
                       _tl130332131246_
                       _e130337131249_
                       _hd130336131252_
                       _tl130335131254_
                       ___splice134306134307_
                       _target130338131257_
                       _tl130340131259_)
                      (___match134595134596_
                       _e130310131177_
                       _hd130309131180_
                       _tl130308131182_
                       _e130313131185_
                       _hd130312131188_
                       _tl130311131190_
                       _e130316131193_
                       _hd130315131196_
                       _tl130314131198_
                       _e130319131201_
                       _hd130318131204_
                       _tl130317131206_
                       _e130322131209_
                       _hd130321131212_
                       _tl130320131214_
                       _e130325131217_
                       _hd130324131220_
                       _tl130323131222_
                       _e130328131225_
                       _hd130327131228_
                       _tl130326131230_
                       _e130331131233_
                       _hd130330131236_
                       _tl130329131238_
                       _e130334131241_
                       _hd130333131244_
                       _tl130332131246_
                       _e130337131249_
                       _hd130336131252_
                       _tl130335131254_))))
              (___match134595134596_
               _e130310131177_
               _hd130309131180_
               _tl130308131182_
               _e130313131185_
               _hd130312131188_
               _tl130311131190_
               _e130316131193_
               _hd130315131196_
               _tl130314131198_
               _e130319131201_
               _hd130318131204_
               _tl130317131206_
               _e130322131209_
               _hd130321131212_
               _tl130320131214_
               _e130325131217_
               _hd130324131220_
               _tl130323131222_
               _e130328131225_
               _hd130327131228_
               _tl130326131230_
               _e130331131233_
               _hd130330131236_
               _tl130329131238_
               _e130334131241_
               _hd130333131244_
               _tl130332131246_
               _e130337131249_
               _hd130336131252_
               _tl130335131254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134799134800_
                                                   _e130310131177_
                                                   _hd130309131180_
                                                   _tl130308131182_
                                                   _e130313131185_
                                                   _hd130312131188_
                                                   _tl130311131190_
                                                   _e130316131193_
                                                   _hd130315131196_
                                                   _tl130314131198_
                                                   _e130319131201_
                                                   _hd130318131204_
                                                   _tl130317131206_
                                                   _e130322131209_
                                                   _hd130321131212_
                                                   _tl130320131214_
                                                   _e130325131217_
                                                   _hd130324131220_
                                                   _tl130323131222_
                                                   _e130328131225_
                                                   _hd130327131228_
                                                   _tl130326131230_
                                                   _e130331131233_
                                                   _hd130330131236_
                                                   _tl130329131238_))))
                                          (___match134799134800_
                                           _e130310131177_
                                           _hd130309131180_
                                           _tl130308131182_
                                           _e130313131185_
                                           _hd130312131188_
                                           _tl130311131190_
                                           _e130316131193_
                                           _hd130315131196_
                                           _tl130314131198_
                                           _e130319131201_
                                           _hd130318131204_
                                           _tl130317131206_
                                           _e130322131209_
                                           _hd130321131212_
                                           _tl130320131214_
                                           _e130325131217_
                                           _hd130324131220_
                                           _tl130323131222_
                                           _e130328131225_
                                           _hd130327131228_
                                           _tl130326131230_
                                           _e130331131233_
                                           _hd130330131236_
                                           _tl130329131238_))
                                      (___match134475134476_
                                       _e130310131177_
                                       _hd130309131180_
                                       _tl130308131182_
                                       _e130313131185_
                                       _hd130312131188_
                                       _tl130311131190_
                                       _e130316131193_
                                       _hd130315131196_
                                       _tl130314131198_
                                       _e130319131201_
                                       _hd130318131204_
                                       _tl130317131206_
                                       _e130322131209_
                                       _hd130321131212_
                                       _tl130320131214_
                                       _e130325131217_
                                       _hd130324131220_
                                       _tl130323131222_
                                       _e130328131225_
                                       _hd130327131228_
                                       _tl130326131230_
                                       _e130331131233_
                                       _hd130330131236_
                                       _tl130329131238_
                                       _e130334131241_
                                       _hd130333131244_
                                       _tl130332131246_))
                                  (___match134799134800_
                                   _e130310131177_
                                   _hd130309131180_
                                   _tl130308131182_
                                   _e130313131185_
                                   _hd130312131188_
                                   _tl130311131190_
                                   _e130316131193_
                                   _hd130315131196_
                                   _tl130314131198_
                                   _e130319131201_
                                   _hd130318131204_
                                   _tl130317131206_
                                   _e130322131209_
                                   _hd130321131212_
                                   _tl130320131214_
                                   _e130325131217_
                                   _hd130324131220_
                                   _tl130323131222_
                                   _e130328131225_
                                   _hd130327131228_
                                   _tl130326131230_
                                   _e130331131233_
                                   _hd130330131236_
                                   _tl130329131238_))))
                          (___match134799134800_
                           _e130310131177_
                           _hd130309131180_
                           _tl130308131182_
                           _e130313131185_
                           _hd130312131188_
                           _tl130311131190_
                           _e130316131193_
                           _hd130315131196_
                           _tl130314131198_
                           _e130319131201_
                           _hd130318131204_
                           _tl130317131206_
                           _e130322131209_
                           _hd130321131212_
                           _tl130320131214_
                           _e130325131217_
                           _hd130324131220_
                           _tl130323131222_
                           _e130328131225_
                           _hd130327131228_
                           _tl130326131230_
                           _e130331131233_
                           _hd130330131236_
                           _tl130329131238_))))
                  (___match134737134738_
                   _e130310131177_
                   _hd130309131180_
                   _tl130308131182_
                   _e130313131185_
                   _hd130312131188_
                   _tl130311131190_
                   _e130316131193_
                   _hd130315131196_
                   _tl130314131198_
                   _e130319131201_
                   _hd130318131204_
                   _tl130317131206_
                   _e130322131209_
                   _hd130321131212_
                   _tl130320131214_
                   _e130325131217_
                   _hd130324131220_
                   _tl130323131222_
                   _e130328131225_
                   _hd130327131228_
                   _tl130326131230_))
              (___kont134320134321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134320134321_))
                                          (___kont134320134321_))
                                      (___kont134320134321_))))
                              (___kont134320134321_))))
                      (___kont134320134321_))
                  (___kont134320134321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134320134321_))
                                              (___kont134320134321_))
                                          (___kont134320134321_))))
                                  (___kont134320134321_))))
                          (___kont134320134321_))))
                  (___kont134320134321_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx129226_
               _self129227_
               _$klass129228_
               _methods129229_
               _slots129230_)
        (letrec ((_force-e129232_
                  (lambda (_target130289_)
                    (let ((__tmp135586
                           (let ((__tmp135590
                                  (let ((__tmp135591
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135591)))
                                 (__tmp135587
                                  (let ((__tmp135588
                                         (let ((__tmp135589
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130289_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135589))))
                                    (declare (not safe))
                                    (cons __tmp135588 '()))))
                             (declare (not safe))
                             (cons __tmp135590 __tmp135587))))
                      (declare (not safe))
                      (cons '%#call __tmp135586)))))
          (let* ((___stx134804134805_ _stx129226_)
                 (_g129240129462_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134804134805_)))))
            (let ((___kont134806134807_
                   (lambda (_L130235_ _L130236_ _L130237_ _L130238_)
                     (let ((_$method130283_
                            (let ((__tmp135592
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130236_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129229_ __tmp135592)))
                           (_args130284_
                            (map (lambda (_g130271130273_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130271130273_
                                      _self129227_
                                      _$klass129228_
                                      _methods129229_
                                      _slots129230_)))
                                 (let ((__tmp135593
                                        (lambda (_g130275130278_
                                                 _g130276130280_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130275130278_
                                                  _g130276130280_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135593 '() _L130235_)))))
                       (let ((__tmp135594
                              (let ((__tmp135595
                                     (let ((__tmp135599
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129232_
                                               _$method130283_)))
                                           (__tmp135596
                                            (let ((__tmp135597
                                                   (let ((__tmp135598
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self129227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135598))))
                                              (declare (not safe))
                                              (cons __tmp135597
                                                    _args130284_))))
                                       (declare (not safe))
                                       (cons __tmp135599 __tmp135596))))
                                (declare (not safe))
                                (cons '%#call __tmp135595))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135594 _stx129226_)))))
                  (___kont134810134811_
                   (lambda (_L130067_ _L130068_ _L130069_ _L130070_ _L130071_)
                     (let ((_$method130123_
                            (let ((__tmp135600
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130068_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129229_ __tmp135600)))
                           (_args130124_
                            (map (lambda (_g130111130113_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130111130113_
                                      _self129227_
                                      _$klass129228_
                                      _methods129229_
                                      _slots129230_)))
                                 (let ((__tmp135601
                                        (lambda (_g130115130118_
                                                 _g130116130120_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130115130118_
                                                  _g130116130120_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135601 '() _L130067_)))))
                       (let ((__tmp135602
                              (let ((__tmp135603
                                     (let ((__tmp135609
                                            (let ((__tmp135610
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135610)))
                                           (__tmp135604
                                            (let ((__tmp135608
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129232_
                                                      _$method130123_)))
                                                  (__tmp135605
                                                   (let ((__tmp135606
                                                          (let ((__tmp135607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129227_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135606
                                                           _args130124_))))
                                              (declare (not safe))
                                              (cons __tmp135608 __tmp135605))))
                                       (declare (not safe))
                                       (cons __tmp135609 __tmp135604))))
                                (declare (not safe))
                                (cons '%#call __tmp135603))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135602 _stx129226_)))))
                  (___kont134814134815_
                   (lambda (_L129898_ _L129899_ _L129900_)
                     (let* ((_$field129932_
                             (let ((__tmp135611
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129898_))))
                               (declare (not safe))
                               (hash-ref__0 _slots129230_ __tmp135611)))
                            (__tmp135612
                             (let ((__tmp135613
                                    (let ((__tmp135620
                                           (let ((__tmp135621
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass129228_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135621)))
                                          (__tmp135614
                                           (let ((__tmp135618
                                                  (let ((__tmp135619
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135619)))
                                                 (__tmp135615
                                                  (let ((__tmp135616
                                                         (let ((__tmp135617
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self129227_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135616 '()))))
                                             (declare (not safe))
                                             (cons __tmp135618 __tmp135615))))
                                      (declare (not safe))
                                      (cons __tmp135620 __tmp135614))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135613))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135612 _stx129226_))))
                  (___kont134816134817_
                   (lambda (_L129772_ _L129773_ _L129774_ _L129775_)
                     (let ((_$field129810_
                            (let ((__tmp135622
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129773_))))
                              (declare (not safe))
                              (hash-ref__0 _slots129230_ __tmp135622)))
                           (_expr129811_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129772_
                               _self129227_
                               _$klass129228_
                               _methods129229_
                               _slots129230_))))
                       (let ((__tmp135623
                              (let ((__tmp135624
                                     (let ((__tmp135632
                                            (let ((__tmp135633
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass129228_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135633)))
                                           (__tmp135625
                                            (let ((__tmp135630
                                                   (let ((__tmp135631
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135631)))
                                                  (__tmp135626
                                                   (let ((__tmp135628
                                                          (let ((__tmp135629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129227_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135629)))
                 (__tmp135627
                  (let () (declare (not safe)) (cons _expr129811_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135628
                                                           __tmp135627))))
                                              (declare (not safe))
                                              (cons __tmp135630 __tmp135626))))
                                       (declare (not safe))
                                       (cons __tmp135632 __tmp135625))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135624))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135623 _stx129226_)))))
                  (___kont134818134819_
                   (lambda (_L129644_ _L129645_)
                     (let* ((_accessor129667_
                             (let ((__tmp135634
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129645_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135634)))
                            (_klass129669_
                             (let ((__tmp135635
                                    (##structure-ref
                                     _accessor129667_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129226_
                                __tmp135635)))
                            (_slot129671_
                             (##structure-ref
                              _accessor129667_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135646
                                       (##structure-ref
                                        _accessor129667_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135646))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129669_
                                       _slot129671_))
                                    (##structure-ref
                                     _klass129669_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129226_
                           (let* ((_$field129677_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129230_ _slot129671_)))
                                  (__tmp135636
                                   (let ((__tmp135637
                                          (let ((__tmp135644
                                                 (let ((__tmp135645
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129228_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135645)))
                                                (__tmp135638
                                                 (let ((__tmp135642
                                                        (let ((__tmp135643
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129677_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135643)))
               (__tmp135639
                (let ((__tmp135640
                       (let ((__tmp135641
                              (let ()
                                (declare (not safe))
                                (cons _self129227_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135641))))
                  (declare (not safe))
                  (cons __tmp135640 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135642
                                                         __tmp135639))))
                                            (declare (not safe))
                                            (cons __tmp135644 __tmp135638))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135637))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135636
                              _stx129226_))))))
                  (___kont134820134821_
                   (lambda (_L129538_ _L129539_ _L129540_)
                     (let* ((_mutator129569_
                             (let ((__tmp135647
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129540_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135647)))
                            (_klass129571_
                             (let ((__tmp135648
                                    (##structure-ref
                                     _mutator129569_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129226_
                                __tmp135648)))
                            (_slot129573_
                             (##structure-ref
                              _mutator129569_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129575_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129538_
                                _self129227_
                                _$klass129228_
                                _methods129229_
                                _slots129230_))))
                       (if (and (let ((__tmp135670
                                       (##structure-ref
                                        _mutator129569_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135670))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129571_
                                       _slot129573_))
                                    (##structure-ref
                                     _klass129571_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135660
                                  (let ((__tmp135661
                                         (let ((__tmp135667
                                                (let ((__tmp135669
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135668
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129540_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135669
                                                        __tmp135668)))
                                               (__tmp135662
                                                (let ((__tmp135664
                                                       (let ((__tmp135666
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135665
                      (let () (declare (not safe)) (cons _L129539_ '()))))
                 (declare (not safe))
                 (cons __tmp135666 __tmp135665)))
              (__tmp135663
               (let () (declare (not safe)) (cons _expr129575_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135664
                                                        __tmp135663))))
                                           (declare (not safe))
                                           (cons __tmp135667 __tmp135662))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135661))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135660 _stx129226_))
                           (let* ((_$field129581_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129230_ _slot129573_)))
                                  (__tmp135649
                                   (let ((__tmp135650
                                          (let ((__tmp135658
                                                 (let ((__tmp135659
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129228_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135659)))
                                                (__tmp135651
                                                 (let ((__tmp135656
                                                        (let ((__tmp135657
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129581_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135657)))
               (__tmp135652
                (let ((__tmp135654
                       (let ((__tmp135655
                              (let ()
                                (declare (not safe))
                                (cons _self129227_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135655)))
                      (__tmp135653
                       (let () (declare (not safe)) (cons _expr129575_ '()))))
                  (declare (not safe))
                  (cons __tmp135654 __tmp135653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135656
                                                         __tmp135652))))
                                            (declare (not safe))
                                            (cons __tmp135658 __tmp135651))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135650))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135649
                              _stx129226_))))))
                  (___kont134822134823_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx129226_
                        _self129227_
                        _$klass129228_
                        _methods129229_
                        _slots129230_)))))
              (let* ((___match135303135304_
                      (lambda (_e129436129474_
                               _hd129435129477_
                               _tl129434129479_
                               _e129439129482_
                               _hd129438129485_
                               _tl129437129487_
                               _e129442129490_
                               _hd129441129493_
                               _tl129440129495_
                               _e129445129498_
                               _hd129444129501_
                               _tl129443129503_
                               _e129448129506_
                               _hd129447129509_
                               _tl129446129511_
                               _e129451129514_
                               _hd129450129517_
                               _tl129449129519_
                               _e129454129522_
                               _hd129453129525_
                               _tl129452129527_
                               _e129457129530_
                               _hd129456129533_
                               _tl129455129535_)
                        (let ((_L129538_ _hd129456129533_)
                              (_L129539_ _hd129453129525_)
                              (_L129540_ _hd129444129501_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129539_
                                      _self129227_))
                                   (let ((__tmp135671
                                          (let ((__tmp135672
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129540_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135672))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135671
                                      'gxc#!mutator::t)))
                              (___kont134820134821_
                               _L129538_
                               _L129539_
                               _L129540_)
                              (___kont134822134823_)))))
                     (___match135301135302_
                      (lambda (_e129436129474_
                               _hd129435129477_
                               _tl129434129479_
                               _e129439129482_
                               _hd129438129485_
                               _tl129437129487_
                               _e129442129490_
                               _hd129441129493_
                               _tl129440129495_
                               _e129445129498_
                               _hd129444129501_
                               _tl129443129503_
                               _e129448129506_
                               _hd129447129509_
                               _tl129446129511_
                               _e129451129514_
                               _hd129450129517_
                               _tl129449129519_
                               _e129454129522_
                               _hd129453129525_
                               _tl129452129527_
                               _e129457129530_
                               _hd129456129533_
                               _tl129455129535_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129455129535_))
                            (___match135303135304_
                             _e129436129474_
                             _hd129435129477_
                             _tl129434129479_
                             _e129439129482_
                             _hd129438129485_
                             _tl129437129487_
                             _e129442129490_
                             _hd129441129493_
                             _tl129440129495_
                             _e129445129498_
                             _hd129444129501_
                             _tl129443129503_
                             _e129448129506_
                             _hd129447129509_
                             _tl129446129511_
                             _e129451129514_
                             _hd129450129517_
                             _tl129449129519_
                             _e129454129522_
                             _hd129453129525_
                             _tl129452129527_
                             _e129457129530_
                             _hd129456129533_
                             _tl129455129535_)
                            (___kont134822134823_))))
                     (___match135295135296_
                      (lambda (_e129436129474_
                               _hd129435129477_
                               _tl129434129479_
                               _e129439129482_
                               _hd129438129485_
                               _tl129437129487_
                               _e129442129490_
                               _hd129441129493_
                               _tl129440129495_
                               _e129445129498_
                               _hd129444129501_
                               _tl129443129503_
                               _e129448129506_
                               _hd129447129509_
                               _tl129446129511_
                               _e129451129514_
                               _hd129450129517_
                               _tl129449129519_
                               _e129454129522_
                               _hd129453129525_
                               _tl129452129527_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129446129511_))
                            (let ((_e129457129530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129446129511_))))
                              (let ((_tl129455129535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129457129530_)))
                                    (_hd129456129533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129457129530_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129455129535_))
                                    (___match135303135304_
                                     _e129436129474_
                                     _hd129435129477_
                                     _tl129434129479_
                                     _e129439129482_
                                     _hd129438129485_
                                     _tl129437129487_
                                     _e129442129490_
                                     _hd129441129493_
                                     _tl129440129495_
                                     _e129445129498_
                                     _hd129444129501_
                                     _tl129443129503_
                                     _e129448129506_
                                     _hd129447129509_
                                     _tl129446129511_
                                     _e129451129514_
                                     _hd129450129517_
                                     _tl129449129519_
                                     _e129454129522_
                                     _hd129453129525_
                                     _tl129452129527_
                                     _e129457129530_
                                     _hd129456129533_
                                     _tl129455129535_)
                                    (___kont134822134823_))))
                            (___kont134822134823_))))
                     (___match135241135242_
                      (lambda (_e129412129588_
                               _hd129411129591_
                               _tl129410129593_
                               _e129415129596_
                               _hd129414129599_
                               _tl129413129601_
                               _e129418129604_
                               _hd129417129607_
                               _tl129416129609_
                               _e129421129612_
                               _hd129420129615_
                               _tl129419129617_
                               _e129424129620_
                               _hd129423129623_
                               _tl129422129625_
                               _e129427129628_
                               _hd129426129631_
                               _tl129425129633_
                               _e129430129636_
                               _hd129429129639_
                               _tl129428129641_)
                        (let ((_L129644_ _hd129429129639_)
                              (_L129645_ _hd129420129615_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129644_
                                      _self129227_))
                                   (let ((__tmp135673
                                          (let ((__tmp135674
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129645_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135674))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135673
                                      'gxc#!accessor::t)))
                              (___kont134818134819_ _L129644_ _L129645_)
                              (___kont134822134823_)))))
                     (___match135239135240_
                      (lambda (_e129412129588_
                               _hd129411129591_
                               _tl129410129593_
                               _e129415129596_
                               _hd129414129599_
                               _tl129413129601_
                               _e129418129604_
                               _hd129417129607_
                               _tl129416129609_
                               _e129421129612_
                               _hd129420129615_
                               _tl129419129617_
                               _e129424129620_
                               _hd129423129623_
                               _tl129422129625_
                               _e129427129628_
                               _hd129426129631_
                               _tl129425129633_
                               _e129430129636_
                               _hd129429129639_
                               _tl129428129641_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129422129625_))
                            (___match135241135242_
                             _e129412129588_
                             _hd129411129591_
                             _tl129410129593_
                             _e129415129596_
                             _hd129414129599_
                             _tl129413129601_
                             _e129418129604_
                             _hd129417129607_
                             _tl129416129609_
                             _e129421129612_
                             _hd129420129615_
                             _tl129419129617_
                             _e129424129620_
                             _hd129423129623_
                             _tl129422129625_
                             _e129427129628_
                             _hd129426129631_
                             _tl129425129633_
                             _e129430129636_
                             _hd129429129639_
                             _tl129428129641_)
                            (___match135295135296_
                             _e129412129588_
                             _hd129411129591_
                             _tl129410129593_
                             _e129415129596_
                             _hd129414129599_
                             _tl129413129601_
                             _e129418129604_
                             _hd129417129607_
                             _tl129416129609_
                             _e129421129612_
                             _hd129420129615_
                             _tl129419129617_
                             _e129424129620_
                             _hd129423129623_
                             _tl129422129625_
                             _e129427129628_
                             _hd129426129631_
                             _tl129425129633_
                             _e129430129636_
                             _hd129429129639_
                             _tl129428129641_))))
                     (___match135185135186_
                      (lambda (_e129377129684_
                               _hd129376129687_
                               _tl129375129689_
                               _e129380129692_
                               _hd129379129695_
                               _tl129378129697_
                               _e129383129700_
                               _hd129382129703_
                               _tl129381129705_
                               _e129386129708_
                               _hd129385129711_
                               _tl129384129713_
                               _e129389129716_
                               _hd129388129719_
                               _tl129387129721_
                               _e129392129724_
                               _hd129391129727_
                               _tl129390129729_
                               _e129395129732_
                               _hd129394129735_
                               _tl129393129737_
                               _e129398129740_
                               _hd129397129743_
                               _tl129396129745_
                               _e129401129748_
                               _hd129400129751_
                               _tl129399129753_
                               _e129404129756_
                               _hd129403129759_
                               _tl129402129761_
                               _e129407129764_
                               _hd129406129767_
                               _tl129405129769_)
                        (let ((_L129772_ _hd129406129767_)
                              (_L129773_ _hd129403129759_)
                              (_L129774_ _hd129394129735_)
                              (_L129775_ _hd129385129711_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129775_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129775_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129774_
                                      _self129227_)))
                              (___kont134816134817_
                               _L129772_
                               _L129773_
                               _L129774_
                               _L129775_)
                              (___kont134822134823_)))))
                     (___match135177135178_
                      (lambda (_e129377129684_
                               _hd129376129687_
                               _tl129375129689_
                               _e129380129692_
                               _hd129379129695_
                               _tl129378129697_
                               _e129383129700_
                               _hd129382129703_
                               _tl129381129705_
                               _e129386129708_
                               _hd129385129711_
                               _tl129384129713_
                               _e129389129716_
                               _hd129388129719_
                               _tl129387129721_
                               _e129392129724_
                               _hd129391129727_
                               _tl129390129729_
                               _e129395129732_
                               _hd129394129735_
                               _tl129393129737_
                               _e129398129740_
                               _hd129397129743_
                               _tl129396129745_
                               _e129401129748_
                               _hd129400129751_
                               _tl129399129753_
                               _e129404129756_
                               _hd129403129759_
                               _tl129402129761_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129396129745_))
                            (let ((_e129407129764_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129396129745_))))
                              (let ((_tl129405129769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129407129764_)))
                                    (_hd129406129767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129407129764_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129405129769_))
                                    (___match135185135186_
                                     _e129377129684_
                                     _hd129376129687_
                                     _tl129375129689_
                                     _e129380129692_
                                     _hd129379129695_
                                     _tl129378129697_
                                     _e129383129700_
                                     _hd129382129703_
                                     _tl129381129705_
                                     _e129386129708_
                                     _hd129385129711_
                                     _tl129384129713_
                                     _e129389129716_
                                     _hd129388129719_
                                     _tl129387129721_
                                     _e129392129724_
                                     _hd129391129727_
                                     _tl129390129729_
                                     _e129395129732_
                                     _hd129394129735_
                                     _tl129393129737_
                                     _e129398129740_
                                     _hd129397129743_
                                     _tl129396129745_
                                     _e129401129748_
                                     _hd129400129751_
                                     _tl129399129753_
                                     _e129404129756_
                                     _hd129403129759_
                                     _tl129402129761_
                                     _e129407129764_
                                     _hd129406129767_
                                     _tl129405129769_)
                                    (___kont134822134823_))))
                            (___match135301135302_
                             _e129377129684_
                             _hd129376129687_
                             _tl129375129689_
                             _e129380129692_
                             _hd129379129695_
                             _tl129378129697_
                             _e129383129700_
                             _hd129382129703_
                             _tl129381129705_
                             _e129386129708_
                             _hd129385129711_
                             _tl129384129713_
                             _e129389129716_
                             _hd129388129719_
                             _tl129387129721_
                             _e129392129724_
                             _hd129391129727_
                             _tl129390129729_
                             _e129395129732_
                             _hd129394129735_
                             _tl129393129737_
                             _e129398129740_
                             _hd129397129743_
                             _tl129396129745_))))
                     (___match135099135100_
                      (lambda (_e129343129818_
                               _hd129342129821_
                               _tl129341129823_
                               _e129346129826_
                               _hd129345129829_
                               _tl129344129831_
                               _e129349129834_
                               _hd129348129837_
                               _tl129347129839_
                               _e129352129842_
                               _hd129351129845_
                               _tl129350129847_
                               _e129355129850_
                               _hd129354129853_
                               _tl129353129855_
                               _e129358129858_
                               _hd129357129861_
                               _tl129356129863_
                               _e129361129866_
                               _hd129360129869_
                               _tl129359129871_
                               _e129364129874_
                               _hd129363129877_
                               _tl129362129879_
                               _e129367129882_
                               _hd129366129885_
                               _tl129365129887_
                               _e129370129890_
                               _hd129369129893_
                               _tl129368129895_)
                        (let ((_L129898_ _hd129369129893_)
                              (_L129899_ _hd129360129869_)
                              (_L129900_ _hd129351129845_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129900_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129900_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129899_
                                      _self129227_)))
                              (___kont134814134815_
                               _L129898_
                               _L129899_
                               _L129900_)
                              (___match135303135304_
                               _e129343129818_
                               _hd129342129821_
                               _tl129341129823_
                               _e129346129826_
                               _hd129345129829_
                               _tl129344129831_
                               _e129349129834_
                               _hd129348129837_
                               _tl129347129839_
                               _e129352129842_
                               _hd129351129845_
                               _tl129350129847_
                               _e129355129850_
                               _hd129354129853_
                               _tl129353129855_
                               _e129358129858_
                               _hd129357129861_
                               _tl129356129863_
                               _e129361129866_
                               _hd129360129869_
                               _tl129359129871_
                               _e129364129874_
                               _hd129363129877_
                               _tl129362129879_)))))
                     (___match135097135098_
                      (lambda (_e129343129818_
                               _hd129342129821_
                               _tl129341129823_
                               _e129346129826_
                               _hd129345129829_
                               _tl129344129831_
                               _e129349129834_
                               _hd129348129837_
                               _tl129347129839_
                               _e129352129842_
                               _hd129351129845_
                               _tl129350129847_
                               _e129355129850_
                               _hd129354129853_
                               _tl129353129855_
                               _e129358129858_
                               _hd129357129861_
                               _tl129356129863_
                               _e129361129866_
                               _hd129360129869_
                               _tl129359129871_
                               _e129364129874_
                               _hd129363129877_
                               _tl129362129879_
                               _e129367129882_
                               _hd129366129885_
                               _tl129365129887_
                               _e129370129890_
                               _hd129369129893_
                               _tl129368129895_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129362129879_))
                            (___match135099135100_
                             _e129343129818_
                             _hd129342129821_
                             _tl129341129823_
                             _e129346129826_
                             _hd129345129829_
                             _tl129344129831_
                             _e129349129834_
                             _hd129348129837_
                             _tl129347129839_
                             _e129352129842_
                             _hd129351129845_
                             _tl129350129847_
                             _e129355129850_
                             _hd129354129853_
                             _tl129353129855_
                             _e129358129858_
                             _hd129357129861_
                             _tl129356129863_
                             _e129361129866_
                             _hd129360129869_
                             _tl129359129871_
                             _e129364129874_
                             _hd129363129877_
                             _tl129362129879_
                             _e129367129882_
                             _hd129366129885_
                             _tl129365129887_
                             _e129370129890_
                             _hd129369129893_
                             _tl129368129895_)
                            (___match135177135178_
                             _e129343129818_
                             _hd129342129821_
                             _tl129341129823_
                             _e129346129826_
                             _hd129345129829_
                             _tl129344129831_
                             _e129349129834_
                             _hd129348129837_
                             _tl129347129839_
                             _e129352129842_
                             _hd129351129845_
                             _tl129350129847_
                             _e129355129850_
                             _hd129354129853_
                             _tl129353129855_
                             _e129358129858_
                             _hd129357129861_
                             _tl129356129863_
                             _e129361129866_
                             _hd129360129869_
                             _tl129359129871_
                             _e129364129874_
                             _hd129363129877_
                             _tl129362129879_
                             _e129367129882_
                             _hd129366129885_
                             _tl129365129887_
                             _e129370129890_
                             _hd129369129893_
                             _tl129368129895_))))
                     (___match135087135088_
                      (lambda (_e129343129818_
                               _hd129342129821_
                               _tl129341129823_
                               _e129346129826_
                               _hd129345129829_
                               _tl129344129831_
                               _e129349129834_
                               _hd129348129837_
                               _tl129347129839_
                               _e129352129842_
                               _hd129351129845_
                               _tl129350129847_
                               _e129355129850_
                               _hd129354129853_
                               _tl129353129855_
                               _e129358129858_
                               _hd129357129861_
                               _tl129356129863_
                               _e129361129866_
                               _hd129360129869_
                               _tl129359129871_
                               _e129364129874_
                               _hd129363129877_
                               _tl129362129879_
                               _e129367129882_
                               _hd129366129885_
                               _tl129365129887_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129366129885_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129365129887_))
                                (let ((_e129370129890_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129365129887_))))
                                  (let ((_tl129368129895_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129370129890_)))
                                        (_hd129369129893_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129370129890_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129368129895_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129362129879_))
                                            (___match135099135100_
                                             _e129343129818_
                                             _hd129342129821_
                                             _tl129341129823_
                                             _e129346129826_
                                             _hd129345129829_
                                             _tl129344129831_
                                             _e129349129834_
                                             _hd129348129837_
                                             _tl129347129839_
                                             _e129352129842_
                                             _hd129351129845_
                                             _tl129350129847_
                                             _e129355129850_
                                             _hd129354129853_
                                             _tl129353129855_
                                             _e129358129858_
                                             _hd129357129861_
                                             _tl129356129863_
                                             _e129361129866_
                                             _hd129360129869_
                                             _tl129359129871_
                                             _e129364129874_
                                             _hd129363129877_
                                             _tl129362129879_
                                             _e129367129882_
                                             _hd129366129885_
                                             _tl129365129887_
                                             _e129370129890_
                                             _hd129369129893_
                                             _tl129368129895_)
                                            (___match135177135178_
                                             _e129343129818_
                                             _hd129342129821_
                                             _tl129341129823_
                                             _e129346129826_
                                             _hd129345129829_
                                             _tl129344129831_
                                             _e129349129834_
                                             _hd129348129837_
                                             _tl129347129839_
                                             _e129352129842_
                                             _hd129351129845_
                                             _tl129350129847_
                                             _e129355129850_
                                             _hd129354129853_
                                             _tl129353129855_
                                             _e129358129858_
                                             _hd129357129861_
                                             _tl129356129863_
                                             _e129361129866_
                                             _hd129360129869_
                                             _tl129359129871_
                                             _e129364129874_
                                             _hd129363129877_
                                             _tl129362129879_
                                             _e129367129882_
                                             _hd129366129885_
                                             _tl129365129887_
                                             _e129370129890_
                                             _hd129369129893_
                                             _tl129368129895_))
                                        (___match135301135302_
                                         _e129343129818_
                                         _hd129342129821_
                                         _tl129341129823_
                                         _e129346129826_
                                         _hd129345129829_
                                         _tl129344129831_
                                         _e129349129834_
                                         _hd129348129837_
                                         _tl129347129839_
                                         _e129352129842_
                                         _hd129351129845_
                                         _tl129350129847_
                                         _e129355129850_
                                         _hd129354129853_
                                         _tl129353129855_
                                         _e129358129858_
                                         _hd129357129861_
                                         _tl129356129863_
                                         _e129361129866_
                                         _hd129360129869_
                                         _tl129359129871_
                                         _e129364129874_
                                         _hd129363129877_
                                         _tl129362129879_))))
                                (___match135301135302_
                                 _e129343129818_
                                 _hd129342129821_
                                 _tl129341129823_
                                 _e129346129826_
                                 _hd129345129829_
                                 _tl129344129831_
                                 _e129349129834_
                                 _hd129348129837_
                                 _tl129347129839_
                                 _e129352129842_
                                 _hd129351129845_
                                 _tl129350129847_
                                 _e129355129850_
                                 _hd129354129853_
                                 _tl129353129855_
                                 _e129358129858_
                                 _hd129357129861_
                                 _tl129356129863_
                                 _e129361129866_
                                 _hd129360129869_
                                 _tl129359129871_
                                 _e129364129874_
                                 _hd129363129877_
                                 _tl129362129879_))
                            (___match135301135302_
                             _e129343129818_
                             _hd129342129821_
                             _tl129341129823_
                             _e129346129826_
                             _hd129345129829_
                             _tl129344129831_
                             _e129349129834_
                             _hd129348129837_
                             _tl129347129839_
                             _e129352129842_
                             _hd129351129845_
                             _tl129350129847_
                             _e129355129850_
                             _hd129354129853_
                             _tl129353129855_
                             _e129358129858_
                             _hd129357129861_
                             _tl129356129863_
                             _e129361129866_
                             _hd129360129869_
                             _tl129359129871_
                             _e129364129874_
                             _hd129363129877_
                             _tl129362129879_))))
                     (___match135019135020_
                      (lambda (_e129292129939_
                               _hd129291129942_
                               _tl129290129944_
                               _e129295129947_
                               _hd129294129950_
                               _tl129293129952_
                               _e129298129955_
                               _hd129297129958_
                               _tl129296129960_
                               _e129301129963_
                               _hd129300129966_
                               _tl129299129968_
                               _e129304129971_
                               _hd129303129974_
                               _tl129302129976_
                               _e129307129979_
                               _hd129306129982_
                               _tl129305129984_
                               _e129310129987_
                               _hd129309129990_
                               _tl129308129992_
                               _e129313129995_
                               _hd129312129998_
                               _tl129311130000_
                               _e129316130003_
                               _hd129315130006_
                               _tl129314130008_
                               _e129319130011_
                               _hd129318130014_
                               _tl129317130016_
                               _e129322130019_
                               _hd129321130022_
                               _tl129320130024_
                               _e129325130027_
                               _hd129324130030_
                               _tl129323130032_
                               _e129328130035_
                               _hd129327130038_
                               _tl129326130040_
                               ___splice134812134813_
                               _target129329130043_
                               _tl129331130045_)
                        (letrec ((_loop129332130048_
                                  (lambda (_hd129330130051_ _args129336130053_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129330130051_))
                                        (let ((_e129333130056_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129330130051_))))
                                          (let ((_lp-tl129335130061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129333130056_)))
                                                (_lp-hd129334130059_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129333130056_))))
                                            (let ((__tmp135675
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129334130059_
                                                           _args129336130053_))))
                                              (declare (not safe))
                                              (_loop129332130048_
                                               _lp-tl129335130061_
                                               __tmp135675))))
                                        (let ((_args129337130064_
                                               (reverse _args129336130053_)))
                                          (let ((_L130067_ _args129337130064_)
                                                (_L130068_ _hd129327130038_)
                                                (_L130069_ _hd129318130014_)
                                                (_L130070_ _hd129309129990_)
                                                (_L130071_ _hd129300129966_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130071_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130070_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130069_
                                                        _self129227_)))
                                                (___kont134810134811_
                                                 _L130067_
                                                 _L130068_
                                                 _L130069_
                                                 _L130070_
                                                 _L130071_)
                                                (___kont134822134823_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129332130048_ _target129329130043_ '())))))
                     (___match134977134978_
                      (lambda (_e129292129939_
                               _hd129291129942_
                               _tl129290129944_
                               _e129295129947_
                               _hd129294129950_
                               _tl129293129952_
                               _e129298129955_
                               _hd129297129958_
                               _tl129296129960_
                               _e129301129963_
                               _hd129300129966_
                               _tl129299129968_
                               _e129304129971_
                               _hd129303129974_
                               _tl129302129976_
                               _e129307129979_
                               _hd129306129982_
                               _tl129305129984_
                               _e129310129987_
                               _hd129309129990_
                               _tl129308129992_
                               _e129313129995_
                               _hd129312129998_
                               _tl129311130000_
                               _e129316130003_
                               _hd129315130006_
                               _tl129314130008_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129315130006_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129314130008_))
                                (let ((_e129319130011_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129314130008_))))
                                  (let ((_tl129317130016_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129319130011_)))
                                        (_hd129318130014_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129319130011_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129317130016_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129311130000_))
                                            (let ((_e129322130019_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129311130000_))))
                                              (let ((_tl129320130024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129322130019_)))
                                                    (_hd129321130022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129322130019_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129321130022_))
                                                    (let ((_e129325130027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129321130022_))))
                                                      (let ((_tl129323130032_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129325130027_)))
                    (_hd129324130030_
                     (let () (declare (not safe)) (##car _e129325130027_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129324130030_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129324130030_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129323130032_))
                            (let ((_e129328130035_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129323130032_))))
                              (let ((_tl129326130040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129328130035_)))
                                    (_hd129327130038_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129328130035_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129326130040_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129320130024_))
                                        (let ((___splice134812134813_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129320130024_
                                                  '0))))
                                          (let ((_tl129331130045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134812134813_
                                                    '1)))
                                                (_target129329130043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134812134813_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129331130045_))
                                                (___match135019135020_
                                                 _e129292129939_
                                                 _hd129291129942_
                                                 _tl129290129944_
                                                 _e129295129947_
                                                 _hd129294129950_
                                                 _tl129293129952_
                                                 _e129298129955_
                                                 _hd129297129958_
                                                 _tl129296129960_
                                                 _e129301129963_
                                                 _hd129300129966_
                                                 _tl129299129968_
                                                 _e129304129971_
                                                 _hd129303129974_
                                                 _tl129302129976_
                                                 _e129307129979_
                                                 _hd129306129982_
                                                 _tl129305129984_
                                                 _e129310129987_
                                                 _hd129309129990_
                                                 _tl129308129992_
                                                 _e129313129995_
                                                 _hd129312129998_
                                                 _tl129311130000_
                                                 _e129316130003_
                                                 _hd129315130006_
                                                 _tl129314130008_
                                                 _e129319130011_
                                                 _hd129318130014_
                                                 _tl129317130016_
                                                 _e129322130019_
                                                 _hd129321130022_
                                                 _tl129320130024_
                                                 _e129325130027_
                                                 _hd129324130030_
                                                 _tl129323130032_
                                                 _e129328130035_
                                                 _hd129327130038_
                                                 _tl129326130040_
                                                 ___splice134812134813_
                                                 _target129329130043_
                                                 _tl129331130045_)
                                                (___kont134822134823_))))
                                        (___kont134822134823_))
                                    (___kont134822134823_))))
                            (___kont134822134823_))
                        (___kont134822134823_))
                    (___kont134822134823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134822134823_))))
                                            (___match135301135302_
                                             _e129292129939_
                                             _hd129291129942_
                                             _tl129290129944_
                                             _e129295129947_
                                             _hd129294129950_
                                             _tl129293129952_
                                             _e129298129955_
                                             _hd129297129958_
                                             _tl129296129960_
                                             _e129301129963_
                                             _hd129300129966_
                                             _tl129299129968_
                                             _e129304129971_
                                             _hd129303129974_
                                             _tl129302129976_
                                             _e129307129979_
                                             _hd129306129982_
                                             _tl129305129984_
                                             _e129310129987_
                                             _hd129309129990_
                                             _tl129308129992_
                                             _e129313129995_
                                             _hd129312129998_
                                             _tl129311130000_))
                                        (___match135301135302_
                                         _e129292129939_
                                         _hd129291129942_
                                         _tl129290129944_
                                         _e129295129947_
                                         _hd129294129950_
                                         _tl129293129952_
                                         _e129298129955_
                                         _hd129297129958_
                                         _tl129296129960_
                                         _e129301129963_
                                         _hd129300129966_
                                         _tl129299129968_
                                         _e129304129971_
                                         _hd129303129974_
                                         _tl129302129976_
                                         _e129307129979_
                                         _hd129306129982_
                                         _tl129305129984_
                                         _e129310129987_
                                         _hd129309129990_
                                         _tl129308129992_
                                         _e129313129995_
                                         _hd129312129998_
                                         _tl129311130000_))))
                                (___match135301135302_
                                 _e129292129939_
                                 _hd129291129942_
                                 _tl129290129944_
                                 _e129295129947_
                                 _hd129294129950_
                                 _tl129293129952_
                                 _e129298129955_
                                 _hd129297129958_
                                 _tl129296129960_
                                 _e129301129963_
                                 _hd129300129966_
                                 _tl129299129968_
                                 _e129304129971_
                                 _hd129303129974_
                                 _tl129302129976_
                                 _e129307129979_
                                 _hd129306129982_
                                 _tl129305129984_
                                 _e129310129987_
                                 _hd129309129990_
                                 _tl129308129992_
                                 _e129313129995_
                                 _hd129312129998_
                                 _tl129311130000_))
                            (___match135087135088_
                             _e129292129939_
                             _hd129291129942_
                             _tl129290129944_
                             _e129295129947_
                             _hd129294129950_
                             _tl129293129952_
                             _e129298129955_
                             _hd129297129958_
                             _tl129296129960_
                             _e129301129963_
                             _hd129300129966_
                             _tl129299129968_
                             _e129304129971_
                             _hd129303129974_
                             _tl129302129976_
                             _e129307129979_
                             _hd129306129982_
                             _tl129305129984_
                             _e129310129987_
                             _hd129309129990_
                             _tl129308129992_
                             _e129313129995_
                             _hd129312129998_
                             _tl129311130000_
                             _e129316130003_
                             _hd129315130006_
                             _tl129314130008_))))
                     (___match134909134910_
                      (lambda (_e129248130131_
                               _hd129247130134_
                               _tl129246130136_
                               _e129251130139_
                               _hd129250130142_
                               _tl129249130144_
                               _e129254130147_
                               _hd129253130150_
                               _tl129252130152_
                               _e129257130155_
                               _hd129256130158_
                               _tl129255130160_
                               _e129260130163_
                               _hd129259130166_
                               _tl129258130168_
                               _e129263130171_
                               _hd129262130174_
                               _tl129261130176_
                               _e129266130179_
                               _hd129265130182_
                               _tl129264130184_
                               _e129269130187_
                               _hd129268130190_
                               _tl129267130192_
                               _e129272130195_
                               _hd129271130198_
                               _tl129270130200_
                               _e129275130203_
                               _hd129274130206_
                               _tl129273130208_
                               ___splice134808134809_
                               _target129276130211_
                               _tl129278130213_)
                        (letrec ((_loop129279130216_
                                  (lambda (_hd129277130219_ _args129283130221_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129277130219_))
                                        (let ((_e129280130224_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129277130219_))))
                                          (let ((_lp-tl129282130229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129280130224_)))
                                                (_lp-hd129281130227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129280130224_))))
                                            (let ((__tmp135676
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129281130227_
                                                           _args129283130221_))))
                                              (declare (not safe))
                                              (_loop129279130216_
                                               _lp-tl129282130229_
                                               __tmp135676))))
                                        (let ((_args129284130232_
                                               (reverse _args129283130221_)))
                                          (let ((_L130235_ _args129284130232_)
                                                (_L130236_ _hd129274130206_)
                                                (_L130237_ _hd129265130182_)
                                                (_L130238_ _hd129256130158_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130238_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130237_
                                                        _self129227_)))
                                                (___kont134806134807_
                                                 _L130235_
                                                 _L130236_
                                                 _L130237_
                                                 _L130238_)
                                                (___match135097135098_
                                                 _e129248130131_
                                                 _hd129247130134_
                                                 _tl129246130136_
                                                 _e129251130139_
                                                 _hd129250130142_
                                                 _tl129249130144_
                                                 _e129254130147_
                                                 _hd129253130150_
                                                 _tl129252130152_
                                                 _e129257130155_
                                                 _hd129256130158_
                                                 _tl129255130160_
                                                 _e129260130163_
                                                 _hd129259130166_
                                                 _tl129258130168_
                                                 _e129263130171_
                                                 _hd129262130174_
                                                 _tl129261130176_
                                                 _e129266130179_
                                                 _hd129265130182_
                                                 _tl129264130184_
                                                 _e129269130187_
                                                 _hd129268130190_
                                                 _tl129267130192_
                                                 _e129272130195_
                                                 _hd129271130198_
                                                 _tl129270130200_
                                                 _e129275130203_
                                                 _hd129274130206_
                                                 _tl129273130208_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129279130216_ _target129276130211_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134804134805_))
                    (let ((_e129248130131_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134804134805_))))
                      (let ((_tl129246130136_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129248130131_)))
                            (_hd129247130134_
                             (let ()
                               (declare (not safe))
                               (##car _e129248130131_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129246130136_))
                            (let ((_e129251130139_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129246130136_))))
                              (let ((_tl129249130144_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129251130139_)))
                                    (_hd129250130142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129251130139_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129250130142_))
                                    (let ((_e129254130147_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129250130142_))))
                                      (let ((_tl129252130152_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129254130147_)))
                                            (_hd129253130150_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129254130147_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129253130150_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129253130150_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129252130152_))
                                                    (let ((_e129257130155_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129252130152_))))
                                                      (let ((_tl129255130160_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129257130155_)))
                    (_hd129256130158_
                     (let () (declare (not safe)) (##car _e129257130155_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129255130160_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129249130144_))
                        (let ((_e129260130163_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129249130144_))))
                          (let ((_tl129258130168_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129260130163_)))
                                (_hd129259130166_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129260130163_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129259130166_))
                                (let ((_e129263130171_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129259130166_))))
                                  (let ((_tl129261130176_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129263130171_)))
                                        (_hd129262130174_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129263130171_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129262130174_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129262130174_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129261130176_))
                                                (let ((_e129266130179_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129261130176_))))
                                                  (let ((_tl129264130184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129266130179_)))
                                                        (_hd129265130182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129266130179_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129264130184_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129258130168_))
                                                            (let ((_e129269130187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129258130168_))))
                      (let ((_tl129267130192_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129269130187_)))
                            (_hd129268130190_
                             (let ()
                               (declare (not safe))
                               (##car _e129269130187_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129268130190_))
                            (let ((_e129272130195_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129268130190_))))
                              (let ((_tl129270130200_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129272130195_)))
                                    (_hd129271130198_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129272130195_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129271130198_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129271130198_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129270130200_))
                                            (let ((_e129275130203_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129270130200_))))
                                              (let ((_tl129273130208_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129275130203_)))
                                                    (_hd129274130206_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129275130203_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129273130208_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129267130192_))
                                                        (let ((___splice134808134809_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129267130192_ '0))))
                  (let ((_tl129278130213_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134808134809_ '1)))
                        (_target129276130211_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134808134809_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129278130213_))
                        (___match134909134910_
                         _e129248130131_
                         _hd129247130134_
                         _tl129246130136_
                         _e129251130139_
                         _hd129250130142_
                         _tl129249130144_
                         _e129254130147_
                         _hd129253130150_
                         _tl129252130152_
                         _e129257130155_
                         _hd129256130158_
                         _tl129255130160_
                         _e129260130163_
                         _hd129259130166_
                         _tl129258130168_
                         _e129263130171_
                         _hd129262130174_
                         _tl129261130176_
                         _e129266130179_
                         _hd129265130182_
                         _tl129264130184_
                         _e129269130187_
                         _hd129268130190_
                         _tl129267130192_
                         _e129272130195_
                         _hd129271130198_
                         _tl129270130200_
                         _e129275130203_
                         _hd129274130206_
                         _tl129273130208_
                         ___splice134808134809_
                         _target129276130211_
                         _tl129278130213_)
                        (___match135097135098_
                         _e129248130131_
                         _hd129247130134_
                         _tl129246130136_
                         _e129251130139_
                         _hd129250130142_
                         _tl129249130144_
                         _e129254130147_
                         _hd129253130150_
                         _tl129252130152_
                         _e129257130155_
                         _hd129256130158_
                         _tl129255130160_
                         _e129260130163_
                         _hd129259130166_
                         _tl129258130168_
                         _e129263130171_
                         _hd129262130174_
                         _tl129261130176_
                         _e129266130179_
                         _hd129265130182_
                         _tl129264130184_
                         _e129269130187_
                         _hd129268130190_
                         _tl129267130192_
                         _e129272130195_
                         _hd129271130198_
                         _tl129270130200_
                         _e129275130203_
                         _hd129274130206_
                         _tl129273130208_))))
                (___match135097135098_
                 _e129248130131_
                 _hd129247130134_
                 _tl129246130136_
                 _e129251130139_
                 _hd129250130142_
                 _tl129249130144_
                 _e129254130147_
                 _hd129253130150_
                 _tl129252130152_
                 _e129257130155_
                 _hd129256130158_
                 _tl129255130160_
                 _e129260130163_
                 _hd129259130166_
                 _tl129258130168_
                 _e129263130171_
                 _hd129262130174_
                 _tl129261130176_
                 _e129266130179_
                 _hd129265130182_
                 _tl129264130184_
                 _e129269130187_
                 _hd129268130190_
                 _tl129267130192_
                 _e129272130195_
                 _hd129271130198_
                 _tl129270130200_
                 _e129275130203_
                 _hd129274130206_
                 _tl129273130208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135301135302_
                                                     _e129248130131_
                                                     _hd129247130134_
                                                     _tl129246130136_
                                                     _e129251130139_
                                                     _hd129250130142_
                                                     _tl129249130144_
                                                     _e129254130147_
                                                     _hd129253130150_
                                                     _tl129252130152_
                                                     _e129257130155_
                                                     _hd129256130158_
                                                     _tl129255130160_
                                                     _e129260130163_
                                                     _hd129259130166_
                                                     _tl129258130168_
                                                     _e129263130171_
                                                     _hd129262130174_
                                                     _tl129261130176_
                                                     _e129266130179_
                                                     _hd129265130182_
                                                     _tl129264130184_
                                                     _e129269130187_
                                                     _hd129268130190_
                                                     _tl129267130192_))))
                                            (___match135301135302_
                                             _e129248130131_
                                             _hd129247130134_
                                             _tl129246130136_
                                             _e129251130139_
                                             _hd129250130142_
                                             _tl129249130144_
                                             _e129254130147_
                                             _hd129253130150_
                                             _tl129252130152_
                                             _e129257130155_
                                             _hd129256130158_
                                             _tl129255130160_
                                             _e129260130163_
                                             _hd129259130166_
                                             _tl129258130168_
                                             _e129263130171_
                                             _hd129262130174_
                                             _tl129261130176_
                                             _e129266130179_
                                             _hd129265130182_
                                             _tl129264130184_
                                             _e129269130187_
                                             _hd129268130190_
                                             _tl129267130192_))
                                        (___match134977134978_
                                         _e129248130131_
                                         _hd129247130134_
                                         _tl129246130136_
                                         _e129251130139_
                                         _hd129250130142_
                                         _tl129249130144_
                                         _e129254130147_
                                         _hd129253130150_
                                         _tl129252130152_
                                         _e129257130155_
                                         _hd129256130158_
                                         _tl129255130160_
                                         _e129260130163_
                                         _hd129259130166_
                                         _tl129258130168_
                                         _e129263130171_
                                         _hd129262130174_
                                         _tl129261130176_
                                         _e129266130179_
                                         _hd129265130182_
                                         _tl129264130184_
                                         _e129269130187_
                                         _hd129268130190_
                                         _tl129267130192_
                                         _e129272130195_
                                         _hd129271130198_
                                         _tl129270130200_))
                                    (___match135301135302_
                                     _e129248130131_
                                     _hd129247130134_
                                     _tl129246130136_
                                     _e129251130139_
                                     _hd129250130142_
                                     _tl129249130144_
                                     _e129254130147_
                                     _hd129253130150_
                                     _tl129252130152_
                                     _e129257130155_
                                     _hd129256130158_
                                     _tl129255130160_
                                     _e129260130163_
                                     _hd129259130166_
                                     _tl129258130168_
                                     _e129263130171_
                                     _hd129262130174_
                                     _tl129261130176_
                                     _e129266130179_
                                     _hd129265130182_
                                     _tl129264130184_
                                     _e129269130187_
                                     _hd129268130190_
                                     _tl129267130192_))))
                            (___match135301135302_
                             _e129248130131_
                             _hd129247130134_
                             _tl129246130136_
                             _e129251130139_
                             _hd129250130142_
                             _tl129249130144_
                             _e129254130147_
                             _hd129253130150_
                             _tl129252130152_
                             _e129257130155_
                             _hd129256130158_
                             _tl129255130160_
                             _e129260130163_
                             _hd129259130166_
                             _tl129258130168_
                             _e129263130171_
                             _hd129262130174_
                             _tl129261130176_
                             _e129266130179_
                             _hd129265130182_
                             _tl129264130184_
                             _e129269130187_
                             _hd129268130190_
                             _tl129267130192_))))
                    (___match135239135240_
                     _e129248130131_
                     _hd129247130134_
                     _tl129246130136_
                     _e129251130139_
                     _hd129250130142_
                     _tl129249130144_
                     _e129254130147_
                     _hd129253130150_
                     _tl129252130152_
                     _e129257130155_
                     _hd129256130158_
                     _tl129255130160_
                     _e129260130163_
                     _hd129259130166_
                     _tl129258130168_
                     _e129263130171_
                     _hd129262130174_
                     _tl129261130176_
                     _e129266130179_
                     _hd129265130182_
                     _tl129264130184_))
                (___kont134822134823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134822134823_))
                                            (___kont134822134823_))
                                        (___kont134822134823_))))
                                (___kont134822134823_))))
                        (___kont134822134823_))
                    (___kont134822134823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134822134823_))
                                                (___kont134822134823_))
                                            (___kont134822134823_))))
                                    (___kont134822134823_))))
                            (___kont134822134823_))))
                    (___kont134822134823_))))))))))
