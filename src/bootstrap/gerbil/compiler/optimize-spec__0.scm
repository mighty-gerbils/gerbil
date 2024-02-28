(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709159709)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl134179_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135307 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl134179_ __tmp135307))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134179_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134179_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134179_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134179_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl134179_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134162_ . _args134164_)
        (let ((__tmp135309
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134164_)
                     (gxc#compile-e__0 _stx134162_)
                     (let ((_arg1134169_ (car _args134164_))
                           (_rest134171_ (cdr _args134164_)))
                       (if (null? _rest134171_)
                           (gxc#compile-e__1 _stx134162_ _arg1134169_)
                           (let ((_arg2134174_ (car _rest134171_))
                                 (_rest134176_ (cdr _rest134171_)))
                             (if (null? _rest134176_)
                                 (gxc#compile-e__2
                                  _stx134162_
                                  _arg1134169_
                                  _arg2134174_)
                                 (apply gxc#compile-e
                                        _stx134162_
                                        _arg1134169_
                                        _arg2134174_
                                        _rest134176_))))))))
              (__tmp135308 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp135309
           gxc#current-compile-methods
           __tmp135308))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134159_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135310 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl134159_ __tmp135310))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134159_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134159_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl134159_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx134142_ . _args134144_)
        (let ((__tmp135312
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134144_)
                     (gxc#compile-e__0 _stx134142_)
                     (let ((_arg1134149_ (car _args134144_))
                           (_rest134151_ (cdr _args134144_)))
                       (if (null? _rest134151_)
                           (gxc#compile-e__1 _stx134142_ _arg1134149_)
                           (let ((_arg2134154_ (car _rest134151_))
                                 (_rest134156_ (cdr _rest134151_)))
                             (if (null? _rest134156_)
                                 (gxc#compile-e__2
                                  _stx134142_
                                  _arg1134149_
                                  _arg2134154_)
                                 (apply gxc#compile-e
                                        _stx134142_
                                        _arg1134149_
                                        _arg2134154_
                                        _rest134156_))))))))
              (__tmp135311 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135312
           gxc#current-compile-methods
           __tmp135311))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134139_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135313 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl134139_ __tmp135313))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134139_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134139_ '%#call gxc#subst-object-refs-call%))
           _tbl134139_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx134122_ . _args134124_)
        (let ((__tmp135315
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134124_)
                     (gxc#compile-e__0 _stx134122_)
                     (let ((_arg1134129_ (car _args134124_))
                           (_rest134131_ (cdr _args134124_)))
                       (if (null? _rest134131_)
                           (gxc#compile-e__1 _stx134122_ _arg1134129_)
                           (let ((_arg2134134_ (car _rest134131_))
                                 (_rest134136_ (cdr _rest134131_)))
                             (if (null? _rest134136_)
                                 (gxc#compile-e__2
                                  _stx134122_
                                  _arg1134129_
                                  _arg2134134_)
                                 (apply gxc#compile-e
                                        _stx134122_
                                        _arg1134129_
                                        _arg2134134_
                                        _rest134136_))))))))
              (__tmp135314 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135315
           gxc#current-compile-methods
           __tmp135314))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx131334_)
        (letrec ((_generate-method-bind131336_
                  (lambda (_$klass134115_
                           _$method-table134116_
                           _id134117_
                           _$id134118_)
                    (let ((_$tmp134120_
                           (let ((__tmp135316 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135316))))
                      (let ((__tmp135364
                             (let ()
                               (declare (not safe))
                               (cons _$id134118_ '())))
                            (__tmp135317
                             (let ((__tmp135318
                                    (let ((__tmp135319
                                           (let ((__tmp135362
                                                  (let ((__tmp135363
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135363)))
                                                 (__tmp135320
                                                  (let ((__tmp135321
                                                         (let ((__tmp135322
                                                                (let ((__tmp135323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135324
                                      (let ((__tmp135325
                                             (let ((__tmp135345
                                                    (let ((__tmp135346
                                                           (let ((__tmp135361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134120_ '())))
                         (__tmp135347
                          (let ((__tmp135348
                                 (let ((__tmp135349
                                        (let ((__tmp135359
                                               (let ((__tmp135360
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135360)))
                                              (__tmp135350
                                               (let ((__tmp135357
                                                      (let ((__tmp135358
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134116_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135358)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135351
                                                      (let ((__tmp135355
                                                             (let ((__tmp135356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134117_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135356)))
                    (__tmp135352
                     (let ((__tmp135353
                            (let ((__tmp135354
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135354))))
                       (declare (not safe))
                       (cons __tmp135353 '()))))
                (declare (not safe))
                (cons __tmp135355 __tmp135352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135357
                                                       __tmp135351))))
                                          (declare (not safe))
                                          (cons __tmp135359 __tmp135350))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135349))))
                            (declare (not safe))
                            (cons __tmp135348 '()))))
                     (declare (not safe))
                     (cons __tmp135361 __tmp135347))))
              (declare (not safe))
              (cons __tmp135346 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135326
                                                    (let ((__tmp135327
                                                           (let ((__tmp135328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135343
                                 (let ((__tmp135344
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134120_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135344)))
                                (__tmp135329
                                 (let ((__tmp135341
                                        (let ((__tmp135342
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134120_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135342)))
                                       (__tmp135330
                                        (let ((__tmp135331
                                               (let ((__tmp135332
                                                      (let ((__tmp135339
                                                             (let ((__tmp135340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135340)))
                    (__tmp135333
                     (let ((__tmp135337
                            (let ((__tmp135338
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135338)))
                           (__tmp135334
                            (let ((__tmp135335
                                   (let ((__tmp135336
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134117_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135336))))
                              (declare (not safe))
                              (cons __tmp135335 '()))))
                       (declare (not safe))
                       (cons __tmp135337 __tmp135334))))
                (declare (not safe))
                (cons __tmp135339 __tmp135333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135332))))
                                          (declare (not safe))
                                          (cons __tmp135331 '()))))
                                   (declare (not safe))
                                   (cons __tmp135341 __tmp135330))))
                            (declare (not safe))
                            (cons __tmp135343 __tmp135329))))
                     (declare (not safe))
                     (cons '%#if __tmp135328))))
              (declare (not safe))
              (cons __tmp135327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135345
                                                     __tmp135326))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135325))))
                                 (declare (not safe))
                                 (cons __tmp135324 '()))))
                          (declare (not safe))
                          (cons '() __tmp135323))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135321 '()))))
                                             (declare (not safe))
                                             (cons __tmp135362 __tmp135320))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135319))))
                               (declare (not safe))
                               (cons __tmp135318 '()))))
                        (declare (not safe))
                        (cons __tmp135364 __tmp135317)))))
                 (_generate-slot-bind131337_
                  (lambda (_$klass134109_ _id134110_ _$id134111_)
                    (let ((_$tmp134113_
                           (let ((__tmp135365 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135365))))
                      (let ((__tmp135402
                             (let ()
                               (declare (not safe))
                               (cons _$id134111_ '())))
                            (__tmp135366
                             (let ((__tmp135367
                                    (let ((__tmp135368
                                           (let ((__tmp135388
                                                  (let ((__tmp135389
                                                         (let ((__tmp135401
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134113_ '())))
                       (__tmp135390
                        (let ((__tmp135391
                               (let ((__tmp135392
                                      (let ((__tmp135399
                                             (let ((__tmp135400
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135400)))
                                            (__tmp135393
                                             (let ((__tmp135397
                                                    (let ((__tmp135398
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135398)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135394
                                                    (let ((__tmp135395
                                                           (let ((__tmp135396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134110_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135396))))
              (declare (not safe))
              (cons __tmp135395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135397
                                                     __tmp135394))))
                                        (declare (not safe))
                                        (cons __tmp135399 __tmp135393))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135392))))
                          (declare (not safe))
                          (cons __tmp135391 '()))))
                   (declare (not safe))
                   (cons __tmp135401 __tmp135390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135389 '())))
                                                 (__tmp135369
                                                  (let ((__tmp135370
                                                         (let ((__tmp135371
                                                                (let ((__tmp135386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135387
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134113_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135387)))
                              (__tmp135372
                               (let ((__tmp135384
                                      (let ((__tmp135385
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134113_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135385)))
                                     (__tmp135373
                                      (let ((__tmp135374
                                             (let ((__tmp135375
                                                    (let ((__tmp135382
                                                           (let ((__tmp135383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135383)))
                  (__tmp135376
                   (let ((__tmp135380
                          (let ((__tmp135381
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135381)))
                         (__tmp135377
                          (let ((__tmp135378
                                 (let ((__tmp135379
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134110_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135379))))
                            (declare (not safe))
                            (cons __tmp135378 '()))))
                     (declare (not safe))
                     (cons __tmp135380 __tmp135377))))
              (declare (not safe))
              (cons __tmp135382 __tmp135376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135375))))
                                        (declare (not safe))
                                        (cons __tmp135374 '()))))
                                 (declare (not safe))
                                 (cons __tmp135384 __tmp135373))))
                          (declare (not safe))
                          (cons __tmp135386 __tmp135372))))
                   (declare (not safe))
                   (cons '%#if __tmp135371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135370 '()))))
                                             (declare (not safe))
                                             (cons __tmp135388 __tmp135369))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135368))))
                               (declare (not safe))
                               (cons __tmp135367 '()))))
                        (declare (not safe))
                        (cons __tmp135402 __tmp135366)))))
                 (_generate-specializer-impl131338_
                  (lambda (_$klass134103_
                           _$method-table134104_
                           _methods-bind134105_
                           _slots-bind134106_
                           _specializer-impl134107_)
                    (let ((__tmp135403
                           (let ((__tmp135404
                                  (let ((__tmp135410
                                         (let ((__tmp135411
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134104_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134103_ __tmp135411)))
                                        (__tmp135405
                                         (let ((__tmp135406
                                                (let ((__tmp135407
                                                       (let ((__tmp135409
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134106_ _methods-bind134105_)))
                     (__tmp135408
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134107_ '()))))
                 (declare (not safe))
                 (cons __tmp135409 __tmp135408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135407))))
                                           (declare (not safe))
                                           (cons __tmp135406 '()))))
                                    (declare (not safe))
                                    (cons __tmp135410 __tmp135405))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135404))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135403 _stx131334_))))
                 (_generate-specializer-def131339_
                  (lambda (_id134099_
                           _specializer-id134100_
                           _specializer-impl134101_)
                    (let ((__tmp135412
                           (let ((__tmp135413
                                  (let ((__tmp135414
                                         (let ((__tmp135427
                                                (let ((__tmp135428
                                                       (let ((__tmp135429
                                                              (let ((__tmp135431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134100_ '())))
                            (__tmp135430
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134101_ '()))))
                        (declare (not safe))
                        (cons __tmp135431 __tmp135430))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135428
                                                   _stx131334_)))
                                               (__tmp135415
                                                (let ((__tmp135416
                                                       (let ((__tmp135417
                                                              (let ((__tmp135418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135425
                                    (let ((__tmp135426
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135426)))
                                   (__tmp135419
                                    (let ((__tmp135423
                                           (let ((__tmp135424
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134099_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135424)))
                                          (__tmp135420
                                           (let ((__tmp135421
                                                  (let ((__tmp135422
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135422))))
                                             (declare (not safe))
                                             (cons __tmp135421 '()))))
                                      (declare (not safe))
                                      (cons __tmp135423 __tmp135420))))
                               (declare (not safe))
                               (cons __tmp135425 __tmp135419))))
                        (declare (not safe))
                        (cons '%#call __tmp135418))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135417 _stx131334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135416 '()))))
                                           (declare (not safe))
                                           (cons __tmp135427 __tmp135415))))
                                    (declare (not safe))
                                    (cons _stx131334_ __tmp135414))))
                             (declare (not safe))
                             (cons '%#begin __tmp135413))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135412 _stx131334_)))))
          (let* ((___stx134268134269_ _stx131334_)
                 (_g131342131362_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134268134269_)))))
            (let ((___kont134270134271_
                   (lambda (_L131406_ _L131407_)
                     (let ((_method-calls131426_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131427_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131428_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131430_
                                 (lambda ()
                                   (if (let ((__tmp135433
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131426_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135433))
                                       (let ((__tmp135432
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131427_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135432))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131406_))
                             (let* ((___stx134182134183_ _L131406_)
                                    (_g131817131835_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134182134183_)))))
                               (let ((___kont134184134185_
                                      (lambda (_L131871_ _L131872_ _L131873_)
                                        (for-each
                                         (lambda (_g131888131890_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131888131890_
                                              _L131873_
                                              _method-calls131426_
                                              _slot-refs131427_)))
                                         _L131871_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131430_))
                                            _stx131334_
                                            (let* ((_specializer-id131899_
                                                    (let* ((_id131893_
                                                            (let ((__tmp135555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131407_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135555 '"::specialize")))
                   (_specializer-id131896_
                    (let ((__tmp135556
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131334_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131893_ __tmp135556))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131896_))
              _specializer-id131896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131901_
                                                    (let ((__tmp135557
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135557)))
                                                   (_$method-table131903_
                                                    (let ((__tmp135558
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135558)))
                                                   (_methods131905_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131426_)))
                                                   (_$methods131909_
                                                    (map (lambda (_id131907_)
                                                           (let ((__tmp135559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131907_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135559)))
                 _methods131905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135560_
                                                    (for-each
                                                     (lambda (_g131910131913_
                                                              _g131911131915_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131426_
                                                          _g131910131913_
                                                          _g131911131915_)))
                                                     _methods131905_
                                                     _$methods131909_))
                                                   (_methods-bind131926_
                                                    (map (lambda (_g131918131921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131919131923_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131336_
                      _$klass131901_
                      _$method-table131903_
                      _g131918131921_
                      _g131919131923_)))
                 _methods131905_
                 _$methods131909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131928_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131427_)))
                                                   (_$slots131932_
                                                    (map (lambda (_id131930_)
                                                           (let ((__tmp135561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131930_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135561)))
                 _slots131928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135562_
                                                    (for-each
                                                     (lambda (_g131933131936_
                                                              _g131934131938_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131427_
                                                          _g131933131936_
                                                          _g131934131938_)))
                                                     _slots131928_
                                                     _$slots131932_))
                                                   (_slots-bind131949_
                                                    (map (lambda (_g131941131944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131942131946_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131337_
                      _$klass131901_
                      _g131941131944_
                      _g131942131946_)))
                 _slots131928_
                 _$slots131932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131955_
                                                    (map (lambda (_g131950131952_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131950131952_
                                                              _L131873_
                                                              _$klass131901_
                                                              _method-calls131426_
                                                              _slot-refs131427_)))
                                                         _L131871_))
                                                   (_specializer-impl131957_
                                                    (let ((__tmp135563
                                                           (let ((__tmp135564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135565
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131873_ _L131872_))))
                            (declare (not safe))
                            (cons __tmp135565 _specializer-body131955_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135564))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135563 _stx131334_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131959_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131338_
                                                       _$klass131901_
                                                       _$method-table131903_
                                                       _methods-bind131926_
                                                       _slots-bind131949_
                                                       _specializer-impl131957_))))
                                              (let ((__tmp135567
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131407_)))
                                                    (__tmp135566
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131899_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135567
                                                 '" => "
                                                 __tmp135566))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131339_
                                                 _L131407_
                                                 _specializer-id131899_
                                                 _specializer-impl131959_))))))
                                     (___kont134186134187_
                                      (lambda () _stx131334_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134182134183_))
                                     (let ((_e131824131847_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134182134183_))))
                                       (let ((_tl131822131852_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131824131847_)))
                                             (_hd131823131850_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131824131847_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131822131852_))
                                             (let ((_e131827131855_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131822131852_))))
                                               (let ((_tl131825131860_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131827131855_)))
                                                     (_hd131826131858_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131827131855_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131826131858_))
                                                     (let ((_e131830131863_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131826131858_))))
                                                       (let ((_tl131828131868_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131830131863_)))
                     (_hd131829131866_
                      (let () (declare (not safe)) (##car _e131830131863_))))
                 (___kont134184134185_
                  _tl131825131860_
                  _tl131828131868_
                  _hd131829131866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134186134187_))))
                                             (___kont134186134187_))))
                                     (___kont134186134187_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131406_))
                                 (let* ((_g131965131984_
                                         (lambda (_g131966131981_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131966131981_))))
                                        (_g131964132267_
                                         (lambda (_g131966131987_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131966131987_))
                                               (let ((_e131970131989_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131966131987_))))
                                                 (let ((_hd131969131992_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131970131989_)))
                                                       (_tl131968131994_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131970131989_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131968131994_))
                                                       (let ((_g135538_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131968131994_ '0))))
                 (begin
                   (let ((_g135539_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135538_)
                                (##vector-length _g135538_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135539_ 2)))
                         (error "Context expects 2 values" _g135539_)))
                   (let ((_target131971131997_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135538_ 0)))
                         (_tl131973131999_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135538_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131973131999_))
                         (letrec ((_loop131974132002_
                                   (lambda (_hd131972132005_
                                            _clause131978132007_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131972132005_))
                                         (let ((_e131975132010_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131972132005_))))
                                           (let ((_lp-hd131976132013_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131975132010_)))
                                                 (_lp-tl131977132015_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131975132010_))))
                                             (let ((__tmp135554
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131976132013_
                                                            _clause131978132007_))))
                                               (declare (not safe))
                                               (_loop131974132002_
                                                _lp-tl131977132015_
                                                __tmp135554))))
                                         (let ((_clause131979132018_
                                                (reverse _clause131978132007_)))
                                           ((lambda (_L132021_)
                                              (for-each
                                               (lambda (_clause132034_)
                                                 (let* ((___stx134208134209_
                                                         _clause132034_)
                                                        (_g132037132052_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134208134209_)))))
                                                   (let ((___kont134210134211_
                                                          (lambda (_L132080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132081_
                           _L132082_)
                    (for-each
                     (lambda (_g132097132099_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132097132099_
                          _L132082_
                          _method-calls131426_
                          _slot-refs131427_)))
                     _L132080_)))
                 (___kont134212134213_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134208134209_))
                                                         (let ((_e132044132064_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134208134209_))))
                   (let ((_tl132042132069_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132044132064_)))
                         (_hd132043132067_
                          (let ()
                            (declare (not safe))
                            (##car _e132044132064_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132043132067_))
                         (let ((_e132047132072_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132043132067_))))
                           (let ((_tl132045132077_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132047132072_)))
                                 (_hd132046132075_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132047132072_))))
                             (___kont134210134211_
                              _tl132042132069_
                              _tl132045132077_
                              _hd132046132075_)))
                         (___kont134212134213_))))
                 (___kont134212134213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135540
                                                      (lambda (_g132104132107_
                                                               _g132105132109_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132104132107_
                                                                _g132105132109_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135540
                                                         '()
                                                         _L132021_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131430_))
                                                  _stx131334_
                                                  (let* ((_specializer-id132118_
                                                          (let* ((_id132112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135541
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131407_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135541 '"::specialize")))
                         (_specializer-id132115_
                          (let ((__tmp135542
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131334_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132112_ __tmp135542))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132115_))
                    _specializer-id132115_))
                 (_$klass132120_
                  (let ((__tmp135543 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135543)))
                 (_$method-table132122_
                  (let ((__tmp135544 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135544)))
                 (_methods132124_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131426_)))
                 (_$methods132128_
                  (map (lambda (_id132126_)
                         (let ((__tmp135545 (gensym _id132126_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135545)))
                       _methods132124_))
                 (_g135546_
                  (for-each
                   (lambda (_g132129132132_ _g132130132134_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131426_
                        _g132129132132_
                        _g132130132134_)))
                   _methods132124_
                   _$methods132128_))
                 (_methods-bind132145_
                  (map (lambda (_g132137132140_ _g132138132142_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131336_
                            _$klass132120_
                            _$method-table132122_
                            _g132137132140_
                            _g132138132142_)))
                       _methods132124_
                       _$methods132128_))
                 (_slots132147_
                  (let () (declare (not safe)) (hash-keys _slot-refs131427_)))
                 (_$slots132151_
                  (map (lambda (_id132149_)
                         (let ((__tmp135547 (gensym _id132149_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135547)))
                       _slots132147_))
                 (_g135548_
                  (for-each
                   (lambda (_g132152132155_ _g132153132157_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131427_
                        _g132152132155_
                        _g132153132157_)))
                   _slots132147_
                   _$slots132151_))
                 (_slots-bind132168_
                  (map (lambda (_g132160132163_ _g132161132165_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131337_
                            _$klass132120_
                            _g132160132163_
                            _g132161132165_)))
                       _slots132147_
                       _$slots132151_))
                 (_specializer-clauses132260_
                  (map (lambda (_clause132170_)
                         (let* ((___stx134228134229_ _clause132170_)
                                (_g132173132188_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134228134229_)))))
                           (let ((___kont134230134231_
                                  (lambda (_L132216_ _L132217_ _L132218_)
                                    (let* ((_body132248_
                                            (map (lambda (_g132243132245_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132243132245_
                                                      _L132218_
                                                      _$klass132120_
                                                      _method-calls131426_
                                                      _slot-refs131427_)))
                                                 _L132216_))
                                           (__tmp135549
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132218_ _L132217_))))
                                      (declare (not safe))
                                      (cons __tmp135549 _body132248_))))
                                 (___kont134232134233_
                                  (lambda () _clause132170_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134228134229_))
                                 (let ((_e132180132200_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134228134229_))))
                                   (let ((_tl132178132205_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132180132200_)))
                                         (_hd132179132203_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132180132200_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132179132203_))
                                         (let ((_e132183132208_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132179132203_))))
                                           (let ((_tl132181132213_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132183132208_)))
                                                 (_hd132182132211_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132183132208_))))
                                             (___kont134230134231_
                                              _tl132178132205_
                                              _tl132181132213_
                                              _hd132182132211_)))
                                         (___kont134232134233_))))
                                 (___kont134232134233_)))))
                       (let ((__tmp135550
                              (lambda (_g132252132255_ _g132253132257_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132252132255_ _g132253132257_)))))
                         (declare (not safe))
                         (foldr1 __tmp135550 '() _L132021_))))
                 (_specializer-impl132262_
                  (let ((__tmp135551
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132260_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135551 _stx131334_)))
                 (_specializer-impl132264_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131338_
                     _$klass132120_
                     _$method-table132122_
                     _methods-bind132145_
                     _slots-bind132168_
                     _specializer-impl132262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135553
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131407_)))
                                                          (__tmp135552
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132118_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135553
                                                       '" => "
                                                       __tmp135552))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131339_
                                                       _L131407_
                                                       _specializer-id132118_
                                                       _specializer-impl132264_)))))
                                            _clause131979132018_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131974132002_ _target131971131997_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131965131984_ _g131966131987_))))))
               (let ()
                 (declare (not safe))
                 (_g131965131984_ _g131966131987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131965131984_
                                                  _g131966131987_))))))
                                   (declare (not safe))
                                   (_g131964132267_ _L131406_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131406_))
                                     (let* ((_g132270132300_
                                             (lambda (_g132271132297_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132271132297_))))
                                            (_g132269132905_
                                             (lambda (_g132271132303_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132271132303_))
                                                   (let ((_e132277132305_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132271132303_))))
                                                     (let ((_hd132276132308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132277132305_)))
                                                           (_tl132275132310_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132277132305_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132275132310_))
                                                           (let ((_e132280132313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132275132310_))))
                     (let ((_hd132279132316_
                            (let ()
                              (declare (not safe))
                              (##car _e132280132313_)))
                           (_tl132278132318_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132280132313_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132279132316_))
                           (let ((_e132283132321_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132279132316_))))
                             (let ((_hd132282132324_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132283132321_)))
                                   (_tl132281132326_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132283132321_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132282132324_))
                                   (let ((_e132286132329_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132282132324_))))
                                     (let ((_hd132285132332_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132286132329_)))
                                           (_tl132284132334_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132286132329_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132285132332_))
                                           (let ((_e132289132337_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132285132332_))))
                                             (let ((_hd132288132340_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132289132337_)))
                                                   (_tl132287132342_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132289132337_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132287132342_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132284132334_))
                                                       (let ((_e132292132345_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132284132334_))))
                 (let ((_hd132291132348_
                        (let () (declare (not safe)) (##car _e132292132345_)))
                       (_tl132290132350_
                        (let () (declare (not safe)) (##cdr _e132292132345_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132290132350_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132281132326_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132278132318_))
                               (let ((_e132295132353_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132278132318_))))
                                 (let ((_hd132294132356_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132295132353_)))
                                       (_tl132293132358_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132295132353_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132293132358_))
                                       ((lambda (_L132361_ _L132362_ _L132363_)
                                          (let* ((_g132386132404_
                                                  (lambda (_g132387132401_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132387132401_))))
                                                 (_g132385132455_
                                                  (lambda (_g132387132407_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132387132407_))
                                                        (let ((_e132393132409_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132387132407_))))
                  (let ((_hd132392132412_
                         (let () (declare (not safe)) (##car _e132393132409_)))
                        (_tl132391132414_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132393132409_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132391132414_))
                        (let ((_e132396132417_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132391132414_))))
                          (let ((_hd132395132420_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132396132417_)))
                                (_tl132394132422_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132396132417_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132395132420_))
                                (let ((_e132399132425_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132395132420_))))
                                  (let ((_hd132398132428_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132399132425_)))
                                        (_tl132397132430_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132399132425_))))
                                    ((lambda (_L132433_ _L132434_ _L132435_)
                                       (for-each
                                        (lambda (_g132450132452_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132450132452_
                                             _L132435_
                                             _method-calls131426_
                                             _slot-refs131427_)))
                                        _L132433_))
                                     _tl132394132422_
                                     _tl132397132430_
                                     _hd132398132428_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132386132404_ _g132387132407_)))))
                        (let ()
                          (declare (not safe))
                          (_g132386132404_ _g132387132407_)))))
                (let ()
                  (declare (not safe))
                  (_g132386132404_ _g132387132407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132385132455_ _L132362_))
                                          (let* ((_g132458132477_
                                                  (lambda (_g132459132474_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132459132474_))))
                                                 (_g132457132596_
                                                  (lambda (_g132459132480_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132459132480_))
                                                        (let ((_e132463132482_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132459132480_))))
                  (let ((_hd132462132485_
                         (let () (declare (not safe)) (##car _e132463132482_)))
                        (_tl132461132487_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132463132482_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132461132487_))
                        (let ((_g135508_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132461132487_
                                  '0))))
                          (begin
                            (let ((_g135509_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135508_)
                                         (##vector-length _g135508_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135509_ 2)))
                                  (error "Context expects 2 values"
                                         _g135509_)))
                            (let ((_target132464132490_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135508_ 0)))
                                  (_tl132466132492_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135508_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132466132492_))
                                  (letrec ((_loop132467132495_
                                            (lambda (_hd132465132498_
                                                     _clause132471132500_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132465132498_))
                                                  (let ((_e132468132503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132465132498_))))
                                                    (let ((_lp-hd132469132506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132468132503_)))
                                                          (_lp-tl132470132508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132468132503_))))
                                                      (let ((__tmp135511
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132469132506_ _clause132471132500_))))
                (declare (not safe))
                (_loop132467132495_ _lp-tl132470132508_ __tmp135511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132472132511_
                                                         (reverse _clause132471132500_)))
                                                    ((lambda (_L132514_)
                                                       (for-each
                                                        (lambda (_clause132527_)
                                                          (let* ((_g132529132544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132530132541_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132530132541_))))
                         (_g132528132586_
                          (lambda (_g132530132547_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132530132547_))
                                (let ((_e132536132549_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132530132547_))))
                                  (let ((_hd132535132552_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132536132549_)))
                                        (_tl132534132554_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132536132549_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132535132552_))
                                        (let ((_e132539132557_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132535132552_))))
                                          (let ((_hd132538132560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132539132557_)))
                                                (_tl132537132562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132539132557_))))
                                            ((lambda (_L132565_
                                                      _L132566_
                                                      _L132567_)
                                               (for-each
                                                (lambda (_g132581132583_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132581132583_
                                                     _L132567_
                                                     _method-calls131426_
                                                     _slot-refs131427_)))
                                                _L132565_))
                                             _tl132534132554_
                                             _tl132537132562_
                                             _hd132538132560_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132529132544_ _g132530132547_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132529132544_ _g132530132547_))))))
                    (declare (not safe))
                    (_g132528132586_ _clause132527_)))
                (let ((__tmp135510
                       (lambda (_g132588132591_ _g132589132593_)
                         (let ()
                           (declare (not safe))
                           (cons _g132588132591_ _g132589132593_)))))
                  (declare (not safe))
                  (foldr1 __tmp135510 '() _L132514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132472132511_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132467132495_
                                       _target132464132490_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132458132477_ _g132459132480_))))))
                        (let ()
                          (declare (not safe))
                          (_g132458132477_ _g132459132480_)))))
                (let ()
                  (declare (not safe))
                  (_g132458132477_ _g132459132480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132457132596_ _L132361_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131430_))
                                              _stx131334_
                                              (let* ((_specializer-id132605_
                                                      (let* ((_id132599_
                                                              (let ((__tmp135512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131407_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135512 '"::specialize")))
                     (_specializer-id132602_
                      (let ((__tmp135513
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131334_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132599_ __tmp135513))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132602_))
                _specializer-id132602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132607_
                                                      (let ((__tmp135514
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135514)))
                                                     (_$method-table132609_
                                                      (let ((__tmp135515
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135515)))
                                                     (_methods132611_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131426_)))
                                                     (_$methods132615_
                                                      (map (lambda (_id132613_)
                                                             (let ((__tmp135516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132613_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135516)))
                   _methods132611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135517_
                                                      (for-each
                                                       (lambda (_g132616132619_
                                                                _g132617132621_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131426_
                                                            _g132616132619_
                                                            _g132617132621_)))
                                                       _methods132611_
                                                       _$methods132615_))
                                                     (_methods-bind132632_
                                                      (map (lambda (_g132624132627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132625132629_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131336_
                        _$klass132607_
                        _$method-table132609_
                        _g132624132627_
                        _g132625132629_)))
                   _methods132611_
                   _$methods132615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131427_)))
                                                     (_$slots132638_
                                                      (map (lambda (_id132636_)
                                                             (let ((__tmp135518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132636_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135518)))
                   _slots132634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135519_
                                                      (for-each
                                                       (lambda (_g132639132642_
                                                                _g132640132644_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131427_
                                                            _g132639132642_
                                                            _g132640132644_)))
                                                       _slots132634_
                                                       _$slots132638_))
                                                     (_slots-bind132655_
                                                      (map (lambda (_g132647132650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132648132652_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131337_
                        _$klass132607_
                        _g132647132650_
                        _g132648132652_)))
                   _slots132634_
                   _$slots132638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132741_
                                                      (let* ((_g132657132675_
                                                              (lambda (_g132658132672_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132658132672_))))
                     (_g132656132738_
                      (lambda (_g132658132678_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132658132678_))
                            (let ((_e132664132680_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132658132678_))))
                              (let ((_hd132663132683_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132664132680_)))
                                    (_tl132662132685_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132664132680_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132662132685_))
                                    (let ((_e132667132688_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132662132685_))))
                                      (let ((_hd132666132691_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132667132688_)))
                                            (_tl132665132693_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132667132688_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132666132691_))
                                            (let ((_e132670132696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132666132691_))))
                                              (let ((_hd132669132699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132670132696_)))
                                                    (_tl132668132701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132670132696_))))
                                                ((lambda (_L132704_
                                                          _L132705_
                                                          _L132706_)
                                                   (let* ((_body132736_
                                                           (map (lambda (_g132731132733_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132731132733_
                             _L132706_
                             _$klass132607_
                             _method-calls131426_
                             _slot-refs131427_)))
                        _L132704_))
                  (__tmp135520
                   (let ((__tmp135521
                          (let ((__tmp135522
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132706_ _L132705_))))
                            (declare (not safe))
                            (cons __tmp135522 _body132736_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135520
                                                      _L132362_)))
                                                 _tl132665132693_
                                                 _tl132668132701_
                                                 _hd132669132699_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132657132675_
                                               _g132658132678_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132657132675_ _g132658132678_)))))
                            (let ()
                              (declare (not safe))
                              (_g132657132675_ _g132658132678_))))))
                (declare (not safe))
                (_g132656132738_ _L132362_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132898_
                                                      (let* ((_g132743132762_
                                                              (lambda (_g132744132759_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132744132759_))))
                     (_g132742132895_
                      (lambda (_g132744132765_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132744132765_))
                            (let ((_e132748132767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132744132765_))))
                              (let ((_hd132747132770_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132748132767_)))
                                    (_tl132746132772_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132748132767_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132746132772_))
                                    (let ((_g135523_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132746132772_
                                              '0))))
                                      (begin
                                        (let ((_g135524_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135523_)
                                                     (##vector-length
                                                      _g135523_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135524_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135524_)))
                                        (let ((_target132749132775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135523_ 0)))
                                              (_tl132751132777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135523_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132751132777_))
                                              (letrec ((_loop132752132780_
                                                        (lambda (_hd132750132783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132756132785_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132750132783_))
                      (let ((_e132753132788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132750132783_))))
                        (let ((_lp-hd132754132791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132753132788_)))
                              (_lp-tl132755132793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132753132788_))))
                          (let ((__tmp135528
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132754132791_
                                         _clause132756132785_))))
                            (declare (not safe))
                            (_loop132752132780_
                             _lp-tl132755132793_
                             __tmp135528))))
                      (let ((_clause132757132796_
                             (reverse _clause132756132785_)))
                        ((lambda (_L132799_)
                           (let* ((_clauses132893_
                                   (map (lambda (_clause132813_)
                                          (let* ((___stx134248134249_
                                                  _clause132813_)
                                                 (_g132816132831_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134248134249_)))))
                                            (let ((___kont134250134251_
                                                   (lambda (_L132859_
                                                            _L132860_
                                                            _L132861_)
                                                     (let* ((_body132881_
                                                             (map (lambda (_g132876132878_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132876132878_
                               _L132861_
                               _$klass132607_
                               _method-calls131426_
                               _slot-refs131427_)))
                          _L132859_))
                    (__tmp135525
                     (let () (declare (not safe)) (cons _L132861_ _L132860_))))
               (declare (not safe))
               (cons __tmp135525 _body132881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134252134253_
                                                   (lambda () _clause132813_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134248134249_))
                                                  (let ((_e132823132843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134248134249_))))
                                                    (let ((_tl132821132848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132823132843_)))
                                                          (_hd132822132846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132823132843_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132822132846_))
                                                          (let ((_e132826132851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132822132846_))))
                    (let ((_tl132824132856_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132826132851_)))
                          (_hd132825132854_
                           (let ()
                             (declare (not safe))
                             (##car _e132826132851_))))
                      (___kont134250134251_
                       _tl132821132848_
                       _tl132824132856_
                       _hd132825132854_)))
                  (___kont134252134253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134252134253_)))))
                                        (let ((__tmp135526
                                               (lambda (_g132885132888_
                                                        _g132886132890_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132885132888_
                                                         _g132886132890_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135526 '() _L132799_))))
                                  (__tmp135527
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132893_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135527 _L132361_)))
                         _clause132757132796_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132752132780_
                                                   _target132749132775_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132743132762_
                                                 _g132744132765_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132743132762_ _g132744132765_)))))
                            (let ()
                              (declare (not safe))
                              (_g132743132762_ _g132744132765_))))))
                (declare (not safe))
                (_g132742132895_ _L132361_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132900_
                                                      (let ((__tmp135529
                                                             (let ((__tmp135530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135532
                                   (let ((__tmp135533
                                          (let ((__tmp135535
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132363_ '())))
                                                (__tmp135534
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132741_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135535 __tmp135534))))
                                     (declare (not safe))
                                     (cons __tmp135533 '())))
                                  (__tmp135531
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132898_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135532 __tmp135531))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135530))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135529 _stx131334_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132902_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131338_
                                                         _$klass132607_
                                                         _$method-table132609_
                                                         _methods-bind132632_
                                                         _slots-bind132655_
                                                         _specializer-impl132900_))))
                                                (let ((__tmp135537
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131407_)))
                                                      (__tmp135536
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132605_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135537
                                                   '" => "
                                                   __tmp135536))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131339_
                                                   _L131407_
                                                   _specializer-id132605_
                                                   _specializer-impl132902_)))))
                                        _hd132294132356_
                                        _hd132291132348_
                                        _hd132288132340_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132270132300_ _g132271132303_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132270132300_ _g132271132303_)))
                           (let ()
                             (declare (not safe))
                             (_g132270132300_ _g132271132303_)))
                       (let ()
                         (declare (not safe))
                         (_g132270132300_ _g132271132303_)))))
               (let () (declare (not safe)) (_g132270132300_ _g132271132303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132270132300_
                                                      _g132271132303_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132270132300_
                                              _g132271132303_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132270132300_ _g132271132303_)))))
                           (let ()
                             (declare (not safe))
                             (_g132270132300_ _g132271132303_)))))
                   (let ()
                     (declare (not safe))
                     (_g132270132300_ _g132271132303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132270132300_
                                                      _g132271132303_))))))
                                       (declare (not safe))
                                       (_g132269132905_ _L131406_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131406_))
                                         (let* ((_g132908132961_
                                                 (lambda (_g132909132958_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132909132958_))))
                                                (_g132907134092_
                                                 (lambda (_g132909132964_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132909132964_))
                                                       (let ((_e132917132966_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132909132964_))))
                 (let ((_hd132916132969_
                        (let () (declare (not safe)) (##car _e132917132966_)))
                       (_tl132915132971_
                        (let () (declare (not safe)) (##cdr _e132917132966_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132916132969_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132916132969_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132915132971_))
                               (let ((_e132920132974_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132915132971_))))
                                 (let ((_hd132919132977_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132920132974_)))
                                       (_tl132918132979_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132920132974_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132919132977_))
                                       (let ((_e132923132982_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132919132977_))))
                                         (let ((_hd132922132985_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132923132982_)))
                                               (_tl132921132987_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132923132982_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132922132985_))
                                               (let ((_e132926132990_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132922132985_))))
                                                 (let ((_hd132925132993_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132926132990_)))
                                                       (_tl132924132995_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132926132990_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132925132993_))
                                                       (let ((_e132929132998_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132925132993_))))
                 (let ((_hd132928133001_
                        (let () (declare (not safe)) (##car _e132929132998_)))
                       (_tl132927133003_
                        (let () (declare (not safe)) (##cdr _e132929132998_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132927133003_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132924132995_))
                           (let ((_e132932133006_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132924132995_))))
                             (let ((_hd132931133009_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132932133006_)))
                                   (_tl132930133011_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132932133006_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132931133009_))
                                   (let ((_e132935133014_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132931133009_))))
                                     (let ((_hd132934133017_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132935133014_)))
                                           (_tl132933133019_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132935133014_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132934133017_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132934133017_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132933133019_))
                                                   (let ((_e132938133022_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132933133019_))))
                                                     (let ((_hd132937133025_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132938133022_)))
                                                           (_tl132936133027_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132938133022_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132937133025_))
                                                           (let ((_e132941133030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132937133025_))))
                     (let ((_hd132940133033_
                            (let ()
                              (declare (not safe))
                              (##car _e132941133030_)))
                           (_tl132939133035_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132941133030_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132940133033_))
                           (let ((_e132944133038_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132940133033_))))
                             (let ((_hd132943133041_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132944133038_)))
                                   (_tl132942133043_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132944133038_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132943133041_))
                                   (let ((_e132947133046_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132943133041_))))
                                     (let ((_hd132946133049_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132947133046_)))
                                           (_tl132945133051_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132947133046_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132945133051_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132942133043_))
                                               (let ((_e132950133054_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132942133043_))))
                                                 (let ((_hd132949133057_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132950133054_)))
                                                       (_tl132948133059_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132950133054_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132948133059_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132939133035_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132936133027_))
                       (let ((_e132953133062_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132936133027_))))
                         (let ((_hd132952133065_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132953133062_)))
                               (_tl132951133067_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132953133062_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132951133067_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132930133011_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132921132987_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132918132979_))
                                           (let ((_e132956133070_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132918132979_))))
                                             (let ((_hd132955133073_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132956133070_)))
                                                   (_tl132954133075_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132956133070_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132954133075_))
                                                   ((lambda (_L133078_
                                                             _L133079_
                                                             _L133080_
                                                             _L133081_
                                                             _L133082_)
                                                      (let* ((_g133121133183_
                                                              (lambda (_g133122133180_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133122133180_))))
                     (_g133120134089_
                      (lambda (_g133122133186_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133122133186_))
                            (let ((_e133130133188_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133122133186_))))
                              (let ((_hd133129133191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133130133188_)))
                                    (_tl133128133193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133130133188_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133129133191_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133129133191_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133128133193_))
                                            (let ((_e133133133196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133128133193_))))
                                              (let ((_hd133132133199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133133133196_)))
                                                    (_tl133131133201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133133133196_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133131133201_))
                                                    (let ((_e133136133204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133131133201_))))
                                                      (let ((_hd133135133207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133136133204_)))
                    (_tl133134133209_
                     (let () (declare (not safe)) (##cdr _e133136133204_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133135133207_))
                    (let ((_e133139133212_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133135133207_))))
                      (let ((_hd133138133215_
                             (let ()
                               (declare (not safe))
                               (##car _e133139133212_)))
                            (_tl133137133217_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133139133212_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133138133215_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133138133215_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133137133217_))
                                    (let ((_e133142133220_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133137133217_))))
                                      (let ((_hd133141133223_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133142133220_)))
                                            (_tl133140133225_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133142133220_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133141133223_))
                                            (let ((_e133145133228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133141133223_))))
                                              (let ((_hd133144133231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133145133228_)))
                                                    (_tl133143133233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133145133228_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133144133231_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133144133231_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133143133233_))
                                                            (let ((_e133148133236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133143133233_))))
                      (let ((_hd133147133239_
                             (let ()
                               (declare (not safe))
                               (##car _e133148133236_)))
                            (_tl133146133241_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133148133236_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133146133241_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133140133225_))
                                (let ((_e133151133244_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133140133225_))))
                                  (let ((_hd133150133247_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133151133244_)))
                                        (_tl133149133249_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133151133244_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133150133247_))
                                        (let ((_e133154133252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133150133247_))))
                                          (let ((_hd133153133255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133154133252_)))
                                                (_tl133152133257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133154133252_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133153133255_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133153133255_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133152133257_))
                                                        (let ((_e133157133260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133152133257_))))
                  (let ((_hd133156133263_
                         (let () (declare (not safe)) (##car _e133157133260_)))
                        (_tl133155133265_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133157133260_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133155133265_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133149133249_))
                            (let ((_e133160133268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133149133249_))))
                              (let ((_hd133159133271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133160133268_)))
                                    (_tl133158133273_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133160133268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133159133271_))
                                    (let ((_e133163133276_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133159133271_))))
                                      (let ((_hd133162133279_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133163133276_)))
                                            (_tl133161133281_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133163133276_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133162133279_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133162133279_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133161133281_))
                                                    (let ((_e133166133284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133161133281_))))
                                                      (let ((_hd133165133287_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133166133284_)))
                    (_tl133164133289_
                     (let () (declare (not safe)) (##cdr _e133166133284_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133164133289_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133158133273_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133158133273_))
                                  '1)
                            (let ((_g135434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133158133273_
                                      '1))))
                              (begin
                                (let ((_g135435_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135434_)
                                             (##vector-length _g135434_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135435_ 2)))
                                      (error "Context expects 2 values"
                                             _g135435_)))
                                (let ((_target133167133292_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135434_ 0)))
                                      (_tl133169133294_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135434_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133169133294_))
                                      (let ((_e133178133297_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133169133294_))))
                                        (let ((_hd133177133300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133178133297_)))
                                              (_tl133176133302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133178133297_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133176133302_))
                                              (letrec ((_loop133170133305_
                                                        (lambda (_hd133168133308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133174133310_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133168133308_))
                      (let ((_e133171133313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133168133308_))))
                        (let ((_lp-hd133172133316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133171133313_)))
                              (_lp-tl133173133318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133171133313_))))
                          (let ((__tmp135507
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133172133316_
                                         _kw-ref133174133310_))))
                            (declare (not safe))
                            (_loop133170133305_
                             _lp-tl133173133318_
                             __tmp135507))))
                      (let ((_kw-ref133175133321_
                             (reverse _kw-ref133174133310_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133134133209_))
                            ((lambda (_L133324_
                                      _L133325_
                                      _L133326_
                                      _L133327_
                                      _L133328_)
                               (let* ((_kw-count133379_
                                       (length (let ((__tmp135436
                                                      (lambda (_g133371133374_
                                                               _g133372133376_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133371133374_
                                                                _g133372133376_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135436
                                                         '()
                                                         _L133325_))))
                                      (_self-index133381_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133379_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133080_))
                                     (let* ((_g133384133398_
                                             (lambda (_g133385133395_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133385133395_))))
                                            (_g133383133511_
                                             (lambda (_g133385133401_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133385133401_))
                                                   (let ((_e133390133403_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133385133401_))))
                                                     (let ((_hd133389133406_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133390133403_)))
                                                           (_tl133388133408_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133390133403_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133388133408_))
                                                           (let ((_e133393133411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133388133408_))))
                     (let ((_hd133392133414_
                            (let ()
                              (declare (not safe))
                              (##car _e133393133411_)))
                           (_tl133391133416_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133393133411_))))
                       ((lambda (_L133419_ _L133420_)
                          (let ((_self133436_
                                 (list-ref _L133420_ _self-index133381_)))
                            (for-each
                             (lambda (_g133437133439_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133437133439_
                                  _self133436_
                                  _method-calls131426_
                                  _slot-refs131427_)))
                             _L133419_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131430_))
                                _stx131334_
                                (let* ((_specializer-id133448_
                                        (let* ((_id133442_
                                                (let ((__tmp135480
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131407_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135480
                                                   '"::specialize")))
                                               (_specializer-id133445_
                                                (let ((__tmp135481
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131334_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133442_
                                                   __tmp135481))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133445_))
                                          _specializer-id133445_))
                                       (_$klass133450_
                                        (let ((__tmp135482 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135482)))
                                       (_$method-table133452_
                                        (let ((__tmp135483
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135483)))
                                       (_methods133454_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131426_)))
                                       (_$methods133458_
                                        (map (lambda (_id133456_)
                                               (let ((__tmp135484
                                                      (gensym _id133456_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135484)))
                                             _methods133454_))
                                       (_g135485_
                                        (for-each
                                         (lambda (_g133459133462_
                                                  _g133460133464_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131426_
                                              _g133459133462_
                                              _g133460133464_)))
                                         _methods133454_
                                         _$methods133458_))
                                       (_methods-bind133475_
                                        (map (lambda (_g133467133470_
                                                      _g133468133472_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131336_
                                                  _$klass133450_
                                                  _$method-table133452_
                                                  _g133467133470_
                                                  _g133468133472_)))
                                             _methods133454_
                                             _$methods133458_))
                                       (_slots133477_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131427_)))
                                       (_$slots133481_
                                        (map (lambda (_id133479_)
                                               (let ((__tmp135486
                                                      (gensym _id133479_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135486)))
                                             _slots133477_))
                                       (_g135487_
                                        (for-each
                                         (lambda (_g133482133485_
                                                  _g133483133487_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131427_
                                              _g133482133485_
                                              _g133483133487_)))
                                         _slots133477_
                                         _$slots133481_))
                                       (_slots-bind133498_
                                        (map (lambda (_g133490133493_
                                                      _g133491133495_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131337_
                                                  _$klass133450_
                                                  _g133490133493_
                                                  _g133491133495_)))
                                             _slots133477_
                                             _$slots133481_))
                                       (_specializer-impl133506_
                                        (let* ((_specializer-body133504_
                                                (map (lambda (_g133499133501_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133499133501_
                                                          _self133436_
                                                          _$klass133450_
                                                          _method-calls131426_
                                                          _slot-refs131427_)))
                                                     _L133419_))
                                               (__tmp135488
                                                (let ((__tmp135489
                                                       (let ((__tmp135491
                                                              (let ((__tmp135492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135504
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133082_ '())))
                                   (__tmp135493
                                    (let ((__tmp135494
                                           (let ((__tmp135495
                                                  (let ((__tmp135497
                                                         (let ((__tmp135498
                                                                (let ((__tmp135503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133081_ '())))
                              (__tmp135499
                               (let ((__tmp135500
                                      (let ((__tmp135501
                                             (let ((__tmp135502
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133420_
                                                            _specializer-body133504_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135502))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135501
                                         _L133080_))))
                                 (declare (not safe))
                                 (cons __tmp135500 '()))))
                          (declare (not safe))
                          (cons __tmp135503 __tmp135499))))
                   (declare (not safe))
                   (cons __tmp135498 '())))
                (__tmp135496
                 (let () (declare (not safe)) (cons _L133079_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135497
                                                          __tmp135496))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135495))))
                                      (declare (not safe))
                                      (cons __tmp135494 '()))))
                               (declare (not safe))
                               (cons __tmp135504 __tmp135493))))
                        (declare (not safe))
                        (cons __tmp135492 '())))
                     (__tmp135490
                      (let () (declare (not safe)) (cons _L133078_ '()))))
                 (declare (not safe))
                 (cons __tmp135491 __tmp135490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135489))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135488
                                           _stx131334_)))
                                       (_specializer-impl133508_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131338_
                                           _$klass133450_
                                           _$method-table133452_
                                           _methods-bind133475_
                                           _slots-bind133498_
                                           _specializer-impl133506_))))
                                  (let ((__tmp135506
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131407_)))
                                        (__tmp135505
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133448_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135506
                                     '" => "
                                     __tmp135505))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131339_
                                     _L131407_
                                     _specializer-id133448_
                                     _specializer-impl133508_))))))
                        _tl133391133416_
                        _hd133392133414_)))
                   (let ()
                     (declare (not safe))
                     (_g133384133398_ _g133385133401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133384133398_
                                                      _g133385133401_))))))
                                       (declare (not safe))
                                       (_g133383133511_ _L133080_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133080_))
                                         (let* ((_g133514133544_
                                                 (lambda (_g133515133541_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133515133541_))))
                                                (_g133513134086_
                                                 (lambda (_g133515133547_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133515133547_))
                                                       (let ((_e133521133549_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133515133547_))))
                 (let ((_hd133520133552_
                        (let () (declare (not safe)) (##car _e133521133549_)))
                       (_tl133519133554_
                        (let () (declare (not safe)) (##cdr _e133521133549_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133519133554_))
                       (let ((_e133524133557_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133519133554_))))
                         (let ((_hd133523133560_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133524133557_)))
                               (_tl133522133562_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133524133557_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133523133560_))
                               (let ((_e133527133565_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133523133560_))))
                                 (let ((_hd133526133568_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133527133565_)))
                                       (_tl133525133570_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133527133565_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133526133568_))
                                       (let ((_e133530133573_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133526133568_))))
                                         (let ((_hd133529133576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133530133573_)))
                                               (_tl133528133578_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133530133573_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133529133576_))
                                               (let ((_e133533133581_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133529133576_))))
                                                 (let ((_hd133532133584_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133533133581_)))
                                                       (_tl133531133586_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133533133581_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133531133586_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133528133578_))
                                                           (let ((_e133536133589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133528133578_))))
                     (let ((_hd133535133592_
                            (let ()
                              (declare (not safe))
                              (##car _e133536133589_)))
                           (_tl133534133594_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133536133589_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133534133594_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133525133570_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133522133562_))
                                   (let ((_e133539133597_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133522133562_))))
                                     (let ((_hd133538133600_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133539133597_)))
                                           (_tl133537133602_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133539133597_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133537133602_))
                                           ((lambda (_L133605_
                                                     _L133606_
                                                     _L133607_)
                                              (let* ((_g133630133644_
                                                      (lambda (_g133631133641_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133631133641_))))
                                                     (_g133629133685_
                                                      (lambda (_g133631133647_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133631133647_))
                                                            (let ((_e133636133649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133631133647_))))
                      (let ((_hd133635133652_
                             (let ()
                               (declare (not safe))
                               (##car _e133636133649_)))
                            (_tl133634133654_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133636133649_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133634133654_))
                            (let ((_e133639133657_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133634133654_))))
                              (let ((_hd133638133660_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133639133657_)))
                                    (_tl133637133662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133639133657_))))
                                ((lambda (_L133665_ _L133666_)
                                   (let ((_self133679_
                                          (list-ref
                                           _L133666_
                                           _self-index133381_)))
                                     (for-each
                                      (lambda (_g133680133682_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133680133682_
                                           _self133679_
                                           _method-calls131426_
                                           _slot-refs131427_)))
                                      _L133665_)))
                                 _tl133637133662_
                                 _hd133638133660_)))
                            (let ()
                              (declare (not safe))
                              (_g133630133644_ _g133631133647_)))))
                    (let ()
                      (declare (not safe))
                      (_g133630133644_ _g133631133647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133629133685_ _L133606_))
                                              (let* ((_g133688133707_
                                                      (lambda (_g133689133704_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133689133704_))))
                                                     (_g133687133812_
                                                      (lambda (_g133689133710_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133689133710_))
                                                            (let ((_e133693133712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133689133710_))))
                      (let ((_hd133692133715_
                             (let ()
                               (declare (not safe))
                               (##car _e133693133712_)))
                            (_tl133691133717_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133693133712_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133691133717_))
                            (let ((_g135437_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133691133717_
                                      '0))))
                              (begin
                                (let ((_g135438_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135437_)
                                             (##vector-length _g135437_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135438_ 2)))
                                      (error "Context expects 2 values"
                                             _g135438_)))
                                (let ((_target133694133720_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135437_ 0)))
                                      (_tl133696133722_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135437_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133696133722_))
                                      (letrec ((_loop133697133725_
                                                (lambda (_hd133695133728_
                                                         _clause133701133730_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133695133728_))
                                                      (let ((_e133698133733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133695133728_))))
                (let ((_lp-hd133699133736_
                       (let () (declare (not safe)) (##car _e133698133733_)))
                      (_lp-tl133700133738_
                       (let () (declare (not safe)) (##cdr _e133698133733_))))
                  (let ((__tmp135440
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133699133736_ _clause133701133730_))))
                    (declare (not safe))
                    (_loop133697133725_ _lp-tl133700133738_ __tmp135440))))
              (let ((_clause133702133741_ (reverse _clause133701133730_)))
                ((lambda (_L133744_)
                   (for-each
                    (lambda (_clause133757_)
                      (let* ((_g133759133770_
                              (lambda (_g133760133767_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133760133767_))))
                             (_g133758133802_
                              (lambda (_g133760133773_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133760133773_))
                                    (let ((_e133765133775_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133760133773_))))
                                      (let ((_hd133764133778_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133765133775_)))
                                            (_tl133763133780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133765133775_))))
                                        ((lambda (_L133783_ _L133784_)
                                           (let ((_self133796_
                                                  (list-ref
                                                   _L133784_
                                                   _self-index133381_)))
                                             (for-each
                                              (lambda (_g133797133799_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133797133799_
                                                   _self133796_
                                                   _method-calls131426_
                                                   _slot-refs131427_)))
                                              _L133783_)))
                                         _tl133763133780_
                                         _hd133764133778_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133759133770_ _g133760133773_))))))
                        (declare (not safe))
                        (_g133758133802_ _clause133757_)))
                    (let ((__tmp135439
                           (lambda (_g133804133807_ _g133805133809_)
                             (let ()
                               (declare (not safe))
                               (cons _g133804133807_ _g133805133809_)))))
                      (declare (not safe))
                      (foldr1 __tmp135439 '() _L133744_))))
                 _clause133702133741_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133697133725_
                                           _target133694133720_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133688133707_ _g133689133710_))))))
                            (let ()
                              (declare (not safe))
                              (_g133688133707_ _g133689133710_)))))
                    (let ()
                      (declare (not safe))
                      (_g133688133707_ _g133689133710_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133687133812_ _L133605_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131430_))
                                                  _stx131334_
                                                  (let* ((_specializer-id133821_
                                                          (let* ((_id133815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135441
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131407_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135441 '"::specialize")))
                         (_specializer-id133818_
                          (let ((__tmp135442
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131334_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133815_ __tmp135442))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133818_))
                    _specializer-id133818_))
                 (_$klass133823_
                  (let ((__tmp135443 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135443)))
                 (_$method-table133825_
                  (let ((__tmp135444 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135444)))
                 (_methods133827_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131426_)))
                 (_$methods133831_
                  (map (lambda (_id133829_)
                         (let ((__tmp135445 (gensym _id133829_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135445)))
                       _methods133827_))
                 (_g135446_
                  (for-each
                   (lambda (_g133832133835_ _g133833133837_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131426_
                        _g133832133835_
                        _g133833133837_)))
                   _methods133827_
                   _$methods133831_))
                 (_methods-bind133848_
                  (map (lambda (_g133840133843_ _g133841133845_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131336_
                            _$klass133823_
                            _$method-table133825_
                            _g133840133843_
                            _g133841133845_)))
                       _methods133827_
                       _$methods133831_))
                 (_slots133850_
                  (let () (declare (not safe)) (hash-keys _slot-refs131427_)))
                 (_$slots133854_
                  (map (lambda (_id133852_)
                         (let ((__tmp135447 (gensym _id133852_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135447)))
                       _slots133850_))
                 (_g135448_
                  (for-each
                   (lambda (_g133855133858_ _g133856133860_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131427_
                        _g133855133858_
                        _g133856133860_)))
                   _slots133850_
                   _$slots133854_))
                 (_slots-bind133871_
                  (map (lambda (_g133863133866_ _g133864133868_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131337_
                            _$klass133823_
                            _g133863133866_
                            _g133864133868_)))
                       _slots133850_
                       _$slots133854_))
                 (_specializer-lambda-expr133944_
                  (let* ((_g133873133887_
                          (lambda (_g133874133884_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133874133884_))))
                         (_g133872133941_
                          (lambda (_g133874133890_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133874133890_))
                                (let ((_e133879133892_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133874133890_))))
                                  (let ((_hd133878133895_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133879133892_)))
                                        (_tl133877133897_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133879133892_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133877133897_))
                                        (let ((_e133882133900_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133877133897_))))
                                          (let ((_hd133881133903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133882133900_)))
                                                (_tl133880133905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133882133900_))))
                                            ((lambda (_L133908_ _L133909_)
                                               (let* ((_self133932_
                                                       (list-ref
                                                        _L133909_
                                                        _self-index133381_))
                                                      (_body133938_
                                                       (map (lambda (_g133933133935_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133933133935_
                         _self133932_
                         _$klass133823_
                         _method-calls131426_
                         _slot-refs131427_)))
                    _L133908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135449
                                                        (let ((__tmp135450
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133909_ _body133938_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135449
                                                    _L133606_))))
                                             _tl133880133905_
                                             _hd133881133903_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133873133887_ _g133874133890_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133873133887_ _g133874133890_))))))
                    (declare (not safe))
                    (_g133872133941_ _L133606_)))
                 (_specializer-case-lambda-expr134079_
                  (let* ((_g133946133965_
                          (lambda (_g133947133962_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133947133962_))))
                         (_g133945134076_
                          (lambda (_g133947133968_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133947133968_))
                                (let ((_e133951133970_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133947133968_))))
                                  (let ((_hd133950133973_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133951133970_)))
                                        (_tl133949133975_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133951133970_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133949133975_))
                                        (let ((_g135451_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133949133975_
                                                  '0))))
                                          (begin
                                            (let ((_g135452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135451_)
                                                         (##vector-length
                                                          _g135451_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135452_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135452_)))
                                            (let ((_target133952133978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135451_
                                                      0)))
                                                  (_tl133954133980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135451_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133954133980_))
                                                  (letrec ((_loop133955133983_
                                                            (lambda (_hd133953133986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133959133988_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133953133986_))
                          (let ((_e133956133991_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133953133986_))))
                            (let ((_lp-hd133957133994_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133956133991_)))
                                  (_lp-tl133958133996_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133956133991_))))
                              (let ((__tmp135455
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133957133994_
                                             _clause133959133988_))))
                                (declare (not safe))
                                (_loop133955133983_
                                 _lp-tl133958133996_
                                 __tmp135455))))
                          (let ((_clause133960133999_
                                 (reverse _clause133959133988_)))
                            ((lambda (_L134002_)
                               (let* ((_clauses134074_
                                       (map (lambda (_clause134016_)
                                              (let* ((_g134018134029_
                                                      (lambda (_g134019134026_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134019134026_))))
                                                     (_g134017134064_
                                                      (lambda (_g134019134032_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134019134032_))
                                                            (let ((_e134024134034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134019134032_))))
                      (let ((_hd134023134037_
                             (let ()
                               (declare (not safe))
                               (##car _e134024134034_)))
                            (_tl134022134039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134024134034_))))
                        ((lambda (_L134042_ _L134043_)
                           (let* ((_self134055_
                                   (list-ref _L134043_ _self-index133381_))
                                  (_body134061_
                                   (map (lambda (_g134056134058_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134056134058_
                                             _self134055_
                                             _$klass133823_
                                             _method-calls131426_
                                             _slot-refs131427_)))
                                        _L134042_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134043_ _body134061_))))
                         _tl134022134039_
                         _hd134023134037_)))
                    (let ()
                      (declare (not safe))
                      (_g134018134029_ _g134019134032_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134017134064_
                                                 _clause134016_)))
                                            (let ((__tmp135453
                                                   (lambda (_g134066134069_
                                                            _g134067134071_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134066134069_
                                                             _g134067134071_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135453
                                                      '()
                                                      _L134002_))))
                                      (__tmp135454
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134074_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135454
                                  _L133605_)))
                             _clause133960133999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133955133983_
                                                       _target133952133978_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133946133965_
                                                     _g133947133968_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133946133965_ _g133947133968_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133946133965_ _g133947133968_))))))
                    (declare (not safe))
                    (_g133945134076_ _L133605_)))
                 (_specializer-impl134081_
                  (let ((__tmp135456
                         (let ((__tmp135457
                                (let ((__tmp135459
                                       (let ((__tmp135460
                                              (let ((__tmp135477
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133082_ '())))
                                                    (__tmp135461
                                                     (let ((__tmp135462
                                                            (let ((__tmp135463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135465
                                  (let ((__tmp135466
                                         (let ((__tmp135476
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133081_ '())))
                                               (__tmp135467
                                                (let ((__tmp135468
                                                       (let ((__tmp135469
                                                              (let ((__tmp135470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135472
                                    (let ((__tmp135473
                                           (let ((__tmp135475
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133607_ '())))
                                                 (__tmp135474
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133944_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135475 __tmp135474))))
                                      (declare (not safe))
                                      (cons __tmp135473 '())))
                                   (__tmp135471
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134079_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135472 __tmp135471))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135470))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135469 _stx131334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135468 '()))))
                                           (declare (not safe))
                                           (cons __tmp135476 __tmp135467))))
                                    (declare (not safe))
                                    (cons __tmp135466 '())))
                                 (__tmp135464
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133079_ '()))))
                             (declare (not safe))
                             (cons __tmp135465 __tmp135464))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135463))))
               (declare (not safe))
               (cons __tmp135462 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135477
                                                      __tmp135461))))
                                         (declare (not safe))
                                         (cons __tmp135460 '())))
                                      (__tmp135458
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133078_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135459 __tmp135458))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135457))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135456 _stx131334_)))
                 (_specializer-impl134083_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131338_
                     _$klass133823_
                     _$method-table133825_
                     _methods-bind133848_
                     _slots-bind133871_
                     _specializer-impl134081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135479
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131407_)))
                                                          (__tmp135478
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133821_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135479
                                                       '" => "
                                                       __tmp135478))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131339_
                                                       _L131407_
                                                       _specializer-id133821_
                                                       _specializer-impl134083_)))))
                                            _hd133538133600_
                                            _hd133535133592_
                                            _hd133532133584_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133514133544_
                                              _g133515133547_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133514133544_ _g133515133547_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133514133544_ _g133515133547_)))
                           (let ()
                             (declare (not safe))
                             (_g133514133544_ _g133515133547_)))))
                   (let ()
                     (declare (not safe))
                     (_g133514133544_ _g133515133547_)))
               (let ()
                 (declare (not safe))
                 (_g133514133544_ _g133515133547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133514133544_
                                                  _g133515133547_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133514133544_ _g133515133547_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133514133544_ _g133515133547_)))))
                       (let ()
                         (declare (not safe))
                         (_g133514133544_ _g133515133547_)))))
               (let ()
                 (declare (not safe))
                 (_g133514133544_ _g133515133547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133513134086_ _L133080_))
                                         _stx131334_))))
                             _hd133177133300_
                             _kw-ref133175133321_
                             _hd133165133287_
                             _hd133156133263_
                             _hd133147133239_)
                            (let ()
                              (declare (not safe))
                              (_g133121133183_ _g133122133186_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133170133305_
                                                   _target133167133292_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133121133183_
                                                 _g133122133186_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133121133183_ _g133122133186_))))))
                            (let ()
                              (declare (not safe))
                              (_g133121133183_ _g133122133186_)))
                        (let ()
                          (declare (not safe))
                          (_g133121133183_ _g133122133186_)))
                    (let ()
                      (declare (not safe))
                      (_g133121133183_ _g133122133186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133121133183_
                                                       _g133122133186_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133121133183_
                                                   _g133122133186_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133121133183_
                                               _g133122133186_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133121133183_ _g133122133186_)))))
                            (let ()
                              (declare (not safe))
                              (_g133121133183_ _g133122133186_)))
                        (let ()
                          (declare (not safe))
                          (_g133121133183_ _g133122133186_)))))
                (let ()
                  (declare (not safe))
                  (_g133121133183_ _g133122133186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133121133183_
                                                       _g133122133186_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133121133183_
                                                   _g133122133186_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133121133183_ _g133122133186_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133121133183_ _g133122133186_)))
                            (let ()
                              (declare (not safe))
                              (_g133121133183_ _g133122133186_)))))
                    (let ()
                      (declare (not safe))
                      (_g133121133183_ _g133122133186_)))
                (let ()
                  (declare (not safe))
                  (_g133121133183_ _g133122133186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133121133183_
                                                       _g133122133186_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133121133183_
                                               _g133122133186_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133121133183_ _g133122133186_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133121133183_ _g133122133186_)))
                            (let ()
                              (declare (not safe))
                              (_g133121133183_ _g133122133186_)))))
                    (let ()
                      (declare (not safe))
                      (_g133121133183_ _g133122133186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133121133183_
                                                       _g133122133186_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133121133183_
                                               _g133122133186_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133121133183_ _g133122133186_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133121133183_ _g133122133186_)))))
                            (let ()
                              (declare (not safe))
                              (_g133121133183_ _g133122133186_))))))
                (declare (not safe))
                (_g133120134089_ _L133079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132955133073_
                                                    _hd132952133065_
                                                    _hd132949133057_
                                                    _hd132946133049_
                                                    _hd132928133001_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132908132961_
                                                      _g132909132964_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132908132961_
                                              _g132909132964_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132908132961_ _g132909132964_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132908132961_ _g132909132964_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132908132961_ _g132909132964_)))))
                       (let ()
                         (declare (not safe))
                         (_g132908132961_ _g132909132964_)))
                   (let ()
                     (declare (not safe))
                     (_g132908132961_ _g132909132964_)))
               (let ()
                 (declare (not safe))
                 (_g132908132961_ _g132909132964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132908132961_
                                                  _g132909132964_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132908132961_
                                              _g132909132964_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132908132961_ _g132909132964_)))))
                           (let ()
                             (declare (not safe))
                             (_g132908132961_ _g132909132964_)))))
                   (let ()
                     (declare (not safe))
                     (_g132908132961_ _g132909132964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132908132961_
                                                      _g132909132964_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132908132961_
                                                  _g132909132964_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132908132961_
                                              _g132909132964_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132908132961_ _g132909132964_)))))
                           (let ()
                             (declare (not safe))
                             (_g132908132961_ _g132909132964_)))
                       (let ()
                         (declare (not safe))
                         (_g132908132961_ _g132909132964_)))))
               (let ()
                 (declare (not safe))
                 (_g132908132961_ _g132909132964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132908132961_
                                                  _g132909132964_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132908132961_ _g132909132964_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132908132961_ _g132909132964_)))
                           (let ()
                             (declare (not safe))
                             (_g132908132961_ _g132909132964_)))
                       (let ()
                         (declare (not safe))
                         (_g132908132961_ _g132909132964_)))))
               (let ()
                 (declare (not safe))
                 (_g132908132961_ _g132909132964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132907134092_ _L131406_))
                                         _stx131334_))))))))
                  (___kont134272134273_ (lambda () _stx131334_)))
              (let ((___match134301134302_
                     (lambda (_e131348131374_
                              _hd131347131377_
                              _tl131346131379_
                              _e131351131382_
                              _hd131350131385_
                              _tl131349131387_
                              _e131354131390_
                              _hd131353131393_
                              _tl131352131395_
                              _e131357131398_
                              _hd131356131401_
                              _tl131355131403_)
                       (let ((_L131406_ _hd131356131401_)
                             (_L131407_ _hd131353131393_))
                         (if (let ((__tmp135568
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131407_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135568))
                             (___kont134270134271_ _L131406_ _L131407_)
                             (___kont134272134273_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134268134269_))
                    (let ((_e131348131374_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134268134269_))))
                      (let ((_tl131346131379_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131348131374_)))
                            (_hd131347131377_
                             (let ()
                               (declare (not safe))
                               (##car _e131348131374_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131346131379_))
                            (let ((_e131351131382_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131346131379_))))
                              (let ((_tl131349131387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131351131382_)))
                                    (_hd131350131385_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131351131382_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131350131385_))
                                    (let ((_e131354131390_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131350131385_))))
                                      (let ((_tl131352131395_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131354131390_)))
                                            (_hd131353131393_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131354131390_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131352131395_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131349131387_))
                                                (let ((_e131357131398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131349131387_))))
                                                  (let ((_tl131355131403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131357131398_)))
                                                        (_hd131356131401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131357131398_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131355131403_))
                                                        (___match134301134302_
                                                         _e131348131374_
                                                         _hd131347131377_
                                                         _tl131346131379_
                                                         _e131351131382_
                                                         _hd131350131385_
                                                         _tl131349131387_
                                                         _e131354131390_
                                                         _hd131353131393_
                                                         _tl131352131395_
                                                         _e131357131398_
                                                         _hd131356131401_
                                                         _tl131355131403_)
                                                        (___kont134272134273_))))
                                                (___kont134272134273_))
                                            (___kont134272134273_))))
                                    (___kont134272134273_))))
                            (___kont134272134273_))))
                    (___kont134272134273_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx130293_ _self130294_ _methods130295_ _slots130296_)
        (let* ((___stx134304134305_ _stx130293_)
               (_g130304130526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134304134305_)))))
          (let ((___kont134306134307_
                 (lambda (_L131283_ _L131284_ _L131285_ _L131286_)
                   (let ((__tmp135569
                          (let () (declare (not safe)) (gx#stx-e _L131284_))))
                     (declare (not safe))
                     (hash-put! _methods130295_ __tmp135569 '#t))
                   (for-each
                    (lambda (_g131319131321_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131319131321_
                         _self130294_
                         _methods130295_
                         _slots130296_)))
                    (let ((__tmp135570
                           (lambda (_g131323131326_ _g131324131328_)
                             (let ()
                               (declare (not safe))
                               (cons _g131323131326_ _g131324131328_)))))
                      (declare (not safe))
                      (foldr1 __tmp135570 '() _L131283_)))))
                (___kont134310134311_
                 (lambda (_L131118_ _L131119_ _L131120_ _L131121_ _L131122_)
                   (let ((__tmp135571
                          (let () (declare (not safe)) (gx#stx-e _L131119_))))
                     (declare (not safe))
                     (hash-put! _methods130295_ __tmp135571 '#t))
                   (for-each
                    (lambda (_g131162131164_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131162131164_
                         _self130294_
                         _methods130295_
                         _slots130296_)))
                    (let ((__tmp135572
                           (lambda (_g131166131169_ _g131167131171_)
                             (let ()
                               (declare (not safe))
                               (cons _g131166131169_ _g131167131171_)))))
                      (declare (not safe))
                      (foldr1 __tmp135572 '() _L131118_)))))
                (___kont134314134315_
                 (lambda (_L130951_ _L130952_ _L130953_)
                   (let ((__tmp135573
                          (let () (declare (not safe)) (gx#stx-e _L130951_))))
                     (declare (not safe))
                     (hash-put! _slots130296_ __tmp135573 '#t))))
                (___kont134316134317_
                 (lambda (_L130828_ _L130829_ _L130830_ _L130831_)
                   (let ((__tmp135574
                          (let () (declare (not safe)) (gx#stx-e _L130829_))))
                     (declare (not safe))
                     (hash-put! _slots130296_ __tmp135574 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130828_
                      _self130294_
                      _methods130295_
                      _slots130296_))))
                (___kont134318134319_
                 (lambda (_L130702_ _L130703_)
                   (let* ((_accessor130725_
                           (let ((__tmp135575
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130703_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135575)))
                          (_klass130727_
                           (let ((__tmp135576
                                  (##structure-ref
                                   _accessor130725_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130293_
                              __tmp135576)))
                          (_slot130729_
                           (##structure-ref
                            _accessor130725_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135578
                                     (##structure-ref
                                      _accessor130725_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135578))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130727_
                                     _slot130729_))
                                  (##structure-ref
                                   _klass130727_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135577
                                (##structure-ref
                                 _accessor130725_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots130296_ __tmp135577 '#t))))))
                (___kont134320134321_
                 (lambda (_L130602_ _L130603_ _L130604_)
                   (let* ((_mutator130631_
                           (let ((__tmp135579
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130604_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135579)))
                          (_klass130633_
                           (let ((__tmp135580
                                  (##structure-ref
                                   _mutator130631_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130293_
                              __tmp135580)))
                          (_slot130635_
                           (##structure-ref
                            _mutator130631_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135581
                                     (##structure-ref
                                      _mutator130631_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135581))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130633_
                                     _slot130635_))
                                  (##structure-ref
                                   _klass130633_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots130296_ _slot130635_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130602_
                        _self130294_
                        _methods130295_
                        _slots130296_)))))
                (___kont134322134323_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx130293_
                      _self130294_
                      _methods130295_
                      _slots130296_)))))
            (let* ((___match134803134804_
                    (lambda (_e130500130538_
                             _hd130499130541_
                             _tl130498130543_
                             _e130503130546_
                             _hd130502130549_
                             _tl130501130551_
                             _e130506130554_
                             _hd130505130557_
                             _tl130504130559_
                             _e130509130562_
                             _hd130508130565_
                             _tl130507130567_
                             _e130512130570_
                             _hd130511130573_
                             _tl130510130575_
                             _e130515130578_
                             _hd130514130581_
                             _tl130513130583_
                             _e130518130586_
                             _hd130517130589_
                             _tl130516130591_
                             _e130521130594_
                             _hd130520130597_
                             _tl130519130599_)
                      (let ((_L130602_ _hd130520130597_)
                            (_L130603_ _hd130517130589_)
                            (_L130604_ _hd130508130565_))
                        (if (and (let ((__tmp135582
                                        (let ((__tmp135583
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130604_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135583))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135582
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130603_
                                    _self130294_)))
                            (___kont134320134321_
                             _L130602_
                             _L130603_
                             _L130604_)
                            (___kont134322134323_)))))
                   (___match134801134802_
                    (lambda (_e130500130538_
                             _hd130499130541_
                             _tl130498130543_
                             _e130503130546_
                             _hd130502130549_
                             _tl130501130551_
                             _e130506130554_
                             _hd130505130557_
                             _tl130504130559_
                             _e130509130562_
                             _hd130508130565_
                             _tl130507130567_
                             _e130512130570_
                             _hd130511130573_
                             _tl130510130575_
                             _e130515130578_
                             _hd130514130581_
                             _tl130513130583_
                             _e130518130586_
                             _hd130517130589_
                             _tl130516130591_
                             _e130521130594_
                             _hd130520130597_
                             _tl130519130599_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130519130599_))
                          (___match134803134804_
                           _e130500130538_
                           _hd130499130541_
                           _tl130498130543_
                           _e130503130546_
                           _hd130502130549_
                           _tl130501130551_
                           _e130506130554_
                           _hd130505130557_
                           _tl130504130559_
                           _e130509130562_
                           _hd130508130565_
                           _tl130507130567_
                           _e130512130570_
                           _hd130511130573_
                           _tl130510130575_
                           _e130515130578_
                           _hd130514130581_
                           _tl130513130583_
                           _e130518130586_
                           _hd130517130589_
                           _tl130516130591_
                           _e130521130594_
                           _hd130520130597_
                           _tl130519130599_)
                          (___kont134322134323_))))
                   (___match134795134796_
                    (lambda (_e130500130538_
                             _hd130499130541_
                             _tl130498130543_
                             _e130503130546_
                             _hd130502130549_
                             _tl130501130551_
                             _e130506130554_
                             _hd130505130557_
                             _tl130504130559_
                             _e130509130562_
                             _hd130508130565_
                             _tl130507130567_
                             _e130512130570_
                             _hd130511130573_
                             _tl130510130575_
                             _e130515130578_
                             _hd130514130581_
                             _tl130513130583_
                             _e130518130586_
                             _hd130517130589_
                             _tl130516130591_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130510130575_))
                          (let ((_e130521130594_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130510130575_))))
                            (let ((_tl130519130599_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130521130594_)))
                                  (_hd130520130597_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130521130594_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130519130599_))
                                  (___match134803134804_
                                   _e130500130538_
                                   _hd130499130541_
                                   _tl130498130543_
                                   _e130503130546_
                                   _hd130502130549_
                                   _tl130501130551_
                                   _e130506130554_
                                   _hd130505130557_
                                   _tl130504130559_
                                   _e130509130562_
                                   _hd130508130565_
                                   _tl130507130567_
                                   _e130512130570_
                                   _hd130511130573_
                                   _tl130510130575_
                                   _e130515130578_
                                   _hd130514130581_
                                   _tl130513130583_
                                   _e130518130586_
                                   _hd130517130589_
                                   _tl130516130591_
                                   _e130521130594_
                                   _hd130520130597_
                                   _tl130519130599_)
                                  (___kont134322134323_))))
                          (___kont134322134323_))))
                   (___match134741134742_
                    (lambda (_e130476130646_
                             _hd130475130649_
                             _tl130474130651_
                             _e130479130654_
                             _hd130478130657_
                             _tl130477130659_
                             _e130482130662_
                             _hd130481130665_
                             _tl130480130667_
                             _e130485130670_
                             _hd130484130673_
                             _tl130483130675_
                             _e130488130678_
                             _hd130487130681_
                             _tl130486130683_
                             _e130491130686_
                             _hd130490130689_
                             _tl130489130691_
                             _e130494130694_
                             _hd130493130697_
                             _tl130492130699_)
                      (let ((_L130702_ _hd130493130697_)
                            (_L130703_ _hd130484130673_))
                        (if (and (let ((__tmp135584
                                        (let ((__tmp135585
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130703_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135585))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135584
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130702_
                                    _self130294_)))
                            (___kont134318134319_ _L130702_ _L130703_)
                            (___kont134322134323_)))))
                   (___match134739134740_
                    (lambda (_e130476130646_
                             _hd130475130649_
                             _tl130474130651_
                             _e130479130654_
                             _hd130478130657_
                             _tl130477130659_
                             _e130482130662_
                             _hd130481130665_
                             _tl130480130667_
                             _e130485130670_
                             _hd130484130673_
                             _tl130483130675_
                             _e130488130678_
                             _hd130487130681_
                             _tl130486130683_
                             _e130491130686_
                             _hd130490130689_
                             _tl130489130691_
                             _e130494130694_
                             _hd130493130697_
                             _tl130492130699_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130486130683_))
                          (___match134741134742_
                           _e130476130646_
                           _hd130475130649_
                           _tl130474130651_
                           _e130479130654_
                           _hd130478130657_
                           _tl130477130659_
                           _e130482130662_
                           _hd130481130665_
                           _tl130480130667_
                           _e130485130670_
                           _hd130484130673_
                           _tl130483130675_
                           _e130488130678_
                           _hd130487130681_
                           _tl130486130683_
                           _e130491130686_
                           _hd130490130689_
                           _tl130489130691_
                           _e130494130694_
                           _hd130493130697_
                           _tl130492130699_)
                          (___match134795134796_
                           _e130476130646_
                           _hd130475130649_
                           _tl130474130651_
                           _e130479130654_
                           _hd130478130657_
                           _tl130477130659_
                           _e130482130662_
                           _hd130481130665_
                           _tl130480130667_
                           _e130485130670_
                           _hd130484130673_
                           _tl130483130675_
                           _e130488130678_
                           _hd130487130681_
                           _tl130486130683_
                           _e130491130686_
                           _hd130490130689_
                           _tl130489130691_
                           _e130494130694_
                           _hd130493130697_
                           _tl130492130699_))))
                   (___match134685134686_
                    (lambda (_e130441130740_
                             _hd130440130743_
                             _tl130439130745_
                             _e130444130748_
                             _hd130443130751_
                             _tl130442130753_
                             _e130447130756_
                             _hd130446130759_
                             _tl130445130761_
                             _e130450130764_
                             _hd130449130767_
                             _tl130448130769_
                             _e130453130772_
                             _hd130452130775_
                             _tl130451130777_
                             _e130456130780_
                             _hd130455130783_
                             _tl130454130785_
                             _e130459130788_
                             _hd130458130791_
                             _tl130457130793_
                             _e130462130796_
                             _hd130461130799_
                             _tl130460130801_
                             _e130465130804_
                             _hd130464130807_
                             _tl130463130809_
                             _e130468130812_
                             _hd130467130815_
                             _tl130466130817_
                             _e130471130820_
                             _hd130470130823_
                             _tl130469130825_)
                      (let ((_L130828_ _hd130470130823_)
                            (_L130829_ _hd130467130815_)
                            (_L130830_ _hd130458130791_)
                            (_L130831_ _hd130449130767_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130831_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130831_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130830_
                                    _self130294_)))
                            (___kont134316134317_
                             _L130828_
                             _L130829_
                             _L130830_
                             _L130831_)
                            (___kont134322134323_)))))
                   (___match134677134678_
                    (lambda (_e130441130740_
                             _hd130440130743_
                             _tl130439130745_
                             _e130444130748_
                             _hd130443130751_
                             _tl130442130753_
                             _e130447130756_
                             _hd130446130759_
                             _tl130445130761_
                             _e130450130764_
                             _hd130449130767_
                             _tl130448130769_
                             _e130453130772_
                             _hd130452130775_
                             _tl130451130777_
                             _e130456130780_
                             _hd130455130783_
                             _tl130454130785_
                             _e130459130788_
                             _hd130458130791_
                             _tl130457130793_
                             _e130462130796_
                             _hd130461130799_
                             _tl130460130801_
                             _e130465130804_
                             _hd130464130807_
                             _tl130463130809_
                             _e130468130812_
                             _hd130467130815_
                             _tl130466130817_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130460130801_))
                          (let ((_e130471130820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130460130801_))))
                            (let ((_tl130469130825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130471130820_)))
                                  (_hd130470130823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130471130820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130469130825_))
                                  (___match134685134686_
                                   _e130441130740_
                                   _hd130440130743_
                                   _tl130439130745_
                                   _e130444130748_
                                   _hd130443130751_
                                   _tl130442130753_
                                   _e130447130756_
                                   _hd130446130759_
                                   _tl130445130761_
                                   _e130450130764_
                                   _hd130449130767_
                                   _tl130448130769_
                                   _e130453130772_
                                   _hd130452130775_
                                   _tl130451130777_
                                   _e130456130780_
                                   _hd130455130783_
                                   _tl130454130785_
                                   _e130459130788_
                                   _hd130458130791_
                                   _tl130457130793_
                                   _e130462130796_
                                   _hd130461130799_
                                   _tl130460130801_
                                   _e130465130804_
                                   _hd130464130807_
                                   _tl130463130809_
                                   _e130468130812_
                                   _hd130467130815_
                                   _tl130466130817_
                                   _e130471130820_
                                   _hd130470130823_
                                   _tl130469130825_)
                                  (___kont134322134323_))))
                          (___match134801134802_
                           _e130441130740_
                           _hd130440130743_
                           _tl130439130745_
                           _e130444130748_
                           _hd130443130751_
                           _tl130442130753_
                           _e130447130756_
                           _hd130446130759_
                           _tl130445130761_
                           _e130450130764_
                           _hd130449130767_
                           _tl130448130769_
                           _e130453130772_
                           _hd130452130775_
                           _tl130451130777_
                           _e130456130780_
                           _hd130455130783_
                           _tl130454130785_
                           _e130459130788_
                           _hd130458130791_
                           _tl130457130793_
                           _e130462130796_
                           _hd130461130799_
                           _tl130460130801_))))
                   (___match134599134600_
                    (lambda (_e130407130871_
                             _hd130406130874_
                             _tl130405130876_
                             _e130410130879_
                             _hd130409130882_
                             _tl130408130884_
                             _e130413130887_
                             _hd130412130890_
                             _tl130411130892_
                             _e130416130895_
                             _hd130415130898_
                             _tl130414130900_
                             _e130419130903_
                             _hd130418130906_
                             _tl130417130908_
                             _e130422130911_
                             _hd130421130914_
                             _tl130420130916_
                             _e130425130919_
                             _hd130424130922_
                             _tl130423130924_
                             _e130428130927_
                             _hd130427130930_
                             _tl130426130932_
                             _e130431130935_
                             _hd130430130938_
                             _tl130429130940_
                             _e130434130943_
                             _hd130433130946_
                             _tl130432130948_)
                      (let ((_L130951_ _hd130433130946_)
                            (_L130952_ _hd130424130922_)
                            (_L130953_ _hd130415130898_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130953_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130953_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130952_
                                    _self130294_)))
                            (___kont134314134315_
                             _L130951_
                             _L130952_
                             _L130953_)
                            (___match134803134804_
                             _e130407130871_
                             _hd130406130874_
                             _tl130405130876_
                             _e130410130879_
                             _hd130409130882_
                             _tl130408130884_
                             _e130413130887_
                             _hd130412130890_
                             _tl130411130892_
                             _e130416130895_
                             _hd130415130898_
                             _tl130414130900_
                             _e130419130903_
                             _hd130418130906_
                             _tl130417130908_
                             _e130422130911_
                             _hd130421130914_
                             _tl130420130916_
                             _e130425130919_
                             _hd130424130922_
                             _tl130423130924_
                             _e130428130927_
                             _hd130427130930_
                             _tl130426130932_)))))
                   (___match134597134598_
                    (lambda (_e130407130871_
                             _hd130406130874_
                             _tl130405130876_
                             _e130410130879_
                             _hd130409130882_
                             _tl130408130884_
                             _e130413130887_
                             _hd130412130890_
                             _tl130411130892_
                             _e130416130895_
                             _hd130415130898_
                             _tl130414130900_
                             _e130419130903_
                             _hd130418130906_
                             _tl130417130908_
                             _e130422130911_
                             _hd130421130914_
                             _tl130420130916_
                             _e130425130919_
                             _hd130424130922_
                             _tl130423130924_
                             _e130428130927_
                             _hd130427130930_
                             _tl130426130932_
                             _e130431130935_
                             _hd130430130938_
                             _tl130429130940_
                             _e130434130943_
                             _hd130433130946_
                             _tl130432130948_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130426130932_))
                          (___match134599134600_
                           _e130407130871_
                           _hd130406130874_
                           _tl130405130876_
                           _e130410130879_
                           _hd130409130882_
                           _tl130408130884_
                           _e130413130887_
                           _hd130412130890_
                           _tl130411130892_
                           _e130416130895_
                           _hd130415130898_
                           _tl130414130900_
                           _e130419130903_
                           _hd130418130906_
                           _tl130417130908_
                           _e130422130911_
                           _hd130421130914_
                           _tl130420130916_
                           _e130425130919_
                           _hd130424130922_
                           _tl130423130924_
                           _e130428130927_
                           _hd130427130930_
                           _tl130426130932_
                           _e130431130935_
                           _hd130430130938_
                           _tl130429130940_
                           _e130434130943_
                           _hd130433130946_
                           _tl130432130948_)
                          (___match134677134678_
                           _e130407130871_
                           _hd130406130874_
                           _tl130405130876_
                           _e130410130879_
                           _hd130409130882_
                           _tl130408130884_
                           _e130413130887_
                           _hd130412130890_
                           _tl130411130892_
                           _e130416130895_
                           _hd130415130898_
                           _tl130414130900_
                           _e130419130903_
                           _hd130418130906_
                           _tl130417130908_
                           _e130422130911_
                           _hd130421130914_
                           _tl130420130916_
                           _e130425130919_
                           _hd130424130922_
                           _tl130423130924_
                           _e130428130927_
                           _hd130427130930_
                           _tl130426130932_
                           _e130431130935_
                           _hd130430130938_
                           _tl130429130940_
                           _e130434130943_
                           _hd130433130946_
                           _tl130432130948_))))
                   (___match134587134588_
                    (lambda (_e130407130871_
                             _hd130406130874_
                             _tl130405130876_
                             _e130410130879_
                             _hd130409130882_
                             _tl130408130884_
                             _e130413130887_
                             _hd130412130890_
                             _tl130411130892_
                             _e130416130895_
                             _hd130415130898_
                             _tl130414130900_
                             _e130419130903_
                             _hd130418130906_
                             _tl130417130908_
                             _e130422130911_
                             _hd130421130914_
                             _tl130420130916_
                             _e130425130919_
                             _hd130424130922_
                             _tl130423130924_
                             _e130428130927_
                             _hd130427130930_
                             _tl130426130932_
                             _e130431130935_
                             _hd130430130938_
                             _tl130429130940_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130430130938_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130429130940_))
                              (let ((_e130434130943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130429130940_))))
                                (let ((_tl130432130948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130434130943_)))
                                      (_hd130433130946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130434130943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130432130948_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130426130932_))
                                          (___match134599134600_
                                           _e130407130871_
                                           _hd130406130874_
                                           _tl130405130876_
                                           _e130410130879_
                                           _hd130409130882_
                                           _tl130408130884_
                                           _e130413130887_
                                           _hd130412130890_
                                           _tl130411130892_
                                           _e130416130895_
                                           _hd130415130898_
                                           _tl130414130900_
                                           _e130419130903_
                                           _hd130418130906_
                                           _tl130417130908_
                                           _e130422130911_
                                           _hd130421130914_
                                           _tl130420130916_
                                           _e130425130919_
                                           _hd130424130922_
                                           _tl130423130924_
                                           _e130428130927_
                                           _hd130427130930_
                                           _tl130426130932_
                                           _e130431130935_
                                           _hd130430130938_
                                           _tl130429130940_
                                           _e130434130943_
                                           _hd130433130946_
                                           _tl130432130948_)
                                          (___match134677134678_
                                           _e130407130871_
                                           _hd130406130874_
                                           _tl130405130876_
                                           _e130410130879_
                                           _hd130409130882_
                                           _tl130408130884_
                                           _e130413130887_
                                           _hd130412130890_
                                           _tl130411130892_
                                           _e130416130895_
                                           _hd130415130898_
                                           _tl130414130900_
                                           _e130419130903_
                                           _hd130418130906_
                                           _tl130417130908_
                                           _e130422130911_
                                           _hd130421130914_
                                           _tl130420130916_
                                           _e130425130919_
                                           _hd130424130922_
                                           _tl130423130924_
                                           _e130428130927_
                                           _hd130427130930_
                                           _tl130426130932_
                                           _e130431130935_
                                           _hd130430130938_
                                           _tl130429130940_
                                           _e130434130943_
                                           _hd130433130946_
                                           _tl130432130948_))
                                      (___match134801134802_
                                       _e130407130871_
                                       _hd130406130874_
                                       _tl130405130876_
                                       _e130410130879_
                                       _hd130409130882_
                                       _tl130408130884_
                                       _e130413130887_
                                       _hd130412130890_
                                       _tl130411130892_
                                       _e130416130895_
                                       _hd130415130898_
                                       _tl130414130900_
                                       _e130419130903_
                                       _hd130418130906_
                                       _tl130417130908_
                                       _e130422130911_
                                       _hd130421130914_
                                       _tl130420130916_
                                       _e130425130919_
                                       _hd130424130922_
                                       _tl130423130924_
                                       _e130428130927_
                                       _hd130427130930_
                                       _tl130426130932_))))
                              (___match134801134802_
                               _e130407130871_
                               _hd130406130874_
                               _tl130405130876_
                               _e130410130879_
                               _hd130409130882_
                               _tl130408130884_
                               _e130413130887_
                               _hd130412130890_
                               _tl130411130892_
                               _e130416130895_
                               _hd130415130898_
                               _tl130414130900_
                               _e130419130903_
                               _hd130418130906_
                               _tl130417130908_
                               _e130422130911_
                               _hd130421130914_
                               _tl130420130916_
                               _e130425130919_
                               _hd130424130922_
                               _tl130423130924_
                               _e130428130927_
                               _hd130427130930_
                               _tl130426130932_))
                          (___match134801134802_
                           _e130407130871_
                           _hd130406130874_
                           _tl130405130876_
                           _e130410130879_
                           _hd130409130882_
                           _tl130408130884_
                           _e130413130887_
                           _hd130412130890_
                           _tl130411130892_
                           _e130416130895_
                           _hd130415130898_
                           _tl130414130900_
                           _e130419130903_
                           _hd130418130906_
                           _tl130417130908_
                           _e130422130911_
                           _hd130421130914_
                           _tl130420130916_
                           _e130425130919_
                           _hd130424130922_
                           _tl130423130924_
                           _e130428130927_
                           _hd130427130930_
                           _tl130426130932_))))
                   (___match134519134520_
                    (lambda (_e130356130990_
                             _hd130355130993_
                             _tl130354130995_
                             _e130359130998_
                             _hd130358131001_
                             _tl130357131003_
                             _e130362131006_
                             _hd130361131009_
                             _tl130360131011_
                             _e130365131014_
                             _hd130364131017_
                             _tl130363131019_
                             _e130368131022_
                             _hd130367131025_
                             _tl130366131027_
                             _e130371131030_
                             _hd130370131033_
                             _tl130369131035_
                             _e130374131038_
                             _hd130373131041_
                             _tl130372131043_
                             _e130377131046_
                             _hd130376131049_
                             _tl130375131051_
                             _e130380131054_
                             _hd130379131057_
                             _tl130378131059_
                             _e130383131062_
                             _hd130382131065_
                             _tl130381131067_
                             _e130386131070_
                             _hd130385131073_
                             _tl130384131075_
                             _e130389131078_
                             _hd130388131081_
                             _tl130387131083_
                             _e130392131086_
                             _hd130391131089_
                             _tl130390131091_
                             ___splice134312134313_
                             _target130393131094_
                             _tl130395131096_)
                      (letrec ((_loop130396131099_
                                (lambda (_hd130394131102_ _args130400131104_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130394131102_))
                                      (let ((_e130397131107_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130394131102_))))
                                        (let ((_lp-tl130399131112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130397131107_)))
                                              (_lp-hd130398131110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130397131107_))))
                                          (let ((__tmp135586
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130398131110_
                                                         _args130400131104_))))
                                            (declare (not safe))
                                            (_loop130396131099_
                                             _lp-tl130399131112_
                                             __tmp135586))))
                                      (let ((_args130401131115_
                                             (reverse _args130400131104_)))
                                        (let ((_L131118_ _args130401131115_)
                                              (_L131119_ _hd130391131089_)
                                              (_L131120_ _hd130382131065_)
                                              (_L131121_ _hd130373131041_)
                                              (_L131122_ _hd130364131017_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131122_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131121_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131120_
                                                      _self130294_)))
                                              (___kont134310134311_
                                               _L131118_
                                               _L131119_
                                               _L131120_
                                               _L131121_
                                               _L131122_)
                                              (___kont134322134323_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130396131099_ _target130393131094_ '())))))
                   (___match134477134478_
                    (lambda (_e130356130990_
                             _hd130355130993_
                             _tl130354130995_
                             _e130359130998_
                             _hd130358131001_
                             _tl130357131003_
                             _e130362131006_
                             _hd130361131009_
                             _tl130360131011_
                             _e130365131014_
                             _hd130364131017_
                             _tl130363131019_
                             _e130368131022_
                             _hd130367131025_
                             _tl130366131027_
                             _e130371131030_
                             _hd130370131033_
                             _tl130369131035_
                             _e130374131038_
                             _hd130373131041_
                             _tl130372131043_
                             _e130377131046_
                             _hd130376131049_
                             _tl130375131051_
                             _e130380131054_
                             _hd130379131057_
                             _tl130378131059_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130379131057_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130378131059_))
                              (let ((_e130383131062_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130378131059_))))
                                (let ((_tl130381131067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130383131062_)))
                                      (_hd130382131065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130383131062_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130381131067_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130375131051_))
                                          (let ((_e130386131070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130375131051_))))
                                            (let ((_tl130384131075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130386131070_)))
                                                  (_hd130385131073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130386131070_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130385131073_))
                                                  (let ((_e130389131078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130385131073_))))
                                                    (let ((_tl130387131083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130389131078_)))
                                                          (_hd130388131081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130389131078_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130388131081_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130388131081_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130387131083_))
                          (let ((_e130392131086_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130387131083_))))
                            (let ((_tl130390131091_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130392131086_)))
                                  (_hd130391131089_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130392131086_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130390131091_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130384131075_))
                                      (let ((___splice134312134313_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130384131075_
                                                '0))))
                                        (let ((_tl130395131096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134312134313_
                                                  '1)))
                                              (_target130393131094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134312134313_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130395131096_))
                                              (___match134519134520_
                                               _e130356130990_
                                               _hd130355130993_
                                               _tl130354130995_
                                               _e130359130998_
                                               _hd130358131001_
                                               _tl130357131003_
                                               _e130362131006_
                                               _hd130361131009_
                                               _tl130360131011_
                                               _e130365131014_
                                               _hd130364131017_
                                               _tl130363131019_
                                               _e130368131022_
                                               _hd130367131025_
                                               _tl130366131027_
                                               _e130371131030_
                                               _hd130370131033_
                                               _tl130369131035_
                                               _e130374131038_
                                               _hd130373131041_
                                               _tl130372131043_
                                               _e130377131046_
                                               _hd130376131049_
                                               _tl130375131051_
                                               _e130380131054_
                                               _hd130379131057_
                                               _tl130378131059_
                                               _e130383131062_
                                               _hd130382131065_
                                               _tl130381131067_
                                               _e130386131070_
                                               _hd130385131073_
                                               _tl130384131075_
                                               _e130389131078_
                                               _hd130388131081_
                                               _tl130387131083_
                                               _e130392131086_
                                               _hd130391131089_
                                               _tl130390131091_
                                               ___splice134312134313_
                                               _target130393131094_
                                               _tl130395131096_)
                                              (___kont134322134323_))))
                                      (___kont134322134323_))
                                  (___kont134322134323_))))
                          (___kont134322134323_))
                      (___kont134322134323_))
                  (___kont134322134323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134322134323_))))
                                          (___match134801134802_
                                           _e130356130990_
                                           _hd130355130993_
                                           _tl130354130995_
                                           _e130359130998_
                                           _hd130358131001_
                                           _tl130357131003_
                                           _e130362131006_
                                           _hd130361131009_
                                           _tl130360131011_
                                           _e130365131014_
                                           _hd130364131017_
                                           _tl130363131019_
                                           _e130368131022_
                                           _hd130367131025_
                                           _tl130366131027_
                                           _e130371131030_
                                           _hd130370131033_
                                           _tl130369131035_
                                           _e130374131038_
                                           _hd130373131041_
                                           _tl130372131043_
                                           _e130377131046_
                                           _hd130376131049_
                                           _tl130375131051_))
                                      (___match134801134802_
                                       _e130356130990_
                                       _hd130355130993_
                                       _tl130354130995_
                                       _e130359130998_
                                       _hd130358131001_
                                       _tl130357131003_
                                       _e130362131006_
                                       _hd130361131009_
                                       _tl130360131011_
                                       _e130365131014_
                                       _hd130364131017_
                                       _tl130363131019_
                                       _e130368131022_
                                       _hd130367131025_
                                       _tl130366131027_
                                       _e130371131030_
                                       _hd130370131033_
                                       _tl130369131035_
                                       _e130374131038_
                                       _hd130373131041_
                                       _tl130372131043_
                                       _e130377131046_
                                       _hd130376131049_
                                       _tl130375131051_))))
                              (___match134801134802_
                               _e130356130990_
                               _hd130355130993_
                               _tl130354130995_
                               _e130359130998_
                               _hd130358131001_
                               _tl130357131003_
                               _e130362131006_
                               _hd130361131009_
                               _tl130360131011_
                               _e130365131014_
                               _hd130364131017_
                               _tl130363131019_
                               _e130368131022_
                               _hd130367131025_
                               _tl130366131027_
                               _e130371131030_
                               _hd130370131033_
                               _tl130369131035_
                               _e130374131038_
                               _hd130373131041_
                               _tl130372131043_
                               _e130377131046_
                               _hd130376131049_
                               _tl130375131051_))
                          (___match134587134588_
                           _e130356130990_
                           _hd130355130993_
                           _tl130354130995_
                           _e130359130998_
                           _hd130358131001_
                           _tl130357131003_
                           _e130362131006_
                           _hd130361131009_
                           _tl130360131011_
                           _e130365131014_
                           _hd130364131017_
                           _tl130363131019_
                           _e130368131022_
                           _hd130367131025_
                           _tl130366131027_
                           _e130371131030_
                           _hd130370131033_
                           _tl130369131035_
                           _e130374131038_
                           _hd130373131041_
                           _tl130372131043_
                           _e130377131046_
                           _hd130376131049_
                           _tl130375131051_
                           _e130380131054_
                           _hd130379131057_
                           _tl130378131059_))))
                   (___match134409134410_
                    (lambda (_e130312131179_
                             _hd130311131182_
                             _tl130310131184_
                             _e130315131187_
                             _hd130314131190_
                             _tl130313131192_
                             _e130318131195_
                             _hd130317131198_
                             _tl130316131200_
                             _e130321131203_
                             _hd130320131206_
                             _tl130319131208_
                             _e130324131211_
                             _hd130323131214_
                             _tl130322131216_
                             _e130327131219_
                             _hd130326131222_
                             _tl130325131224_
                             _e130330131227_
                             _hd130329131230_
                             _tl130328131232_
                             _e130333131235_
                             _hd130332131238_
                             _tl130331131240_
                             _e130336131243_
                             _hd130335131246_
                             _tl130334131248_
                             _e130339131251_
                             _hd130338131254_
                             _tl130337131256_
                             ___splice134308134309_
                             _target130340131259_
                             _tl130342131261_)
                      (letrec ((_loop130343131264_
                                (lambda (_hd130341131267_ _args130347131269_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130341131267_))
                                      (let ((_e130344131272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130341131267_))))
                                        (let ((_lp-tl130346131277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130344131272_)))
                                              (_lp-hd130345131275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130344131272_))))
                                          (let ((__tmp135587
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130345131275_
                                                         _args130347131269_))))
                                            (declare (not safe))
                                            (_loop130343131264_
                                             _lp-tl130346131277_
                                             __tmp135587))))
                                      (let ((_args130348131280_
                                             (reverse _args130347131269_)))
                                        (let ((_L131283_ _args130348131280_)
                                              (_L131284_ _hd130338131254_)
                                              (_L131285_ _hd130329131230_)
                                              (_L131286_ _hd130320131206_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131286_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131285_
                                                      _self130294_)))
                                              (___kont134306134307_
                                               _L131283_
                                               _L131284_
                                               _L131285_
                                               _L131286_)
                                              (___match134597134598_
                                               _e130312131179_
                                               _hd130311131182_
                                               _tl130310131184_
                                               _e130315131187_
                                               _hd130314131190_
                                               _tl130313131192_
                                               _e130318131195_
                                               _hd130317131198_
                                               _tl130316131200_
                                               _e130321131203_
                                               _hd130320131206_
                                               _tl130319131208_
                                               _e130324131211_
                                               _hd130323131214_
                                               _tl130322131216_
                                               _e130327131219_
                                               _hd130326131222_
                                               _tl130325131224_
                                               _e130330131227_
                                               _hd130329131230_
                                               _tl130328131232_
                                               _e130333131235_
                                               _hd130332131238_
                                               _tl130331131240_
                                               _e130336131243_
                                               _hd130335131246_
                                               _tl130334131248_
                                               _e130339131251_
                                               _hd130338131254_
                                               _tl130337131256_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130343131264_ _target130340131259_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134304134305_))
                  (let ((_e130312131179_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134304134305_))))
                    (let ((_tl130310131184_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130312131179_)))
                          (_hd130311131182_
                           (let ()
                             (declare (not safe))
                             (##car _e130312131179_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130310131184_))
                          (let ((_e130315131187_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130310131184_))))
                            (let ((_tl130313131192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130315131187_)))
                                  (_hd130314131190_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130315131187_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130314131190_))
                                  (let ((_e130318131195_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130314131190_))))
                                    (let ((_tl130316131200_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130318131195_)))
                                          (_hd130317131198_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130318131195_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130317131198_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130317131198_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130316131200_))
                                                  (let ((_e130321131203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130316131200_))))
                                                    (let ((_tl130319131208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130321131203_)))
                                                          (_hd130320131206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130321131203_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130319131208_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130313131192_))
                      (let ((_e130324131211_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130313131192_))))
                        (let ((_tl130322131216_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130324131211_)))
                              (_hd130323131214_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130324131211_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130323131214_))
                              (let ((_e130327131219_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130323131214_))))
                                (let ((_tl130325131224_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130327131219_)))
                                      (_hd130326131222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130327131219_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130326131222_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130326131222_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130325131224_))
                                              (let ((_e130330131227_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130325131224_))))
                                                (let ((_tl130328131232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130330131227_)))
                                                      (_hd130329131230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130330131227_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130328131232_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130322131216_))
                                                          (let ((_e130333131235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130322131216_))))
                    (let ((_tl130331131240_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130333131235_)))
                          (_hd130332131238_
                           (let ()
                             (declare (not safe))
                             (##car _e130333131235_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130332131238_))
                          (let ((_e130336131243_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130332131238_))))
                            (let ((_tl130334131248_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130336131243_)))
                                  (_hd130335131246_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130336131243_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130335131246_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130335131246_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130334131248_))
                                          (let ((_e130339131251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130334131248_))))
                                            (let ((_tl130337131256_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130339131251_)))
                                                  (_hd130338131254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130339131251_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130337131256_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130331131240_))
                                                      (let ((___splice134308134309_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130331131240_ '0))))
                (let ((_tl130342131261_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134308134309_ '1)))
                      (_target130340131259_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134308134309_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130342131261_))
                      (___match134409134410_
                       _e130312131179_
                       _hd130311131182_
                       _tl130310131184_
                       _e130315131187_
                       _hd130314131190_
                       _tl130313131192_
                       _e130318131195_
                       _hd130317131198_
                       _tl130316131200_
                       _e130321131203_
                       _hd130320131206_
                       _tl130319131208_
                       _e130324131211_
                       _hd130323131214_
                       _tl130322131216_
                       _e130327131219_
                       _hd130326131222_
                       _tl130325131224_
                       _e130330131227_
                       _hd130329131230_
                       _tl130328131232_
                       _e130333131235_
                       _hd130332131238_
                       _tl130331131240_
                       _e130336131243_
                       _hd130335131246_
                       _tl130334131248_
                       _e130339131251_
                       _hd130338131254_
                       _tl130337131256_
                       ___splice134308134309_
                       _target130340131259_
                       _tl130342131261_)
                      (___match134597134598_
                       _e130312131179_
                       _hd130311131182_
                       _tl130310131184_
                       _e130315131187_
                       _hd130314131190_
                       _tl130313131192_
                       _e130318131195_
                       _hd130317131198_
                       _tl130316131200_
                       _e130321131203_
                       _hd130320131206_
                       _tl130319131208_
                       _e130324131211_
                       _hd130323131214_
                       _tl130322131216_
                       _e130327131219_
                       _hd130326131222_
                       _tl130325131224_
                       _e130330131227_
                       _hd130329131230_
                       _tl130328131232_
                       _e130333131235_
                       _hd130332131238_
                       _tl130331131240_
                       _e130336131243_
                       _hd130335131246_
                       _tl130334131248_
                       _e130339131251_
                       _hd130338131254_
                       _tl130337131256_))))
              (___match134597134598_
               _e130312131179_
               _hd130311131182_
               _tl130310131184_
               _e130315131187_
               _hd130314131190_
               _tl130313131192_
               _e130318131195_
               _hd130317131198_
               _tl130316131200_
               _e130321131203_
               _hd130320131206_
               _tl130319131208_
               _e130324131211_
               _hd130323131214_
               _tl130322131216_
               _e130327131219_
               _hd130326131222_
               _tl130325131224_
               _e130330131227_
               _hd130329131230_
               _tl130328131232_
               _e130333131235_
               _hd130332131238_
               _tl130331131240_
               _e130336131243_
               _hd130335131246_
               _tl130334131248_
               _e130339131251_
               _hd130338131254_
               _tl130337131256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134801134802_
                                                   _e130312131179_
                                                   _hd130311131182_
                                                   _tl130310131184_
                                                   _e130315131187_
                                                   _hd130314131190_
                                                   _tl130313131192_
                                                   _e130318131195_
                                                   _hd130317131198_
                                                   _tl130316131200_
                                                   _e130321131203_
                                                   _hd130320131206_
                                                   _tl130319131208_
                                                   _e130324131211_
                                                   _hd130323131214_
                                                   _tl130322131216_
                                                   _e130327131219_
                                                   _hd130326131222_
                                                   _tl130325131224_
                                                   _e130330131227_
                                                   _hd130329131230_
                                                   _tl130328131232_
                                                   _e130333131235_
                                                   _hd130332131238_
                                                   _tl130331131240_))))
                                          (___match134801134802_
                                           _e130312131179_
                                           _hd130311131182_
                                           _tl130310131184_
                                           _e130315131187_
                                           _hd130314131190_
                                           _tl130313131192_
                                           _e130318131195_
                                           _hd130317131198_
                                           _tl130316131200_
                                           _e130321131203_
                                           _hd130320131206_
                                           _tl130319131208_
                                           _e130324131211_
                                           _hd130323131214_
                                           _tl130322131216_
                                           _e130327131219_
                                           _hd130326131222_
                                           _tl130325131224_
                                           _e130330131227_
                                           _hd130329131230_
                                           _tl130328131232_
                                           _e130333131235_
                                           _hd130332131238_
                                           _tl130331131240_))
                                      (___match134477134478_
                                       _e130312131179_
                                       _hd130311131182_
                                       _tl130310131184_
                                       _e130315131187_
                                       _hd130314131190_
                                       _tl130313131192_
                                       _e130318131195_
                                       _hd130317131198_
                                       _tl130316131200_
                                       _e130321131203_
                                       _hd130320131206_
                                       _tl130319131208_
                                       _e130324131211_
                                       _hd130323131214_
                                       _tl130322131216_
                                       _e130327131219_
                                       _hd130326131222_
                                       _tl130325131224_
                                       _e130330131227_
                                       _hd130329131230_
                                       _tl130328131232_
                                       _e130333131235_
                                       _hd130332131238_
                                       _tl130331131240_
                                       _e130336131243_
                                       _hd130335131246_
                                       _tl130334131248_))
                                  (___match134801134802_
                                   _e130312131179_
                                   _hd130311131182_
                                   _tl130310131184_
                                   _e130315131187_
                                   _hd130314131190_
                                   _tl130313131192_
                                   _e130318131195_
                                   _hd130317131198_
                                   _tl130316131200_
                                   _e130321131203_
                                   _hd130320131206_
                                   _tl130319131208_
                                   _e130324131211_
                                   _hd130323131214_
                                   _tl130322131216_
                                   _e130327131219_
                                   _hd130326131222_
                                   _tl130325131224_
                                   _e130330131227_
                                   _hd130329131230_
                                   _tl130328131232_
                                   _e130333131235_
                                   _hd130332131238_
                                   _tl130331131240_))))
                          (___match134801134802_
                           _e130312131179_
                           _hd130311131182_
                           _tl130310131184_
                           _e130315131187_
                           _hd130314131190_
                           _tl130313131192_
                           _e130318131195_
                           _hd130317131198_
                           _tl130316131200_
                           _e130321131203_
                           _hd130320131206_
                           _tl130319131208_
                           _e130324131211_
                           _hd130323131214_
                           _tl130322131216_
                           _e130327131219_
                           _hd130326131222_
                           _tl130325131224_
                           _e130330131227_
                           _hd130329131230_
                           _tl130328131232_
                           _e130333131235_
                           _hd130332131238_
                           _tl130331131240_))))
                  (___match134739134740_
                   _e130312131179_
                   _hd130311131182_
                   _tl130310131184_
                   _e130315131187_
                   _hd130314131190_
                   _tl130313131192_
                   _e130318131195_
                   _hd130317131198_
                   _tl130316131200_
                   _e130321131203_
                   _hd130320131206_
                   _tl130319131208_
                   _e130324131211_
                   _hd130323131214_
                   _tl130322131216_
                   _e130327131219_
                   _hd130326131222_
                   _tl130325131224_
                   _e130330131227_
                   _hd130329131230_
                   _tl130328131232_))
              (___kont134322134323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134322134323_))
                                          (___kont134322134323_))
                                      (___kont134322134323_))))
                              (___kont134322134323_))))
                      (___kont134322134323_))
                  (___kont134322134323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134322134323_))
                                              (___kont134322134323_))
                                          (___kont134322134323_))))
                                  (___kont134322134323_))))
                          (___kont134322134323_))))
                  (___kont134322134323_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx129228_
               _self129229_
               _$klass129230_
               _methods129231_
               _slots129232_)
        (letrec ((_force-e129234_
                  (lambda (_target130291_)
                    (let ((__tmp135588
                           (let ((__tmp135592
                                  (let ((__tmp135593
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135593)))
                                 (__tmp135589
                                  (let ((__tmp135590
                                         (let ((__tmp135591
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130291_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135591))))
                                    (declare (not safe))
                                    (cons __tmp135590 '()))))
                             (declare (not safe))
                             (cons __tmp135592 __tmp135589))))
                      (declare (not safe))
                      (cons '%#call __tmp135588)))))
          (let* ((___stx134806134807_ _stx129228_)
                 (_g129242129464_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134806134807_)))))
            (let ((___kont134808134809_
                   (lambda (_L130237_ _L130238_ _L130239_ _L130240_)
                     (let ((_$method130285_
                            (let ((__tmp135594
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130238_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129231_ __tmp135594)))
                           (_args130286_
                            (map (lambda (_g130273130275_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130273130275_
                                      _self129229_
                                      _$klass129230_
                                      _methods129231_
                                      _slots129232_)))
                                 (let ((__tmp135595
                                        (lambda (_g130277130280_
                                                 _g130278130282_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130277130280_
                                                  _g130278130282_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135595 '() _L130237_)))))
                       (let ((__tmp135596
                              (let ((__tmp135597
                                     (let ((__tmp135601
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129234_
                                               _$method130285_)))
                                           (__tmp135598
                                            (let ((__tmp135599
                                                   (let ((__tmp135600
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self129229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135600))))
                                              (declare (not safe))
                                              (cons __tmp135599
                                                    _args130286_))))
                                       (declare (not safe))
                                       (cons __tmp135601 __tmp135598))))
                                (declare (not safe))
                                (cons '%#call __tmp135597))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135596 _stx129228_)))))
                  (___kont134812134813_
                   (lambda (_L130069_ _L130070_ _L130071_ _L130072_ _L130073_)
                     (let ((_$method130125_
                            (let ((__tmp135602
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130070_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129231_ __tmp135602)))
                           (_args130126_
                            (map (lambda (_g130113130115_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130113130115_
                                      _self129229_
                                      _$klass129230_
                                      _methods129231_
                                      _slots129232_)))
                                 (let ((__tmp135603
                                        (lambda (_g130117130120_
                                                 _g130118130122_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130117130120_
                                                  _g130118130122_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135603 '() _L130069_)))))
                       (let ((__tmp135604
                              (let ((__tmp135605
                                     (let ((__tmp135611
                                            (let ((__tmp135612
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135612)))
                                           (__tmp135606
                                            (let ((__tmp135610
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129234_
                                                      _$method130125_)))
                                                  (__tmp135607
                                                   (let ((__tmp135608
                                                          (let ((__tmp135609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129229_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135608
                                                           _args130126_))))
                                              (declare (not safe))
                                              (cons __tmp135610 __tmp135607))))
                                       (declare (not safe))
                                       (cons __tmp135611 __tmp135606))))
                                (declare (not safe))
                                (cons '%#call __tmp135605))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135604 _stx129228_)))))
                  (___kont134816134817_
                   (lambda (_L129900_ _L129901_ _L129902_)
                     (let* ((_$field129934_
                             (let ((__tmp135613
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129900_))))
                               (declare (not safe))
                               (hash-ref__0 _slots129232_ __tmp135613)))
                            (__tmp135614
                             (let ((__tmp135615
                                    (let ((__tmp135622
                                           (let ((__tmp135623
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass129230_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135623)))
                                          (__tmp135616
                                           (let ((__tmp135620
                                                  (let ((__tmp135621
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135621)))
                                                 (__tmp135617
                                                  (let ((__tmp135618
                                                         (let ((__tmp135619
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self129229_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135618 '()))))
                                             (declare (not safe))
                                             (cons __tmp135620 __tmp135617))))
                                      (declare (not safe))
                                      (cons __tmp135622 __tmp135616))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135615))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135614 _stx129228_))))
                  (___kont134818134819_
                   (lambda (_L129774_ _L129775_ _L129776_ _L129777_)
                     (let ((_$field129812_
                            (let ((__tmp135624
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129775_))))
                              (declare (not safe))
                              (hash-ref__0 _slots129232_ __tmp135624)))
                           (_expr129813_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129774_
                               _self129229_
                               _$klass129230_
                               _methods129231_
                               _slots129232_))))
                       (let ((__tmp135625
                              (let ((__tmp135626
                                     (let ((__tmp135634
                                            (let ((__tmp135635
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass129230_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135635)))
                                           (__tmp135627
                                            (let ((__tmp135632
                                                   (let ((__tmp135633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135633)))
                                                  (__tmp135628
                                                   (let ((__tmp135630
                                                          (let ((__tmp135631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129229_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135631)))
                 (__tmp135629
                  (let () (declare (not safe)) (cons _expr129813_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135630
                                                           __tmp135629))))
                                              (declare (not safe))
                                              (cons __tmp135632 __tmp135628))))
                                       (declare (not safe))
                                       (cons __tmp135634 __tmp135627))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135626))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135625 _stx129228_)))))
                  (___kont134820134821_
                   (lambda (_L129646_ _L129647_)
                     (let* ((_accessor129669_
                             (let ((__tmp135636
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129647_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135636)))
                            (_klass129671_
                             (let ((__tmp135637
                                    (##structure-ref
                                     _accessor129669_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129228_
                                __tmp135637)))
                            (_slot129673_
                             (##structure-ref
                              _accessor129669_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135648
                                       (##structure-ref
                                        _accessor129669_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135648))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129671_
                                       _slot129673_))
                                    (##structure-ref
                                     _klass129671_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129228_
                           (let* ((_$field129679_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129232_ _slot129673_)))
                                  (__tmp135638
                                   (let ((__tmp135639
                                          (let ((__tmp135646
                                                 (let ((__tmp135647
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129230_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135647)))
                                                (__tmp135640
                                                 (let ((__tmp135644
                                                        (let ((__tmp135645
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129679_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135645)))
               (__tmp135641
                (let ((__tmp135642
                       (let ((__tmp135643
                              (let ()
                                (declare (not safe))
                                (cons _self129229_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135643))))
                  (declare (not safe))
                  (cons __tmp135642 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135644
                                                         __tmp135641))))
                                            (declare (not safe))
                                            (cons __tmp135646 __tmp135640))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135639))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135638
                              _stx129228_))))))
                  (___kont134822134823_
                   (lambda (_L129540_ _L129541_ _L129542_)
                     (let* ((_mutator129571_
                             (let ((__tmp135649
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129542_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135649)))
                            (_klass129573_
                             (let ((__tmp135650
                                    (##structure-ref
                                     _mutator129571_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129228_
                                __tmp135650)))
                            (_slot129575_
                             (##structure-ref
                              _mutator129571_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129577_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129540_
                                _self129229_
                                _$klass129230_
                                _methods129231_
                                _slots129232_))))
                       (if (and (let ((__tmp135672
                                       (##structure-ref
                                        _mutator129571_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135672))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129573_
                                       _slot129575_))
                                    (##structure-ref
                                     _klass129573_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135662
                                  (let ((__tmp135663
                                         (let ((__tmp135669
                                                (let ((__tmp135671
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135670
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129542_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135671
                                                        __tmp135670)))
                                               (__tmp135664
                                                (let ((__tmp135666
                                                       (let ((__tmp135668
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135667
                      (let () (declare (not safe)) (cons _L129541_ '()))))
                 (declare (not safe))
                 (cons __tmp135668 __tmp135667)))
              (__tmp135665
               (let () (declare (not safe)) (cons _expr129577_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135666
                                                        __tmp135665))))
                                           (declare (not safe))
                                           (cons __tmp135669 __tmp135664))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135663))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135662 _stx129228_))
                           (let* ((_$field129583_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129232_ _slot129575_)))
                                  (__tmp135651
                                   (let ((__tmp135652
                                          (let ((__tmp135660
                                                 (let ((__tmp135661
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129230_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135661)))
                                                (__tmp135653
                                                 (let ((__tmp135658
                                                        (let ((__tmp135659
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129583_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135659)))
               (__tmp135654
                (let ((__tmp135656
                       (let ((__tmp135657
                              (let ()
                                (declare (not safe))
                                (cons _self129229_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135657)))
                      (__tmp135655
                       (let () (declare (not safe)) (cons _expr129577_ '()))))
                  (declare (not safe))
                  (cons __tmp135656 __tmp135655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135658
                                                         __tmp135654))))
                                            (declare (not safe))
                                            (cons __tmp135660 __tmp135653))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135652))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135651
                              _stx129228_))))))
                  (___kont134824134825_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx129228_
                        _self129229_
                        _$klass129230_
                        _methods129231_
                        _slots129232_)))))
              (let* ((___match135305135306_
                      (lambda (_e129438129476_
                               _hd129437129479_
                               _tl129436129481_
                               _e129441129484_
                               _hd129440129487_
                               _tl129439129489_
                               _e129444129492_
                               _hd129443129495_
                               _tl129442129497_
                               _e129447129500_
                               _hd129446129503_
                               _tl129445129505_
                               _e129450129508_
                               _hd129449129511_
                               _tl129448129513_
                               _e129453129516_
                               _hd129452129519_
                               _tl129451129521_
                               _e129456129524_
                               _hd129455129527_
                               _tl129454129529_
                               _e129459129532_
                               _hd129458129535_
                               _tl129457129537_)
                        (let ((_L129540_ _hd129458129535_)
                              (_L129541_ _hd129455129527_)
                              (_L129542_ _hd129446129503_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129541_
                                      _self129229_))
                                   (let ((__tmp135673
                                          (let ((__tmp135674
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129542_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135674))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135673
                                      'gxc#!mutator::t)))
                              (___kont134822134823_
                               _L129540_
                               _L129541_
                               _L129542_)
                              (___kont134824134825_)))))
                     (___match135303135304_
                      (lambda (_e129438129476_
                               _hd129437129479_
                               _tl129436129481_
                               _e129441129484_
                               _hd129440129487_
                               _tl129439129489_
                               _e129444129492_
                               _hd129443129495_
                               _tl129442129497_
                               _e129447129500_
                               _hd129446129503_
                               _tl129445129505_
                               _e129450129508_
                               _hd129449129511_
                               _tl129448129513_
                               _e129453129516_
                               _hd129452129519_
                               _tl129451129521_
                               _e129456129524_
                               _hd129455129527_
                               _tl129454129529_
                               _e129459129532_
                               _hd129458129535_
                               _tl129457129537_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129457129537_))
                            (___match135305135306_
                             _e129438129476_
                             _hd129437129479_
                             _tl129436129481_
                             _e129441129484_
                             _hd129440129487_
                             _tl129439129489_
                             _e129444129492_
                             _hd129443129495_
                             _tl129442129497_
                             _e129447129500_
                             _hd129446129503_
                             _tl129445129505_
                             _e129450129508_
                             _hd129449129511_
                             _tl129448129513_
                             _e129453129516_
                             _hd129452129519_
                             _tl129451129521_
                             _e129456129524_
                             _hd129455129527_
                             _tl129454129529_
                             _e129459129532_
                             _hd129458129535_
                             _tl129457129537_)
                            (___kont134824134825_))))
                     (___match135297135298_
                      (lambda (_e129438129476_
                               _hd129437129479_
                               _tl129436129481_
                               _e129441129484_
                               _hd129440129487_
                               _tl129439129489_
                               _e129444129492_
                               _hd129443129495_
                               _tl129442129497_
                               _e129447129500_
                               _hd129446129503_
                               _tl129445129505_
                               _e129450129508_
                               _hd129449129511_
                               _tl129448129513_
                               _e129453129516_
                               _hd129452129519_
                               _tl129451129521_
                               _e129456129524_
                               _hd129455129527_
                               _tl129454129529_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129448129513_))
                            (let ((_e129459129532_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129448129513_))))
                              (let ((_tl129457129537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129459129532_)))
                                    (_hd129458129535_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129459129532_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129457129537_))
                                    (___match135305135306_
                                     _e129438129476_
                                     _hd129437129479_
                                     _tl129436129481_
                                     _e129441129484_
                                     _hd129440129487_
                                     _tl129439129489_
                                     _e129444129492_
                                     _hd129443129495_
                                     _tl129442129497_
                                     _e129447129500_
                                     _hd129446129503_
                                     _tl129445129505_
                                     _e129450129508_
                                     _hd129449129511_
                                     _tl129448129513_
                                     _e129453129516_
                                     _hd129452129519_
                                     _tl129451129521_
                                     _e129456129524_
                                     _hd129455129527_
                                     _tl129454129529_
                                     _e129459129532_
                                     _hd129458129535_
                                     _tl129457129537_)
                                    (___kont134824134825_))))
                            (___kont134824134825_))))
                     (___match135243135244_
                      (lambda (_e129414129590_
                               _hd129413129593_
                               _tl129412129595_
                               _e129417129598_
                               _hd129416129601_
                               _tl129415129603_
                               _e129420129606_
                               _hd129419129609_
                               _tl129418129611_
                               _e129423129614_
                               _hd129422129617_
                               _tl129421129619_
                               _e129426129622_
                               _hd129425129625_
                               _tl129424129627_
                               _e129429129630_
                               _hd129428129633_
                               _tl129427129635_
                               _e129432129638_
                               _hd129431129641_
                               _tl129430129643_)
                        (let ((_L129646_ _hd129431129641_)
                              (_L129647_ _hd129422129617_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129646_
                                      _self129229_))
                                   (let ((__tmp135675
                                          (let ((__tmp135676
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129647_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135676))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135675
                                      'gxc#!accessor::t)))
                              (___kont134820134821_ _L129646_ _L129647_)
                              (___kont134824134825_)))))
                     (___match135241135242_
                      (lambda (_e129414129590_
                               _hd129413129593_
                               _tl129412129595_
                               _e129417129598_
                               _hd129416129601_
                               _tl129415129603_
                               _e129420129606_
                               _hd129419129609_
                               _tl129418129611_
                               _e129423129614_
                               _hd129422129617_
                               _tl129421129619_
                               _e129426129622_
                               _hd129425129625_
                               _tl129424129627_
                               _e129429129630_
                               _hd129428129633_
                               _tl129427129635_
                               _e129432129638_
                               _hd129431129641_
                               _tl129430129643_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129424129627_))
                            (___match135243135244_
                             _e129414129590_
                             _hd129413129593_
                             _tl129412129595_
                             _e129417129598_
                             _hd129416129601_
                             _tl129415129603_
                             _e129420129606_
                             _hd129419129609_
                             _tl129418129611_
                             _e129423129614_
                             _hd129422129617_
                             _tl129421129619_
                             _e129426129622_
                             _hd129425129625_
                             _tl129424129627_
                             _e129429129630_
                             _hd129428129633_
                             _tl129427129635_
                             _e129432129638_
                             _hd129431129641_
                             _tl129430129643_)
                            (___match135297135298_
                             _e129414129590_
                             _hd129413129593_
                             _tl129412129595_
                             _e129417129598_
                             _hd129416129601_
                             _tl129415129603_
                             _e129420129606_
                             _hd129419129609_
                             _tl129418129611_
                             _e129423129614_
                             _hd129422129617_
                             _tl129421129619_
                             _e129426129622_
                             _hd129425129625_
                             _tl129424129627_
                             _e129429129630_
                             _hd129428129633_
                             _tl129427129635_
                             _e129432129638_
                             _hd129431129641_
                             _tl129430129643_))))
                     (___match135187135188_
                      (lambda (_e129379129686_
                               _hd129378129689_
                               _tl129377129691_
                               _e129382129694_
                               _hd129381129697_
                               _tl129380129699_
                               _e129385129702_
                               _hd129384129705_
                               _tl129383129707_
                               _e129388129710_
                               _hd129387129713_
                               _tl129386129715_
                               _e129391129718_
                               _hd129390129721_
                               _tl129389129723_
                               _e129394129726_
                               _hd129393129729_
                               _tl129392129731_
                               _e129397129734_
                               _hd129396129737_
                               _tl129395129739_
                               _e129400129742_
                               _hd129399129745_
                               _tl129398129747_
                               _e129403129750_
                               _hd129402129753_
                               _tl129401129755_
                               _e129406129758_
                               _hd129405129761_
                               _tl129404129763_
                               _e129409129766_
                               _hd129408129769_
                               _tl129407129771_)
                        (let ((_L129774_ _hd129408129769_)
                              (_L129775_ _hd129405129761_)
                              (_L129776_ _hd129396129737_)
                              (_L129777_ _hd129387129713_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129777_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129777_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129776_
                                      _self129229_)))
                              (___kont134818134819_
                               _L129774_
                               _L129775_
                               _L129776_
                               _L129777_)
                              (___kont134824134825_)))))
                     (___match135179135180_
                      (lambda (_e129379129686_
                               _hd129378129689_
                               _tl129377129691_
                               _e129382129694_
                               _hd129381129697_
                               _tl129380129699_
                               _e129385129702_
                               _hd129384129705_
                               _tl129383129707_
                               _e129388129710_
                               _hd129387129713_
                               _tl129386129715_
                               _e129391129718_
                               _hd129390129721_
                               _tl129389129723_
                               _e129394129726_
                               _hd129393129729_
                               _tl129392129731_
                               _e129397129734_
                               _hd129396129737_
                               _tl129395129739_
                               _e129400129742_
                               _hd129399129745_
                               _tl129398129747_
                               _e129403129750_
                               _hd129402129753_
                               _tl129401129755_
                               _e129406129758_
                               _hd129405129761_
                               _tl129404129763_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129398129747_))
                            (let ((_e129409129766_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129398129747_))))
                              (let ((_tl129407129771_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129409129766_)))
                                    (_hd129408129769_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129409129766_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129407129771_))
                                    (___match135187135188_
                                     _e129379129686_
                                     _hd129378129689_
                                     _tl129377129691_
                                     _e129382129694_
                                     _hd129381129697_
                                     _tl129380129699_
                                     _e129385129702_
                                     _hd129384129705_
                                     _tl129383129707_
                                     _e129388129710_
                                     _hd129387129713_
                                     _tl129386129715_
                                     _e129391129718_
                                     _hd129390129721_
                                     _tl129389129723_
                                     _e129394129726_
                                     _hd129393129729_
                                     _tl129392129731_
                                     _e129397129734_
                                     _hd129396129737_
                                     _tl129395129739_
                                     _e129400129742_
                                     _hd129399129745_
                                     _tl129398129747_
                                     _e129403129750_
                                     _hd129402129753_
                                     _tl129401129755_
                                     _e129406129758_
                                     _hd129405129761_
                                     _tl129404129763_
                                     _e129409129766_
                                     _hd129408129769_
                                     _tl129407129771_)
                                    (___kont134824134825_))))
                            (___match135303135304_
                             _e129379129686_
                             _hd129378129689_
                             _tl129377129691_
                             _e129382129694_
                             _hd129381129697_
                             _tl129380129699_
                             _e129385129702_
                             _hd129384129705_
                             _tl129383129707_
                             _e129388129710_
                             _hd129387129713_
                             _tl129386129715_
                             _e129391129718_
                             _hd129390129721_
                             _tl129389129723_
                             _e129394129726_
                             _hd129393129729_
                             _tl129392129731_
                             _e129397129734_
                             _hd129396129737_
                             _tl129395129739_
                             _e129400129742_
                             _hd129399129745_
                             _tl129398129747_))))
                     (___match135101135102_
                      (lambda (_e129345129820_
                               _hd129344129823_
                               _tl129343129825_
                               _e129348129828_
                               _hd129347129831_
                               _tl129346129833_
                               _e129351129836_
                               _hd129350129839_
                               _tl129349129841_
                               _e129354129844_
                               _hd129353129847_
                               _tl129352129849_
                               _e129357129852_
                               _hd129356129855_
                               _tl129355129857_
                               _e129360129860_
                               _hd129359129863_
                               _tl129358129865_
                               _e129363129868_
                               _hd129362129871_
                               _tl129361129873_
                               _e129366129876_
                               _hd129365129879_
                               _tl129364129881_
                               _e129369129884_
                               _hd129368129887_
                               _tl129367129889_
                               _e129372129892_
                               _hd129371129895_
                               _tl129370129897_)
                        (let ((_L129900_ _hd129371129895_)
                              (_L129901_ _hd129362129871_)
                              (_L129902_ _hd129353129847_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129902_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129902_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129901_
                                      _self129229_)))
                              (___kont134816134817_
                               _L129900_
                               _L129901_
                               _L129902_)
                              (___match135305135306_
                               _e129345129820_
                               _hd129344129823_
                               _tl129343129825_
                               _e129348129828_
                               _hd129347129831_
                               _tl129346129833_
                               _e129351129836_
                               _hd129350129839_
                               _tl129349129841_
                               _e129354129844_
                               _hd129353129847_
                               _tl129352129849_
                               _e129357129852_
                               _hd129356129855_
                               _tl129355129857_
                               _e129360129860_
                               _hd129359129863_
                               _tl129358129865_
                               _e129363129868_
                               _hd129362129871_
                               _tl129361129873_
                               _e129366129876_
                               _hd129365129879_
                               _tl129364129881_)))))
                     (___match135099135100_
                      (lambda (_e129345129820_
                               _hd129344129823_
                               _tl129343129825_
                               _e129348129828_
                               _hd129347129831_
                               _tl129346129833_
                               _e129351129836_
                               _hd129350129839_
                               _tl129349129841_
                               _e129354129844_
                               _hd129353129847_
                               _tl129352129849_
                               _e129357129852_
                               _hd129356129855_
                               _tl129355129857_
                               _e129360129860_
                               _hd129359129863_
                               _tl129358129865_
                               _e129363129868_
                               _hd129362129871_
                               _tl129361129873_
                               _e129366129876_
                               _hd129365129879_
                               _tl129364129881_
                               _e129369129884_
                               _hd129368129887_
                               _tl129367129889_
                               _e129372129892_
                               _hd129371129895_
                               _tl129370129897_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129364129881_))
                            (___match135101135102_
                             _e129345129820_
                             _hd129344129823_
                             _tl129343129825_
                             _e129348129828_
                             _hd129347129831_
                             _tl129346129833_
                             _e129351129836_
                             _hd129350129839_
                             _tl129349129841_
                             _e129354129844_
                             _hd129353129847_
                             _tl129352129849_
                             _e129357129852_
                             _hd129356129855_
                             _tl129355129857_
                             _e129360129860_
                             _hd129359129863_
                             _tl129358129865_
                             _e129363129868_
                             _hd129362129871_
                             _tl129361129873_
                             _e129366129876_
                             _hd129365129879_
                             _tl129364129881_
                             _e129369129884_
                             _hd129368129887_
                             _tl129367129889_
                             _e129372129892_
                             _hd129371129895_
                             _tl129370129897_)
                            (___match135179135180_
                             _e129345129820_
                             _hd129344129823_
                             _tl129343129825_
                             _e129348129828_
                             _hd129347129831_
                             _tl129346129833_
                             _e129351129836_
                             _hd129350129839_
                             _tl129349129841_
                             _e129354129844_
                             _hd129353129847_
                             _tl129352129849_
                             _e129357129852_
                             _hd129356129855_
                             _tl129355129857_
                             _e129360129860_
                             _hd129359129863_
                             _tl129358129865_
                             _e129363129868_
                             _hd129362129871_
                             _tl129361129873_
                             _e129366129876_
                             _hd129365129879_
                             _tl129364129881_
                             _e129369129884_
                             _hd129368129887_
                             _tl129367129889_
                             _e129372129892_
                             _hd129371129895_
                             _tl129370129897_))))
                     (___match135089135090_
                      (lambda (_e129345129820_
                               _hd129344129823_
                               _tl129343129825_
                               _e129348129828_
                               _hd129347129831_
                               _tl129346129833_
                               _e129351129836_
                               _hd129350129839_
                               _tl129349129841_
                               _e129354129844_
                               _hd129353129847_
                               _tl129352129849_
                               _e129357129852_
                               _hd129356129855_
                               _tl129355129857_
                               _e129360129860_
                               _hd129359129863_
                               _tl129358129865_
                               _e129363129868_
                               _hd129362129871_
                               _tl129361129873_
                               _e129366129876_
                               _hd129365129879_
                               _tl129364129881_
                               _e129369129884_
                               _hd129368129887_
                               _tl129367129889_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129368129887_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129367129889_))
                                (let ((_e129372129892_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129367129889_))))
                                  (let ((_tl129370129897_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129372129892_)))
                                        (_hd129371129895_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129372129892_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129370129897_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129364129881_))
                                            (___match135101135102_
                                             _e129345129820_
                                             _hd129344129823_
                                             _tl129343129825_
                                             _e129348129828_
                                             _hd129347129831_
                                             _tl129346129833_
                                             _e129351129836_
                                             _hd129350129839_
                                             _tl129349129841_
                                             _e129354129844_
                                             _hd129353129847_
                                             _tl129352129849_
                                             _e129357129852_
                                             _hd129356129855_
                                             _tl129355129857_
                                             _e129360129860_
                                             _hd129359129863_
                                             _tl129358129865_
                                             _e129363129868_
                                             _hd129362129871_
                                             _tl129361129873_
                                             _e129366129876_
                                             _hd129365129879_
                                             _tl129364129881_
                                             _e129369129884_
                                             _hd129368129887_
                                             _tl129367129889_
                                             _e129372129892_
                                             _hd129371129895_
                                             _tl129370129897_)
                                            (___match135179135180_
                                             _e129345129820_
                                             _hd129344129823_
                                             _tl129343129825_
                                             _e129348129828_
                                             _hd129347129831_
                                             _tl129346129833_
                                             _e129351129836_
                                             _hd129350129839_
                                             _tl129349129841_
                                             _e129354129844_
                                             _hd129353129847_
                                             _tl129352129849_
                                             _e129357129852_
                                             _hd129356129855_
                                             _tl129355129857_
                                             _e129360129860_
                                             _hd129359129863_
                                             _tl129358129865_
                                             _e129363129868_
                                             _hd129362129871_
                                             _tl129361129873_
                                             _e129366129876_
                                             _hd129365129879_
                                             _tl129364129881_
                                             _e129369129884_
                                             _hd129368129887_
                                             _tl129367129889_
                                             _e129372129892_
                                             _hd129371129895_
                                             _tl129370129897_))
                                        (___match135303135304_
                                         _e129345129820_
                                         _hd129344129823_
                                         _tl129343129825_
                                         _e129348129828_
                                         _hd129347129831_
                                         _tl129346129833_
                                         _e129351129836_
                                         _hd129350129839_
                                         _tl129349129841_
                                         _e129354129844_
                                         _hd129353129847_
                                         _tl129352129849_
                                         _e129357129852_
                                         _hd129356129855_
                                         _tl129355129857_
                                         _e129360129860_
                                         _hd129359129863_
                                         _tl129358129865_
                                         _e129363129868_
                                         _hd129362129871_
                                         _tl129361129873_
                                         _e129366129876_
                                         _hd129365129879_
                                         _tl129364129881_))))
                                (___match135303135304_
                                 _e129345129820_
                                 _hd129344129823_
                                 _tl129343129825_
                                 _e129348129828_
                                 _hd129347129831_
                                 _tl129346129833_
                                 _e129351129836_
                                 _hd129350129839_
                                 _tl129349129841_
                                 _e129354129844_
                                 _hd129353129847_
                                 _tl129352129849_
                                 _e129357129852_
                                 _hd129356129855_
                                 _tl129355129857_
                                 _e129360129860_
                                 _hd129359129863_
                                 _tl129358129865_
                                 _e129363129868_
                                 _hd129362129871_
                                 _tl129361129873_
                                 _e129366129876_
                                 _hd129365129879_
                                 _tl129364129881_))
                            (___match135303135304_
                             _e129345129820_
                             _hd129344129823_
                             _tl129343129825_
                             _e129348129828_
                             _hd129347129831_
                             _tl129346129833_
                             _e129351129836_
                             _hd129350129839_
                             _tl129349129841_
                             _e129354129844_
                             _hd129353129847_
                             _tl129352129849_
                             _e129357129852_
                             _hd129356129855_
                             _tl129355129857_
                             _e129360129860_
                             _hd129359129863_
                             _tl129358129865_
                             _e129363129868_
                             _hd129362129871_
                             _tl129361129873_
                             _e129366129876_
                             _hd129365129879_
                             _tl129364129881_))))
                     (___match135021135022_
                      (lambda (_e129294129941_
                               _hd129293129944_
                               _tl129292129946_
                               _e129297129949_
                               _hd129296129952_
                               _tl129295129954_
                               _e129300129957_
                               _hd129299129960_
                               _tl129298129962_
                               _e129303129965_
                               _hd129302129968_
                               _tl129301129970_
                               _e129306129973_
                               _hd129305129976_
                               _tl129304129978_
                               _e129309129981_
                               _hd129308129984_
                               _tl129307129986_
                               _e129312129989_
                               _hd129311129992_
                               _tl129310129994_
                               _e129315129997_
                               _hd129314130000_
                               _tl129313130002_
                               _e129318130005_
                               _hd129317130008_
                               _tl129316130010_
                               _e129321130013_
                               _hd129320130016_
                               _tl129319130018_
                               _e129324130021_
                               _hd129323130024_
                               _tl129322130026_
                               _e129327130029_
                               _hd129326130032_
                               _tl129325130034_
                               _e129330130037_
                               _hd129329130040_
                               _tl129328130042_
                               ___splice134814134815_
                               _target129331130045_
                               _tl129333130047_)
                        (letrec ((_loop129334130050_
                                  (lambda (_hd129332130053_ _args129338130055_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129332130053_))
                                        (let ((_e129335130058_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129332130053_))))
                                          (let ((_lp-tl129337130063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129335130058_)))
                                                (_lp-hd129336130061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129335130058_))))
                                            (let ((__tmp135677
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129336130061_
                                                           _args129338130055_))))
                                              (declare (not safe))
                                              (_loop129334130050_
                                               _lp-tl129337130063_
                                               __tmp135677))))
                                        (let ((_args129339130066_
                                               (reverse _args129338130055_)))
                                          (let ((_L130069_ _args129339130066_)
                                                (_L130070_ _hd129329130040_)
                                                (_L130071_ _hd129320130016_)
                                                (_L130072_ _hd129311129992_)
                                                (_L130073_ _hd129302129968_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130073_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130072_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130071_
                                                        _self129229_)))
                                                (___kont134812134813_
                                                 _L130069_
                                                 _L130070_
                                                 _L130071_
                                                 _L130072_
                                                 _L130073_)
                                                (___kont134824134825_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129334130050_ _target129331130045_ '())))))
                     (___match134979134980_
                      (lambda (_e129294129941_
                               _hd129293129944_
                               _tl129292129946_
                               _e129297129949_
                               _hd129296129952_
                               _tl129295129954_
                               _e129300129957_
                               _hd129299129960_
                               _tl129298129962_
                               _e129303129965_
                               _hd129302129968_
                               _tl129301129970_
                               _e129306129973_
                               _hd129305129976_
                               _tl129304129978_
                               _e129309129981_
                               _hd129308129984_
                               _tl129307129986_
                               _e129312129989_
                               _hd129311129992_
                               _tl129310129994_
                               _e129315129997_
                               _hd129314130000_
                               _tl129313130002_
                               _e129318130005_
                               _hd129317130008_
                               _tl129316130010_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129317130008_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129316130010_))
                                (let ((_e129321130013_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129316130010_))))
                                  (let ((_tl129319130018_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129321130013_)))
                                        (_hd129320130016_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129321130013_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129319130018_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129313130002_))
                                            (let ((_e129324130021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129313130002_))))
                                              (let ((_tl129322130026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129324130021_)))
                                                    (_hd129323130024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129324130021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129323130024_))
                                                    (let ((_e129327130029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129323130024_))))
                                                      (let ((_tl129325130034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129327130029_)))
                    (_hd129326130032_
                     (let () (declare (not safe)) (##car _e129327130029_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129326130032_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129326130032_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129325130034_))
                            (let ((_e129330130037_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129325130034_))))
                              (let ((_tl129328130042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129330130037_)))
                                    (_hd129329130040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129330130037_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129328130042_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129322130026_))
                                        (let ((___splice134814134815_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129322130026_
                                                  '0))))
                                          (let ((_tl129333130047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134814134815_
                                                    '1)))
                                                (_target129331130045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134814134815_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129333130047_))
                                                (___match135021135022_
                                                 _e129294129941_
                                                 _hd129293129944_
                                                 _tl129292129946_
                                                 _e129297129949_
                                                 _hd129296129952_
                                                 _tl129295129954_
                                                 _e129300129957_
                                                 _hd129299129960_
                                                 _tl129298129962_
                                                 _e129303129965_
                                                 _hd129302129968_
                                                 _tl129301129970_
                                                 _e129306129973_
                                                 _hd129305129976_
                                                 _tl129304129978_
                                                 _e129309129981_
                                                 _hd129308129984_
                                                 _tl129307129986_
                                                 _e129312129989_
                                                 _hd129311129992_
                                                 _tl129310129994_
                                                 _e129315129997_
                                                 _hd129314130000_
                                                 _tl129313130002_
                                                 _e129318130005_
                                                 _hd129317130008_
                                                 _tl129316130010_
                                                 _e129321130013_
                                                 _hd129320130016_
                                                 _tl129319130018_
                                                 _e129324130021_
                                                 _hd129323130024_
                                                 _tl129322130026_
                                                 _e129327130029_
                                                 _hd129326130032_
                                                 _tl129325130034_
                                                 _e129330130037_
                                                 _hd129329130040_
                                                 _tl129328130042_
                                                 ___splice134814134815_
                                                 _target129331130045_
                                                 _tl129333130047_)
                                                (___kont134824134825_))))
                                        (___kont134824134825_))
                                    (___kont134824134825_))))
                            (___kont134824134825_))
                        (___kont134824134825_))
                    (___kont134824134825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134824134825_))))
                                            (___match135303135304_
                                             _e129294129941_
                                             _hd129293129944_
                                             _tl129292129946_
                                             _e129297129949_
                                             _hd129296129952_
                                             _tl129295129954_
                                             _e129300129957_
                                             _hd129299129960_
                                             _tl129298129962_
                                             _e129303129965_
                                             _hd129302129968_
                                             _tl129301129970_
                                             _e129306129973_
                                             _hd129305129976_
                                             _tl129304129978_
                                             _e129309129981_
                                             _hd129308129984_
                                             _tl129307129986_
                                             _e129312129989_
                                             _hd129311129992_
                                             _tl129310129994_
                                             _e129315129997_
                                             _hd129314130000_
                                             _tl129313130002_))
                                        (___match135303135304_
                                         _e129294129941_
                                         _hd129293129944_
                                         _tl129292129946_
                                         _e129297129949_
                                         _hd129296129952_
                                         _tl129295129954_
                                         _e129300129957_
                                         _hd129299129960_
                                         _tl129298129962_
                                         _e129303129965_
                                         _hd129302129968_
                                         _tl129301129970_
                                         _e129306129973_
                                         _hd129305129976_
                                         _tl129304129978_
                                         _e129309129981_
                                         _hd129308129984_
                                         _tl129307129986_
                                         _e129312129989_
                                         _hd129311129992_
                                         _tl129310129994_
                                         _e129315129997_
                                         _hd129314130000_
                                         _tl129313130002_))))
                                (___match135303135304_
                                 _e129294129941_
                                 _hd129293129944_
                                 _tl129292129946_
                                 _e129297129949_
                                 _hd129296129952_
                                 _tl129295129954_
                                 _e129300129957_
                                 _hd129299129960_
                                 _tl129298129962_
                                 _e129303129965_
                                 _hd129302129968_
                                 _tl129301129970_
                                 _e129306129973_
                                 _hd129305129976_
                                 _tl129304129978_
                                 _e129309129981_
                                 _hd129308129984_
                                 _tl129307129986_
                                 _e129312129989_
                                 _hd129311129992_
                                 _tl129310129994_
                                 _e129315129997_
                                 _hd129314130000_
                                 _tl129313130002_))
                            (___match135089135090_
                             _e129294129941_
                             _hd129293129944_
                             _tl129292129946_
                             _e129297129949_
                             _hd129296129952_
                             _tl129295129954_
                             _e129300129957_
                             _hd129299129960_
                             _tl129298129962_
                             _e129303129965_
                             _hd129302129968_
                             _tl129301129970_
                             _e129306129973_
                             _hd129305129976_
                             _tl129304129978_
                             _e129309129981_
                             _hd129308129984_
                             _tl129307129986_
                             _e129312129989_
                             _hd129311129992_
                             _tl129310129994_
                             _e129315129997_
                             _hd129314130000_
                             _tl129313130002_
                             _e129318130005_
                             _hd129317130008_
                             _tl129316130010_))))
                     (___match134911134912_
                      (lambda (_e129250130133_
                               _hd129249130136_
                               _tl129248130138_
                               _e129253130141_
                               _hd129252130144_
                               _tl129251130146_
                               _e129256130149_
                               _hd129255130152_
                               _tl129254130154_
                               _e129259130157_
                               _hd129258130160_
                               _tl129257130162_
                               _e129262130165_
                               _hd129261130168_
                               _tl129260130170_
                               _e129265130173_
                               _hd129264130176_
                               _tl129263130178_
                               _e129268130181_
                               _hd129267130184_
                               _tl129266130186_
                               _e129271130189_
                               _hd129270130192_
                               _tl129269130194_
                               _e129274130197_
                               _hd129273130200_
                               _tl129272130202_
                               _e129277130205_
                               _hd129276130208_
                               _tl129275130210_
                               ___splice134810134811_
                               _target129278130213_
                               _tl129280130215_)
                        (letrec ((_loop129281130218_
                                  (lambda (_hd129279130221_ _args129285130223_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129279130221_))
                                        (let ((_e129282130226_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129279130221_))))
                                          (let ((_lp-tl129284130231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129282130226_)))
                                                (_lp-hd129283130229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129282130226_))))
                                            (let ((__tmp135678
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129283130229_
                                                           _args129285130223_))))
                                              (declare (not safe))
                                              (_loop129281130218_
                                               _lp-tl129284130231_
                                               __tmp135678))))
                                        (let ((_args129286130234_
                                               (reverse _args129285130223_)))
                                          (let ((_L130237_ _args129286130234_)
                                                (_L130238_ _hd129276130208_)
                                                (_L130239_ _hd129267130184_)
                                                (_L130240_ _hd129258130160_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130240_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130239_
                                                        _self129229_)))
                                                (___kont134808134809_
                                                 _L130237_
                                                 _L130238_
                                                 _L130239_
                                                 _L130240_)
                                                (___match135099135100_
                                                 _e129250130133_
                                                 _hd129249130136_
                                                 _tl129248130138_
                                                 _e129253130141_
                                                 _hd129252130144_
                                                 _tl129251130146_
                                                 _e129256130149_
                                                 _hd129255130152_
                                                 _tl129254130154_
                                                 _e129259130157_
                                                 _hd129258130160_
                                                 _tl129257130162_
                                                 _e129262130165_
                                                 _hd129261130168_
                                                 _tl129260130170_
                                                 _e129265130173_
                                                 _hd129264130176_
                                                 _tl129263130178_
                                                 _e129268130181_
                                                 _hd129267130184_
                                                 _tl129266130186_
                                                 _e129271130189_
                                                 _hd129270130192_
                                                 _tl129269130194_
                                                 _e129274130197_
                                                 _hd129273130200_
                                                 _tl129272130202_
                                                 _e129277130205_
                                                 _hd129276130208_
                                                 _tl129275130210_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129281130218_ _target129278130213_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134806134807_))
                    (let ((_e129250130133_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134806134807_))))
                      (let ((_tl129248130138_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129250130133_)))
                            (_hd129249130136_
                             (let ()
                               (declare (not safe))
                               (##car _e129250130133_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129248130138_))
                            (let ((_e129253130141_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129248130138_))))
                              (let ((_tl129251130146_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129253130141_)))
                                    (_hd129252130144_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129253130141_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129252130144_))
                                    (let ((_e129256130149_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129252130144_))))
                                      (let ((_tl129254130154_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129256130149_)))
                                            (_hd129255130152_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129256130149_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129255130152_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129255130152_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129254130154_))
                                                    (let ((_e129259130157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129254130154_))))
                                                      (let ((_tl129257130162_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129259130157_)))
                    (_hd129258130160_
                     (let () (declare (not safe)) (##car _e129259130157_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129257130162_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129251130146_))
                        (let ((_e129262130165_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129251130146_))))
                          (let ((_tl129260130170_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129262130165_)))
                                (_hd129261130168_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129262130165_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129261130168_))
                                (let ((_e129265130173_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129261130168_))))
                                  (let ((_tl129263130178_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129265130173_)))
                                        (_hd129264130176_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129265130173_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129264130176_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129264130176_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129263130178_))
                                                (let ((_e129268130181_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129263130178_))))
                                                  (let ((_tl129266130186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129268130181_)))
                                                        (_hd129267130184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129268130181_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129266130186_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129260130170_))
                                                            (let ((_e129271130189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129260130170_))))
                      (let ((_tl129269130194_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129271130189_)))
                            (_hd129270130192_
                             (let ()
                               (declare (not safe))
                               (##car _e129271130189_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129270130192_))
                            (let ((_e129274130197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129270130192_))))
                              (let ((_tl129272130202_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129274130197_)))
                                    (_hd129273130200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129274130197_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129273130200_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129273130200_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129272130202_))
                                            (let ((_e129277130205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129272130202_))))
                                              (let ((_tl129275130210_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129277130205_)))
                                                    (_hd129276130208_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129277130205_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129275130210_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129269130194_))
                                                        (let ((___splice134810134811_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129269130194_ '0))))
                  (let ((_tl129280130215_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134810134811_ '1)))
                        (_target129278130213_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134810134811_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129280130215_))
                        (___match134911134912_
                         _e129250130133_
                         _hd129249130136_
                         _tl129248130138_
                         _e129253130141_
                         _hd129252130144_
                         _tl129251130146_
                         _e129256130149_
                         _hd129255130152_
                         _tl129254130154_
                         _e129259130157_
                         _hd129258130160_
                         _tl129257130162_
                         _e129262130165_
                         _hd129261130168_
                         _tl129260130170_
                         _e129265130173_
                         _hd129264130176_
                         _tl129263130178_
                         _e129268130181_
                         _hd129267130184_
                         _tl129266130186_
                         _e129271130189_
                         _hd129270130192_
                         _tl129269130194_
                         _e129274130197_
                         _hd129273130200_
                         _tl129272130202_
                         _e129277130205_
                         _hd129276130208_
                         _tl129275130210_
                         ___splice134810134811_
                         _target129278130213_
                         _tl129280130215_)
                        (___match135099135100_
                         _e129250130133_
                         _hd129249130136_
                         _tl129248130138_
                         _e129253130141_
                         _hd129252130144_
                         _tl129251130146_
                         _e129256130149_
                         _hd129255130152_
                         _tl129254130154_
                         _e129259130157_
                         _hd129258130160_
                         _tl129257130162_
                         _e129262130165_
                         _hd129261130168_
                         _tl129260130170_
                         _e129265130173_
                         _hd129264130176_
                         _tl129263130178_
                         _e129268130181_
                         _hd129267130184_
                         _tl129266130186_
                         _e129271130189_
                         _hd129270130192_
                         _tl129269130194_
                         _e129274130197_
                         _hd129273130200_
                         _tl129272130202_
                         _e129277130205_
                         _hd129276130208_
                         _tl129275130210_))))
                (___match135099135100_
                 _e129250130133_
                 _hd129249130136_
                 _tl129248130138_
                 _e129253130141_
                 _hd129252130144_
                 _tl129251130146_
                 _e129256130149_
                 _hd129255130152_
                 _tl129254130154_
                 _e129259130157_
                 _hd129258130160_
                 _tl129257130162_
                 _e129262130165_
                 _hd129261130168_
                 _tl129260130170_
                 _e129265130173_
                 _hd129264130176_
                 _tl129263130178_
                 _e129268130181_
                 _hd129267130184_
                 _tl129266130186_
                 _e129271130189_
                 _hd129270130192_
                 _tl129269130194_
                 _e129274130197_
                 _hd129273130200_
                 _tl129272130202_
                 _e129277130205_
                 _hd129276130208_
                 _tl129275130210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135303135304_
                                                     _e129250130133_
                                                     _hd129249130136_
                                                     _tl129248130138_
                                                     _e129253130141_
                                                     _hd129252130144_
                                                     _tl129251130146_
                                                     _e129256130149_
                                                     _hd129255130152_
                                                     _tl129254130154_
                                                     _e129259130157_
                                                     _hd129258130160_
                                                     _tl129257130162_
                                                     _e129262130165_
                                                     _hd129261130168_
                                                     _tl129260130170_
                                                     _e129265130173_
                                                     _hd129264130176_
                                                     _tl129263130178_
                                                     _e129268130181_
                                                     _hd129267130184_
                                                     _tl129266130186_
                                                     _e129271130189_
                                                     _hd129270130192_
                                                     _tl129269130194_))))
                                            (___match135303135304_
                                             _e129250130133_
                                             _hd129249130136_
                                             _tl129248130138_
                                             _e129253130141_
                                             _hd129252130144_
                                             _tl129251130146_
                                             _e129256130149_
                                             _hd129255130152_
                                             _tl129254130154_
                                             _e129259130157_
                                             _hd129258130160_
                                             _tl129257130162_
                                             _e129262130165_
                                             _hd129261130168_
                                             _tl129260130170_
                                             _e129265130173_
                                             _hd129264130176_
                                             _tl129263130178_
                                             _e129268130181_
                                             _hd129267130184_
                                             _tl129266130186_
                                             _e129271130189_
                                             _hd129270130192_
                                             _tl129269130194_))
                                        (___match134979134980_
                                         _e129250130133_
                                         _hd129249130136_
                                         _tl129248130138_
                                         _e129253130141_
                                         _hd129252130144_
                                         _tl129251130146_
                                         _e129256130149_
                                         _hd129255130152_
                                         _tl129254130154_
                                         _e129259130157_
                                         _hd129258130160_
                                         _tl129257130162_
                                         _e129262130165_
                                         _hd129261130168_
                                         _tl129260130170_
                                         _e129265130173_
                                         _hd129264130176_
                                         _tl129263130178_
                                         _e129268130181_
                                         _hd129267130184_
                                         _tl129266130186_
                                         _e129271130189_
                                         _hd129270130192_
                                         _tl129269130194_
                                         _e129274130197_
                                         _hd129273130200_
                                         _tl129272130202_))
                                    (___match135303135304_
                                     _e129250130133_
                                     _hd129249130136_
                                     _tl129248130138_
                                     _e129253130141_
                                     _hd129252130144_
                                     _tl129251130146_
                                     _e129256130149_
                                     _hd129255130152_
                                     _tl129254130154_
                                     _e129259130157_
                                     _hd129258130160_
                                     _tl129257130162_
                                     _e129262130165_
                                     _hd129261130168_
                                     _tl129260130170_
                                     _e129265130173_
                                     _hd129264130176_
                                     _tl129263130178_
                                     _e129268130181_
                                     _hd129267130184_
                                     _tl129266130186_
                                     _e129271130189_
                                     _hd129270130192_
                                     _tl129269130194_))))
                            (___match135303135304_
                             _e129250130133_
                             _hd129249130136_
                             _tl129248130138_
                             _e129253130141_
                             _hd129252130144_
                             _tl129251130146_
                             _e129256130149_
                             _hd129255130152_
                             _tl129254130154_
                             _e129259130157_
                             _hd129258130160_
                             _tl129257130162_
                             _e129262130165_
                             _hd129261130168_
                             _tl129260130170_
                             _e129265130173_
                             _hd129264130176_
                             _tl129263130178_
                             _e129268130181_
                             _hd129267130184_
                             _tl129266130186_
                             _e129271130189_
                             _hd129270130192_
                             _tl129269130194_))))
                    (___match135241135242_
                     _e129250130133_
                     _hd129249130136_
                     _tl129248130138_
                     _e129253130141_
                     _hd129252130144_
                     _tl129251130146_
                     _e129256130149_
                     _hd129255130152_
                     _tl129254130154_
                     _e129259130157_
                     _hd129258130160_
                     _tl129257130162_
                     _e129262130165_
                     _hd129261130168_
                     _tl129260130170_
                     _e129265130173_
                     _hd129264130176_
                     _tl129263130178_
                     _e129268130181_
                     _hd129267130184_
                     _tl129266130186_))
                (___kont134824134825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134824134825_))
                                            (___kont134824134825_))
                                        (___kont134824134825_))))
                                (___kont134824134825_))))
                        (___kont134824134825_))
                    (___kont134824134825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134824134825_))
                                                (___kont134824134825_))
                                            (___kont134824134825_))))
                                    (___kont134824134825_))))
                            (___kont134824134825_))))
                    (___kont134824134825_))))))))))
