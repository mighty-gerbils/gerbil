(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709125257)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl134167_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135295 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl134167_ __tmp135295))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl134167_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134150_ . _args134152_)
        (let ((__tmp135297
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134152_)
                     (gxc#compile-e__0 _stx134150_)
                     (let ((_arg1134157_ (car _args134152_))
                           (_rest134159_ (cdr _args134152_)))
                       (if (null? _rest134159_)
                           (gxc#compile-e__1 _stx134150_ _arg1134157_)
                           (let ((_arg2134162_ (car _rest134159_))
                                 (_rest134164_ (cdr _rest134159_)))
                             (if (null? _rest134164_)
                                 (gxc#compile-e__2
                                  _stx134150_
                                  _arg1134157_
                                  _arg2134162_)
                                 (apply gxc#compile-e
                                        _stx134150_
                                        _arg1134157_
                                        _arg2134162_
                                        _rest134164_))))))))
              (__tmp135296 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp135297
           gxc#current-compile-methods
           __tmp135296))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134147_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135298 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl134147_ __tmp135298))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134147_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl134147_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx134130_ . _args134132_)
        (let ((__tmp135300
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134132_)
                     (gxc#compile-e__0 _stx134130_)
                     (let ((_arg1134137_ (car _args134132_))
                           (_rest134139_ (cdr _args134132_)))
                       (if (null? _rest134139_)
                           (gxc#compile-e__1 _stx134130_ _arg1134137_)
                           (let ((_arg2134142_ (car _rest134139_))
                                 (_rest134144_ (cdr _rest134139_)))
                             (if (null? _rest134144_)
                                 (gxc#compile-e__2
                                  _stx134130_
                                  _arg1134137_
                                  _arg2134142_)
                                 (apply gxc#compile-e
                                        _stx134130_
                                        _arg1134137_
                                        _arg2134142_
                                        _rest134144_))))))))
              (__tmp135299 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135300
           gxc#current-compile-methods
           __tmp135299))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134127_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135301 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl134127_ __tmp135301))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134127_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134127_ '%#call gxc#subst-object-refs-call%))
           _tbl134127_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx134110_ . _args134112_)
        (let ((__tmp135303
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134112_)
                     (gxc#compile-e__0 _stx134110_)
                     (let ((_arg1134117_ (car _args134112_))
                           (_rest134119_ (cdr _args134112_)))
                       (if (null? _rest134119_)
                           (gxc#compile-e__1 _stx134110_ _arg1134117_)
                           (let ((_arg2134122_ (car _rest134119_))
                                 (_rest134124_ (cdr _rest134119_)))
                             (if (null? _rest134124_)
                                 (gxc#compile-e__2
                                  _stx134110_
                                  _arg1134117_
                                  _arg2134122_)
                                 (apply gxc#compile-e
                                        _stx134110_
                                        _arg1134117_
                                        _arg2134122_
                                        _rest134124_))))))))
              (__tmp135302 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135303
           gxc#current-compile-methods
           __tmp135302))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx131322_)
        (letrec ((_generate-method-bind131324_
                  (lambda (_$klass134103_
                           _$method-table134104_
                           _id134105_
                           _$id134106_)
                    (let ((_$tmp134108_
                           (let ((__tmp135304 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135304))))
                      (let ((__tmp135352
                             (let ()
                               (declare (not safe))
                               (cons _$id134106_ '())))
                            (__tmp135305
                             (let ((__tmp135306
                                    (let ((__tmp135307
                                           (let ((__tmp135350
                                                  (let ((__tmp135351
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135351)))
                                                 (__tmp135308
                                                  (let ((__tmp135309
                                                         (let ((__tmp135310
                                                                (let ((__tmp135311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135312
                                      (let ((__tmp135313
                                             (let ((__tmp135333
                                                    (let ((__tmp135334
                                                           (let ((__tmp135349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134108_ '())))
                         (__tmp135335
                          (let ((__tmp135336
                                 (let ((__tmp135337
                                        (let ((__tmp135347
                                               (let ((__tmp135348
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135348)))
                                              (__tmp135338
                                               (let ((__tmp135345
                                                      (let ((__tmp135346
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134104_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135346)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135339
                                                      (let ((__tmp135343
                                                             (let ((__tmp135344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134105_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135344)))
                    (__tmp135340
                     (let ((__tmp135341
                            (let ((__tmp135342
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135342))))
                       (declare (not safe))
                       (cons __tmp135341 '()))))
                (declare (not safe))
                (cons __tmp135343 __tmp135340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135345
                                                       __tmp135339))))
                                          (declare (not safe))
                                          (cons __tmp135347 __tmp135338))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135337))))
                            (declare (not safe))
                            (cons __tmp135336 '()))))
                     (declare (not safe))
                     (cons __tmp135349 __tmp135335))))
              (declare (not safe))
              (cons __tmp135334 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135314
                                                    (let ((__tmp135315
                                                           (let ((__tmp135316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135331
                                 (let ((__tmp135332
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134108_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135332)))
                                (__tmp135317
                                 (let ((__tmp135329
                                        (let ((__tmp135330
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134108_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135330)))
                                       (__tmp135318
                                        (let ((__tmp135319
                                               (let ((__tmp135320
                                                      (let ((__tmp135327
                                                             (let ((__tmp135328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135328)))
                    (__tmp135321
                     (let ((__tmp135325
                            (let ((__tmp135326
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135326)))
                           (__tmp135322
                            (let ((__tmp135323
                                   (let ((__tmp135324
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134105_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135324))))
                              (declare (not safe))
                              (cons __tmp135323 '()))))
                       (declare (not safe))
                       (cons __tmp135325 __tmp135322))))
                (declare (not safe))
                (cons __tmp135327 __tmp135321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135320))))
                                          (declare (not safe))
                                          (cons __tmp135319 '()))))
                                   (declare (not safe))
                                   (cons __tmp135329 __tmp135318))))
                            (declare (not safe))
                            (cons __tmp135331 __tmp135317))))
                     (declare (not safe))
                     (cons '%#if __tmp135316))))
              (declare (not safe))
              (cons __tmp135315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135333
                                                     __tmp135314))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135313))))
                                 (declare (not safe))
                                 (cons __tmp135312 '()))))
                          (declare (not safe))
                          (cons '() __tmp135311))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135309 '()))))
                                             (declare (not safe))
                                             (cons __tmp135350 __tmp135308))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135307))))
                               (declare (not safe))
                               (cons __tmp135306 '()))))
                        (declare (not safe))
                        (cons __tmp135352 __tmp135305)))))
                 (_generate-slot-bind131325_
                  (lambda (_$klass134097_ _id134098_ _$id134099_)
                    (let ((_$tmp134101_
                           (let ((__tmp135353 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135353))))
                      (let ((__tmp135390
                             (let ()
                               (declare (not safe))
                               (cons _$id134099_ '())))
                            (__tmp135354
                             (let ((__tmp135355
                                    (let ((__tmp135356
                                           (let ((__tmp135376
                                                  (let ((__tmp135377
                                                         (let ((__tmp135389
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134101_ '())))
                       (__tmp135378
                        (let ((__tmp135379
                               (let ((__tmp135380
                                      (let ((__tmp135387
                                             (let ((__tmp135388
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135388)))
                                            (__tmp135381
                                             (let ((__tmp135385
                                                    (let ((__tmp135386
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135386)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135382
                                                    (let ((__tmp135383
                                                           (let ((__tmp135384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134098_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135384))))
              (declare (not safe))
              (cons __tmp135383 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135385
                                                     __tmp135382))))
                                        (declare (not safe))
                                        (cons __tmp135387 __tmp135381))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135380))))
                          (declare (not safe))
                          (cons __tmp135379 '()))))
                   (declare (not safe))
                   (cons __tmp135389 __tmp135378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135377 '())))
                                                 (__tmp135357
                                                  (let ((__tmp135358
                                                         (let ((__tmp135359
                                                                (let ((__tmp135374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135375
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134101_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135375)))
                              (__tmp135360
                               (let ((__tmp135372
                                      (let ((__tmp135373
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134101_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135373)))
                                     (__tmp135361
                                      (let ((__tmp135362
                                             (let ((__tmp135363
                                                    (let ((__tmp135370
                                                           (let ((__tmp135371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135371)))
                  (__tmp135364
                   (let ((__tmp135368
                          (let ((__tmp135369
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135369)))
                         (__tmp135365
                          (let ((__tmp135366
                                 (let ((__tmp135367
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134098_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135367))))
                            (declare (not safe))
                            (cons __tmp135366 '()))))
                     (declare (not safe))
                     (cons __tmp135368 __tmp135365))))
              (declare (not safe))
              (cons __tmp135370 __tmp135364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135363))))
                                        (declare (not safe))
                                        (cons __tmp135362 '()))))
                                 (declare (not safe))
                                 (cons __tmp135372 __tmp135361))))
                          (declare (not safe))
                          (cons __tmp135374 __tmp135360))))
                   (declare (not safe))
                   (cons '%#if __tmp135359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135358 '()))))
                                             (declare (not safe))
                                             (cons __tmp135376 __tmp135357))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135356))))
                               (declare (not safe))
                               (cons __tmp135355 '()))))
                        (declare (not safe))
                        (cons __tmp135390 __tmp135354)))))
                 (_generate-specializer-impl131326_
                  (lambda (_$klass134091_
                           _$method-table134092_
                           _methods-bind134093_
                           _slots-bind134094_
                           _specializer-impl134095_)
                    (let ((__tmp135391
                           (let ((__tmp135392
                                  (let ((__tmp135398
                                         (let ((__tmp135399
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134092_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134091_ __tmp135399)))
                                        (__tmp135393
                                         (let ((__tmp135394
                                                (let ((__tmp135395
                                                       (let ((__tmp135397
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134094_ _methods-bind134093_)))
                     (__tmp135396
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134095_ '()))))
                 (declare (not safe))
                 (cons __tmp135397 __tmp135396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135395))))
                                           (declare (not safe))
                                           (cons __tmp135394 '()))))
                                    (declare (not safe))
                                    (cons __tmp135398 __tmp135393))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135392))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135391 _stx131322_))))
                 (_generate-specializer-def131327_
                  (lambda (_id134087_
                           _specializer-id134088_
                           _specializer-impl134089_)
                    (let ((__tmp135400
                           (let ((__tmp135401
                                  (let ((__tmp135402
                                         (let ((__tmp135415
                                                (let ((__tmp135416
                                                       (let ((__tmp135417
                                                              (let ((__tmp135419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134088_ '())))
                            (__tmp135418
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134089_ '()))))
                        (declare (not safe))
                        (cons __tmp135419 __tmp135418))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135416
                                                   _stx131322_)))
                                               (__tmp135403
                                                (let ((__tmp135404
                                                       (let ((__tmp135405
                                                              (let ((__tmp135406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135413
                                    (let ((__tmp135414
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135414)))
                                   (__tmp135407
                                    (let ((__tmp135411
                                           (let ((__tmp135412
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134087_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135412)))
                                          (__tmp135408
                                           (let ((__tmp135409
                                                  (let ((__tmp135410
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135410))))
                                             (declare (not safe))
                                             (cons __tmp135409 '()))))
                                      (declare (not safe))
                                      (cons __tmp135411 __tmp135408))))
                               (declare (not safe))
                               (cons __tmp135413 __tmp135407))))
                        (declare (not safe))
                        (cons '%#call __tmp135406))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135405 _stx131322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135404 '()))))
                                           (declare (not safe))
                                           (cons __tmp135415 __tmp135403))))
                                    (declare (not safe))
                                    (cons _stx131322_ __tmp135402))))
                             (declare (not safe))
                             (cons '%#begin __tmp135401))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135400 _stx131322_)))))
          (let* ((___stx134256134257_ _stx131322_)
                 (_g131330131350_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134256134257_)))))
            (let ((___kont134258134259_
                   (lambda (_L131394_ _L131395_)
                     (let ((_method-calls131414_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131415_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131416_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131418_
                                 (lambda ()
                                   (if (let ((__tmp135421
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131414_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135421))
                                       (let ((__tmp135420
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131415_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135420))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131394_))
                             (let* ((___stx134170134171_ _L131394_)
                                    (_g131805131823_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134170134171_)))))
                               (let ((___kont134172134173_
                                      (lambda (_L131859_ _L131860_ _L131861_)
                                        (for-each
                                         (lambda (_g131876131878_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131876131878_
                                              _L131861_
                                              _method-calls131414_
                                              _slot-refs131415_)))
                                         _L131859_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131418_))
                                            _stx131322_
                                            (let* ((_specializer-id131887_
                                                    (let* ((_id131881_
                                                            (let ((__tmp135543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131395_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135543 '"::specialize")))
                   (_specializer-id131884_
                    (let ((__tmp135544
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131322_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131881_ __tmp135544))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131884_))
              _specializer-id131884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131889_
                                                    (let ((__tmp135545
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135545)))
                                                   (_$method-table131891_
                                                    (let ((__tmp135546
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135546)))
                                                   (_methods131893_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131414_)))
                                                   (_$methods131897_
                                                    (map (lambda (_id131895_)
                                                           (let ((__tmp135547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131895_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135547)))
                 _methods131893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135548_
                                                    (for-each
                                                     (lambda (_g131898131901_
                                                              _g131899131903_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131414_
                                                          _g131898131901_
                                                          _g131899131903_)))
                                                     _methods131893_
                                                     _$methods131897_))
                                                   (_methods-bind131914_
                                                    (map (lambda (_g131906131909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131907131911_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131324_
                      _$klass131889_
                      _$method-table131891_
                      _g131906131909_
                      _g131907131911_)))
                 _methods131893_
                 _$methods131897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131916_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131415_)))
                                                   (_$slots131920_
                                                    (map (lambda (_id131918_)
                                                           (let ((__tmp135549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131918_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135549)))
                 _slots131916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135550_
                                                    (for-each
                                                     (lambda (_g131921131924_
                                                              _g131922131926_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131415_
                                                          _g131921131924_
                                                          _g131922131926_)))
                                                     _slots131916_
                                                     _$slots131920_))
                                                   (_slots-bind131937_
                                                    (map (lambda (_g131929131932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131930131934_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131325_
                      _$klass131889_
                      _g131929131932_
                      _g131930131934_)))
                 _slots131916_
                 _$slots131920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131943_
                                                    (map (lambda (_g131938131940_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131938131940_
                                                              _L131861_
                                                              _$klass131889_
                                                              _method-calls131414_
                                                              _slot-refs131415_)))
                                                         _L131859_))
                                                   (_specializer-impl131945_
                                                    (let ((__tmp135551
                                                           (let ((__tmp135552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135553
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131861_ _L131860_))))
                            (declare (not safe))
                            (cons __tmp135553 _specializer-body131943_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135552))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135551 _stx131322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131947_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131326_
                                                       _$klass131889_
                                                       _$method-table131891_
                                                       _methods-bind131914_
                                                       _slots-bind131937_
                                                       _specializer-impl131945_))))
                                              (let ((__tmp135555
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131395_)))
                                                    (__tmp135554
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131887_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135555
                                                 '" => "
                                                 __tmp135554))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131327_
                                                 _L131395_
                                                 _specializer-id131887_
                                                 _specializer-impl131947_))))))
                                     (___kont134174134175_
                                      (lambda () _stx131322_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134170134171_))
                                     (let ((_e131812131835_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134170134171_))))
                                       (let ((_tl131810131840_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131812131835_)))
                                             (_hd131811131838_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131812131835_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131810131840_))
                                             (let ((_e131815131843_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131810131840_))))
                                               (let ((_tl131813131848_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131815131843_)))
                                                     (_hd131814131846_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131815131843_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131814131846_))
                                                     (let ((_e131818131851_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131814131846_))))
                                                       (let ((_tl131816131856_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131818131851_)))
                     (_hd131817131854_
                      (let () (declare (not safe)) (##car _e131818131851_))))
                 (___kont134172134173_
                  _tl131813131848_
                  _tl131816131856_
                  _hd131817131854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134174134175_))))
                                             (___kont134174134175_))))
                                     (___kont134174134175_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131394_))
                                 (let* ((_g131953131972_
                                         (lambda (_g131954131969_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131954131969_))))
                                        (_g131952132255_
                                         (lambda (_g131954131975_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131954131975_))
                                               (let ((_e131958131977_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131954131975_))))
                                                 (let ((_hd131957131980_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131958131977_)))
                                                       (_tl131956131982_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131958131977_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131956131982_))
                                                       (let ((_g135526_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131956131982_ '0))))
                 (begin
                   (let ((_g135527_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135526_)
                                (##vector-length _g135526_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135527_ 2)))
                         (error "Context expects 2 values" _g135527_)))
                   (let ((_target131959131985_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135526_ 0)))
                         (_tl131961131987_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135526_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131961131987_))
                         (letrec ((_loop131962131990_
                                   (lambda (_hd131960131993_
                                            _clause131966131995_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131960131993_))
                                         (let ((_e131963131998_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131960131993_))))
                                           (let ((_lp-hd131964132001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131963131998_)))
                                                 (_lp-tl131965132003_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131963131998_))))
                                             (let ((__tmp135542
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131964132001_
                                                            _clause131966131995_))))
                                               (declare (not safe))
                                               (_loop131962131990_
                                                _lp-tl131965132003_
                                                __tmp135542))))
                                         (let ((_clause131967132006_
                                                (reverse _clause131966131995_)))
                                           ((lambda (_L132009_)
                                              (for-each
                                               (lambda (_clause132022_)
                                                 (let* ((___stx134196134197_
                                                         _clause132022_)
                                                        (_g132025132040_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134196134197_)))))
                                                   (let ((___kont134198134199_
                                                          (lambda (_L132068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132069_
                           _L132070_)
                    (for-each
                     (lambda (_g132085132087_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132085132087_
                          _L132070_
                          _method-calls131414_
                          _slot-refs131415_)))
                     _L132068_)))
                 (___kont134200134201_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134196134197_))
                                                         (let ((_e132032132052_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134196134197_))))
                   (let ((_tl132030132057_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132032132052_)))
                         (_hd132031132055_
                          (let ()
                            (declare (not safe))
                            (##car _e132032132052_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132031132055_))
                         (let ((_e132035132060_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132031132055_))))
                           (let ((_tl132033132065_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132035132060_)))
                                 (_hd132034132063_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132035132060_))))
                             (___kont134198134199_
                              _tl132030132057_
                              _tl132033132065_
                              _hd132034132063_)))
                         (___kont134200134201_))))
                 (___kont134200134201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135528
                                                      (lambda (_g132092132095_
                                                               _g132093132097_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132092132095_
                                                                _g132093132097_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135528
                                                         '()
                                                         _L132009_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131418_))
                                                  _stx131322_
                                                  (let* ((_specializer-id132106_
                                                          (let* ((_id132100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135529
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131395_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135529 '"::specialize")))
                         (_specializer-id132103_
                          (let ((__tmp135530
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131322_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132100_ __tmp135530))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132103_))
                    _specializer-id132103_))
                 (_$klass132108_
                  (let ((__tmp135531 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135531)))
                 (_$method-table132110_
                  (let ((__tmp135532 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135532)))
                 (_methods132112_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131414_)))
                 (_$methods132116_
                  (map (lambda (_id132114_)
                         (let ((__tmp135533 (gensym _id132114_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135533)))
                       _methods132112_))
                 (_g135534_
                  (for-each
                   (lambda (_g132117132120_ _g132118132122_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131414_
                        _g132117132120_
                        _g132118132122_)))
                   _methods132112_
                   _$methods132116_))
                 (_methods-bind132133_
                  (map (lambda (_g132125132128_ _g132126132130_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131324_
                            _$klass132108_
                            _$method-table132110_
                            _g132125132128_
                            _g132126132130_)))
                       _methods132112_
                       _$methods132116_))
                 (_slots132135_
                  (let () (declare (not safe)) (hash-keys _slot-refs131415_)))
                 (_$slots132139_
                  (map (lambda (_id132137_)
                         (let ((__tmp135535 (gensym _id132137_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135535)))
                       _slots132135_))
                 (_g135536_
                  (for-each
                   (lambda (_g132140132143_ _g132141132145_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131415_
                        _g132140132143_
                        _g132141132145_)))
                   _slots132135_
                   _$slots132139_))
                 (_slots-bind132156_
                  (map (lambda (_g132148132151_ _g132149132153_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131325_
                            _$klass132108_
                            _g132148132151_
                            _g132149132153_)))
                       _slots132135_
                       _$slots132139_))
                 (_specializer-clauses132248_
                  (map (lambda (_clause132158_)
                         (let* ((___stx134216134217_ _clause132158_)
                                (_g132161132176_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134216134217_)))))
                           (let ((___kont134218134219_
                                  (lambda (_L132204_ _L132205_ _L132206_)
                                    (let* ((_body132236_
                                            (map (lambda (_g132231132233_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132231132233_
                                                      _L132206_
                                                      _$klass132108_
                                                      _method-calls131414_
                                                      _slot-refs131415_)))
                                                 _L132204_))
                                           (__tmp135537
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132206_ _L132205_))))
                                      (declare (not safe))
                                      (cons __tmp135537 _body132236_))))
                                 (___kont134220134221_
                                  (lambda () _clause132158_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134216134217_))
                                 (let ((_e132168132188_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134216134217_))))
                                   (let ((_tl132166132193_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132168132188_)))
                                         (_hd132167132191_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132168132188_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132167132191_))
                                         (let ((_e132171132196_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132167132191_))))
                                           (let ((_tl132169132201_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132171132196_)))
                                                 (_hd132170132199_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132171132196_))))
                                             (___kont134218134219_
                                              _tl132166132193_
                                              _tl132169132201_
                                              _hd132170132199_)))
                                         (___kont134220134221_))))
                                 (___kont134220134221_)))))
                       (let ((__tmp135538
                              (lambda (_g132240132243_ _g132241132245_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132240132243_ _g132241132245_)))))
                         (declare (not safe))
                         (foldr1 __tmp135538 '() _L132009_))))
                 (_specializer-impl132250_
                  (let ((__tmp135539
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132248_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135539 _stx131322_)))
                 (_specializer-impl132252_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131326_
                     _$klass132108_
                     _$method-table132110_
                     _methods-bind132133_
                     _slots-bind132156_
                     _specializer-impl132250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135541
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131395_)))
                                                          (__tmp135540
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132106_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135541
                                                       '" => "
                                                       __tmp135540))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131327_
                                                       _L131395_
                                                       _specializer-id132106_
                                                       _specializer-impl132252_)))))
                                            _clause131967132006_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131962131990_ _target131959131985_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131953131972_ _g131954131975_))))))
               (let ()
                 (declare (not safe))
                 (_g131953131972_ _g131954131975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131953131972_
                                                  _g131954131975_))))))
                                   (declare (not safe))
                                   (_g131952132255_ _L131394_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131394_))
                                     (let* ((_g132258132288_
                                             (lambda (_g132259132285_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132259132285_))))
                                            (_g132257132893_
                                             (lambda (_g132259132291_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132259132291_))
                                                   (let ((_e132265132293_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132259132291_))))
                                                     (let ((_hd132264132296_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132265132293_)))
                                                           (_tl132263132298_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132265132293_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132263132298_))
                                                           (let ((_e132268132301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132263132298_))))
                     (let ((_hd132267132304_
                            (let ()
                              (declare (not safe))
                              (##car _e132268132301_)))
                           (_tl132266132306_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132268132301_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132267132304_))
                           (let ((_e132271132309_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132267132304_))))
                             (let ((_hd132270132312_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132271132309_)))
                                   (_tl132269132314_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132271132309_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132270132312_))
                                   (let ((_e132274132317_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132270132312_))))
                                     (let ((_hd132273132320_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132274132317_)))
                                           (_tl132272132322_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132274132317_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132273132320_))
                                           (let ((_e132277132325_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132273132320_))))
                                             (let ((_hd132276132328_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132277132325_)))
                                                   (_tl132275132330_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132277132325_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132275132330_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132272132322_))
                                                       (let ((_e132280132333_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132272132322_))))
                 (let ((_hd132279132336_
                        (let () (declare (not safe)) (##car _e132280132333_)))
                       (_tl132278132338_
                        (let () (declare (not safe)) (##cdr _e132280132333_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132278132338_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132269132314_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132266132306_))
                               (let ((_e132283132341_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132266132306_))))
                                 (let ((_hd132282132344_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132283132341_)))
                                       (_tl132281132346_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132283132341_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132281132346_))
                                       ((lambda (_L132349_ _L132350_ _L132351_)
                                          (let* ((_g132374132392_
                                                  (lambda (_g132375132389_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132375132389_))))
                                                 (_g132373132443_
                                                  (lambda (_g132375132395_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132375132395_))
                                                        (let ((_e132381132397_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132375132395_))))
                  (let ((_hd132380132400_
                         (let () (declare (not safe)) (##car _e132381132397_)))
                        (_tl132379132402_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132381132397_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132379132402_))
                        (let ((_e132384132405_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132379132402_))))
                          (let ((_hd132383132408_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132384132405_)))
                                (_tl132382132410_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132384132405_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132383132408_))
                                (let ((_e132387132413_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132383132408_))))
                                  (let ((_hd132386132416_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132387132413_)))
                                        (_tl132385132418_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132387132413_))))
                                    ((lambda (_L132421_ _L132422_ _L132423_)
                                       (for-each
                                        (lambda (_g132438132440_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132438132440_
                                             _L132423_
                                             _method-calls131414_
                                             _slot-refs131415_)))
                                        _L132421_))
                                     _tl132382132410_
                                     _tl132385132418_
                                     _hd132386132416_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132374132392_ _g132375132395_)))))
                        (let ()
                          (declare (not safe))
                          (_g132374132392_ _g132375132395_)))))
                (let ()
                  (declare (not safe))
                  (_g132374132392_ _g132375132395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132373132443_ _L132350_))
                                          (let* ((_g132446132465_
                                                  (lambda (_g132447132462_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132447132462_))))
                                                 (_g132445132584_
                                                  (lambda (_g132447132468_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132447132468_))
                                                        (let ((_e132451132470_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132447132468_))))
                  (let ((_hd132450132473_
                         (let () (declare (not safe)) (##car _e132451132470_)))
                        (_tl132449132475_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132451132470_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132449132475_))
                        (let ((_g135496_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132449132475_
                                  '0))))
                          (begin
                            (let ((_g135497_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135496_)
                                         (##vector-length _g135496_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135497_ 2)))
                                  (error "Context expects 2 values"
                                         _g135497_)))
                            (let ((_target132452132478_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135496_ 0)))
                                  (_tl132454132480_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135496_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132454132480_))
                                  (letrec ((_loop132455132483_
                                            (lambda (_hd132453132486_
                                                     _clause132459132488_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132453132486_))
                                                  (let ((_e132456132491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132453132486_))))
                                                    (let ((_lp-hd132457132494_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132456132491_)))
                                                          (_lp-tl132458132496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132456132491_))))
                                                      (let ((__tmp135499
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132457132494_ _clause132459132488_))))
                (declare (not safe))
                (_loop132455132483_ _lp-tl132458132496_ __tmp135499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132460132499_
                                                         (reverse _clause132459132488_)))
                                                    ((lambda (_L132502_)
                                                       (for-each
                                                        (lambda (_clause132515_)
                                                          (let* ((_g132517132532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132518132529_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132518132529_))))
                         (_g132516132574_
                          (lambda (_g132518132535_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132518132535_))
                                (let ((_e132524132537_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132518132535_))))
                                  (let ((_hd132523132540_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132524132537_)))
                                        (_tl132522132542_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132524132537_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132523132540_))
                                        (let ((_e132527132545_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132523132540_))))
                                          (let ((_hd132526132548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132527132545_)))
                                                (_tl132525132550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132527132545_))))
                                            ((lambda (_L132553_
                                                      _L132554_
                                                      _L132555_)
                                               (for-each
                                                (lambda (_g132569132571_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132569132571_
                                                     _L132555_
                                                     _method-calls131414_
                                                     _slot-refs131415_)))
                                                _L132553_))
                                             _tl132522132542_
                                             _tl132525132550_
                                             _hd132526132548_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132517132532_ _g132518132535_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132517132532_ _g132518132535_))))))
                    (declare (not safe))
                    (_g132516132574_ _clause132515_)))
                (let ((__tmp135498
                       (lambda (_g132576132579_ _g132577132581_)
                         (let ()
                           (declare (not safe))
                           (cons _g132576132579_ _g132577132581_)))))
                  (declare (not safe))
                  (foldr1 __tmp135498 '() _L132502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132460132499_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132455132483_
                                       _target132452132478_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132446132465_ _g132447132468_))))))
                        (let ()
                          (declare (not safe))
                          (_g132446132465_ _g132447132468_)))))
                (let ()
                  (declare (not safe))
                  (_g132446132465_ _g132447132468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132445132584_ _L132349_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131418_))
                                              _stx131322_
                                              (let* ((_specializer-id132593_
                                                      (let* ((_id132587_
                                                              (let ((__tmp135500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131395_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135500 '"::specialize")))
                     (_specializer-id132590_
                      (let ((__tmp135501
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131322_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132587_ __tmp135501))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132590_))
                _specializer-id132590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132595_
                                                      (let ((__tmp135502
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135502)))
                                                     (_$method-table132597_
                                                      (let ((__tmp135503
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135503)))
                                                     (_methods132599_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131414_)))
                                                     (_$methods132603_
                                                      (map (lambda (_id132601_)
                                                             (let ((__tmp135504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132601_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135504)))
                   _methods132599_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135505_
                                                      (for-each
                                                       (lambda (_g132604132607_
                                                                _g132605132609_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131414_
                                                            _g132604132607_
                                                            _g132605132609_)))
                                                       _methods132599_
                                                       _$methods132603_))
                                                     (_methods-bind132620_
                                                      (map (lambda (_g132612132615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132613132617_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131324_
                        _$klass132595_
                        _$method-table132597_
                        _g132612132615_
                        _g132613132617_)))
                   _methods132599_
                   _$methods132603_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132622_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131415_)))
                                                     (_$slots132626_
                                                      (map (lambda (_id132624_)
                                                             (let ((__tmp135506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132624_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135506)))
                   _slots132622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135507_
                                                      (for-each
                                                       (lambda (_g132627132630_
                                                                _g132628132632_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131415_
                                                            _g132627132630_
                                                            _g132628132632_)))
                                                       _slots132622_
                                                       _$slots132626_))
                                                     (_slots-bind132643_
                                                      (map (lambda (_g132635132638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132636132640_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131325_
                        _$klass132595_
                        _g132635132638_
                        _g132636132640_)))
                   _slots132622_
                   _$slots132626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132729_
                                                      (let* ((_g132645132663_
                                                              (lambda (_g132646132660_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132646132660_))))
                     (_g132644132726_
                      (lambda (_g132646132666_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132646132666_))
                            (let ((_e132652132668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132646132666_))))
                              (let ((_hd132651132671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132652132668_)))
                                    (_tl132650132673_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132652132668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132650132673_))
                                    (let ((_e132655132676_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132650132673_))))
                                      (let ((_hd132654132679_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132655132676_)))
                                            (_tl132653132681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132655132676_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132654132679_))
                                            (let ((_e132658132684_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132654132679_))))
                                              (let ((_hd132657132687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132658132684_)))
                                                    (_tl132656132689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132658132684_))))
                                                ((lambda (_L132692_
                                                          _L132693_
                                                          _L132694_)
                                                   (let* ((_body132724_
                                                           (map (lambda (_g132719132721_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132719132721_
                             _L132694_
                             _$klass132595_
                             _method-calls131414_
                             _slot-refs131415_)))
                        _L132692_))
                  (__tmp135508
                   (let ((__tmp135509
                          (let ((__tmp135510
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132694_ _L132693_))))
                            (declare (not safe))
                            (cons __tmp135510 _body132724_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135508
                                                      _L132350_)))
                                                 _tl132653132681_
                                                 _tl132656132689_
                                                 _hd132657132687_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132645132663_
                                               _g132646132666_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132645132663_ _g132646132666_)))))
                            (let ()
                              (declare (not safe))
                              (_g132645132663_ _g132646132666_))))))
                (declare (not safe))
                (_g132644132726_ _L132350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132886_
                                                      (let* ((_g132731132750_
                                                              (lambda (_g132732132747_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132732132747_))))
                     (_g132730132883_
                      (lambda (_g132732132753_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132732132753_))
                            (let ((_e132736132755_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132732132753_))))
                              (let ((_hd132735132758_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132736132755_)))
                                    (_tl132734132760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132736132755_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132734132760_))
                                    (let ((_g135511_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132734132760_
                                              '0))))
                                      (begin
                                        (let ((_g135512_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135511_)
                                                     (##vector-length
                                                      _g135511_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135512_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135512_)))
                                        (let ((_target132737132763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135511_ 0)))
                                              (_tl132739132765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135511_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132739132765_))
                                              (letrec ((_loop132740132768_
                                                        (lambda (_hd132738132771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132744132773_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132738132771_))
                      (let ((_e132741132776_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132738132771_))))
                        (let ((_lp-hd132742132779_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132741132776_)))
                              (_lp-tl132743132781_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132741132776_))))
                          (let ((__tmp135516
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132742132779_
                                         _clause132744132773_))))
                            (declare (not safe))
                            (_loop132740132768_
                             _lp-tl132743132781_
                             __tmp135516))))
                      (let ((_clause132745132784_
                             (reverse _clause132744132773_)))
                        ((lambda (_L132787_)
                           (let* ((_clauses132881_
                                   (map (lambda (_clause132801_)
                                          (let* ((___stx134236134237_
                                                  _clause132801_)
                                                 (_g132804132819_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134236134237_)))))
                                            (let ((___kont134238134239_
                                                   (lambda (_L132847_
                                                            _L132848_
                                                            _L132849_)
                                                     (let* ((_body132869_
                                                             (map (lambda (_g132864132866_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132864132866_
                               _L132849_
                               _$klass132595_
                               _method-calls131414_
                               _slot-refs131415_)))
                          _L132847_))
                    (__tmp135513
                     (let () (declare (not safe)) (cons _L132849_ _L132848_))))
               (declare (not safe))
               (cons __tmp135513 _body132869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134240134241_
                                                   (lambda () _clause132801_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134236134237_))
                                                  (let ((_e132811132831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134236134237_))))
                                                    (let ((_tl132809132836_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132811132831_)))
                                                          (_hd132810132834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132811132831_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132810132834_))
                                                          (let ((_e132814132839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132810132834_))))
                    (let ((_tl132812132844_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132814132839_)))
                          (_hd132813132842_
                           (let ()
                             (declare (not safe))
                             (##car _e132814132839_))))
                      (___kont134238134239_
                       _tl132809132836_
                       _tl132812132844_
                       _hd132813132842_)))
                  (___kont134240134241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134240134241_)))))
                                        (let ((__tmp135514
                                               (lambda (_g132873132876_
                                                        _g132874132878_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132873132876_
                                                         _g132874132878_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135514 '() _L132787_))))
                                  (__tmp135515
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132881_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135515 _L132349_)))
                         _clause132745132784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132740132768_
                                                   _target132737132763_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132731132750_
                                                 _g132732132753_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132731132750_ _g132732132753_)))))
                            (let ()
                              (declare (not safe))
                              (_g132731132750_ _g132732132753_))))))
                (declare (not safe))
                (_g132730132883_ _L132349_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132888_
                                                      (let ((__tmp135517
                                                             (let ((__tmp135518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135520
                                   (let ((__tmp135521
                                          (let ((__tmp135523
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132351_ '())))
                                                (__tmp135522
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132729_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135523 __tmp135522))))
                                     (declare (not safe))
                                     (cons __tmp135521 '())))
                                  (__tmp135519
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132886_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135520 __tmp135519))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135518))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135517 _stx131322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132890_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131326_
                                                         _$klass132595_
                                                         _$method-table132597_
                                                         _methods-bind132620_
                                                         _slots-bind132643_
                                                         _specializer-impl132888_))))
                                                (let ((__tmp135525
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131395_)))
                                                      (__tmp135524
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132593_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135525
                                                   '" => "
                                                   __tmp135524))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131327_
                                                   _L131395_
                                                   _specializer-id132593_
                                                   _specializer-impl132890_)))))
                                        _hd132282132344_
                                        _hd132279132336_
                                        _hd132276132328_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132258132288_ _g132259132291_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132258132288_ _g132259132291_)))
                           (let ()
                             (declare (not safe))
                             (_g132258132288_ _g132259132291_)))
                       (let ()
                         (declare (not safe))
                         (_g132258132288_ _g132259132291_)))))
               (let () (declare (not safe)) (_g132258132288_ _g132259132291_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132258132288_
                                                      _g132259132291_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132258132288_
                                              _g132259132291_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132258132288_ _g132259132291_)))))
                           (let ()
                             (declare (not safe))
                             (_g132258132288_ _g132259132291_)))))
                   (let ()
                     (declare (not safe))
                     (_g132258132288_ _g132259132291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132258132288_
                                                      _g132259132291_))))))
                                       (declare (not safe))
                                       (_g132257132893_ _L131394_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131394_))
                                         (let* ((_g132896132949_
                                                 (lambda (_g132897132946_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132897132946_))))
                                                (_g132895134080_
                                                 (lambda (_g132897132952_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132897132952_))
                                                       (let ((_e132905132954_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132897132952_))))
                 (let ((_hd132904132957_
                        (let () (declare (not safe)) (##car _e132905132954_)))
                       (_tl132903132959_
                        (let () (declare (not safe)) (##cdr _e132905132954_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132904132957_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132904132957_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132903132959_))
                               (let ((_e132908132962_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132903132959_))))
                                 (let ((_hd132907132965_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132908132962_)))
                                       (_tl132906132967_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132908132962_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132907132965_))
                                       (let ((_e132911132970_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132907132965_))))
                                         (let ((_hd132910132973_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132911132970_)))
                                               (_tl132909132975_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132911132970_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132910132973_))
                                               (let ((_e132914132978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132910132973_))))
                                                 (let ((_hd132913132981_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132914132978_)))
                                                       (_tl132912132983_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132914132978_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132913132981_))
                                                       (let ((_e132917132986_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132913132981_))))
                 (let ((_hd132916132989_
                        (let () (declare (not safe)) (##car _e132917132986_)))
                       (_tl132915132991_
                        (let () (declare (not safe)) (##cdr _e132917132986_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132915132991_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132912132983_))
                           (let ((_e132920132994_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132912132983_))))
                             (let ((_hd132919132997_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132920132994_)))
                                   (_tl132918132999_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132920132994_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132919132997_))
                                   (let ((_e132923133002_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132919132997_))))
                                     (let ((_hd132922133005_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132923133002_)))
                                           (_tl132921133007_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132923133002_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132922133005_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132922133005_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132921133007_))
                                                   (let ((_e132926133010_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132921133007_))))
                                                     (let ((_hd132925133013_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132926133010_)))
                                                           (_tl132924133015_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132926133010_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132925133013_))
                                                           (let ((_e132929133018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132925133013_))))
                     (let ((_hd132928133021_
                            (let ()
                              (declare (not safe))
                              (##car _e132929133018_)))
                           (_tl132927133023_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132929133018_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132928133021_))
                           (let ((_e132932133026_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132928133021_))))
                             (let ((_hd132931133029_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132932133026_)))
                                   (_tl132930133031_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132932133026_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132931133029_))
                                   (let ((_e132935133034_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132931133029_))))
                                     (let ((_hd132934133037_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132935133034_)))
                                           (_tl132933133039_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132935133034_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132933133039_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132930133031_))
                                               (let ((_e132938133042_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132930133031_))))
                                                 (let ((_hd132937133045_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132938133042_)))
                                                       (_tl132936133047_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132938133042_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132936133047_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132927133023_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132924133015_))
                       (let ((_e132941133050_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132924133015_))))
                         (let ((_hd132940133053_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132941133050_)))
                               (_tl132939133055_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132941133050_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132939133055_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132918132999_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132909132975_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132906132967_))
                                           (let ((_e132944133058_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132906132967_))))
                                             (let ((_hd132943133061_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132944133058_)))
                                                   (_tl132942133063_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132944133058_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132942133063_))
                                                   ((lambda (_L133066_
                                                             _L133067_
                                                             _L133068_
                                                             _L133069_
                                                             _L133070_)
                                                      (let* ((_g133109133171_
                                                              (lambda (_g133110133168_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133110133168_))))
                     (_g133108134077_
                      (lambda (_g133110133174_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133110133174_))
                            (let ((_e133118133176_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133110133174_))))
                              (let ((_hd133117133179_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133118133176_)))
                                    (_tl133116133181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133118133176_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133117133179_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133117133179_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133116133181_))
                                            (let ((_e133121133184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133116133181_))))
                                              (let ((_hd133120133187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133121133184_)))
                                                    (_tl133119133189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133121133184_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133119133189_))
                                                    (let ((_e133124133192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133119133189_))))
                                                      (let ((_hd133123133195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133124133192_)))
                    (_tl133122133197_
                     (let () (declare (not safe)) (##cdr _e133124133192_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133123133195_))
                    (let ((_e133127133200_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133123133195_))))
                      (let ((_hd133126133203_
                             (let ()
                               (declare (not safe))
                               (##car _e133127133200_)))
                            (_tl133125133205_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133127133200_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133126133203_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133126133203_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133125133205_))
                                    (let ((_e133130133208_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133125133205_))))
                                      (let ((_hd133129133211_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133130133208_)))
                                            (_tl133128133213_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133130133208_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133129133211_))
                                            (let ((_e133133133216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133129133211_))))
                                              (let ((_hd133132133219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133133133216_)))
                                                    (_tl133131133221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133133133216_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133132133219_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133132133219_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133131133221_))
                                                            (let ((_e133136133224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133131133221_))))
                      (let ((_hd133135133227_
                             (let ()
                               (declare (not safe))
                               (##car _e133136133224_)))
                            (_tl133134133229_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133136133224_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133134133229_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133128133213_))
                                (let ((_e133139133232_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133128133213_))))
                                  (let ((_hd133138133235_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133139133232_)))
                                        (_tl133137133237_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133139133232_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133138133235_))
                                        (let ((_e133142133240_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133138133235_))))
                                          (let ((_hd133141133243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133142133240_)))
                                                (_tl133140133245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133142133240_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133141133243_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133141133243_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133140133245_))
                                                        (let ((_e133145133248_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133140133245_))))
                  (let ((_hd133144133251_
                         (let () (declare (not safe)) (##car _e133145133248_)))
                        (_tl133143133253_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133145133248_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133143133253_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133137133237_))
                            (let ((_e133148133256_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133137133237_))))
                              (let ((_hd133147133259_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133148133256_)))
                                    (_tl133146133261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133148133256_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133147133259_))
                                    (let ((_e133151133264_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133147133259_))))
                                      (let ((_hd133150133267_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133151133264_)))
                                            (_tl133149133269_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133151133264_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133150133267_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133150133267_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133149133269_))
                                                    (let ((_e133154133272_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133149133269_))))
                                                      (let ((_hd133153133275_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133154133272_)))
                    (_tl133152133277_
                     (let () (declare (not safe)) (##cdr _e133154133272_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133152133277_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133146133261_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133146133261_))
                                  '1)
                            (let ((_g135422_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133146133261_
                                      '1))))
                              (begin
                                (let ((_g135423_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135422_)
                                             (##vector-length _g135422_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135423_ 2)))
                                      (error "Context expects 2 values"
                                             _g135423_)))
                                (let ((_target133155133280_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135422_ 0)))
                                      (_tl133157133282_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135422_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133157133282_))
                                      (let ((_e133166133285_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133157133282_))))
                                        (let ((_hd133165133288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133166133285_)))
                                              (_tl133164133290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133166133285_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133164133290_))
                                              (letrec ((_loop133158133293_
                                                        (lambda (_hd133156133296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133162133298_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133156133296_))
                      (let ((_e133159133301_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133156133296_))))
                        (let ((_lp-hd133160133304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133159133301_)))
                              (_lp-tl133161133306_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133159133301_))))
                          (let ((__tmp135495
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133160133304_
                                         _kw-ref133162133298_))))
                            (declare (not safe))
                            (_loop133158133293_
                             _lp-tl133161133306_
                             __tmp135495))))
                      (let ((_kw-ref133163133309_
                             (reverse _kw-ref133162133298_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133122133197_))
                            ((lambda (_L133312_
                                      _L133313_
                                      _L133314_
                                      _L133315_
                                      _L133316_)
                               (let* ((_kw-count133367_
                                       (length (let ((__tmp135424
                                                      (lambda (_g133359133362_
                                                               _g133360133364_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133359133362_
                                                                _g133360133364_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135424
                                                         '()
                                                         _L133313_))))
                                      (_self-index133369_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133367_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133068_))
                                     (let* ((_g133372133386_
                                             (lambda (_g133373133383_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133373133383_))))
                                            (_g133371133499_
                                             (lambda (_g133373133389_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133373133389_))
                                                   (let ((_e133378133391_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133373133389_))))
                                                     (let ((_hd133377133394_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133378133391_)))
                                                           (_tl133376133396_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133378133391_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133376133396_))
                                                           (let ((_e133381133399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133376133396_))))
                     (let ((_hd133380133402_
                            (let ()
                              (declare (not safe))
                              (##car _e133381133399_)))
                           (_tl133379133404_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133381133399_))))
                       ((lambda (_L133407_ _L133408_)
                          (let ((_self133424_
                                 (list-ref _L133408_ _self-index133369_)))
                            (for-each
                             (lambda (_g133425133427_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133425133427_
                                  _self133424_
                                  _method-calls131414_
                                  _slot-refs131415_)))
                             _L133407_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131418_))
                                _stx131322_
                                (let* ((_specializer-id133436_
                                        (let* ((_id133430_
                                                (let ((__tmp135468
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131395_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135468
                                                   '"::specialize")))
                                               (_specializer-id133433_
                                                (let ((__tmp135469
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131322_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133430_
                                                   __tmp135469))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133433_))
                                          _specializer-id133433_))
                                       (_$klass133438_
                                        (let ((__tmp135470 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135470)))
                                       (_$method-table133440_
                                        (let ((__tmp135471
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135471)))
                                       (_methods133442_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131414_)))
                                       (_$methods133446_
                                        (map (lambda (_id133444_)
                                               (let ((__tmp135472
                                                      (gensym _id133444_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135472)))
                                             _methods133442_))
                                       (_g135473_
                                        (for-each
                                         (lambda (_g133447133450_
                                                  _g133448133452_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131414_
                                              _g133447133450_
                                              _g133448133452_)))
                                         _methods133442_
                                         _$methods133446_))
                                       (_methods-bind133463_
                                        (map (lambda (_g133455133458_
                                                      _g133456133460_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131324_
                                                  _$klass133438_
                                                  _$method-table133440_
                                                  _g133455133458_
                                                  _g133456133460_)))
                                             _methods133442_
                                             _$methods133446_))
                                       (_slots133465_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131415_)))
                                       (_$slots133469_
                                        (map (lambda (_id133467_)
                                               (let ((__tmp135474
                                                      (gensym _id133467_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135474)))
                                             _slots133465_))
                                       (_g135475_
                                        (for-each
                                         (lambda (_g133470133473_
                                                  _g133471133475_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131415_
                                              _g133470133473_
                                              _g133471133475_)))
                                         _slots133465_
                                         _$slots133469_))
                                       (_slots-bind133486_
                                        (map (lambda (_g133478133481_
                                                      _g133479133483_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131325_
                                                  _$klass133438_
                                                  _g133478133481_
                                                  _g133479133483_)))
                                             _slots133465_
                                             _$slots133469_))
                                       (_specializer-impl133494_
                                        (let* ((_specializer-body133492_
                                                (map (lambda (_g133487133489_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133487133489_
                                                          _self133424_
                                                          _$klass133438_
                                                          _method-calls131414_
                                                          _slot-refs131415_)))
                                                     _L133407_))
                                               (__tmp135476
                                                (let ((__tmp135477
                                                       (let ((__tmp135479
                                                              (let ((__tmp135480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135492
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133070_ '())))
                                   (__tmp135481
                                    (let ((__tmp135482
                                           (let ((__tmp135483
                                                  (let ((__tmp135485
                                                         (let ((__tmp135486
                                                                (let ((__tmp135491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133069_ '())))
                              (__tmp135487
                               (let ((__tmp135488
                                      (let ((__tmp135489
                                             (let ((__tmp135490
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133408_
                                                            _specializer-body133492_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135490))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135489
                                         _L133068_))))
                                 (declare (not safe))
                                 (cons __tmp135488 '()))))
                          (declare (not safe))
                          (cons __tmp135491 __tmp135487))))
                   (declare (not safe))
                   (cons __tmp135486 '())))
                (__tmp135484
                 (let () (declare (not safe)) (cons _L133067_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135485
                                                          __tmp135484))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135483))))
                                      (declare (not safe))
                                      (cons __tmp135482 '()))))
                               (declare (not safe))
                               (cons __tmp135492 __tmp135481))))
                        (declare (not safe))
                        (cons __tmp135480 '())))
                     (__tmp135478
                      (let () (declare (not safe)) (cons _L133066_ '()))))
                 (declare (not safe))
                 (cons __tmp135479 __tmp135478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135477))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135476
                                           _stx131322_)))
                                       (_specializer-impl133496_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131326_
                                           _$klass133438_
                                           _$method-table133440_
                                           _methods-bind133463_
                                           _slots-bind133486_
                                           _specializer-impl133494_))))
                                  (let ((__tmp135494
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131395_)))
                                        (__tmp135493
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133436_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135494
                                     '" => "
                                     __tmp135493))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131327_
                                     _L131395_
                                     _specializer-id133436_
                                     _specializer-impl133496_))))))
                        _tl133379133404_
                        _hd133380133402_)))
                   (let ()
                     (declare (not safe))
                     (_g133372133386_ _g133373133389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133372133386_
                                                      _g133373133389_))))))
                                       (declare (not safe))
                                       (_g133371133499_ _L133068_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133068_))
                                         (let* ((_g133502133532_
                                                 (lambda (_g133503133529_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133503133529_))))
                                                (_g133501134074_
                                                 (lambda (_g133503133535_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133503133535_))
                                                       (let ((_e133509133537_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133503133535_))))
                 (let ((_hd133508133540_
                        (let () (declare (not safe)) (##car _e133509133537_)))
                       (_tl133507133542_
                        (let () (declare (not safe)) (##cdr _e133509133537_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133507133542_))
                       (let ((_e133512133545_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133507133542_))))
                         (let ((_hd133511133548_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133512133545_)))
                               (_tl133510133550_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133512133545_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133511133548_))
                               (let ((_e133515133553_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133511133548_))))
                                 (let ((_hd133514133556_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133515133553_)))
                                       (_tl133513133558_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133515133553_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133514133556_))
                                       (let ((_e133518133561_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133514133556_))))
                                         (let ((_hd133517133564_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133518133561_)))
                                               (_tl133516133566_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133518133561_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133517133564_))
                                               (let ((_e133521133569_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133517133564_))))
                                                 (let ((_hd133520133572_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133521133569_)))
                                                       (_tl133519133574_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133521133569_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133519133574_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133516133566_))
                                                           (let ((_e133524133577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133516133566_))))
                     (let ((_hd133523133580_
                            (let ()
                              (declare (not safe))
                              (##car _e133524133577_)))
                           (_tl133522133582_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133524133577_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133522133582_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133513133558_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133510133550_))
                                   (let ((_e133527133585_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133510133550_))))
                                     (let ((_hd133526133588_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133527133585_)))
                                           (_tl133525133590_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133527133585_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133525133590_))
                                           ((lambda (_L133593_
                                                     _L133594_
                                                     _L133595_)
                                              (let* ((_g133618133632_
                                                      (lambda (_g133619133629_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133619133629_))))
                                                     (_g133617133673_
                                                      (lambda (_g133619133635_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133619133635_))
                                                            (let ((_e133624133637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133619133635_))))
                      (let ((_hd133623133640_
                             (let ()
                               (declare (not safe))
                               (##car _e133624133637_)))
                            (_tl133622133642_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133624133637_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133622133642_))
                            (let ((_e133627133645_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133622133642_))))
                              (let ((_hd133626133648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133627133645_)))
                                    (_tl133625133650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133627133645_))))
                                ((lambda (_L133653_ _L133654_)
                                   (let ((_self133667_
                                          (list-ref
                                           _L133654_
                                           _self-index133369_)))
                                     (for-each
                                      (lambda (_g133668133670_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133668133670_
                                           _self133667_
                                           _method-calls131414_
                                           _slot-refs131415_)))
                                      _L133653_)))
                                 _tl133625133650_
                                 _hd133626133648_)))
                            (let ()
                              (declare (not safe))
                              (_g133618133632_ _g133619133635_)))))
                    (let ()
                      (declare (not safe))
                      (_g133618133632_ _g133619133635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133617133673_ _L133594_))
                                              (let* ((_g133676133695_
                                                      (lambda (_g133677133692_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133677133692_))))
                                                     (_g133675133800_
                                                      (lambda (_g133677133698_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133677133698_))
                                                            (let ((_e133681133700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133677133698_))))
                      (let ((_hd133680133703_
                             (let ()
                               (declare (not safe))
                               (##car _e133681133700_)))
                            (_tl133679133705_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133681133700_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133679133705_))
                            (let ((_g135425_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133679133705_
                                      '0))))
                              (begin
                                (let ((_g135426_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135425_)
                                             (##vector-length _g135425_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135426_ 2)))
                                      (error "Context expects 2 values"
                                             _g135426_)))
                                (let ((_target133682133708_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135425_ 0)))
                                      (_tl133684133710_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135425_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133684133710_))
                                      (letrec ((_loop133685133713_
                                                (lambda (_hd133683133716_
                                                         _clause133689133718_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133683133716_))
                                                      (let ((_e133686133721_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133683133716_))))
                (let ((_lp-hd133687133724_
                       (let () (declare (not safe)) (##car _e133686133721_)))
                      (_lp-tl133688133726_
                       (let () (declare (not safe)) (##cdr _e133686133721_))))
                  (let ((__tmp135428
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133687133724_ _clause133689133718_))))
                    (declare (not safe))
                    (_loop133685133713_ _lp-tl133688133726_ __tmp135428))))
              (let ((_clause133690133729_ (reverse _clause133689133718_)))
                ((lambda (_L133732_)
                   (for-each
                    (lambda (_clause133745_)
                      (let* ((_g133747133758_
                              (lambda (_g133748133755_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133748133755_))))
                             (_g133746133790_
                              (lambda (_g133748133761_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133748133761_))
                                    (let ((_e133753133763_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133748133761_))))
                                      (let ((_hd133752133766_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133753133763_)))
                                            (_tl133751133768_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133753133763_))))
                                        ((lambda (_L133771_ _L133772_)
                                           (let ((_self133784_
                                                  (list-ref
                                                   _L133772_
                                                   _self-index133369_)))
                                             (for-each
                                              (lambda (_g133785133787_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133785133787_
                                                   _self133784_
                                                   _method-calls131414_
                                                   _slot-refs131415_)))
                                              _L133771_)))
                                         _tl133751133768_
                                         _hd133752133766_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133747133758_ _g133748133761_))))))
                        (declare (not safe))
                        (_g133746133790_ _clause133745_)))
                    (let ((__tmp135427
                           (lambda (_g133792133795_ _g133793133797_)
                             (let ()
                               (declare (not safe))
                               (cons _g133792133795_ _g133793133797_)))))
                      (declare (not safe))
                      (foldr1 __tmp135427 '() _L133732_))))
                 _clause133690133729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133685133713_
                                           _target133682133708_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133676133695_ _g133677133698_))))))
                            (let ()
                              (declare (not safe))
                              (_g133676133695_ _g133677133698_)))))
                    (let ()
                      (declare (not safe))
                      (_g133676133695_ _g133677133698_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133675133800_ _L133593_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131418_))
                                                  _stx131322_
                                                  (let* ((_specializer-id133809_
                                                          (let* ((_id133803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135429
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131395_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135429 '"::specialize")))
                         (_specializer-id133806_
                          (let ((__tmp135430
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131322_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133803_ __tmp135430))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133806_))
                    _specializer-id133806_))
                 (_$klass133811_
                  (let ((__tmp135431 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135431)))
                 (_$method-table133813_
                  (let ((__tmp135432 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135432)))
                 (_methods133815_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131414_)))
                 (_$methods133819_
                  (map (lambda (_id133817_)
                         (let ((__tmp135433 (gensym _id133817_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135433)))
                       _methods133815_))
                 (_g135434_
                  (for-each
                   (lambda (_g133820133823_ _g133821133825_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131414_
                        _g133820133823_
                        _g133821133825_)))
                   _methods133815_
                   _$methods133819_))
                 (_methods-bind133836_
                  (map (lambda (_g133828133831_ _g133829133833_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131324_
                            _$klass133811_
                            _$method-table133813_
                            _g133828133831_
                            _g133829133833_)))
                       _methods133815_
                       _$methods133819_))
                 (_slots133838_
                  (let () (declare (not safe)) (hash-keys _slot-refs131415_)))
                 (_$slots133842_
                  (map (lambda (_id133840_)
                         (let ((__tmp135435 (gensym _id133840_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135435)))
                       _slots133838_))
                 (_g135436_
                  (for-each
                   (lambda (_g133843133846_ _g133844133848_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131415_
                        _g133843133846_
                        _g133844133848_)))
                   _slots133838_
                   _$slots133842_))
                 (_slots-bind133859_
                  (map (lambda (_g133851133854_ _g133852133856_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131325_
                            _$klass133811_
                            _g133851133854_
                            _g133852133856_)))
                       _slots133838_
                       _$slots133842_))
                 (_specializer-lambda-expr133932_
                  (let* ((_g133861133875_
                          (lambda (_g133862133872_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133862133872_))))
                         (_g133860133929_
                          (lambda (_g133862133878_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133862133878_))
                                (let ((_e133867133880_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133862133878_))))
                                  (let ((_hd133866133883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133867133880_)))
                                        (_tl133865133885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133867133880_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133865133885_))
                                        (let ((_e133870133888_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133865133885_))))
                                          (let ((_hd133869133891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133870133888_)))
                                                (_tl133868133893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133870133888_))))
                                            ((lambda (_L133896_ _L133897_)
                                               (let* ((_self133920_
                                                       (list-ref
                                                        _L133897_
                                                        _self-index133369_))
                                                      (_body133926_
                                                       (map (lambda (_g133921133923_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133921133923_
                         _self133920_
                         _$klass133811_
                         _method-calls131414_
                         _slot-refs131415_)))
                    _L133896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135437
                                                        (let ((__tmp135438
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133897_ _body133926_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135437
                                                    _L133594_))))
                                             _tl133868133893_
                                             _hd133869133891_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133861133875_ _g133862133878_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133861133875_ _g133862133878_))))))
                    (declare (not safe))
                    (_g133860133929_ _L133594_)))
                 (_specializer-case-lambda-expr134067_
                  (let* ((_g133934133953_
                          (lambda (_g133935133950_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133935133950_))))
                         (_g133933134064_
                          (lambda (_g133935133956_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133935133956_))
                                (let ((_e133939133958_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133935133956_))))
                                  (let ((_hd133938133961_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133939133958_)))
                                        (_tl133937133963_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133939133958_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133937133963_))
                                        (let ((_g135439_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133937133963_
                                                  '0))))
                                          (begin
                                            (let ((_g135440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135439_)
                                                         (##vector-length
                                                          _g135439_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135440_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135440_)))
                                            (let ((_target133940133966_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135439_
                                                      0)))
                                                  (_tl133942133968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135439_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133942133968_))
                                                  (letrec ((_loop133943133971_
                                                            (lambda (_hd133941133974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133947133976_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133941133974_))
                          (let ((_e133944133979_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133941133974_))))
                            (let ((_lp-hd133945133982_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133944133979_)))
                                  (_lp-tl133946133984_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133944133979_))))
                              (let ((__tmp135443
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133945133982_
                                             _clause133947133976_))))
                                (declare (not safe))
                                (_loop133943133971_
                                 _lp-tl133946133984_
                                 __tmp135443))))
                          (let ((_clause133948133987_
                                 (reverse _clause133947133976_)))
                            ((lambda (_L133990_)
                               (let* ((_clauses134062_
                                       (map (lambda (_clause134004_)
                                              (let* ((_g134006134017_
                                                      (lambda (_g134007134014_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134007134014_))))
                                                     (_g134005134052_
                                                      (lambda (_g134007134020_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134007134020_))
                                                            (let ((_e134012134022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134007134020_))))
                      (let ((_hd134011134025_
                             (let ()
                               (declare (not safe))
                               (##car _e134012134022_)))
                            (_tl134010134027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134012134022_))))
                        ((lambda (_L134030_ _L134031_)
                           (let* ((_self134043_
                                   (list-ref _L134031_ _self-index133369_))
                                  (_body134049_
                                   (map (lambda (_g134044134046_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134044134046_
                                             _self134043_
                                             _$klass133811_
                                             _method-calls131414_
                                             _slot-refs131415_)))
                                        _L134030_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134031_ _body134049_))))
                         _tl134010134027_
                         _hd134011134025_)))
                    (let ()
                      (declare (not safe))
                      (_g134006134017_ _g134007134020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134005134052_
                                                 _clause134004_)))
                                            (let ((__tmp135441
                                                   (lambda (_g134054134057_
                                                            _g134055134059_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134054134057_
                                                             _g134055134059_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135441
                                                      '()
                                                      _L133990_))))
                                      (__tmp135442
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134062_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135442
                                  _L133593_)))
                             _clause133948133987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133943133971_
                                                       _target133940133966_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133934133953_
                                                     _g133935133956_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133934133953_ _g133935133956_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133934133953_ _g133935133956_))))))
                    (declare (not safe))
                    (_g133933134064_ _L133593_)))
                 (_specializer-impl134069_
                  (let ((__tmp135444
                         (let ((__tmp135445
                                (let ((__tmp135447
                                       (let ((__tmp135448
                                              (let ((__tmp135465
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133070_ '())))
                                                    (__tmp135449
                                                     (let ((__tmp135450
                                                            (let ((__tmp135451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135453
                                  (let ((__tmp135454
                                         (let ((__tmp135464
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133069_ '())))
                                               (__tmp135455
                                                (let ((__tmp135456
                                                       (let ((__tmp135457
                                                              (let ((__tmp135458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135460
                                    (let ((__tmp135461
                                           (let ((__tmp135463
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133595_ '())))
                                                 (__tmp135462
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133932_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135463 __tmp135462))))
                                      (declare (not safe))
                                      (cons __tmp135461 '())))
                                   (__tmp135459
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134067_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135460 __tmp135459))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135458))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135457 _stx131322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135456 '()))))
                                           (declare (not safe))
                                           (cons __tmp135464 __tmp135455))))
                                    (declare (not safe))
                                    (cons __tmp135454 '())))
                                 (__tmp135452
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133067_ '()))))
                             (declare (not safe))
                             (cons __tmp135453 __tmp135452))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135451))))
               (declare (not safe))
               (cons __tmp135450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135465
                                                      __tmp135449))))
                                         (declare (not safe))
                                         (cons __tmp135448 '())))
                                      (__tmp135446
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133066_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135447 __tmp135446))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135445))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135444 _stx131322_)))
                 (_specializer-impl134071_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131326_
                     _$klass133811_
                     _$method-table133813_
                     _methods-bind133836_
                     _slots-bind133859_
                     _specializer-impl134069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135467
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131395_)))
                                                          (__tmp135466
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133809_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135467
                                                       '" => "
                                                       __tmp135466))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131327_
                                                       _L131395_
                                                       _specializer-id133809_
                                                       _specializer-impl134071_)))))
                                            _hd133526133588_
                                            _hd133523133580_
                                            _hd133520133572_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133502133532_
                                              _g133503133535_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133502133532_ _g133503133535_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133502133532_ _g133503133535_)))
                           (let ()
                             (declare (not safe))
                             (_g133502133532_ _g133503133535_)))))
                   (let ()
                     (declare (not safe))
                     (_g133502133532_ _g133503133535_)))
               (let ()
                 (declare (not safe))
                 (_g133502133532_ _g133503133535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133502133532_
                                                  _g133503133535_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133502133532_ _g133503133535_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133502133532_ _g133503133535_)))))
                       (let ()
                         (declare (not safe))
                         (_g133502133532_ _g133503133535_)))))
               (let ()
                 (declare (not safe))
                 (_g133502133532_ _g133503133535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133501134074_ _L133068_))
                                         _stx131322_))))
                             _hd133165133288_
                             _kw-ref133163133309_
                             _hd133153133275_
                             _hd133144133251_
                             _hd133135133227_)
                            (let ()
                              (declare (not safe))
                              (_g133109133171_ _g133110133174_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133158133293_
                                                   _target133155133280_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133109133171_
                                                 _g133110133174_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133109133171_ _g133110133174_))))))
                            (let ()
                              (declare (not safe))
                              (_g133109133171_ _g133110133174_)))
                        (let ()
                          (declare (not safe))
                          (_g133109133171_ _g133110133174_)))
                    (let ()
                      (declare (not safe))
                      (_g133109133171_ _g133110133174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133109133171_
                                                       _g133110133174_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133109133171_
                                                   _g133110133174_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133109133171_
                                               _g133110133174_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133109133171_ _g133110133174_)))))
                            (let ()
                              (declare (not safe))
                              (_g133109133171_ _g133110133174_)))
                        (let ()
                          (declare (not safe))
                          (_g133109133171_ _g133110133174_)))))
                (let ()
                  (declare (not safe))
                  (_g133109133171_ _g133110133174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133109133171_
                                                       _g133110133174_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133109133171_
                                                   _g133110133174_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133109133171_ _g133110133174_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133109133171_ _g133110133174_)))
                            (let ()
                              (declare (not safe))
                              (_g133109133171_ _g133110133174_)))))
                    (let ()
                      (declare (not safe))
                      (_g133109133171_ _g133110133174_)))
                (let ()
                  (declare (not safe))
                  (_g133109133171_ _g133110133174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133109133171_
                                                       _g133110133174_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133109133171_
                                               _g133110133174_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133109133171_ _g133110133174_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133109133171_ _g133110133174_)))
                            (let ()
                              (declare (not safe))
                              (_g133109133171_ _g133110133174_)))))
                    (let ()
                      (declare (not safe))
                      (_g133109133171_ _g133110133174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133109133171_
                                                       _g133110133174_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133109133171_
                                               _g133110133174_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133109133171_ _g133110133174_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133109133171_ _g133110133174_)))))
                            (let ()
                              (declare (not safe))
                              (_g133109133171_ _g133110133174_))))))
                (declare (not safe))
                (_g133108134077_ _L133067_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132943133061_
                                                    _hd132940133053_
                                                    _hd132937133045_
                                                    _hd132934133037_
                                                    _hd132916132989_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132896132949_
                                                      _g132897132952_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132896132949_
                                              _g132897132952_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132896132949_ _g132897132952_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132896132949_ _g132897132952_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132896132949_ _g132897132952_)))))
                       (let ()
                         (declare (not safe))
                         (_g132896132949_ _g132897132952_)))
                   (let ()
                     (declare (not safe))
                     (_g132896132949_ _g132897132952_)))
               (let ()
                 (declare (not safe))
                 (_g132896132949_ _g132897132952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132896132949_
                                                  _g132897132952_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132896132949_
                                              _g132897132952_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132896132949_ _g132897132952_)))))
                           (let ()
                             (declare (not safe))
                             (_g132896132949_ _g132897132952_)))))
                   (let ()
                     (declare (not safe))
                     (_g132896132949_ _g132897132952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132896132949_
                                                      _g132897132952_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132896132949_
                                                  _g132897132952_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132896132949_
                                              _g132897132952_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132896132949_ _g132897132952_)))))
                           (let ()
                             (declare (not safe))
                             (_g132896132949_ _g132897132952_)))
                       (let ()
                         (declare (not safe))
                         (_g132896132949_ _g132897132952_)))))
               (let ()
                 (declare (not safe))
                 (_g132896132949_ _g132897132952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132896132949_
                                                  _g132897132952_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132896132949_ _g132897132952_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132896132949_ _g132897132952_)))
                           (let ()
                             (declare (not safe))
                             (_g132896132949_ _g132897132952_)))
                       (let ()
                         (declare (not safe))
                         (_g132896132949_ _g132897132952_)))))
               (let ()
                 (declare (not safe))
                 (_g132896132949_ _g132897132952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132895134080_ _L131394_))
                                         _stx131322_))))))))
                  (___kont134260134261_ (lambda () _stx131322_)))
              (let ((___match134289134290_
                     (lambda (_e131336131362_
                              _hd131335131365_
                              _tl131334131367_
                              _e131339131370_
                              _hd131338131373_
                              _tl131337131375_
                              _e131342131378_
                              _hd131341131381_
                              _tl131340131383_
                              _e131345131386_
                              _hd131344131389_
                              _tl131343131391_)
                       (let ((_L131394_ _hd131344131389_)
                             (_L131395_ _hd131341131381_))
                         (if (let ((__tmp135556
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131395_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135556))
                             (___kont134258134259_ _L131394_ _L131395_)
                             (___kont134260134261_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134256134257_))
                    (let ((_e131336131362_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134256134257_))))
                      (let ((_tl131334131367_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131336131362_)))
                            (_hd131335131365_
                             (let ()
                               (declare (not safe))
                               (##car _e131336131362_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131334131367_))
                            (let ((_e131339131370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131334131367_))))
                              (let ((_tl131337131375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131339131370_)))
                                    (_hd131338131373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131339131370_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131338131373_))
                                    (let ((_e131342131378_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131338131373_))))
                                      (let ((_tl131340131383_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131342131378_)))
                                            (_hd131341131381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131342131378_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131340131383_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131337131375_))
                                                (let ((_e131345131386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131337131375_))))
                                                  (let ((_tl131343131391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131345131386_)))
                                                        (_hd131344131389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131345131386_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131343131391_))
                                                        (___match134289134290_
                                                         _e131336131362_
                                                         _hd131335131365_
                                                         _tl131334131367_
                                                         _e131339131370_
                                                         _hd131338131373_
                                                         _tl131337131375_
                                                         _e131342131378_
                                                         _hd131341131381_
                                                         _tl131340131383_
                                                         _e131345131386_
                                                         _hd131344131389_
                                                         _tl131343131391_)
                                                        (___kont134260134261_))))
                                                (___kont134260134261_))
                                            (___kont134260134261_))))
                                    (___kont134260134261_))))
                            (___kont134260134261_))))
                    (___kont134260134261_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx130281_ _self130282_ _methods130283_ _slots130284_)
        (let* ((___stx134292134293_ _stx130281_)
               (_g130292130514_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134292134293_)))))
          (let ((___kont134294134295_
                 (lambda (_L131271_ _L131272_ _L131273_ _L131274_)
                   (let ((__tmp135557
                          (let () (declare (not safe)) (gx#stx-e _L131272_))))
                     (declare (not safe))
                     (hash-put! _methods130283_ __tmp135557 '#t))
                   (for-each
                    (lambda (_g131307131309_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131307131309_
                         _self130282_
                         _methods130283_
                         _slots130284_)))
                    (let ((__tmp135558
                           (lambda (_g131311131314_ _g131312131316_)
                             (let ()
                               (declare (not safe))
                               (cons _g131311131314_ _g131312131316_)))))
                      (declare (not safe))
                      (foldr1 __tmp135558 '() _L131271_)))))
                (___kont134298134299_
                 (lambda (_L131106_ _L131107_ _L131108_ _L131109_ _L131110_)
                   (let ((__tmp135559
                          (let () (declare (not safe)) (gx#stx-e _L131107_))))
                     (declare (not safe))
                     (hash-put! _methods130283_ __tmp135559 '#t))
                   (for-each
                    (lambda (_g131150131152_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131150131152_
                         _self130282_
                         _methods130283_
                         _slots130284_)))
                    (let ((__tmp135560
                           (lambda (_g131154131157_ _g131155131159_)
                             (let ()
                               (declare (not safe))
                               (cons _g131154131157_ _g131155131159_)))))
                      (declare (not safe))
                      (foldr1 __tmp135560 '() _L131106_)))))
                (___kont134302134303_
                 (lambda (_L130939_ _L130940_ _L130941_)
                   (let ((__tmp135561
                          (let () (declare (not safe)) (gx#stx-e _L130939_))))
                     (declare (not safe))
                     (hash-put! _slots130284_ __tmp135561 '#t))))
                (___kont134304134305_
                 (lambda (_L130816_ _L130817_ _L130818_ _L130819_)
                   (let ((__tmp135562
                          (let () (declare (not safe)) (gx#stx-e _L130817_))))
                     (declare (not safe))
                     (hash-put! _slots130284_ __tmp135562 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130816_
                      _self130282_
                      _methods130283_
                      _slots130284_))))
                (___kont134306134307_
                 (lambda (_L130690_ _L130691_)
                   (let* ((_accessor130713_
                           (let ((__tmp135563
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130691_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135563)))
                          (_klass130715_
                           (let ((__tmp135564
                                  (##structure-ref
                                   _accessor130713_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130281_
                              __tmp135564)))
                          (_slot130717_
                           (##structure-ref
                            _accessor130713_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135566
                                     (##structure-ref
                                      _accessor130713_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135566))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130715_
                                     _slot130717_))
                                  (##structure-ref
                                   _klass130715_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135565
                                (##structure-ref
                                 _accessor130713_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots130284_ __tmp135565 '#t))))))
                (___kont134308134309_
                 (lambda (_L130590_ _L130591_ _L130592_)
                   (let* ((_mutator130619_
                           (let ((__tmp135567
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130592_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135567)))
                          (_klass130621_
                           (let ((__tmp135568
                                  (##structure-ref
                                   _mutator130619_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130281_
                              __tmp135568)))
                          (_slot130623_
                           (##structure-ref
                            _mutator130619_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135569
                                     (##structure-ref
                                      _mutator130619_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135569))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130621_
                                     _slot130623_))
                                  (##structure-ref
                                   _klass130621_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots130284_ _slot130623_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130590_
                        _self130282_
                        _methods130283_
                        _slots130284_)))))
                (___kont134310134311_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx130281_
                      _self130282_
                      _methods130283_
                      _slots130284_)))))
            (let* ((___match134791134792_
                    (lambda (_e130488130526_
                             _hd130487130529_
                             _tl130486130531_
                             _e130491130534_
                             _hd130490130537_
                             _tl130489130539_
                             _e130494130542_
                             _hd130493130545_
                             _tl130492130547_
                             _e130497130550_
                             _hd130496130553_
                             _tl130495130555_
                             _e130500130558_
                             _hd130499130561_
                             _tl130498130563_
                             _e130503130566_
                             _hd130502130569_
                             _tl130501130571_
                             _e130506130574_
                             _hd130505130577_
                             _tl130504130579_
                             _e130509130582_
                             _hd130508130585_
                             _tl130507130587_)
                      (let ((_L130590_ _hd130508130585_)
                            (_L130591_ _hd130505130577_)
                            (_L130592_ _hd130496130553_))
                        (if (and (let ((__tmp135570
                                        (let ((__tmp135571
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130592_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135571))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135570
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130591_
                                    _self130282_)))
                            (___kont134308134309_
                             _L130590_
                             _L130591_
                             _L130592_)
                            (___kont134310134311_)))))
                   (___match134789134790_
                    (lambda (_e130488130526_
                             _hd130487130529_
                             _tl130486130531_
                             _e130491130534_
                             _hd130490130537_
                             _tl130489130539_
                             _e130494130542_
                             _hd130493130545_
                             _tl130492130547_
                             _e130497130550_
                             _hd130496130553_
                             _tl130495130555_
                             _e130500130558_
                             _hd130499130561_
                             _tl130498130563_
                             _e130503130566_
                             _hd130502130569_
                             _tl130501130571_
                             _e130506130574_
                             _hd130505130577_
                             _tl130504130579_
                             _e130509130582_
                             _hd130508130585_
                             _tl130507130587_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130507130587_))
                          (___match134791134792_
                           _e130488130526_
                           _hd130487130529_
                           _tl130486130531_
                           _e130491130534_
                           _hd130490130537_
                           _tl130489130539_
                           _e130494130542_
                           _hd130493130545_
                           _tl130492130547_
                           _e130497130550_
                           _hd130496130553_
                           _tl130495130555_
                           _e130500130558_
                           _hd130499130561_
                           _tl130498130563_
                           _e130503130566_
                           _hd130502130569_
                           _tl130501130571_
                           _e130506130574_
                           _hd130505130577_
                           _tl130504130579_
                           _e130509130582_
                           _hd130508130585_
                           _tl130507130587_)
                          (___kont134310134311_))))
                   (___match134783134784_
                    (lambda (_e130488130526_
                             _hd130487130529_
                             _tl130486130531_
                             _e130491130534_
                             _hd130490130537_
                             _tl130489130539_
                             _e130494130542_
                             _hd130493130545_
                             _tl130492130547_
                             _e130497130550_
                             _hd130496130553_
                             _tl130495130555_
                             _e130500130558_
                             _hd130499130561_
                             _tl130498130563_
                             _e130503130566_
                             _hd130502130569_
                             _tl130501130571_
                             _e130506130574_
                             _hd130505130577_
                             _tl130504130579_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130498130563_))
                          (let ((_e130509130582_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130498130563_))))
                            (let ((_tl130507130587_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130509130582_)))
                                  (_hd130508130585_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130509130582_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130507130587_))
                                  (___match134791134792_
                                   _e130488130526_
                                   _hd130487130529_
                                   _tl130486130531_
                                   _e130491130534_
                                   _hd130490130537_
                                   _tl130489130539_
                                   _e130494130542_
                                   _hd130493130545_
                                   _tl130492130547_
                                   _e130497130550_
                                   _hd130496130553_
                                   _tl130495130555_
                                   _e130500130558_
                                   _hd130499130561_
                                   _tl130498130563_
                                   _e130503130566_
                                   _hd130502130569_
                                   _tl130501130571_
                                   _e130506130574_
                                   _hd130505130577_
                                   _tl130504130579_
                                   _e130509130582_
                                   _hd130508130585_
                                   _tl130507130587_)
                                  (___kont134310134311_))))
                          (___kont134310134311_))))
                   (___match134729134730_
                    (lambda (_e130464130634_
                             _hd130463130637_
                             _tl130462130639_
                             _e130467130642_
                             _hd130466130645_
                             _tl130465130647_
                             _e130470130650_
                             _hd130469130653_
                             _tl130468130655_
                             _e130473130658_
                             _hd130472130661_
                             _tl130471130663_
                             _e130476130666_
                             _hd130475130669_
                             _tl130474130671_
                             _e130479130674_
                             _hd130478130677_
                             _tl130477130679_
                             _e130482130682_
                             _hd130481130685_
                             _tl130480130687_)
                      (let ((_L130690_ _hd130481130685_)
                            (_L130691_ _hd130472130661_))
                        (if (and (let ((__tmp135572
                                        (let ((__tmp135573
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130691_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135573))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135572
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130690_
                                    _self130282_)))
                            (___kont134306134307_ _L130690_ _L130691_)
                            (___kont134310134311_)))))
                   (___match134727134728_
                    (lambda (_e130464130634_
                             _hd130463130637_
                             _tl130462130639_
                             _e130467130642_
                             _hd130466130645_
                             _tl130465130647_
                             _e130470130650_
                             _hd130469130653_
                             _tl130468130655_
                             _e130473130658_
                             _hd130472130661_
                             _tl130471130663_
                             _e130476130666_
                             _hd130475130669_
                             _tl130474130671_
                             _e130479130674_
                             _hd130478130677_
                             _tl130477130679_
                             _e130482130682_
                             _hd130481130685_
                             _tl130480130687_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130474130671_))
                          (___match134729134730_
                           _e130464130634_
                           _hd130463130637_
                           _tl130462130639_
                           _e130467130642_
                           _hd130466130645_
                           _tl130465130647_
                           _e130470130650_
                           _hd130469130653_
                           _tl130468130655_
                           _e130473130658_
                           _hd130472130661_
                           _tl130471130663_
                           _e130476130666_
                           _hd130475130669_
                           _tl130474130671_
                           _e130479130674_
                           _hd130478130677_
                           _tl130477130679_
                           _e130482130682_
                           _hd130481130685_
                           _tl130480130687_)
                          (___match134783134784_
                           _e130464130634_
                           _hd130463130637_
                           _tl130462130639_
                           _e130467130642_
                           _hd130466130645_
                           _tl130465130647_
                           _e130470130650_
                           _hd130469130653_
                           _tl130468130655_
                           _e130473130658_
                           _hd130472130661_
                           _tl130471130663_
                           _e130476130666_
                           _hd130475130669_
                           _tl130474130671_
                           _e130479130674_
                           _hd130478130677_
                           _tl130477130679_
                           _e130482130682_
                           _hd130481130685_
                           _tl130480130687_))))
                   (___match134673134674_
                    (lambda (_e130429130728_
                             _hd130428130731_
                             _tl130427130733_
                             _e130432130736_
                             _hd130431130739_
                             _tl130430130741_
                             _e130435130744_
                             _hd130434130747_
                             _tl130433130749_
                             _e130438130752_
                             _hd130437130755_
                             _tl130436130757_
                             _e130441130760_
                             _hd130440130763_
                             _tl130439130765_
                             _e130444130768_
                             _hd130443130771_
                             _tl130442130773_
                             _e130447130776_
                             _hd130446130779_
                             _tl130445130781_
                             _e130450130784_
                             _hd130449130787_
                             _tl130448130789_
                             _e130453130792_
                             _hd130452130795_
                             _tl130451130797_
                             _e130456130800_
                             _hd130455130803_
                             _tl130454130805_
                             _e130459130808_
                             _hd130458130811_
                             _tl130457130813_)
                      (let ((_L130816_ _hd130458130811_)
                            (_L130817_ _hd130455130803_)
                            (_L130818_ _hd130446130779_)
                            (_L130819_ _hd130437130755_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130819_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130819_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130818_
                                    _self130282_)))
                            (___kont134304134305_
                             _L130816_
                             _L130817_
                             _L130818_
                             _L130819_)
                            (___kont134310134311_)))))
                   (___match134665134666_
                    (lambda (_e130429130728_
                             _hd130428130731_
                             _tl130427130733_
                             _e130432130736_
                             _hd130431130739_
                             _tl130430130741_
                             _e130435130744_
                             _hd130434130747_
                             _tl130433130749_
                             _e130438130752_
                             _hd130437130755_
                             _tl130436130757_
                             _e130441130760_
                             _hd130440130763_
                             _tl130439130765_
                             _e130444130768_
                             _hd130443130771_
                             _tl130442130773_
                             _e130447130776_
                             _hd130446130779_
                             _tl130445130781_
                             _e130450130784_
                             _hd130449130787_
                             _tl130448130789_
                             _e130453130792_
                             _hd130452130795_
                             _tl130451130797_
                             _e130456130800_
                             _hd130455130803_
                             _tl130454130805_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130448130789_))
                          (let ((_e130459130808_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130448130789_))))
                            (let ((_tl130457130813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130459130808_)))
                                  (_hd130458130811_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130459130808_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130457130813_))
                                  (___match134673134674_
                                   _e130429130728_
                                   _hd130428130731_
                                   _tl130427130733_
                                   _e130432130736_
                                   _hd130431130739_
                                   _tl130430130741_
                                   _e130435130744_
                                   _hd130434130747_
                                   _tl130433130749_
                                   _e130438130752_
                                   _hd130437130755_
                                   _tl130436130757_
                                   _e130441130760_
                                   _hd130440130763_
                                   _tl130439130765_
                                   _e130444130768_
                                   _hd130443130771_
                                   _tl130442130773_
                                   _e130447130776_
                                   _hd130446130779_
                                   _tl130445130781_
                                   _e130450130784_
                                   _hd130449130787_
                                   _tl130448130789_
                                   _e130453130792_
                                   _hd130452130795_
                                   _tl130451130797_
                                   _e130456130800_
                                   _hd130455130803_
                                   _tl130454130805_
                                   _e130459130808_
                                   _hd130458130811_
                                   _tl130457130813_)
                                  (___kont134310134311_))))
                          (___match134789134790_
                           _e130429130728_
                           _hd130428130731_
                           _tl130427130733_
                           _e130432130736_
                           _hd130431130739_
                           _tl130430130741_
                           _e130435130744_
                           _hd130434130747_
                           _tl130433130749_
                           _e130438130752_
                           _hd130437130755_
                           _tl130436130757_
                           _e130441130760_
                           _hd130440130763_
                           _tl130439130765_
                           _e130444130768_
                           _hd130443130771_
                           _tl130442130773_
                           _e130447130776_
                           _hd130446130779_
                           _tl130445130781_
                           _e130450130784_
                           _hd130449130787_
                           _tl130448130789_))))
                   (___match134587134588_
                    (lambda (_e130395130859_
                             _hd130394130862_
                             _tl130393130864_
                             _e130398130867_
                             _hd130397130870_
                             _tl130396130872_
                             _e130401130875_
                             _hd130400130878_
                             _tl130399130880_
                             _e130404130883_
                             _hd130403130886_
                             _tl130402130888_
                             _e130407130891_
                             _hd130406130894_
                             _tl130405130896_
                             _e130410130899_
                             _hd130409130902_
                             _tl130408130904_
                             _e130413130907_
                             _hd130412130910_
                             _tl130411130912_
                             _e130416130915_
                             _hd130415130918_
                             _tl130414130920_
                             _e130419130923_
                             _hd130418130926_
                             _tl130417130928_
                             _e130422130931_
                             _hd130421130934_
                             _tl130420130936_)
                      (let ((_L130939_ _hd130421130934_)
                            (_L130940_ _hd130412130910_)
                            (_L130941_ _hd130403130886_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130941_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130941_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130940_
                                    _self130282_)))
                            (___kont134302134303_
                             _L130939_
                             _L130940_
                             _L130941_)
                            (___match134791134792_
                             _e130395130859_
                             _hd130394130862_
                             _tl130393130864_
                             _e130398130867_
                             _hd130397130870_
                             _tl130396130872_
                             _e130401130875_
                             _hd130400130878_
                             _tl130399130880_
                             _e130404130883_
                             _hd130403130886_
                             _tl130402130888_
                             _e130407130891_
                             _hd130406130894_
                             _tl130405130896_
                             _e130410130899_
                             _hd130409130902_
                             _tl130408130904_
                             _e130413130907_
                             _hd130412130910_
                             _tl130411130912_
                             _e130416130915_
                             _hd130415130918_
                             _tl130414130920_)))))
                   (___match134585134586_
                    (lambda (_e130395130859_
                             _hd130394130862_
                             _tl130393130864_
                             _e130398130867_
                             _hd130397130870_
                             _tl130396130872_
                             _e130401130875_
                             _hd130400130878_
                             _tl130399130880_
                             _e130404130883_
                             _hd130403130886_
                             _tl130402130888_
                             _e130407130891_
                             _hd130406130894_
                             _tl130405130896_
                             _e130410130899_
                             _hd130409130902_
                             _tl130408130904_
                             _e130413130907_
                             _hd130412130910_
                             _tl130411130912_
                             _e130416130915_
                             _hd130415130918_
                             _tl130414130920_
                             _e130419130923_
                             _hd130418130926_
                             _tl130417130928_
                             _e130422130931_
                             _hd130421130934_
                             _tl130420130936_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130414130920_))
                          (___match134587134588_
                           _e130395130859_
                           _hd130394130862_
                           _tl130393130864_
                           _e130398130867_
                           _hd130397130870_
                           _tl130396130872_
                           _e130401130875_
                           _hd130400130878_
                           _tl130399130880_
                           _e130404130883_
                           _hd130403130886_
                           _tl130402130888_
                           _e130407130891_
                           _hd130406130894_
                           _tl130405130896_
                           _e130410130899_
                           _hd130409130902_
                           _tl130408130904_
                           _e130413130907_
                           _hd130412130910_
                           _tl130411130912_
                           _e130416130915_
                           _hd130415130918_
                           _tl130414130920_
                           _e130419130923_
                           _hd130418130926_
                           _tl130417130928_
                           _e130422130931_
                           _hd130421130934_
                           _tl130420130936_)
                          (___match134665134666_
                           _e130395130859_
                           _hd130394130862_
                           _tl130393130864_
                           _e130398130867_
                           _hd130397130870_
                           _tl130396130872_
                           _e130401130875_
                           _hd130400130878_
                           _tl130399130880_
                           _e130404130883_
                           _hd130403130886_
                           _tl130402130888_
                           _e130407130891_
                           _hd130406130894_
                           _tl130405130896_
                           _e130410130899_
                           _hd130409130902_
                           _tl130408130904_
                           _e130413130907_
                           _hd130412130910_
                           _tl130411130912_
                           _e130416130915_
                           _hd130415130918_
                           _tl130414130920_
                           _e130419130923_
                           _hd130418130926_
                           _tl130417130928_
                           _e130422130931_
                           _hd130421130934_
                           _tl130420130936_))))
                   (___match134575134576_
                    (lambda (_e130395130859_
                             _hd130394130862_
                             _tl130393130864_
                             _e130398130867_
                             _hd130397130870_
                             _tl130396130872_
                             _e130401130875_
                             _hd130400130878_
                             _tl130399130880_
                             _e130404130883_
                             _hd130403130886_
                             _tl130402130888_
                             _e130407130891_
                             _hd130406130894_
                             _tl130405130896_
                             _e130410130899_
                             _hd130409130902_
                             _tl130408130904_
                             _e130413130907_
                             _hd130412130910_
                             _tl130411130912_
                             _e130416130915_
                             _hd130415130918_
                             _tl130414130920_
                             _e130419130923_
                             _hd130418130926_
                             _tl130417130928_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130418130926_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130417130928_))
                              (let ((_e130422130931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130417130928_))))
                                (let ((_tl130420130936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130422130931_)))
                                      (_hd130421130934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130422130931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130420130936_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130414130920_))
                                          (___match134587134588_
                                           _e130395130859_
                                           _hd130394130862_
                                           _tl130393130864_
                                           _e130398130867_
                                           _hd130397130870_
                                           _tl130396130872_
                                           _e130401130875_
                                           _hd130400130878_
                                           _tl130399130880_
                                           _e130404130883_
                                           _hd130403130886_
                                           _tl130402130888_
                                           _e130407130891_
                                           _hd130406130894_
                                           _tl130405130896_
                                           _e130410130899_
                                           _hd130409130902_
                                           _tl130408130904_
                                           _e130413130907_
                                           _hd130412130910_
                                           _tl130411130912_
                                           _e130416130915_
                                           _hd130415130918_
                                           _tl130414130920_
                                           _e130419130923_
                                           _hd130418130926_
                                           _tl130417130928_
                                           _e130422130931_
                                           _hd130421130934_
                                           _tl130420130936_)
                                          (___match134665134666_
                                           _e130395130859_
                                           _hd130394130862_
                                           _tl130393130864_
                                           _e130398130867_
                                           _hd130397130870_
                                           _tl130396130872_
                                           _e130401130875_
                                           _hd130400130878_
                                           _tl130399130880_
                                           _e130404130883_
                                           _hd130403130886_
                                           _tl130402130888_
                                           _e130407130891_
                                           _hd130406130894_
                                           _tl130405130896_
                                           _e130410130899_
                                           _hd130409130902_
                                           _tl130408130904_
                                           _e130413130907_
                                           _hd130412130910_
                                           _tl130411130912_
                                           _e130416130915_
                                           _hd130415130918_
                                           _tl130414130920_
                                           _e130419130923_
                                           _hd130418130926_
                                           _tl130417130928_
                                           _e130422130931_
                                           _hd130421130934_
                                           _tl130420130936_))
                                      (___match134789134790_
                                       _e130395130859_
                                       _hd130394130862_
                                       _tl130393130864_
                                       _e130398130867_
                                       _hd130397130870_
                                       _tl130396130872_
                                       _e130401130875_
                                       _hd130400130878_
                                       _tl130399130880_
                                       _e130404130883_
                                       _hd130403130886_
                                       _tl130402130888_
                                       _e130407130891_
                                       _hd130406130894_
                                       _tl130405130896_
                                       _e130410130899_
                                       _hd130409130902_
                                       _tl130408130904_
                                       _e130413130907_
                                       _hd130412130910_
                                       _tl130411130912_
                                       _e130416130915_
                                       _hd130415130918_
                                       _tl130414130920_))))
                              (___match134789134790_
                               _e130395130859_
                               _hd130394130862_
                               _tl130393130864_
                               _e130398130867_
                               _hd130397130870_
                               _tl130396130872_
                               _e130401130875_
                               _hd130400130878_
                               _tl130399130880_
                               _e130404130883_
                               _hd130403130886_
                               _tl130402130888_
                               _e130407130891_
                               _hd130406130894_
                               _tl130405130896_
                               _e130410130899_
                               _hd130409130902_
                               _tl130408130904_
                               _e130413130907_
                               _hd130412130910_
                               _tl130411130912_
                               _e130416130915_
                               _hd130415130918_
                               _tl130414130920_))
                          (___match134789134790_
                           _e130395130859_
                           _hd130394130862_
                           _tl130393130864_
                           _e130398130867_
                           _hd130397130870_
                           _tl130396130872_
                           _e130401130875_
                           _hd130400130878_
                           _tl130399130880_
                           _e130404130883_
                           _hd130403130886_
                           _tl130402130888_
                           _e130407130891_
                           _hd130406130894_
                           _tl130405130896_
                           _e130410130899_
                           _hd130409130902_
                           _tl130408130904_
                           _e130413130907_
                           _hd130412130910_
                           _tl130411130912_
                           _e130416130915_
                           _hd130415130918_
                           _tl130414130920_))))
                   (___match134507134508_
                    (lambda (_e130344130978_
                             _hd130343130981_
                             _tl130342130983_
                             _e130347130986_
                             _hd130346130989_
                             _tl130345130991_
                             _e130350130994_
                             _hd130349130997_
                             _tl130348130999_
                             _e130353131002_
                             _hd130352131005_
                             _tl130351131007_
                             _e130356131010_
                             _hd130355131013_
                             _tl130354131015_
                             _e130359131018_
                             _hd130358131021_
                             _tl130357131023_
                             _e130362131026_
                             _hd130361131029_
                             _tl130360131031_
                             _e130365131034_
                             _hd130364131037_
                             _tl130363131039_
                             _e130368131042_
                             _hd130367131045_
                             _tl130366131047_
                             _e130371131050_
                             _hd130370131053_
                             _tl130369131055_
                             _e130374131058_
                             _hd130373131061_
                             _tl130372131063_
                             _e130377131066_
                             _hd130376131069_
                             _tl130375131071_
                             _e130380131074_
                             _hd130379131077_
                             _tl130378131079_
                             ___splice134300134301_
                             _target130381131082_
                             _tl130383131084_)
                      (letrec ((_loop130384131087_
                                (lambda (_hd130382131090_ _args130388131092_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130382131090_))
                                      (let ((_e130385131095_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130382131090_))))
                                        (let ((_lp-tl130387131100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130385131095_)))
                                              (_lp-hd130386131098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130385131095_))))
                                          (let ((__tmp135574
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130386131098_
                                                         _args130388131092_))))
                                            (declare (not safe))
                                            (_loop130384131087_
                                             _lp-tl130387131100_
                                             __tmp135574))))
                                      (let ((_args130389131103_
                                             (reverse _args130388131092_)))
                                        (let ((_L131106_ _args130389131103_)
                                              (_L131107_ _hd130379131077_)
                                              (_L131108_ _hd130370131053_)
                                              (_L131109_ _hd130361131029_)
                                              (_L131110_ _hd130352131005_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131110_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131109_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131108_
                                                      _self130282_)))
                                              (___kont134298134299_
                                               _L131106_
                                               _L131107_
                                               _L131108_
                                               _L131109_
                                               _L131110_)
                                              (___kont134310134311_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130384131087_ _target130381131082_ '())))))
                   (___match134465134466_
                    (lambda (_e130344130978_
                             _hd130343130981_
                             _tl130342130983_
                             _e130347130986_
                             _hd130346130989_
                             _tl130345130991_
                             _e130350130994_
                             _hd130349130997_
                             _tl130348130999_
                             _e130353131002_
                             _hd130352131005_
                             _tl130351131007_
                             _e130356131010_
                             _hd130355131013_
                             _tl130354131015_
                             _e130359131018_
                             _hd130358131021_
                             _tl130357131023_
                             _e130362131026_
                             _hd130361131029_
                             _tl130360131031_
                             _e130365131034_
                             _hd130364131037_
                             _tl130363131039_
                             _e130368131042_
                             _hd130367131045_
                             _tl130366131047_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130367131045_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130366131047_))
                              (let ((_e130371131050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130366131047_))))
                                (let ((_tl130369131055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130371131050_)))
                                      (_hd130370131053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130371131050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130369131055_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130363131039_))
                                          (let ((_e130374131058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130363131039_))))
                                            (let ((_tl130372131063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130374131058_)))
                                                  (_hd130373131061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130374131058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130373131061_))
                                                  (let ((_e130377131066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130373131061_))))
                                                    (let ((_tl130375131071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130377131066_)))
                                                          (_hd130376131069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130377131066_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130376131069_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130376131069_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130375131071_))
                          (let ((_e130380131074_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130375131071_))))
                            (let ((_tl130378131079_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130380131074_)))
                                  (_hd130379131077_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130380131074_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130378131079_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130372131063_))
                                      (let ((___splice134300134301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130372131063_
                                                '0))))
                                        (let ((_tl130383131084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134300134301_
                                                  '1)))
                                              (_target130381131082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134300134301_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130383131084_))
                                              (___match134507134508_
                                               _e130344130978_
                                               _hd130343130981_
                                               _tl130342130983_
                                               _e130347130986_
                                               _hd130346130989_
                                               _tl130345130991_
                                               _e130350130994_
                                               _hd130349130997_
                                               _tl130348130999_
                                               _e130353131002_
                                               _hd130352131005_
                                               _tl130351131007_
                                               _e130356131010_
                                               _hd130355131013_
                                               _tl130354131015_
                                               _e130359131018_
                                               _hd130358131021_
                                               _tl130357131023_
                                               _e130362131026_
                                               _hd130361131029_
                                               _tl130360131031_
                                               _e130365131034_
                                               _hd130364131037_
                                               _tl130363131039_
                                               _e130368131042_
                                               _hd130367131045_
                                               _tl130366131047_
                                               _e130371131050_
                                               _hd130370131053_
                                               _tl130369131055_
                                               _e130374131058_
                                               _hd130373131061_
                                               _tl130372131063_
                                               _e130377131066_
                                               _hd130376131069_
                                               _tl130375131071_
                                               _e130380131074_
                                               _hd130379131077_
                                               _tl130378131079_
                                               ___splice134300134301_
                                               _target130381131082_
                                               _tl130383131084_)
                                              (___kont134310134311_))))
                                      (___kont134310134311_))
                                  (___kont134310134311_))))
                          (___kont134310134311_))
                      (___kont134310134311_))
                  (___kont134310134311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134310134311_))))
                                          (___match134789134790_
                                           _e130344130978_
                                           _hd130343130981_
                                           _tl130342130983_
                                           _e130347130986_
                                           _hd130346130989_
                                           _tl130345130991_
                                           _e130350130994_
                                           _hd130349130997_
                                           _tl130348130999_
                                           _e130353131002_
                                           _hd130352131005_
                                           _tl130351131007_
                                           _e130356131010_
                                           _hd130355131013_
                                           _tl130354131015_
                                           _e130359131018_
                                           _hd130358131021_
                                           _tl130357131023_
                                           _e130362131026_
                                           _hd130361131029_
                                           _tl130360131031_
                                           _e130365131034_
                                           _hd130364131037_
                                           _tl130363131039_))
                                      (___match134789134790_
                                       _e130344130978_
                                       _hd130343130981_
                                       _tl130342130983_
                                       _e130347130986_
                                       _hd130346130989_
                                       _tl130345130991_
                                       _e130350130994_
                                       _hd130349130997_
                                       _tl130348130999_
                                       _e130353131002_
                                       _hd130352131005_
                                       _tl130351131007_
                                       _e130356131010_
                                       _hd130355131013_
                                       _tl130354131015_
                                       _e130359131018_
                                       _hd130358131021_
                                       _tl130357131023_
                                       _e130362131026_
                                       _hd130361131029_
                                       _tl130360131031_
                                       _e130365131034_
                                       _hd130364131037_
                                       _tl130363131039_))))
                              (___match134789134790_
                               _e130344130978_
                               _hd130343130981_
                               _tl130342130983_
                               _e130347130986_
                               _hd130346130989_
                               _tl130345130991_
                               _e130350130994_
                               _hd130349130997_
                               _tl130348130999_
                               _e130353131002_
                               _hd130352131005_
                               _tl130351131007_
                               _e130356131010_
                               _hd130355131013_
                               _tl130354131015_
                               _e130359131018_
                               _hd130358131021_
                               _tl130357131023_
                               _e130362131026_
                               _hd130361131029_
                               _tl130360131031_
                               _e130365131034_
                               _hd130364131037_
                               _tl130363131039_))
                          (___match134575134576_
                           _e130344130978_
                           _hd130343130981_
                           _tl130342130983_
                           _e130347130986_
                           _hd130346130989_
                           _tl130345130991_
                           _e130350130994_
                           _hd130349130997_
                           _tl130348130999_
                           _e130353131002_
                           _hd130352131005_
                           _tl130351131007_
                           _e130356131010_
                           _hd130355131013_
                           _tl130354131015_
                           _e130359131018_
                           _hd130358131021_
                           _tl130357131023_
                           _e130362131026_
                           _hd130361131029_
                           _tl130360131031_
                           _e130365131034_
                           _hd130364131037_
                           _tl130363131039_
                           _e130368131042_
                           _hd130367131045_
                           _tl130366131047_))))
                   (___match134397134398_
                    (lambda (_e130300131167_
                             _hd130299131170_
                             _tl130298131172_
                             _e130303131175_
                             _hd130302131178_
                             _tl130301131180_
                             _e130306131183_
                             _hd130305131186_
                             _tl130304131188_
                             _e130309131191_
                             _hd130308131194_
                             _tl130307131196_
                             _e130312131199_
                             _hd130311131202_
                             _tl130310131204_
                             _e130315131207_
                             _hd130314131210_
                             _tl130313131212_
                             _e130318131215_
                             _hd130317131218_
                             _tl130316131220_
                             _e130321131223_
                             _hd130320131226_
                             _tl130319131228_
                             _e130324131231_
                             _hd130323131234_
                             _tl130322131236_
                             _e130327131239_
                             _hd130326131242_
                             _tl130325131244_
                             ___splice134296134297_
                             _target130328131247_
                             _tl130330131249_)
                      (letrec ((_loop130331131252_
                                (lambda (_hd130329131255_ _args130335131257_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130329131255_))
                                      (let ((_e130332131260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130329131255_))))
                                        (let ((_lp-tl130334131265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130332131260_)))
                                              (_lp-hd130333131263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130332131260_))))
                                          (let ((__tmp135575
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130333131263_
                                                         _args130335131257_))))
                                            (declare (not safe))
                                            (_loop130331131252_
                                             _lp-tl130334131265_
                                             __tmp135575))))
                                      (let ((_args130336131268_
                                             (reverse _args130335131257_)))
                                        (let ((_L131271_ _args130336131268_)
                                              (_L131272_ _hd130326131242_)
                                              (_L131273_ _hd130317131218_)
                                              (_L131274_ _hd130308131194_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131274_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131273_
                                                      _self130282_)))
                                              (___kont134294134295_
                                               _L131271_
                                               _L131272_
                                               _L131273_
                                               _L131274_)
                                              (___match134585134586_
                                               _e130300131167_
                                               _hd130299131170_
                                               _tl130298131172_
                                               _e130303131175_
                                               _hd130302131178_
                                               _tl130301131180_
                                               _e130306131183_
                                               _hd130305131186_
                                               _tl130304131188_
                                               _e130309131191_
                                               _hd130308131194_
                                               _tl130307131196_
                                               _e130312131199_
                                               _hd130311131202_
                                               _tl130310131204_
                                               _e130315131207_
                                               _hd130314131210_
                                               _tl130313131212_
                                               _e130318131215_
                                               _hd130317131218_
                                               _tl130316131220_
                                               _e130321131223_
                                               _hd130320131226_
                                               _tl130319131228_
                                               _e130324131231_
                                               _hd130323131234_
                                               _tl130322131236_
                                               _e130327131239_
                                               _hd130326131242_
                                               _tl130325131244_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130331131252_ _target130328131247_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134292134293_))
                  (let ((_e130300131167_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134292134293_))))
                    (let ((_tl130298131172_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130300131167_)))
                          (_hd130299131170_
                           (let ()
                             (declare (not safe))
                             (##car _e130300131167_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130298131172_))
                          (let ((_e130303131175_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130298131172_))))
                            (let ((_tl130301131180_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130303131175_)))
                                  (_hd130302131178_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130303131175_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130302131178_))
                                  (let ((_e130306131183_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130302131178_))))
                                    (let ((_tl130304131188_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130306131183_)))
                                          (_hd130305131186_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130306131183_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130305131186_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130305131186_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130304131188_))
                                                  (let ((_e130309131191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130304131188_))))
                                                    (let ((_tl130307131196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130309131191_)))
                                                          (_hd130308131194_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130309131191_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130307131196_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130301131180_))
                      (let ((_e130312131199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130301131180_))))
                        (let ((_tl130310131204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130312131199_)))
                              (_hd130311131202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130312131199_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130311131202_))
                              (let ((_e130315131207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130311131202_))))
                                (let ((_tl130313131212_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130315131207_)))
                                      (_hd130314131210_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130315131207_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130314131210_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130314131210_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130313131212_))
                                              (let ((_e130318131215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130313131212_))))
                                                (let ((_tl130316131220_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130318131215_)))
                                                      (_hd130317131218_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130318131215_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130316131220_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130310131204_))
                                                          (let ((_e130321131223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130310131204_))))
                    (let ((_tl130319131228_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130321131223_)))
                          (_hd130320131226_
                           (let ()
                             (declare (not safe))
                             (##car _e130321131223_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130320131226_))
                          (let ((_e130324131231_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130320131226_))))
                            (let ((_tl130322131236_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130324131231_)))
                                  (_hd130323131234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130324131231_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130323131234_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130323131234_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130322131236_))
                                          (let ((_e130327131239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130322131236_))))
                                            (let ((_tl130325131244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130327131239_)))
                                                  (_hd130326131242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130327131239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130325131244_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130319131228_))
                                                      (let ((___splice134296134297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130319131228_ '0))))
                (let ((_tl130330131249_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134296134297_ '1)))
                      (_target130328131247_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134296134297_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130330131249_))
                      (___match134397134398_
                       _e130300131167_
                       _hd130299131170_
                       _tl130298131172_
                       _e130303131175_
                       _hd130302131178_
                       _tl130301131180_
                       _e130306131183_
                       _hd130305131186_
                       _tl130304131188_
                       _e130309131191_
                       _hd130308131194_
                       _tl130307131196_
                       _e130312131199_
                       _hd130311131202_
                       _tl130310131204_
                       _e130315131207_
                       _hd130314131210_
                       _tl130313131212_
                       _e130318131215_
                       _hd130317131218_
                       _tl130316131220_
                       _e130321131223_
                       _hd130320131226_
                       _tl130319131228_
                       _e130324131231_
                       _hd130323131234_
                       _tl130322131236_
                       _e130327131239_
                       _hd130326131242_
                       _tl130325131244_
                       ___splice134296134297_
                       _target130328131247_
                       _tl130330131249_)
                      (___match134585134586_
                       _e130300131167_
                       _hd130299131170_
                       _tl130298131172_
                       _e130303131175_
                       _hd130302131178_
                       _tl130301131180_
                       _e130306131183_
                       _hd130305131186_
                       _tl130304131188_
                       _e130309131191_
                       _hd130308131194_
                       _tl130307131196_
                       _e130312131199_
                       _hd130311131202_
                       _tl130310131204_
                       _e130315131207_
                       _hd130314131210_
                       _tl130313131212_
                       _e130318131215_
                       _hd130317131218_
                       _tl130316131220_
                       _e130321131223_
                       _hd130320131226_
                       _tl130319131228_
                       _e130324131231_
                       _hd130323131234_
                       _tl130322131236_
                       _e130327131239_
                       _hd130326131242_
                       _tl130325131244_))))
              (___match134585134586_
               _e130300131167_
               _hd130299131170_
               _tl130298131172_
               _e130303131175_
               _hd130302131178_
               _tl130301131180_
               _e130306131183_
               _hd130305131186_
               _tl130304131188_
               _e130309131191_
               _hd130308131194_
               _tl130307131196_
               _e130312131199_
               _hd130311131202_
               _tl130310131204_
               _e130315131207_
               _hd130314131210_
               _tl130313131212_
               _e130318131215_
               _hd130317131218_
               _tl130316131220_
               _e130321131223_
               _hd130320131226_
               _tl130319131228_
               _e130324131231_
               _hd130323131234_
               _tl130322131236_
               _e130327131239_
               _hd130326131242_
               _tl130325131244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134789134790_
                                                   _e130300131167_
                                                   _hd130299131170_
                                                   _tl130298131172_
                                                   _e130303131175_
                                                   _hd130302131178_
                                                   _tl130301131180_
                                                   _e130306131183_
                                                   _hd130305131186_
                                                   _tl130304131188_
                                                   _e130309131191_
                                                   _hd130308131194_
                                                   _tl130307131196_
                                                   _e130312131199_
                                                   _hd130311131202_
                                                   _tl130310131204_
                                                   _e130315131207_
                                                   _hd130314131210_
                                                   _tl130313131212_
                                                   _e130318131215_
                                                   _hd130317131218_
                                                   _tl130316131220_
                                                   _e130321131223_
                                                   _hd130320131226_
                                                   _tl130319131228_))))
                                          (___match134789134790_
                                           _e130300131167_
                                           _hd130299131170_
                                           _tl130298131172_
                                           _e130303131175_
                                           _hd130302131178_
                                           _tl130301131180_
                                           _e130306131183_
                                           _hd130305131186_
                                           _tl130304131188_
                                           _e130309131191_
                                           _hd130308131194_
                                           _tl130307131196_
                                           _e130312131199_
                                           _hd130311131202_
                                           _tl130310131204_
                                           _e130315131207_
                                           _hd130314131210_
                                           _tl130313131212_
                                           _e130318131215_
                                           _hd130317131218_
                                           _tl130316131220_
                                           _e130321131223_
                                           _hd130320131226_
                                           _tl130319131228_))
                                      (___match134465134466_
                                       _e130300131167_
                                       _hd130299131170_
                                       _tl130298131172_
                                       _e130303131175_
                                       _hd130302131178_
                                       _tl130301131180_
                                       _e130306131183_
                                       _hd130305131186_
                                       _tl130304131188_
                                       _e130309131191_
                                       _hd130308131194_
                                       _tl130307131196_
                                       _e130312131199_
                                       _hd130311131202_
                                       _tl130310131204_
                                       _e130315131207_
                                       _hd130314131210_
                                       _tl130313131212_
                                       _e130318131215_
                                       _hd130317131218_
                                       _tl130316131220_
                                       _e130321131223_
                                       _hd130320131226_
                                       _tl130319131228_
                                       _e130324131231_
                                       _hd130323131234_
                                       _tl130322131236_))
                                  (___match134789134790_
                                   _e130300131167_
                                   _hd130299131170_
                                   _tl130298131172_
                                   _e130303131175_
                                   _hd130302131178_
                                   _tl130301131180_
                                   _e130306131183_
                                   _hd130305131186_
                                   _tl130304131188_
                                   _e130309131191_
                                   _hd130308131194_
                                   _tl130307131196_
                                   _e130312131199_
                                   _hd130311131202_
                                   _tl130310131204_
                                   _e130315131207_
                                   _hd130314131210_
                                   _tl130313131212_
                                   _e130318131215_
                                   _hd130317131218_
                                   _tl130316131220_
                                   _e130321131223_
                                   _hd130320131226_
                                   _tl130319131228_))))
                          (___match134789134790_
                           _e130300131167_
                           _hd130299131170_
                           _tl130298131172_
                           _e130303131175_
                           _hd130302131178_
                           _tl130301131180_
                           _e130306131183_
                           _hd130305131186_
                           _tl130304131188_
                           _e130309131191_
                           _hd130308131194_
                           _tl130307131196_
                           _e130312131199_
                           _hd130311131202_
                           _tl130310131204_
                           _e130315131207_
                           _hd130314131210_
                           _tl130313131212_
                           _e130318131215_
                           _hd130317131218_
                           _tl130316131220_
                           _e130321131223_
                           _hd130320131226_
                           _tl130319131228_))))
                  (___match134727134728_
                   _e130300131167_
                   _hd130299131170_
                   _tl130298131172_
                   _e130303131175_
                   _hd130302131178_
                   _tl130301131180_
                   _e130306131183_
                   _hd130305131186_
                   _tl130304131188_
                   _e130309131191_
                   _hd130308131194_
                   _tl130307131196_
                   _e130312131199_
                   _hd130311131202_
                   _tl130310131204_
                   _e130315131207_
                   _hd130314131210_
                   _tl130313131212_
                   _e130318131215_
                   _hd130317131218_
                   _tl130316131220_))
              (___kont134310134311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134310134311_))
                                          (___kont134310134311_))
                                      (___kont134310134311_))))
                              (___kont134310134311_))))
                      (___kont134310134311_))
                  (___kont134310134311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134310134311_))
                                              (___kont134310134311_))
                                          (___kont134310134311_))))
                                  (___kont134310134311_))))
                          (___kont134310134311_))))
                  (___kont134310134311_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx129216_
               _self129217_
               _$klass129218_
               _methods129219_
               _slots129220_)
        (letrec ((_force-e129222_
                  (lambda (_target130279_)
                    (let ((__tmp135576
                           (let ((__tmp135580
                                  (let ((__tmp135581
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135581)))
                                 (__tmp135577
                                  (let ((__tmp135578
                                         (let ((__tmp135579
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130279_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135579))))
                                    (declare (not safe))
                                    (cons __tmp135578 '()))))
                             (declare (not safe))
                             (cons __tmp135580 __tmp135577))))
                      (declare (not safe))
                      (cons '%#call __tmp135576)))))
          (let* ((___stx134794134795_ _stx129216_)
                 (_g129230129452_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134794134795_)))))
            (let ((___kont134796134797_
                   (lambda (_L130225_ _L130226_ _L130227_ _L130228_)
                     (let ((_$method130273_
                            (let ((__tmp135582
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130226_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129219_ __tmp135582)))
                           (_args130274_
                            (map (lambda (_g130261130263_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130261130263_
                                      _self129217_
                                      _$klass129218_
                                      _methods129219_
                                      _slots129220_)))
                                 (let ((__tmp135583
                                        (lambda (_g130265130268_
                                                 _g130266130270_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130265130268_
                                                  _g130266130270_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135583 '() _L130225_)))))
                       (let ((__tmp135584
                              (let ((__tmp135585
                                     (let ((__tmp135589
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129222_
                                               _$method130273_)))
                                           (__tmp135586
                                            (let ((__tmp135587
                                                   (let ((__tmp135588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self129217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135588))))
                                              (declare (not safe))
                                              (cons __tmp135587
                                                    _args130274_))))
                                       (declare (not safe))
                                       (cons __tmp135589 __tmp135586))))
                                (declare (not safe))
                                (cons '%#call __tmp135585))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135584 _stx129216_)))))
                  (___kont134800134801_
                   (lambda (_L130057_ _L130058_ _L130059_ _L130060_ _L130061_)
                     (let ((_$method130113_
                            (let ((__tmp135590
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130058_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129219_ __tmp135590)))
                           (_args130114_
                            (map (lambda (_g130101130103_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130101130103_
                                      _self129217_
                                      _$klass129218_
                                      _methods129219_
                                      _slots129220_)))
                                 (let ((__tmp135591
                                        (lambda (_g130105130108_
                                                 _g130106130110_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130105130108_
                                                  _g130106130110_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135591 '() _L130057_)))))
                       (let ((__tmp135592
                              (let ((__tmp135593
                                     (let ((__tmp135599
                                            (let ((__tmp135600
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135600)))
                                           (__tmp135594
                                            (let ((__tmp135598
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129222_
                                                      _$method130113_)))
                                                  (__tmp135595
                                                   (let ((__tmp135596
                                                          (let ((__tmp135597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135596
                                                           _args130114_))))
                                              (declare (not safe))
                                              (cons __tmp135598 __tmp135595))))
                                       (declare (not safe))
                                       (cons __tmp135599 __tmp135594))))
                                (declare (not safe))
                                (cons '%#call __tmp135593))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135592 _stx129216_)))))
                  (___kont134804134805_
                   (lambda (_L129888_ _L129889_ _L129890_)
                     (let* ((_$field129922_
                             (let ((__tmp135601
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129888_))))
                               (declare (not safe))
                               (hash-ref__0 _slots129220_ __tmp135601)))
                            (__tmp135602
                             (let ((__tmp135603
                                    (let ((__tmp135610
                                           (let ((__tmp135611
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass129218_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135611)))
                                          (__tmp135604
                                           (let ((__tmp135608
                                                  (let ((__tmp135609
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135609)))
                                                 (__tmp135605
                                                  (let ((__tmp135606
                                                         (let ((__tmp135607
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self129217_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135606 '()))))
                                             (declare (not safe))
                                             (cons __tmp135608 __tmp135605))))
                                      (declare (not safe))
                                      (cons __tmp135610 __tmp135604))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135603))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135602 _stx129216_))))
                  (___kont134806134807_
                   (lambda (_L129762_ _L129763_ _L129764_ _L129765_)
                     (let ((_$field129800_
                            (let ((__tmp135612
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129763_))))
                              (declare (not safe))
                              (hash-ref__0 _slots129220_ __tmp135612)))
                           (_expr129801_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129762_
                               _self129217_
                               _$klass129218_
                               _methods129219_
                               _slots129220_))))
                       (let ((__tmp135613
                              (let ((__tmp135614
                                     (let ((__tmp135622
                                            (let ((__tmp135623
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass129218_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135623)))
                                           (__tmp135615
                                            (let ((__tmp135620
                                                   (let ((__tmp135621
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135621)))
                                                  (__tmp135616
                                                   (let ((__tmp135618
                                                          (let ((__tmp135619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135619)))
                 (__tmp135617
                  (let () (declare (not safe)) (cons _expr129801_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135618
                                                           __tmp135617))))
                                              (declare (not safe))
                                              (cons __tmp135620 __tmp135616))))
                                       (declare (not safe))
                                       (cons __tmp135622 __tmp135615))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135614))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135613 _stx129216_)))))
                  (___kont134808134809_
                   (lambda (_L129634_ _L129635_)
                     (let* ((_accessor129657_
                             (let ((__tmp135624
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129635_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135624)))
                            (_klass129659_
                             (let ((__tmp135625
                                    (##structure-ref
                                     _accessor129657_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129216_
                                __tmp135625)))
                            (_slot129661_
                             (##structure-ref
                              _accessor129657_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135636
                                       (##structure-ref
                                        _accessor129657_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135636))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129659_
                                       _slot129661_))
                                    (##structure-ref
                                     _klass129659_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129216_
                           (let* ((_$field129667_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129220_ _slot129661_)))
                                  (__tmp135626
                                   (let ((__tmp135627
                                          (let ((__tmp135634
                                                 (let ((__tmp135635
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129218_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135635)))
                                                (__tmp135628
                                                 (let ((__tmp135632
                                                        (let ((__tmp135633
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129667_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135633)))
               (__tmp135629
                (let ((__tmp135630
                       (let ((__tmp135631
                              (let ()
                                (declare (not safe))
                                (cons _self129217_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135631))))
                  (declare (not safe))
                  (cons __tmp135630 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135632
                                                         __tmp135629))))
                                            (declare (not safe))
                                            (cons __tmp135634 __tmp135628))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135627))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135626
                              _stx129216_))))))
                  (___kont134810134811_
                   (lambda (_L129528_ _L129529_ _L129530_)
                     (let* ((_mutator129559_
                             (let ((__tmp135637
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129530_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135637)))
                            (_klass129561_
                             (let ((__tmp135638
                                    (##structure-ref
                                     _mutator129559_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129216_
                                __tmp135638)))
                            (_slot129563_
                             (##structure-ref
                              _mutator129559_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129565_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129528_
                                _self129217_
                                _$klass129218_
                                _methods129219_
                                _slots129220_))))
                       (if (and (let ((__tmp135660
                                       (##structure-ref
                                        _mutator129559_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135660))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129561_
                                       _slot129563_))
                                    (##structure-ref
                                     _klass129561_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135650
                                  (let ((__tmp135651
                                         (let ((__tmp135657
                                                (let ((__tmp135659
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135658
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129530_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135659
                                                        __tmp135658)))
                                               (__tmp135652
                                                (let ((__tmp135654
                                                       (let ((__tmp135656
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135655
                      (let () (declare (not safe)) (cons _L129529_ '()))))
                 (declare (not safe))
                 (cons __tmp135656 __tmp135655)))
              (__tmp135653
               (let () (declare (not safe)) (cons _expr129565_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135654
                                                        __tmp135653))))
                                           (declare (not safe))
                                           (cons __tmp135657 __tmp135652))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135651))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135650 _stx129216_))
                           (let* ((_$field129571_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129220_ _slot129563_)))
                                  (__tmp135639
                                   (let ((__tmp135640
                                          (let ((__tmp135648
                                                 (let ((__tmp135649
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129218_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135649)))
                                                (__tmp135641
                                                 (let ((__tmp135646
                                                        (let ((__tmp135647
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129571_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135647)))
               (__tmp135642
                (let ((__tmp135644
                       (let ((__tmp135645
                              (let ()
                                (declare (not safe))
                                (cons _self129217_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135645)))
                      (__tmp135643
                       (let () (declare (not safe)) (cons _expr129565_ '()))))
                  (declare (not safe))
                  (cons __tmp135644 __tmp135643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135646
                                                         __tmp135642))))
                                            (declare (not safe))
                                            (cons __tmp135648 __tmp135641))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135640))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135639
                              _stx129216_))))))
                  (___kont134812134813_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx129216_
                        _self129217_
                        _$klass129218_
                        _methods129219_
                        _slots129220_)))))
              (let* ((___match135293135294_
                      (lambda (_e129426129464_
                               _hd129425129467_
                               _tl129424129469_
                               _e129429129472_
                               _hd129428129475_
                               _tl129427129477_
                               _e129432129480_
                               _hd129431129483_
                               _tl129430129485_
                               _e129435129488_
                               _hd129434129491_
                               _tl129433129493_
                               _e129438129496_
                               _hd129437129499_
                               _tl129436129501_
                               _e129441129504_
                               _hd129440129507_
                               _tl129439129509_
                               _e129444129512_
                               _hd129443129515_
                               _tl129442129517_
                               _e129447129520_
                               _hd129446129523_
                               _tl129445129525_)
                        (let ((_L129528_ _hd129446129523_)
                              (_L129529_ _hd129443129515_)
                              (_L129530_ _hd129434129491_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129529_
                                      _self129217_))
                                   (let ((__tmp135661
                                          (let ((__tmp135662
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129530_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135662))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135661
                                      'gxc#!mutator::t)))
                              (___kont134810134811_
                               _L129528_
                               _L129529_
                               _L129530_)
                              (___kont134812134813_)))))
                     (___match135291135292_
                      (lambda (_e129426129464_
                               _hd129425129467_
                               _tl129424129469_
                               _e129429129472_
                               _hd129428129475_
                               _tl129427129477_
                               _e129432129480_
                               _hd129431129483_
                               _tl129430129485_
                               _e129435129488_
                               _hd129434129491_
                               _tl129433129493_
                               _e129438129496_
                               _hd129437129499_
                               _tl129436129501_
                               _e129441129504_
                               _hd129440129507_
                               _tl129439129509_
                               _e129444129512_
                               _hd129443129515_
                               _tl129442129517_
                               _e129447129520_
                               _hd129446129523_
                               _tl129445129525_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129445129525_))
                            (___match135293135294_
                             _e129426129464_
                             _hd129425129467_
                             _tl129424129469_
                             _e129429129472_
                             _hd129428129475_
                             _tl129427129477_
                             _e129432129480_
                             _hd129431129483_
                             _tl129430129485_
                             _e129435129488_
                             _hd129434129491_
                             _tl129433129493_
                             _e129438129496_
                             _hd129437129499_
                             _tl129436129501_
                             _e129441129504_
                             _hd129440129507_
                             _tl129439129509_
                             _e129444129512_
                             _hd129443129515_
                             _tl129442129517_
                             _e129447129520_
                             _hd129446129523_
                             _tl129445129525_)
                            (___kont134812134813_))))
                     (___match135285135286_
                      (lambda (_e129426129464_
                               _hd129425129467_
                               _tl129424129469_
                               _e129429129472_
                               _hd129428129475_
                               _tl129427129477_
                               _e129432129480_
                               _hd129431129483_
                               _tl129430129485_
                               _e129435129488_
                               _hd129434129491_
                               _tl129433129493_
                               _e129438129496_
                               _hd129437129499_
                               _tl129436129501_
                               _e129441129504_
                               _hd129440129507_
                               _tl129439129509_
                               _e129444129512_
                               _hd129443129515_
                               _tl129442129517_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129436129501_))
                            (let ((_e129447129520_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129436129501_))))
                              (let ((_tl129445129525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129447129520_)))
                                    (_hd129446129523_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129447129520_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129445129525_))
                                    (___match135293135294_
                                     _e129426129464_
                                     _hd129425129467_
                                     _tl129424129469_
                                     _e129429129472_
                                     _hd129428129475_
                                     _tl129427129477_
                                     _e129432129480_
                                     _hd129431129483_
                                     _tl129430129485_
                                     _e129435129488_
                                     _hd129434129491_
                                     _tl129433129493_
                                     _e129438129496_
                                     _hd129437129499_
                                     _tl129436129501_
                                     _e129441129504_
                                     _hd129440129507_
                                     _tl129439129509_
                                     _e129444129512_
                                     _hd129443129515_
                                     _tl129442129517_
                                     _e129447129520_
                                     _hd129446129523_
                                     _tl129445129525_)
                                    (___kont134812134813_))))
                            (___kont134812134813_))))
                     (___match135231135232_
                      (lambda (_e129402129578_
                               _hd129401129581_
                               _tl129400129583_
                               _e129405129586_
                               _hd129404129589_
                               _tl129403129591_
                               _e129408129594_
                               _hd129407129597_
                               _tl129406129599_
                               _e129411129602_
                               _hd129410129605_
                               _tl129409129607_
                               _e129414129610_
                               _hd129413129613_
                               _tl129412129615_
                               _e129417129618_
                               _hd129416129621_
                               _tl129415129623_
                               _e129420129626_
                               _hd129419129629_
                               _tl129418129631_)
                        (let ((_L129634_ _hd129419129629_)
                              (_L129635_ _hd129410129605_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129634_
                                      _self129217_))
                                   (let ((__tmp135663
                                          (let ((__tmp135664
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129635_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135664))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135663
                                      'gxc#!accessor::t)))
                              (___kont134808134809_ _L129634_ _L129635_)
                              (___kont134812134813_)))))
                     (___match135229135230_
                      (lambda (_e129402129578_
                               _hd129401129581_
                               _tl129400129583_
                               _e129405129586_
                               _hd129404129589_
                               _tl129403129591_
                               _e129408129594_
                               _hd129407129597_
                               _tl129406129599_
                               _e129411129602_
                               _hd129410129605_
                               _tl129409129607_
                               _e129414129610_
                               _hd129413129613_
                               _tl129412129615_
                               _e129417129618_
                               _hd129416129621_
                               _tl129415129623_
                               _e129420129626_
                               _hd129419129629_
                               _tl129418129631_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129412129615_))
                            (___match135231135232_
                             _e129402129578_
                             _hd129401129581_
                             _tl129400129583_
                             _e129405129586_
                             _hd129404129589_
                             _tl129403129591_
                             _e129408129594_
                             _hd129407129597_
                             _tl129406129599_
                             _e129411129602_
                             _hd129410129605_
                             _tl129409129607_
                             _e129414129610_
                             _hd129413129613_
                             _tl129412129615_
                             _e129417129618_
                             _hd129416129621_
                             _tl129415129623_
                             _e129420129626_
                             _hd129419129629_
                             _tl129418129631_)
                            (___match135285135286_
                             _e129402129578_
                             _hd129401129581_
                             _tl129400129583_
                             _e129405129586_
                             _hd129404129589_
                             _tl129403129591_
                             _e129408129594_
                             _hd129407129597_
                             _tl129406129599_
                             _e129411129602_
                             _hd129410129605_
                             _tl129409129607_
                             _e129414129610_
                             _hd129413129613_
                             _tl129412129615_
                             _e129417129618_
                             _hd129416129621_
                             _tl129415129623_
                             _e129420129626_
                             _hd129419129629_
                             _tl129418129631_))))
                     (___match135175135176_
                      (lambda (_e129367129674_
                               _hd129366129677_
                               _tl129365129679_
                               _e129370129682_
                               _hd129369129685_
                               _tl129368129687_
                               _e129373129690_
                               _hd129372129693_
                               _tl129371129695_
                               _e129376129698_
                               _hd129375129701_
                               _tl129374129703_
                               _e129379129706_
                               _hd129378129709_
                               _tl129377129711_
                               _e129382129714_
                               _hd129381129717_
                               _tl129380129719_
                               _e129385129722_
                               _hd129384129725_
                               _tl129383129727_
                               _e129388129730_
                               _hd129387129733_
                               _tl129386129735_
                               _e129391129738_
                               _hd129390129741_
                               _tl129389129743_
                               _e129394129746_
                               _hd129393129749_
                               _tl129392129751_
                               _e129397129754_
                               _hd129396129757_
                               _tl129395129759_)
                        (let ((_L129762_ _hd129396129757_)
                              (_L129763_ _hd129393129749_)
                              (_L129764_ _hd129384129725_)
                              (_L129765_ _hd129375129701_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129765_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129765_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129764_
                                      _self129217_)))
                              (___kont134806134807_
                               _L129762_
                               _L129763_
                               _L129764_
                               _L129765_)
                              (___kont134812134813_)))))
                     (___match135167135168_
                      (lambda (_e129367129674_
                               _hd129366129677_
                               _tl129365129679_
                               _e129370129682_
                               _hd129369129685_
                               _tl129368129687_
                               _e129373129690_
                               _hd129372129693_
                               _tl129371129695_
                               _e129376129698_
                               _hd129375129701_
                               _tl129374129703_
                               _e129379129706_
                               _hd129378129709_
                               _tl129377129711_
                               _e129382129714_
                               _hd129381129717_
                               _tl129380129719_
                               _e129385129722_
                               _hd129384129725_
                               _tl129383129727_
                               _e129388129730_
                               _hd129387129733_
                               _tl129386129735_
                               _e129391129738_
                               _hd129390129741_
                               _tl129389129743_
                               _e129394129746_
                               _hd129393129749_
                               _tl129392129751_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129386129735_))
                            (let ((_e129397129754_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129386129735_))))
                              (let ((_tl129395129759_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129397129754_)))
                                    (_hd129396129757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129397129754_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129395129759_))
                                    (___match135175135176_
                                     _e129367129674_
                                     _hd129366129677_
                                     _tl129365129679_
                                     _e129370129682_
                                     _hd129369129685_
                                     _tl129368129687_
                                     _e129373129690_
                                     _hd129372129693_
                                     _tl129371129695_
                                     _e129376129698_
                                     _hd129375129701_
                                     _tl129374129703_
                                     _e129379129706_
                                     _hd129378129709_
                                     _tl129377129711_
                                     _e129382129714_
                                     _hd129381129717_
                                     _tl129380129719_
                                     _e129385129722_
                                     _hd129384129725_
                                     _tl129383129727_
                                     _e129388129730_
                                     _hd129387129733_
                                     _tl129386129735_
                                     _e129391129738_
                                     _hd129390129741_
                                     _tl129389129743_
                                     _e129394129746_
                                     _hd129393129749_
                                     _tl129392129751_
                                     _e129397129754_
                                     _hd129396129757_
                                     _tl129395129759_)
                                    (___kont134812134813_))))
                            (___match135291135292_
                             _e129367129674_
                             _hd129366129677_
                             _tl129365129679_
                             _e129370129682_
                             _hd129369129685_
                             _tl129368129687_
                             _e129373129690_
                             _hd129372129693_
                             _tl129371129695_
                             _e129376129698_
                             _hd129375129701_
                             _tl129374129703_
                             _e129379129706_
                             _hd129378129709_
                             _tl129377129711_
                             _e129382129714_
                             _hd129381129717_
                             _tl129380129719_
                             _e129385129722_
                             _hd129384129725_
                             _tl129383129727_
                             _e129388129730_
                             _hd129387129733_
                             _tl129386129735_))))
                     (___match135089135090_
                      (lambda (_e129333129808_
                               _hd129332129811_
                               _tl129331129813_
                               _e129336129816_
                               _hd129335129819_
                               _tl129334129821_
                               _e129339129824_
                               _hd129338129827_
                               _tl129337129829_
                               _e129342129832_
                               _hd129341129835_
                               _tl129340129837_
                               _e129345129840_
                               _hd129344129843_
                               _tl129343129845_
                               _e129348129848_
                               _hd129347129851_
                               _tl129346129853_
                               _e129351129856_
                               _hd129350129859_
                               _tl129349129861_
                               _e129354129864_
                               _hd129353129867_
                               _tl129352129869_
                               _e129357129872_
                               _hd129356129875_
                               _tl129355129877_
                               _e129360129880_
                               _hd129359129883_
                               _tl129358129885_)
                        (let ((_L129888_ _hd129359129883_)
                              (_L129889_ _hd129350129859_)
                              (_L129890_ _hd129341129835_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129890_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129890_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129889_
                                      _self129217_)))
                              (___kont134804134805_
                               _L129888_
                               _L129889_
                               _L129890_)
                              (___match135293135294_
                               _e129333129808_
                               _hd129332129811_
                               _tl129331129813_
                               _e129336129816_
                               _hd129335129819_
                               _tl129334129821_
                               _e129339129824_
                               _hd129338129827_
                               _tl129337129829_
                               _e129342129832_
                               _hd129341129835_
                               _tl129340129837_
                               _e129345129840_
                               _hd129344129843_
                               _tl129343129845_
                               _e129348129848_
                               _hd129347129851_
                               _tl129346129853_
                               _e129351129856_
                               _hd129350129859_
                               _tl129349129861_
                               _e129354129864_
                               _hd129353129867_
                               _tl129352129869_)))))
                     (___match135087135088_
                      (lambda (_e129333129808_
                               _hd129332129811_
                               _tl129331129813_
                               _e129336129816_
                               _hd129335129819_
                               _tl129334129821_
                               _e129339129824_
                               _hd129338129827_
                               _tl129337129829_
                               _e129342129832_
                               _hd129341129835_
                               _tl129340129837_
                               _e129345129840_
                               _hd129344129843_
                               _tl129343129845_
                               _e129348129848_
                               _hd129347129851_
                               _tl129346129853_
                               _e129351129856_
                               _hd129350129859_
                               _tl129349129861_
                               _e129354129864_
                               _hd129353129867_
                               _tl129352129869_
                               _e129357129872_
                               _hd129356129875_
                               _tl129355129877_
                               _e129360129880_
                               _hd129359129883_
                               _tl129358129885_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129352129869_))
                            (___match135089135090_
                             _e129333129808_
                             _hd129332129811_
                             _tl129331129813_
                             _e129336129816_
                             _hd129335129819_
                             _tl129334129821_
                             _e129339129824_
                             _hd129338129827_
                             _tl129337129829_
                             _e129342129832_
                             _hd129341129835_
                             _tl129340129837_
                             _e129345129840_
                             _hd129344129843_
                             _tl129343129845_
                             _e129348129848_
                             _hd129347129851_
                             _tl129346129853_
                             _e129351129856_
                             _hd129350129859_
                             _tl129349129861_
                             _e129354129864_
                             _hd129353129867_
                             _tl129352129869_
                             _e129357129872_
                             _hd129356129875_
                             _tl129355129877_
                             _e129360129880_
                             _hd129359129883_
                             _tl129358129885_)
                            (___match135167135168_
                             _e129333129808_
                             _hd129332129811_
                             _tl129331129813_
                             _e129336129816_
                             _hd129335129819_
                             _tl129334129821_
                             _e129339129824_
                             _hd129338129827_
                             _tl129337129829_
                             _e129342129832_
                             _hd129341129835_
                             _tl129340129837_
                             _e129345129840_
                             _hd129344129843_
                             _tl129343129845_
                             _e129348129848_
                             _hd129347129851_
                             _tl129346129853_
                             _e129351129856_
                             _hd129350129859_
                             _tl129349129861_
                             _e129354129864_
                             _hd129353129867_
                             _tl129352129869_
                             _e129357129872_
                             _hd129356129875_
                             _tl129355129877_
                             _e129360129880_
                             _hd129359129883_
                             _tl129358129885_))))
                     (___match135077135078_
                      (lambda (_e129333129808_
                               _hd129332129811_
                               _tl129331129813_
                               _e129336129816_
                               _hd129335129819_
                               _tl129334129821_
                               _e129339129824_
                               _hd129338129827_
                               _tl129337129829_
                               _e129342129832_
                               _hd129341129835_
                               _tl129340129837_
                               _e129345129840_
                               _hd129344129843_
                               _tl129343129845_
                               _e129348129848_
                               _hd129347129851_
                               _tl129346129853_
                               _e129351129856_
                               _hd129350129859_
                               _tl129349129861_
                               _e129354129864_
                               _hd129353129867_
                               _tl129352129869_
                               _e129357129872_
                               _hd129356129875_
                               _tl129355129877_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129356129875_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129355129877_))
                                (let ((_e129360129880_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129355129877_))))
                                  (let ((_tl129358129885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129360129880_)))
                                        (_hd129359129883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129360129880_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129358129885_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129352129869_))
                                            (___match135089135090_
                                             _e129333129808_
                                             _hd129332129811_
                                             _tl129331129813_
                                             _e129336129816_
                                             _hd129335129819_
                                             _tl129334129821_
                                             _e129339129824_
                                             _hd129338129827_
                                             _tl129337129829_
                                             _e129342129832_
                                             _hd129341129835_
                                             _tl129340129837_
                                             _e129345129840_
                                             _hd129344129843_
                                             _tl129343129845_
                                             _e129348129848_
                                             _hd129347129851_
                                             _tl129346129853_
                                             _e129351129856_
                                             _hd129350129859_
                                             _tl129349129861_
                                             _e129354129864_
                                             _hd129353129867_
                                             _tl129352129869_
                                             _e129357129872_
                                             _hd129356129875_
                                             _tl129355129877_
                                             _e129360129880_
                                             _hd129359129883_
                                             _tl129358129885_)
                                            (___match135167135168_
                                             _e129333129808_
                                             _hd129332129811_
                                             _tl129331129813_
                                             _e129336129816_
                                             _hd129335129819_
                                             _tl129334129821_
                                             _e129339129824_
                                             _hd129338129827_
                                             _tl129337129829_
                                             _e129342129832_
                                             _hd129341129835_
                                             _tl129340129837_
                                             _e129345129840_
                                             _hd129344129843_
                                             _tl129343129845_
                                             _e129348129848_
                                             _hd129347129851_
                                             _tl129346129853_
                                             _e129351129856_
                                             _hd129350129859_
                                             _tl129349129861_
                                             _e129354129864_
                                             _hd129353129867_
                                             _tl129352129869_
                                             _e129357129872_
                                             _hd129356129875_
                                             _tl129355129877_
                                             _e129360129880_
                                             _hd129359129883_
                                             _tl129358129885_))
                                        (___match135291135292_
                                         _e129333129808_
                                         _hd129332129811_
                                         _tl129331129813_
                                         _e129336129816_
                                         _hd129335129819_
                                         _tl129334129821_
                                         _e129339129824_
                                         _hd129338129827_
                                         _tl129337129829_
                                         _e129342129832_
                                         _hd129341129835_
                                         _tl129340129837_
                                         _e129345129840_
                                         _hd129344129843_
                                         _tl129343129845_
                                         _e129348129848_
                                         _hd129347129851_
                                         _tl129346129853_
                                         _e129351129856_
                                         _hd129350129859_
                                         _tl129349129861_
                                         _e129354129864_
                                         _hd129353129867_
                                         _tl129352129869_))))
                                (___match135291135292_
                                 _e129333129808_
                                 _hd129332129811_
                                 _tl129331129813_
                                 _e129336129816_
                                 _hd129335129819_
                                 _tl129334129821_
                                 _e129339129824_
                                 _hd129338129827_
                                 _tl129337129829_
                                 _e129342129832_
                                 _hd129341129835_
                                 _tl129340129837_
                                 _e129345129840_
                                 _hd129344129843_
                                 _tl129343129845_
                                 _e129348129848_
                                 _hd129347129851_
                                 _tl129346129853_
                                 _e129351129856_
                                 _hd129350129859_
                                 _tl129349129861_
                                 _e129354129864_
                                 _hd129353129867_
                                 _tl129352129869_))
                            (___match135291135292_
                             _e129333129808_
                             _hd129332129811_
                             _tl129331129813_
                             _e129336129816_
                             _hd129335129819_
                             _tl129334129821_
                             _e129339129824_
                             _hd129338129827_
                             _tl129337129829_
                             _e129342129832_
                             _hd129341129835_
                             _tl129340129837_
                             _e129345129840_
                             _hd129344129843_
                             _tl129343129845_
                             _e129348129848_
                             _hd129347129851_
                             _tl129346129853_
                             _e129351129856_
                             _hd129350129859_
                             _tl129349129861_
                             _e129354129864_
                             _hd129353129867_
                             _tl129352129869_))))
                     (___match135009135010_
                      (lambda (_e129282129929_
                               _hd129281129932_
                               _tl129280129934_
                               _e129285129937_
                               _hd129284129940_
                               _tl129283129942_
                               _e129288129945_
                               _hd129287129948_
                               _tl129286129950_
                               _e129291129953_
                               _hd129290129956_
                               _tl129289129958_
                               _e129294129961_
                               _hd129293129964_
                               _tl129292129966_
                               _e129297129969_
                               _hd129296129972_
                               _tl129295129974_
                               _e129300129977_
                               _hd129299129980_
                               _tl129298129982_
                               _e129303129985_
                               _hd129302129988_
                               _tl129301129990_
                               _e129306129993_
                               _hd129305129996_
                               _tl129304129998_
                               _e129309130001_
                               _hd129308130004_
                               _tl129307130006_
                               _e129312130009_
                               _hd129311130012_
                               _tl129310130014_
                               _e129315130017_
                               _hd129314130020_
                               _tl129313130022_
                               _e129318130025_
                               _hd129317130028_
                               _tl129316130030_
                               ___splice134802134803_
                               _target129319130033_
                               _tl129321130035_)
                        (letrec ((_loop129322130038_
                                  (lambda (_hd129320130041_ _args129326130043_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129320130041_))
                                        (let ((_e129323130046_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129320130041_))))
                                          (let ((_lp-tl129325130051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129323130046_)))
                                                (_lp-hd129324130049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129323130046_))))
                                            (let ((__tmp135665
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129324130049_
                                                           _args129326130043_))))
                                              (declare (not safe))
                                              (_loop129322130038_
                                               _lp-tl129325130051_
                                               __tmp135665))))
                                        (let ((_args129327130054_
                                               (reverse _args129326130043_)))
                                          (let ((_L130057_ _args129327130054_)
                                                (_L130058_ _hd129317130028_)
                                                (_L130059_ _hd129308130004_)
                                                (_L130060_ _hd129299129980_)
                                                (_L130061_ _hd129290129956_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130061_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130060_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130059_
                                                        _self129217_)))
                                                (___kont134800134801_
                                                 _L130057_
                                                 _L130058_
                                                 _L130059_
                                                 _L130060_
                                                 _L130061_)
                                                (___kont134812134813_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129322130038_ _target129319130033_ '())))))
                     (___match134967134968_
                      (lambda (_e129282129929_
                               _hd129281129932_
                               _tl129280129934_
                               _e129285129937_
                               _hd129284129940_
                               _tl129283129942_
                               _e129288129945_
                               _hd129287129948_
                               _tl129286129950_
                               _e129291129953_
                               _hd129290129956_
                               _tl129289129958_
                               _e129294129961_
                               _hd129293129964_
                               _tl129292129966_
                               _e129297129969_
                               _hd129296129972_
                               _tl129295129974_
                               _e129300129977_
                               _hd129299129980_
                               _tl129298129982_
                               _e129303129985_
                               _hd129302129988_
                               _tl129301129990_
                               _e129306129993_
                               _hd129305129996_
                               _tl129304129998_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129305129996_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129304129998_))
                                (let ((_e129309130001_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129304129998_))))
                                  (let ((_tl129307130006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129309130001_)))
                                        (_hd129308130004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129309130001_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129307130006_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129301129990_))
                                            (let ((_e129312130009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129301129990_))))
                                              (let ((_tl129310130014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129312130009_)))
                                                    (_hd129311130012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129312130009_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129311130012_))
                                                    (let ((_e129315130017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129311130012_))))
                                                      (let ((_tl129313130022_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129315130017_)))
                    (_hd129314130020_
                     (let () (declare (not safe)) (##car _e129315130017_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129314130020_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129314130020_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129313130022_))
                            (let ((_e129318130025_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129313130022_))))
                              (let ((_tl129316130030_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129318130025_)))
                                    (_hd129317130028_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129318130025_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129316130030_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129310130014_))
                                        (let ((___splice134802134803_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129310130014_
                                                  '0))))
                                          (let ((_tl129321130035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134802134803_
                                                    '1)))
                                                (_target129319130033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134802134803_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129321130035_))
                                                (___match135009135010_
                                                 _e129282129929_
                                                 _hd129281129932_
                                                 _tl129280129934_
                                                 _e129285129937_
                                                 _hd129284129940_
                                                 _tl129283129942_
                                                 _e129288129945_
                                                 _hd129287129948_
                                                 _tl129286129950_
                                                 _e129291129953_
                                                 _hd129290129956_
                                                 _tl129289129958_
                                                 _e129294129961_
                                                 _hd129293129964_
                                                 _tl129292129966_
                                                 _e129297129969_
                                                 _hd129296129972_
                                                 _tl129295129974_
                                                 _e129300129977_
                                                 _hd129299129980_
                                                 _tl129298129982_
                                                 _e129303129985_
                                                 _hd129302129988_
                                                 _tl129301129990_
                                                 _e129306129993_
                                                 _hd129305129996_
                                                 _tl129304129998_
                                                 _e129309130001_
                                                 _hd129308130004_
                                                 _tl129307130006_
                                                 _e129312130009_
                                                 _hd129311130012_
                                                 _tl129310130014_
                                                 _e129315130017_
                                                 _hd129314130020_
                                                 _tl129313130022_
                                                 _e129318130025_
                                                 _hd129317130028_
                                                 _tl129316130030_
                                                 ___splice134802134803_
                                                 _target129319130033_
                                                 _tl129321130035_)
                                                (___kont134812134813_))))
                                        (___kont134812134813_))
                                    (___kont134812134813_))))
                            (___kont134812134813_))
                        (___kont134812134813_))
                    (___kont134812134813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134812134813_))))
                                            (___match135291135292_
                                             _e129282129929_
                                             _hd129281129932_
                                             _tl129280129934_
                                             _e129285129937_
                                             _hd129284129940_
                                             _tl129283129942_
                                             _e129288129945_
                                             _hd129287129948_
                                             _tl129286129950_
                                             _e129291129953_
                                             _hd129290129956_
                                             _tl129289129958_
                                             _e129294129961_
                                             _hd129293129964_
                                             _tl129292129966_
                                             _e129297129969_
                                             _hd129296129972_
                                             _tl129295129974_
                                             _e129300129977_
                                             _hd129299129980_
                                             _tl129298129982_
                                             _e129303129985_
                                             _hd129302129988_
                                             _tl129301129990_))
                                        (___match135291135292_
                                         _e129282129929_
                                         _hd129281129932_
                                         _tl129280129934_
                                         _e129285129937_
                                         _hd129284129940_
                                         _tl129283129942_
                                         _e129288129945_
                                         _hd129287129948_
                                         _tl129286129950_
                                         _e129291129953_
                                         _hd129290129956_
                                         _tl129289129958_
                                         _e129294129961_
                                         _hd129293129964_
                                         _tl129292129966_
                                         _e129297129969_
                                         _hd129296129972_
                                         _tl129295129974_
                                         _e129300129977_
                                         _hd129299129980_
                                         _tl129298129982_
                                         _e129303129985_
                                         _hd129302129988_
                                         _tl129301129990_))))
                                (___match135291135292_
                                 _e129282129929_
                                 _hd129281129932_
                                 _tl129280129934_
                                 _e129285129937_
                                 _hd129284129940_
                                 _tl129283129942_
                                 _e129288129945_
                                 _hd129287129948_
                                 _tl129286129950_
                                 _e129291129953_
                                 _hd129290129956_
                                 _tl129289129958_
                                 _e129294129961_
                                 _hd129293129964_
                                 _tl129292129966_
                                 _e129297129969_
                                 _hd129296129972_
                                 _tl129295129974_
                                 _e129300129977_
                                 _hd129299129980_
                                 _tl129298129982_
                                 _e129303129985_
                                 _hd129302129988_
                                 _tl129301129990_))
                            (___match135077135078_
                             _e129282129929_
                             _hd129281129932_
                             _tl129280129934_
                             _e129285129937_
                             _hd129284129940_
                             _tl129283129942_
                             _e129288129945_
                             _hd129287129948_
                             _tl129286129950_
                             _e129291129953_
                             _hd129290129956_
                             _tl129289129958_
                             _e129294129961_
                             _hd129293129964_
                             _tl129292129966_
                             _e129297129969_
                             _hd129296129972_
                             _tl129295129974_
                             _e129300129977_
                             _hd129299129980_
                             _tl129298129982_
                             _e129303129985_
                             _hd129302129988_
                             _tl129301129990_
                             _e129306129993_
                             _hd129305129996_
                             _tl129304129998_))))
                     (___match134899134900_
                      (lambda (_e129238130121_
                               _hd129237130124_
                               _tl129236130126_
                               _e129241130129_
                               _hd129240130132_
                               _tl129239130134_
                               _e129244130137_
                               _hd129243130140_
                               _tl129242130142_
                               _e129247130145_
                               _hd129246130148_
                               _tl129245130150_
                               _e129250130153_
                               _hd129249130156_
                               _tl129248130158_
                               _e129253130161_
                               _hd129252130164_
                               _tl129251130166_
                               _e129256130169_
                               _hd129255130172_
                               _tl129254130174_
                               _e129259130177_
                               _hd129258130180_
                               _tl129257130182_
                               _e129262130185_
                               _hd129261130188_
                               _tl129260130190_
                               _e129265130193_
                               _hd129264130196_
                               _tl129263130198_
                               ___splice134798134799_
                               _target129266130201_
                               _tl129268130203_)
                        (letrec ((_loop129269130206_
                                  (lambda (_hd129267130209_ _args129273130211_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129267130209_))
                                        (let ((_e129270130214_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129267130209_))))
                                          (let ((_lp-tl129272130219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129270130214_)))
                                                (_lp-hd129271130217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129270130214_))))
                                            (let ((__tmp135666
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129271130217_
                                                           _args129273130211_))))
                                              (declare (not safe))
                                              (_loop129269130206_
                                               _lp-tl129272130219_
                                               __tmp135666))))
                                        (let ((_args129274130222_
                                               (reverse _args129273130211_)))
                                          (let ((_L130225_ _args129274130222_)
                                                (_L130226_ _hd129264130196_)
                                                (_L130227_ _hd129255130172_)
                                                (_L130228_ _hd129246130148_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130228_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130227_
                                                        _self129217_)))
                                                (___kont134796134797_
                                                 _L130225_
                                                 _L130226_
                                                 _L130227_
                                                 _L130228_)
                                                (___match135087135088_
                                                 _e129238130121_
                                                 _hd129237130124_
                                                 _tl129236130126_
                                                 _e129241130129_
                                                 _hd129240130132_
                                                 _tl129239130134_
                                                 _e129244130137_
                                                 _hd129243130140_
                                                 _tl129242130142_
                                                 _e129247130145_
                                                 _hd129246130148_
                                                 _tl129245130150_
                                                 _e129250130153_
                                                 _hd129249130156_
                                                 _tl129248130158_
                                                 _e129253130161_
                                                 _hd129252130164_
                                                 _tl129251130166_
                                                 _e129256130169_
                                                 _hd129255130172_
                                                 _tl129254130174_
                                                 _e129259130177_
                                                 _hd129258130180_
                                                 _tl129257130182_
                                                 _e129262130185_
                                                 _hd129261130188_
                                                 _tl129260130190_
                                                 _e129265130193_
                                                 _hd129264130196_
                                                 _tl129263130198_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129269130206_ _target129266130201_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134794134795_))
                    (let ((_e129238130121_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134794134795_))))
                      (let ((_tl129236130126_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129238130121_)))
                            (_hd129237130124_
                             (let ()
                               (declare (not safe))
                               (##car _e129238130121_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129236130126_))
                            (let ((_e129241130129_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129236130126_))))
                              (let ((_tl129239130134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129241130129_)))
                                    (_hd129240130132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129241130129_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129240130132_))
                                    (let ((_e129244130137_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129240130132_))))
                                      (let ((_tl129242130142_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129244130137_)))
                                            (_hd129243130140_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129244130137_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129243130140_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129243130140_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129242130142_))
                                                    (let ((_e129247130145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129242130142_))))
                                                      (let ((_tl129245130150_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129247130145_)))
                    (_hd129246130148_
                     (let () (declare (not safe)) (##car _e129247130145_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129245130150_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129239130134_))
                        (let ((_e129250130153_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129239130134_))))
                          (let ((_tl129248130158_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129250130153_)))
                                (_hd129249130156_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129250130153_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129249130156_))
                                (let ((_e129253130161_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129249130156_))))
                                  (let ((_tl129251130166_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129253130161_)))
                                        (_hd129252130164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129253130161_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129252130164_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129252130164_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129251130166_))
                                                (let ((_e129256130169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129251130166_))))
                                                  (let ((_tl129254130174_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129256130169_)))
                                                        (_hd129255130172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129256130169_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129254130174_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129248130158_))
                                                            (let ((_e129259130177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129248130158_))))
                      (let ((_tl129257130182_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129259130177_)))
                            (_hd129258130180_
                             (let ()
                               (declare (not safe))
                               (##car _e129259130177_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129258130180_))
                            (let ((_e129262130185_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129258130180_))))
                              (let ((_tl129260130190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129262130185_)))
                                    (_hd129261130188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129262130185_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129261130188_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129261130188_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129260130190_))
                                            (let ((_e129265130193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129260130190_))))
                                              (let ((_tl129263130198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129265130193_)))
                                                    (_hd129264130196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129265130193_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129263130198_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129257130182_))
                                                        (let ((___splice134798134799_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129257130182_ '0))))
                  (let ((_tl129268130203_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134798134799_ '1)))
                        (_target129266130201_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134798134799_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129268130203_))
                        (___match134899134900_
                         _e129238130121_
                         _hd129237130124_
                         _tl129236130126_
                         _e129241130129_
                         _hd129240130132_
                         _tl129239130134_
                         _e129244130137_
                         _hd129243130140_
                         _tl129242130142_
                         _e129247130145_
                         _hd129246130148_
                         _tl129245130150_
                         _e129250130153_
                         _hd129249130156_
                         _tl129248130158_
                         _e129253130161_
                         _hd129252130164_
                         _tl129251130166_
                         _e129256130169_
                         _hd129255130172_
                         _tl129254130174_
                         _e129259130177_
                         _hd129258130180_
                         _tl129257130182_
                         _e129262130185_
                         _hd129261130188_
                         _tl129260130190_
                         _e129265130193_
                         _hd129264130196_
                         _tl129263130198_
                         ___splice134798134799_
                         _target129266130201_
                         _tl129268130203_)
                        (___match135087135088_
                         _e129238130121_
                         _hd129237130124_
                         _tl129236130126_
                         _e129241130129_
                         _hd129240130132_
                         _tl129239130134_
                         _e129244130137_
                         _hd129243130140_
                         _tl129242130142_
                         _e129247130145_
                         _hd129246130148_
                         _tl129245130150_
                         _e129250130153_
                         _hd129249130156_
                         _tl129248130158_
                         _e129253130161_
                         _hd129252130164_
                         _tl129251130166_
                         _e129256130169_
                         _hd129255130172_
                         _tl129254130174_
                         _e129259130177_
                         _hd129258130180_
                         _tl129257130182_
                         _e129262130185_
                         _hd129261130188_
                         _tl129260130190_
                         _e129265130193_
                         _hd129264130196_
                         _tl129263130198_))))
                (___match135087135088_
                 _e129238130121_
                 _hd129237130124_
                 _tl129236130126_
                 _e129241130129_
                 _hd129240130132_
                 _tl129239130134_
                 _e129244130137_
                 _hd129243130140_
                 _tl129242130142_
                 _e129247130145_
                 _hd129246130148_
                 _tl129245130150_
                 _e129250130153_
                 _hd129249130156_
                 _tl129248130158_
                 _e129253130161_
                 _hd129252130164_
                 _tl129251130166_
                 _e129256130169_
                 _hd129255130172_
                 _tl129254130174_
                 _e129259130177_
                 _hd129258130180_
                 _tl129257130182_
                 _e129262130185_
                 _hd129261130188_
                 _tl129260130190_
                 _e129265130193_
                 _hd129264130196_
                 _tl129263130198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135291135292_
                                                     _e129238130121_
                                                     _hd129237130124_
                                                     _tl129236130126_
                                                     _e129241130129_
                                                     _hd129240130132_
                                                     _tl129239130134_
                                                     _e129244130137_
                                                     _hd129243130140_
                                                     _tl129242130142_
                                                     _e129247130145_
                                                     _hd129246130148_
                                                     _tl129245130150_
                                                     _e129250130153_
                                                     _hd129249130156_
                                                     _tl129248130158_
                                                     _e129253130161_
                                                     _hd129252130164_
                                                     _tl129251130166_
                                                     _e129256130169_
                                                     _hd129255130172_
                                                     _tl129254130174_
                                                     _e129259130177_
                                                     _hd129258130180_
                                                     _tl129257130182_))))
                                            (___match135291135292_
                                             _e129238130121_
                                             _hd129237130124_
                                             _tl129236130126_
                                             _e129241130129_
                                             _hd129240130132_
                                             _tl129239130134_
                                             _e129244130137_
                                             _hd129243130140_
                                             _tl129242130142_
                                             _e129247130145_
                                             _hd129246130148_
                                             _tl129245130150_
                                             _e129250130153_
                                             _hd129249130156_
                                             _tl129248130158_
                                             _e129253130161_
                                             _hd129252130164_
                                             _tl129251130166_
                                             _e129256130169_
                                             _hd129255130172_
                                             _tl129254130174_
                                             _e129259130177_
                                             _hd129258130180_
                                             _tl129257130182_))
                                        (___match134967134968_
                                         _e129238130121_
                                         _hd129237130124_
                                         _tl129236130126_
                                         _e129241130129_
                                         _hd129240130132_
                                         _tl129239130134_
                                         _e129244130137_
                                         _hd129243130140_
                                         _tl129242130142_
                                         _e129247130145_
                                         _hd129246130148_
                                         _tl129245130150_
                                         _e129250130153_
                                         _hd129249130156_
                                         _tl129248130158_
                                         _e129253130161_
                                         _hd129252130164_
                                         _tl129251130166_
                                         _e129256130169_
                                         _hd129255130172_
                                         _tl129254130174_
                                         _e129259130177_
                                         _hd129258130180_
                                         _tl129257130182_
                                         _e129262130185_
                                         _hd129261130188_
                                         _tl129260130190_))
                                    (___match135291135292_
                                     _e129238130121_
                                     _hd129237130124_
                                     _tl129236130126_
                                     _e129241130129_
                                     _hd129240130132_
                                     _tl129239130134_
                                     _e129244130137_
                                     _hd129243130140_
                                     _tl129242130142_
                                     _e129247130145_
                                     _hd129246130148_
                                     _tl129245130150_
                                     _e129250130153_
                                     _hd129249130156_
                                     _tl129248130158_
                                     _e129253130161_
                                     _hd129252130164_
                                     _tl129251130166_
                                     _e129256130169_
                                     _hd129255130172_
                                     _tl129254130174_
                                     _e129259130177_
                                     _hd129258130180_
                                     _tl129257130182_))))
                            (___match135291135292_
                             _e129238130121_
                             _hd129237130124_
                             _tl129236130126_
                             _e129241130129_
                             _hd129240130132_
                             _tl129239130134_
                             _e129244130137_
                             _hd129243130140_
                             _tl129242130142_
                             _e129247130145_
                             _hd129246130148_
                             _tl129245130150_
                             _e129250130153_
                             _hd129249130156_
                             _tl129248130158_
                             _e129253130161_
                             _hd129252130164_
                             _tl129251130166_
                             _e129256130169_
                             _hd129255130172_
                             _tl129254130174_
                             _e129259130177_
                             _hd129258130180_
                             _tl129257130182_))))
                    (___match135229135230_
                     _e129238130121_
                     _hd129237130124_
                     _tl129236130126_
                     _e129241130129_
                     _hd129240130132_
                     _tl129239130134_
                     _e129244130137_
                     _hd129243130140_
                     _tl129242130142_
                     _e129247130145_
                     _hd129246130148_
                     _tl129245130150_
                     _e129250130153_
                     _hd129249130156_
                     _tl129248130158_
                     _e129253130161_
                     _hd129252130164_
                     _tl129251130166_
                     _e129256130169_
                     _hd129255130172_
                     _tl129254130174_))
                (___kont134812134813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134812134813_))
                                            (___kont134812134813_))
                                        (___kont134812134813_))))
                                (___kont134812134813_))))
                        (___kont134812134813_))
                    (___kont134812134813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134812134813_))
                                                (___kont134812134813_))
                                            (___kont134812134813_))))
                                    (___kont134812134813_))))
                            (___kont134812134813_))))
                    (___kont134812134813_))))))))))
