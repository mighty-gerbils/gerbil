(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709213452)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl134187_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135315 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl134187_ __tmp135315))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134187_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134187_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134187_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134187_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl134187_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134170_ . _args134172_)
        (let ((__tmp135317
               (lambda ()
                 (declare (not safe))
                 (if (null? _args134172_)
                     (gxc#compile-e__0 _stx134170_)
                     (let ((_arg1134177_ (car _args134172_))
                           (_rest134179_ (cdr _args134172_)))
                       (if (null? _rest134179_)
                           (gxc#compile-e__1 _stx134170_ _arg1134177_)
                           (let ((_arg2134182_ (car _rest134179_))
                                 (_rest134184_ (cdr _rest134179_)))
                             (if (null? _rest134184_)
                                 (gxc#compile-e__2
                                  _stx134170_
                                  _arg1134177_
                                  _arg2134182_)
                                 (apply gxc#compile-e
                                        _stx134170_
                                        _arg1134177_
                                        _arg2134182_
                                        _rest134184_))))))))
              (__tmp135316 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp135317
           gxc#current-compile-methods
           __tmp135316))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134167_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135318 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl134167_ __tmp135318))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134167_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl134167_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl134167_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx134150_ . _args134152_)
        (let ((__tmp135320
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
              (__tmp135319 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135320
           gxc#current-compile-methods
           __tmp135319))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl134147_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp135321 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl134147_ __tmp135321))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl134147_ '%#call gxc#subst-object-refs-call%))
           _tbl134147_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx134130_ . _args134132_)
        (let ((__tmp135323
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
              (__tmp135322 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp135323
           gxc#current-compile-methods
           __tmp135322))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx131342_)
        (letrec ((_generate-method-bind131344_
                  (lambda (_$klass134123_
                           _$method-table134124_
                           _id134125_
                           _$id134126_)
                    (let ((_$tmp134128_
                           (let ((__tmp135324 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135324))))
                      (let ((__tmp135372
                             (let ()
                               (declare (not safe))
                               (cons _$id134126_ '())))
                            (__tmp135325
                             (let ((__tmp135326
                                    (let ((__tmp135327
                                           (let ((__tmp135370
                                                  (let ((__tmp135371
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135371)))
                                                 (__tmp135328
                                                  (let ((__tmp135329
                                                         (let ((__tmp135330
                                                                (let ((__tmp135331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135332
                                      (let ((__tmp135333
                                             (let ((__tmp135353
                                                    (let ((__tmp135354
                                                           (let ((__tmp135369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134128_ '())))
                         (__tmp135355
                          (let ((__tmp135356
                                 (let ((__tmp135357
                                        (let ((__tmp135367
                                               (let ((__tmp135368
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135368)))
                                              (__tmp135358
                                               (let ((__tmp135365
                                                      (let ((__tmp135366
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134124_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135359
                                                      (let ((__tmp135363
                                                             (let ((__tmp135364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134125_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135364)))
                    (__tmp135360
                     (let ((__tmp135361
                            (let ((__tmp135362
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135362))))
                       (declare (not safe))
                       (cons __tmp135361 '()))))
                (declare (not safe))
                (cons __tmp135363 __tmp135360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135365
                                                       __tmp135359))))
                                          (declare (not safe))
                                          (cons __tmp135367 __tmp135358))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135357))))
                            (declare (not safe))
                            (cons __tmp135356 '()))))
                     (declare (not safe))
                     (cons __tmp135369 __tmp135355))))
              (declare (not safe))
              (cons __tmp135354 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135334
                                                    (let ((__tmp135335
                                                           (let ((__tmp135336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135351
                                 (let ((__tmp135352
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134128_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135352)))
                                (__tmp135337
                                 (let ((__tmp135349
                                        (let ((__tmp135350
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134128_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135350)))
                                       (__tmp135338
                                        (let ((__tmp135339
                                               (let ((__tmp135340
                                                      (let ((__tmp135347
                                                             (let ((__tmp135348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135348)))
                    (__tmp135341
                     (let ((__tmp135345
                            (let ((__tmp135346
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135346)))
                           (__tmp135342
                            (let ((__tmp135343
                                   (let ((__tmp135344
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134125_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135344))))
                              (declare (not safe))
                              (cons __tmp135343 '()))))
                       (declare (not safe))
                       (cons __tmp135345 __tmp135342))))
                (declare (not safe))
                (cons __tmp135347 __tmp135341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135340))))
                                          (declare (not safe))
                                          (cons __tmp135339 '()))))
                                   (declare (not safe))
                                   (cons __tmp135349 __tmp135338))))
                            (declare (not safe))
                            (cons __tmp135351 __tmp135337))))
                     (declare (not safe))
                     (cons '%#if __tmp135336))))
              (declare (not safe))
              (cons __tmp135335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135353
                                                     __tmp135334))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135333))))
                                 (declare (not safe))
                                 (cons __tmp135332 '()))))
                          (declare (not safe))
                          (cons '() __tmp135331))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135329 '()))))
                                             (declare (not safe))
                                             (cons __tmp135370 __tmp135328))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135327))))
                               (declare (not safe))
                               (cons __tmp135326 '()))))
                        (declare (not safe))
                        (cons __tmp135372 __tmp135325)))))
                 (_generate-slot-bind131345_
                  (lambda (_$klass134117_ _id134118_ _$id134119_)
                    (let ((_$tmp134121_
                           (let ((__tmp135373 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135373))))
                      (let ((__tmp135410
                             (let ()
                               (declare (not safe))
                               (cons _$id134119_ '())))
                            (__tmp135374
                             (let ((__tmp135375
                                    (let ((__tmp135376
                                           (let ((__tmp135396
                                                  (let ((__tmp135397
                                                         (let ((__tmp135409
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134121_ '())))
                       (__tmp135398
                        (let ((__tmp135399
                               (let ((__tmp135400
                                      (let ((__tmp135407
                                             (let ((__tmp135408
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135408)))
                                            (__tmp135401
                                             (let ((__tmp135405
                                                    (let ((__tmp135406
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135406)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135402
                                                    (let ((__tmp135403
                                                           (let ((__tmp135404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134118_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135404))))
              (declare (not safe))
              (cons __tmp135403 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135405
                                                     __tmp135402))))
                                        (declare (not safe))
                                        (cons __tmp135407 __tmp135401))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135400))))
                          (declare (not safe))
                          (cons __tmp135399 '()))))
                   (declare (not safe))
                   (cons __tmp135409 __tmp135398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135397 '())))
                                                 (__tmp135377
                                                  (let ((__tmp135378
                                                         (let ((__tmp135379
                                                                (let ((__tmp135394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135395
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134121_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135395)))
                              (__tmp135380
                               (let ((__tmp135392
                                      (let ((__tmp135393
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134121_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135393)))
                                     (__tmp135381
                                      (let ((__tmp135382
                                             (let ((__tmp135383
                                                    (let ((__tmp135390
                                                           (let ((__tmp135391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135391)))
                  (__tmp135384
                   (let ((__tmp135388
                          (let ((__tmp135389
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135389)))
                         (__tmp135385
                          (let ((__tmp135386
                                 (let ((__tmp135387
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134118_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135387))))
                            (declare (not safe))
                            (cons __tmp135386 '()))))
                     (declare (not safe))
                     (cons __tmp135388 __tmp135385))))
              (declare (not safe))
              (cons __tmp135390 __tmp135384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135383))))
                                        (declare (not safe))
                                        (cons __tmp135382 '()))))
                                 (declare (not safe))
                                 (cons __tmp135392 __tmp135381))))
                          (declare (not safe))
                          (cons __tmp135394 __tmp135380))))
                   (declare (not safe))
                   (cons '%#if __tmp135379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135378 '()))))
                                             (declare (not safe))
                                             (cons __tmp135396 __tmp135377))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135376))))
                               (declare (not safe))
                               (cons __tmp135375 '()))))
                        (declare (not safe))
                        (cons __tmp135410 __tmp135374)))))
                 (_generate-specializer-impl131346_
                  (lambda (_$klass134111_
                           _$method-table134112_
                           _methods-bind134113_
                           _slots-bind134114_
                           _specializer-impl134115_)
                    (let ((__tmp135411
                           (let ((__tmp135412
                                  (let ((__tmp135418
                                         (let ((__tmp135419
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134112_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134111_ __tmp135419)))
                                        (__tmp135413
                                         (let ((__tmp135414
                                                (let ((__tmp135415
                                                       (let ((__tmp135417
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134114_ _methods-bind134113_)))
                     (__tmp135416
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134115_ '()))))
                 (declare (not safe))
                 (cons __tmp135417 __tmp135416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135415))))
                                           (declare (not safe))
                                           (cons __tmp135414 '()))))
                                    (declare (not safe))
                                    (cons __tmp135418 __tmp135413))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135412))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135411 _stx131342_))))
                 (_generate-specializer-def131347_
                  (lambda (_id134107_
                           _specializer-id134108_
                           _specializer-impl134109_)
                    (let ((__tmp135420
                           (let ((__tmp135421
                                  (let ((__tmp135422
                                         (let ((__tmp135435
                                                (let ((__tmp135436
                                                       (let ((__tmp135437
                                                              (let ((__tmp135439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134108_ '())))
                            (__tmp135438
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134109_ '()))))
                        (declare (not safe))
                        (cons __tmp135439 __tmp135438))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135436
                                                   _stx131342_)))
                                               (__tmp135423
                                                (let ((__tmp135424
                                                       (let ((__tmp135425
                                                              (let ((__tmp135426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135433
                                    (let ((__tmp135434
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135434)))
                                   (__tmp135427
                                    (let ((__tmp135431
                                           (let ((__tmp135432
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134107_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135432)))
                                          (__tmp135428
                                           (let ((__tmp135429
                                                  (let ((__tmp135430
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135430))))
                                             (declare (not safe))
                                             (cons __tmp135429 '()))))
                                      (declare (not safe))
                                      (cons __tmp135431 __tmp135428))))
                               (declare (not safe))
                               (cons __tmp135433 __tmp135427))))
                        (declare (not safe))
                        (cons '%#call __tmp135426))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135425 _stx131342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135424 '()))))
                                           (declare (not safe))
                                           (cons __tmp135435 __tmp135423))))
                                    (declare (not safe))
                                    (cons _stx131342_ __tmp135422))))
                             (declare (not safe))
                             (cons '%#begin __tmp135421))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135420 _stx131342_)))))
          (let* ((___stx134276134277_ _stx131342_)
                 (_g131350131370_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134276134277_)))))
            (let ((___kont134278134279_
                   (lambda (_L131414_ _L131415_)
                     (let ((_method-calls131434_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131435_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131436_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131438_
                                 (lambda ()
                                   (if (let ((__tmp135441
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131434_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135441))
                                       (let ((__tmp135440
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131435_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135440))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131414_))
                             (let* ((___stx134190134191_ _L131414_)
                                    (_g131825131843_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134190134191_)))))
                               (let ((___kont134192134193_
                                      (lambda (_L131879_ _L131880_ _L131881_)
                                        (for-each
                                         (lambda (_g131896131898_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131896131898_
                                              _L131881_
                                              _method-calls131434_
                                              _slot-refs131435_)))
                                         _L131879_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131438_))
                                            _stx131342_
                                            (let* ((_specializer-id131907_
                                                    (let* ((_id131901_
                                                            (let ((__tmp135563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131415_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135563 '"::specialize")))
                   (_specializer-id131904_
                    (let ((__tmp135564
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131342_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131901_ __tmp135564))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131904_))
              _specializer-id131904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131909_
                                                    (let ((__tmp135565
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135565)))
                                                   (_$method-table131911_
                                                    (let ((__tmp135566
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135566)))
                                                   (_methods131913_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131434_)))
                                                   (_$methods131917_
                                                    (map (lambda (_id131915_)
                                                           (let ((__tmp135567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131915_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135567)))
                 _methods131913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135568_
                                                    (for-each
                                                     (lambda (_g131918131921_
                                                              _g131919131923_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131434_
                                                          _g131918131921_
                                                          _g131919131923_)))
                                                     _methods131913_
                                                     _$methods131917_))
                                                   (_methods-bind131934_
                                                    (map (lambda (_g131926131929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131927131931_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131344_
                      _$klass131909_
                      _$method-table131911_
                      _g131926131929_
                      _g131927131931_)))
                 _methods131913_
                 _$methods131917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131936_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131435_)))
                                                   (_$slots131940_
                                                    (map (lambda (_id131938_)
                                                           (let ((__tmp135569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131938_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135569)))
                 _slots131936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135570_
                                                    (for-each
                                                     (lambda (_g131941131944_
                                                              _g131942131946_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131435_
                                                          _g131941131944_
                                                          _g131942131946_)))
                                                     _slots131936_
                                                     _$slots131940_))
                                                   (_slots-bind131957_
                                                    (map (lambda (_g131949131952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131950131954_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131345_
                      _$klass131909_
                      _g131949131952_
                      _g131950131954_)))
                 _slots131936_
                 _$slots131940_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131963_
                                                    (map (lambda (_g131958131960_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131958131960_
                                                              _L131881_
                                                              _$klass131909_
                                                              _method-calls131434_
                                                              _slot-refs131435_)))
                                                         _L131879_))
                                                   (_specializer-impl131965_
                                                    (let ((__tmp135571
                                                           (let ((__tmp135572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135573
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131881_ _L131880_))))
                            (declare (not safe))
                            (cons __tmp135573 _specializer-body131963_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135572))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135571 _stx131342_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131967_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131346_
                                                       _$klass131909_
                                                       _$method-table131911_
                                                       _methods-bind131934_
                                                       _slots-bind131957_
                                                       _specializer-impl131965_))))
                                              (let ((__tmp135575
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131415_)))
                                                    (__tmp135574
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131907_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135575
                                                 '" => "
                                                 __tmp135574))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131347_
                                                 _L131415_
                                                 _specializer-id131907_
                                                 _specializer-impl131967_))))))
                                     (___kont134194134195_
                                      (lambda () _stx131342_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134190134191_))
                                     (let ((_e131832131855_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134190134191_))))
                                       (let ((_tl131830131860_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131832131855_)))
                                             (_hd131831131858_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131832131855_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131830131860_))
                                             (let ((_e131835131863_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131830131860_))))
                                               (let ((_tl131833131868_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131835131863_)))
                                                     (_hd131834131866_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131835131863_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131834131866_))
                                                     (let ((_e131838131871_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131834131866_))))
                                                       (let ((_tl131836131876_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131838131871_)))
                     (_hd131837131874_
                      (let () (declare (not safe)) (##car _e131838131871_))))
                 (___kont134192134193_
                  _tl131833131868_
                  _tl131836131876_
                  _hd131837131874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134194134195_))))
                                             (___kont134194134195_))))
                                     (___kont134194134195_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131414_))
                                 (let* ((_g131973131992_
                                         (lambda (_g131974131989_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131974131989_))))
                                        (_g131972132275_
                                         (lambda (_g131974131995_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131974131995_))
                                               (let ((_e131978131997_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131974131995_))))
                                                 (let ((_hd131977132000_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131978131997_)))
                                                       (_tl131976132002_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131978131997_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131976132002_))
                                                       (let ((_g135546_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131976132002_ '0))))
                 (begin
                   (let ((_g135547_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135546_)
                                (##vector-length _g135546_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135547_ 2)))
                         (error "Context expects 2 values" _g135547_)))
                   (let ((_target131979132005_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135546_ 0)))
                         (_tl131981132007_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135546_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131981132007_))
                         (letrec ((_loop131982132010_
                                   (lambda (_hd131980132013_
                                            _clause131986132015_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131980132013_))
                                         (let ((_e131983132018_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131980132013_))))
                                           (let ((_lp-hd131984132021_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131983132018_)))
                                                 (_lp-tl131985132023_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131983132018_))))
                                             (let ((__tmp135562
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131984132021_
                                                            _clause131986132015_))))
                                               (declare (not safe))
                                               (_loop131982132010_
                                                _lp-tl131985132023_
                                                __tmp135562))))
                                         (let ((_clause131987132026_
                                                (reverse _clause131986132015_)))
                                           ((lambda (_L132029_)
                                              (for-each
                                               (lambda (_clause132042_)
                                                 (let* ((___stx134216134217_
                                                         _clause132042_)
                                                        (_g132045132060_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134216134217_)))))
                                                   (let ((___kont134218134219_
                                                          (lambda (_L132088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132089_
                           _L132090_)
                    (for-each
                     (lambda (_g132105132107_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132105132107_
                          _L132090_
                          _method-calls131434_
                          _slot-refs131435_)))
                     _L132088_)))
                 (___kont134220134221_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134216134217_))
                                                         (let ((_e132052132072_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134216134217_))))
                   (let ((_tl132050132077_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132052132072_)))
                         (_hd132051132075_
                          (let ()
                            (declare (not safe))
                            (##car _e132052132072_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132051132075_))
                         (let ((_e132055132080_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132051132075_))))
                           (let ((_tl132053132085_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132055132080_)))
                                 (_hd132054132083_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132055132080_))))
                             (___kont134218134219_
                              _tl132050132077_
                              _tl132053132085_
                              _hd132054132083_)))
                         (___kont134220134221_))))
                 (___kont134220134221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135548
                                                      (lambda (_g132112132115_
                                                               _g132113132117_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132112132115_
                                                                _g132113132117_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135548
                                                         '()
                                                         _L132029_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131438_))
                                                  _stx131342_
                                                  (let* ((_specializer-id132126_
                                                          (let* ((_id132120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135549
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131415_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135549 '"::specialize")))
                         (_specializer-id132123_
                          (let ((__tmp135550
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131342_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132120_ __tmp135550))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132123_))
                    _specializer-id132123_))
                 (_$klass132128_
                  (let ((__tmp135551 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135551)))
                 (_$method-table132130_
                  (let ((__tmp135552 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135552)))
                 (_methods132132_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131434_)))
                 (_$methods132136_
                  (map (lambda (_id132134_)
                         (let ((__tmp135553 (gensym _id132134_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135553)))
                       _methods132132_))
                 (_g135554_
                  (for-each
                   (lambda (_g132137132140_ _g132138132142_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131434_
                        _g132137132140_
                        _g132138132142_)))
                   _methods132132_
                   _$methods132136_))
                 (_methods-bind132153_
                  (map (lambda (_g132145132148_ _g132146132150_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131344_
                            _$klass132128_
                            _$method-table132130_
                            _g132145132148_
                            _g132146132150_)))
                       _methods132132_
                       _$methods132136_))
                 (_slots132155_
                  (let () (declare (not safe)) (hash-keys _slot-refs131435_)))
                 (_$slots132159_
                  (map (lambda (_id132157_)
                         (let ((__tmp135555 (gensym _id132157_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135555)))
                       _slots132155_))
                 (_g135556_
                  (for-each
                   (lambda (_g132160132163_ _g132161132165_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131435_
                        _g132160132163_
                        _g132161132165_)))
                   _slots132155_
                   _$slots132159_))
                 (_slots-bind132176_
                  (map (lambda (_g132168132171_ _g132169132173_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131345_
                            _$klass132128_
                            _g132168132171_
                            _g132169132173_)))
                       _slots132155_
                       _$slots132159_))
                 (_specializer-clauses132268_
                  (map (lambda (_clause132178_)
                         (let* ((___stx134236134237_ _clause132178_)
                                (_g132181132196_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134236134237_)))))
                           (let ((___kont134238134239_
                                  (lambda (_L132224_ _L132225_ _L132226_)
                                    (let* ((_body132256_
                                            (map (lambda (_g132251132253_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132251132253_
                                                      _L132226_
                                                      _$klass132128_
                                                      _method-calls131434_
                                                      _slot-refs131435_)))
                                                 _L132224_))
                                           (__tmp135557
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132226_ _L132225_))))
                                      (declare (not safe))
                                      (cons __tmp135557 _body132256_))))
                                 (___kont134240134241_
                                  (lambda () _clause132178_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134236134237_))
                                 (let ((_e132188132208_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134236134237_))))
                                   (let ((_tl132186132213_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132188132208_)))
                                         (_hd132187132211_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132188132208_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132187132211_))
                                         (let ((_e132191132216_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132187132211_))))
                                           (let ((_tl132189132221_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132191132216_)))
                                                 (_hd132190132219_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132191132216_))))
                                             (___kont134238134239_
                                              _tl132186132213_
                                              _tl132189132221_
                                              _hd132190132219_)))
                                         (___kont134240134241_))))
                                 (___kont134240134241_)))))
                       (let ((__tmp135558
                              (lambda (_g132260132263_ _g132261132265_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132260132263_ _g132261132265_)))))
                         (declare (not safe))
                         (foldr1 __tmp135558 '() _L132029_))))
                 (_specializer-impl132270_
                  (let ((__tmp135559
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132268_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135559 _stx131342_)))
                 (_specializer-impl132272_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131346_
                     _$klass132128_
                     _$method-table132130_
                     _methods-bind132153_
                     _slots-bind132176_
                     _specializer-impl132270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135561
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131415_)))
                                                          (__tmp135560
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132126_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135561
                                                       '" => "
                                                       __tmp135560))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131347_
                                                       _L131415_
                                                       _specializer-id132126_
                                                       _specializer-impl132272_)))))
                                            _clause131987132026_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131982132010_ _target131979132005_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131973131992_ _g131974131995_))))))
               (let ()
                 (declare (not safe))
                 (_g131973131992_ _g131974131995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131973131992_
                                                  _g131974131995_))))))
                                   (declare (not safe))
                                   (_g131972132275_ _L131414_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131414_))
                                     (let* ((_g132278132308_
                                             (lambda (_g132279132305_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132279132305_))))
                                            (_g132277132913_
                                             (lambda (_g132279132311_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132279132311_))
                                                   (let ((_e132285132313_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132279132311_))))
                                                     (let ((_hd132284132316_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132285132313_)))
                                                           (_tl132283132318_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132285132313_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132283132318_))
                                                           (let ((_e132288132321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132283132318_))))
                     (let ((_hd132287132324_
                            (let ()
                              (declare (not safe))
                              (##car _e132288132321_)))
                           (_tl132286132326_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132288132321_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132287132324_))
                           (let ((_e132291132329_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132287132324_))))
                             (let ((_hd132290132332_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132291132329_)))
                                   (_tl132289132334_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132291132329_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132290132332_))
                                   (let ((_e132294132337_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132290132332_))))
                                     (let ((_hd132293132340_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132294132337_)))
                                           (_tl132292132342_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132294132337_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132293132340_))
                                           (let ((_e132297132345_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132293132340_))))
                                             (let ((_hd132296132348_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132297132345_)))
                                                   (_tl132295132350_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132297132345_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132295132350_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132292132342_))
                                                       (let ((_e132300132353_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132292132342_))))
                 (let ((_hd132299132356_
                        (let () (declare (not safe)) (##car _e132300132353_)))
                       (_tl132298132358_
                        (let () (declare (not safe)) (##cdr _e132300132353_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132298132358_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132289132334_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132286132326_))
                               (let ((_e132303132361_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132286132326_))))
                                 (let ((_hd132302132364_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132303132361_)))
                                       (_tl132301132366_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132303132361_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132301132366_))
                                       ((lambda (_L132369_ _L132370_ _L132371_)
                                          (let* ((_g132394132412_
                                                  (lambda (_g132395132409_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132395132409_))))
                                                 (_g132393132463_
                                                  (lambda (_g132395132415_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132395132415_))
                                                        (let ((_e132401132417_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132395132415_))))
                  (let ((_hd132400132420_
                         (let () (declare (not safe)) (##car _e132401132417_)))
                        (_tl132399132422_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132401132417_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132399132422_))
                        (let ((_e132404132425_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132399132422_))))
                          (let ((_hd132403132428_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132404132425_)))
                                (_tl132402132430_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132404132425_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132403132428_))
                                (let ((_e132407132433_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132403132428_))))
                                  (let ((_hd132406132436_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132407132433_)))
                                        (_tl132405132438_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132407132433_))))
                                    ((lambda (_L132441_ _L132442_ _L132443_)
                                       (for-each
                                        (lambda (_g132458132460_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132458132460_
                                             _L132443_
                                             _method-calls131434_
                                             _slot-refs131435_)))
                                        _L132441_))
                                     _tl132402132430_
                                     _tl132405132438_
                                     _hd132406132436_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132394132412_ _g132395132415_)))))
                        (let ()
                          (declare (not safe))
                          (_g132394132412_ _g132395132415_)))))
                (let ()
                  (declare (not safe))
                  (_g132394132412_ _g132395132415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132393132463_ _L132370_))
                                          (let* ((_g132466132485_
                                                  (lambda (_g132467132482_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132467132482_))))
                                                 (_g132465132604_
                                                  (lambda (_g132467132488_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132467132488_))
                                                        (let ((_e132471132490_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132467132488_))))
                  (let ((_hd132470132493_
                         (let () (declare (not safe)) (##car _e132471132490_)))
                        (_tl132469132495_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132471132490_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132469132495_))
                        (let ((_g135516_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132469132495_
                                  '0))))
                          (begin
                            (let ((_g135517_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135516_)
                                         (##vector-length _g135516_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135517_ 2)))
                                  (error "Context expects 2 values"
                                         _g135517_)))
                            (let ((_target132472132498_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135516_ 0)))
                                  (_tl132474132500_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135516_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132474132500_))
                                  (letrec ((_loop132475132503_
                                            (lambda (_hd132473132506_
                                                     _clause132479132508_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132473132506_))
                                                  (let ((_e132476132511_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132473132506_))))
                                                    (let ((_lp-hd132477132514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132476132511_)))
                                                          (_lp-tl132478132516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132476132511_))))
                                                      (let ((__tmp135519
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132477132514_ _clause132479132508_))))
                (declare (not safe))
                (_loop132475132503_ _lp-tl132478132516_ __tmp135519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132480132519_
                                                         (reverse _clause132479132508_)))
                                                    ((lambda (_L132522_)
                                                       (for-each
                                                        (lambda (_clause132535_)
                                                          (let* ((_g132537132552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132538132549_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132538132549_))))
                         (_g132536132594_
                          (lambda (_g132538132555_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132538132555_))
                                (let ((_e132544132557_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132538132555_))))
                                  (let ((_hd132543132560_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132544132557_)))
                                        (_tl132542132562_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132544132557_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132543132560_))
                                        (let ((_e132547132565_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132543132560_))))
                                          (let ((_hd132546132568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132547132565_)))
                                                (_tl132545132570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132547132565_))))
                                            ((lambda (_L132573_
                                                      _L132574_
                                                      _L132575_)
                                               (for-each
                                                (lambda (_g132589132591_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132589132591_
                                                     _L132575_
                                                     _method-calls131434_
                                                     _slot-refs131435_)))
                                                _L132573_))
                                             _tl132542132562_
                                             _tl132545132570_
                                             _hd132546132568_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132537132552_ _g132538132555_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132537132552_ _g132538132555_))))))
                    (declare (not safe))
                    (_g132536132594_ _clause132535_)))
                (let ((__tmp135518
                       (lambda (_g132596132599_ _g132597132601_)
                         (let ()
                           (declare (not safe))
                           (cons _g132596132599_ _g132597132601_)))))
                  (declare (not safe))
                  (foldr1 __tmp135518 '() _L132522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132480132519_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132475132503_
                                       _target132472132498_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132466132485_ _g132467132488_))))))
                        (let ()
                          (declare (not safe))
                          (_g132466132485_ _g132467132488_)))))
                (let ()
                  (declare (not safe))
                  (_g132466132485_ _g132467132488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132465132604_ _L132369_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131438_))
                                              _stx131342_
                                              (let* ((_specializer-id132613_
                                                      (let* ((_id132607_
                                                              (let ((__tmp135520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131415_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135520 '"::specialize")))
                     (_specializer-id132610_
                      (let ((__tmp135521
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131342_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132607_ __tmp135521))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132610_))
                _specializer-id132610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132615_
                                                      (let ((__tmp135522
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135522)))
                                                     (_$method-table132617_
                                                      (let ((__tmp135523
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135523)))
                                                     (_methods132619_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131434_)))
                                                     (_$methods132623_
                                                      (map (lambda (_id132621_)
                                                             (let ((__tmp135524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132621_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135524)))
                   _methods132619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135525_
                                                      (for-each
                                                       (lambda (_g132624132627_
                                                                _g132625132629_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131434_
                                                            _g132624132627_
                                                            _g132625132629_)))
                                                       _methods132619_
                                                       _$methods132623_))
                                                     (_methods-bind132640_
                                                      (map (lambda (_g132632132635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132633132637_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131344_
                        _$klass132615_
                        _$method-table132617_
                        _g132632132635_
                        _g132633132637_)))
                   _methods132619_
                   _$methods132623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132642_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131435_)))
                                                     (_$slots132646_
                                                      (map (lambda (_id132644_)
                                                             (let ((__tmp135526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132644_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135526)))
                   _slots132642_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135527_
                                                      (for-each
                                                       (lambda (_g132647132650_
                                                                _g132648132652_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131435_
                                                            _g132647132650_
                                                            _g132648132652_)))
                                                       _slots132642_
                                                       _$slots132646_))
                                                     (_slots-bind132663_
                                                      (map (lambda (_g132655132658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132656132660_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131345_
                        _$klass132615_
                        _g132655132658_
                        _g132656132660_)))
                   _slots132642_
                   _$slots132646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132749_
                                                      (let* ((_g132665132683_
                                                              (lambda (_g132666132680_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132666132680_))))
                     (_g132664132746_
                      (lambda (_g132666132686_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132666132686_))
                            (let ((_e132672132688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132666132686_))))
                              (let ((_hd132671132691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132672132688_)))
                                    (_tl132670132693_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132672132688_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132670132693_))
                                    (let ((_e132675132696_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132670132693_))))
                                      (let ((_hd132674132699_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132675132696_)))
                                            (_tl132673132701_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132675132696_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132674132699_))
                                            (let ((_e132678132704_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132674132699_))))
                                              (let ((_hd132677132707_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132678132704_)))
                                                    (_tl132676132709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132678132704_))))
                                                ((lambda (_L132712_
                                                          _L132713_
                                                          _L132714_)
                                                   (let* ((_body132744_
                                                           (map (lambda (_g132739132741_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132739132741_
                             _L132714_
                             _$klass132615_
                             _method-calls131434_
                             _slot-refs131435_)))
                        _L132712_))
                  (__tmp135528
                   (let ((__tmp135529
                          (let ((__tmp135530
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132714_ _L132713_))))
                            (declare (not safe))
                            (cons __tmp135530 _body132744_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135528
                                                      _L132370_)))
                                                 _tl132673132701_
                                                 _tl132676132709_
                                                 _hd132677132707_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132665132683_
                                               _g132666132686_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132665132683_ _g132666132686_)))))
                            (let ()
                              (declare (not safe))
                              (_g132665132683_ _g132666132686_))))))
                (declare (not safe))
                (_g132664132746_ _L132370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132906_
                                                      (let* ((_g132751132770_
                                                              (lambda (_g132752132767_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132752132767_))))
                     (_g132750132903_
                      (lambda (_g132752132773_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132752132773_))
                            (let ((_e132756132775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132752132773_))))
                              (let ((_hd132755132778_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132756132775_)))
                                    (_tl132754132780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132756132775_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132754132780_))
                                    (let ((_g135531_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132754132780_
                                              '0))))
                                      (begin
                                        (let ((_g135532_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135531_)
                                                     (##vector-length
                                                      _g135531_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135532_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135532_)))
                                        (let ((_target132757132783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135531_ 0)))
                                              (_tl132759132785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135531_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132759132785_))
                                              (letrec ((_loop132760132788_
                                                        (lambda (_hd132758132791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132764132793_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132758132791_))
                      (let ((_e132761132796_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132758132791_))))
                        (let ((_lp-hd132762132799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132761132796_)))
                              (_lp-tl132763132801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132761132796_))))
                          (let ((__tmp135536
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132762132799_
                                         _clause132764132793_))))
                            (declare (not safe))
                            (_loop132760132788_
                             _lp-tl132763132801_
                             __tmp135536))))
                      (let ((_clause132765132804_
                             (reverse _clause132764132793_)))
                        ((lambda (_L132807_)
                           (let* ((_clauses132901_
                                   (map (lambda (_clause132821_)
                                          (let* ((___stx134256134257_
                                                  _clause132821_)
                                                 (_g132824132839_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134256134257_)))))
                                            (let ((___kont134258134259_
                                                   (lambda (_L132867_
                                                            _L132868_
                                                            _L132869_)
                                                     (let* ((_body132889_
                                                             (map (lambda (_g132884132886_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132884132886_
                               _L132869_
                               _$klass132615_
                               _method-calls131434_
                               _slot-refs131435_)))
                          _L132867_))
                    (__tmp135533
                     (let () (declare (not safe)) (cons _L132869_ _L132868_))))
               (declare (not safe))
               (cons __tmp135533 _body132889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134260134261_
                                                   (lambda () _clause132821_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134256134257_))
                                                  (let ((_e132831132851_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134256134257_))))
                                                    (let ((_tl132829132856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132831132851_)))
                                                          (_hd132830132854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132831132851_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132830132854_))
                                                          (let ((_e132834132859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132830132854_))))
                    (let ((_tl132832132864_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132834132859_)))
                          (_hd132833132862_
                           (let ()
                             (declare (not safe))
                             (##car _e132834132859_))))
                      (___kont134258134259_
                       _tl132829132856_
                       _tl132832132864_
                       _hd132833132862_)))
                  (___kont134260134261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134260134261_)))))
                                        (let ((__tmp135534
                                               (lambda (_g132893132896_
                                                        _g132894132898_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132893132896_
                                                         _g132894132898_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135534 '() _L132807_))))
                                  (__tmp135535
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132901_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135535 _L132369_)))
                         _clause132765132804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132760132788_
                                                   _target132757132783_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132751132770_
                                                 _g132752132773_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132751132770_ _g132752132773_)))))
                            (let ()
                              (declare (not safe))
                              (_g132751132770_ _g132752132773_))))))
                (declare (not safe))
                (_g132750132903_ _L132369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132908_
                                                      (let ((__tmp135537
                                                             (let ((__tmp135538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135540
                                   (let ((__tmp135541
                                          (let ((__tmp135543
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132371_ '())))
                                                (__tmp135542
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132749_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135543 __tmp135542))))
                                     (declare (not safe))
                                     (cons __tmp135541 '())))
                                  (__tmp135539
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132906_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135540 __tmp135539))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135538))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135537 _stx131342_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132910_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131346_
                                                         _$klass132615_
                                                         _$method-table132617_
                                                         _methods-bind132640_
                                                         _slots-bind132663_
                                                         _specializer-impl132908_))))
                                                (let ((__tmp135545
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131415_)))
                                                      (__tmp135544
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132613_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135545
                                                   '" => "
                                                   __tmp135544))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131347_
                                                   _L131415_
                                                   _specializer-id132613_
                                                   _specializer-impl132910_)))))
                                        _hd132302132364_
                                        _hd132299132356_
                                        _hd132296132348_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132278132308_ _g132279132311_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132278132308_ _g132279132311_)))
                           (let ()
                             (declare (not safe))
                             (_g132278132308_ _g132279132311_)))
                       (let ()
                         (declare (not safe))
                         (_g132278132308_ _g132279132311_)))))
               (let () (declare (not safe)) (_g132278132308_ _g132279132311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132278132308_
                                                      _g132279132311_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132278132308_
                                              _g132279132311_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132278132308_ _g132279132311_)))))
                           (let ()
                             (declare (not safe))
                             (_g132278132308_ _g132279132311_)))))
                   (let ()
                     (declare (not safe))
                     (_g132278132308_ _g132279132311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132278132308_
                                                      _g132279132311_))))))
                                       (declare (not safe))
                                       (_g132277132913_ _L131414_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131414_))
                                         (let* ((_g132916132969_
                                                 (lambda (_g132917132966_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132917132966_))))
                                                (_g132915134100_
                                                 (lambda (_g132917132972_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132917132972_))
                                                       (let ((_e132925132974_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132917132972_))))
                 (let ((_hd132924132977_
                        (let () (declare (not safe)) (##car _e132925132974_)))
                       (_tl132923132979_
                        (let () (declare (not safe)) (##cdr _e132925132974_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132924132977_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132924132977_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132923132979_))
                               (let ((_e132928132982_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132923132979_))))
                                 (let ((_hd132927132985_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132928132982_)))
                                       (_tl132926132987_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132928132982_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132927132985_))
                                       (let ((_e132931132990_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132927132985_))))
                                         (let ((_hd132930132993_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132931132990_)))
                                               (_tl132929132995_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132931132990_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132930132993_))
                                               (let ((_e132934132998_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132930132993_))))
                                                 (let ((_hd132933133001_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132934132998_)))
                                                       (_tl132932133003_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132934132998_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132933133001_))
                                                       (let ((_e132937133006_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132933133001_))))
                 (let ((_hd132936133009_
                        (let () (declare (not safe)) (##car _e132937133006_)))
                       (_tl132935133011_
                        (let () (declare (not safe)) (##cdr _e132937133006_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132935133011_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132932133003_))
                           (let ((_e132940133014_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132932133003_))))
                             (let ((_hd132939133017_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132940133014_)))
                                   (_tl132938133019_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132940133014_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132939133017_))
                                   (let ((_e132943133022_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132939133017_))))
                                     (let ((_hd132942133025_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132943133022_)))
                                           (_tl132941133027_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132943133022_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132942133025_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132942133025_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132941133027_))
                                                   (let ((_e132946133030_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132941133027_))))
                                                     (let ((_hd132945133033_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132946133030_)))
                                                           (_tl132944133035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132946133030_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132945133033_))
                                                           (let ((_e132949133038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132945133033_))))
                     (let ((_hd132948133041_
                            (let ()
                              (declare (not safe))
                              (##car _e132949133038_)))
                           (_tl132947133043_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132949133038_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132948133041_))
                           (let ((_e132952133046_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132948133041_))))
                             (let ((_hd132951133049_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132952133046_)))
                                   (_tl132950133051_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132952133046_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132951133049_))
                                   (let ((_e132955133054_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132951133049_))))
                                     (let ((_hd132954133057_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132955133054_)))
                                           (_tl132953133059_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132955133054_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132953133059_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132950133051_))
                                               (let ((_e132958133062_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132950133051_))))
                                                 (let ((_hd132957133065_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132958133062_)))
                                                       (_tl132956133067_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132958133062_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132956133067_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132947133043_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132944133035_))
                       (let ((_e132961133070_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132944133035_))))
                         (let ((_hd132960133073_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132961133070_)))
                               (_tl132959133075_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132961133070_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132959133075_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132938133019_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132929132995_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132926132987_))
                                           (let ((_e132964133078_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132926132987_))))
                                             (let ((_hd132963133081_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132964133078_)))
                                                   (_tl132962133083_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132964133078_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132962133083_))
                                                   ((lambda (_L133086_
                                                             _L133087_
                                                             _L133088_
                                                             _L133089_
                                                             _L133090_)
                                                      (let* ((_g133129133191_
                                                              (lambda (_g133130133188_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133130133188_))))
                     (_g133128134097_
                      (lambda (_g133130133194_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133130133194_))
                            (let ((_e133138133196_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133130133194_))))
                              (let ((_hd133137133199_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133138133196_)))
                                    (_tl133136133201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133138133196_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133137133199_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133137133199_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133136133201_))
                                            (let ((_e133141133204_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133136133201_))))
                                              (let ((_hd133140133207_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133141133204_)))
                                                    (_tl133139133209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133141133204_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133139133209_))
                                                    (let ((_e133144133212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133139133209_))))
                                                      (let ((_hd133143133215_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133144133212_)))
                    (_tl133142133217_
                     (let () (declare (not safe)) (##cdr _e133144133212_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133143133215_))
                    (let ((_e133147133220_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133143133215_))))
                      (let ((_hd133146133223_
                             (let ()
                               (declare (not safe))
                               (##car _e133147133220_)))
                            (_tl133145133225_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133147133220_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133146133223_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133146133223_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133145133225_))
                                    (let ((_e133150133228_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133145133225_))))
                                      (let ((_hd133149133231_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133150133228_)))
                                            (_tl133148133233_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133150133228_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133149133231_))
                                            (let ((_e133153133236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133149133231_))))
                                              (let ((_hd133152133239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133153133236_)))
                                                    (_tl133151133241_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133153133236_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133152133239_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133152133239_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133151133241_))
                                                            (let ((_e133156133244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133151133241_))))
                      (let ((_hd133155133247_
                             (let ()
                               (declare (not safe))
                               (##car _e133156133244_)))
                            (_tl133154133249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133156133244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133154133249_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133148133233_))
                                (let ((_e133159133252_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133148133233_))))
                                  (let ((_hd133158133255_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133159133252_)))
                                        (_tl133157133257_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133159133252_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133158133255_))
                                        (let ((_e133162133260_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133158133255_))))
                                          (let ((_hd133161133263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133162133260_)))
                                                (_tl133160133265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133162133260_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133161133263_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133161133263_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133160133265_))
                                                        (let ((_e133165133268_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133160133265_))))
                  (let ((_hd133164133271_
                         (let () (declare (not safe)) (##car _e133165133268_)))
                        (_tl133163133273_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133165133268_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133163133273_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133157133257_))
                            (let ((_e133168133276_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133157133257_))))
                              (let ((_hd133167133279_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133168133276_)))
                                    (_tl133166133281_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133168133276_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133167133279_))
                                    (let ((_e133171133284_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133167133279_))))
                                      (let ((_hd133170133287_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133171133284_)))
                                            (_tl133169133289_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133171133284_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133170133287_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133170133287_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133169133289_))
                                                    (let ((_e133174133292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133169133289_))))
                                                      (let ((_hd133173133295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133174133292_)))
                    (_tl133172133297_
                     (let () (declare (not safe)) (##cdr _e133174133292_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133172133297_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133166133281_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133166133281_))
                                  '1)
                            (let ((_g135442_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133166133281_
                                      '1))))
                              (begin
                                (let ((_g135443_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135442_)
                                             (##vector-length _g135442_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135443_ 2)))
                                      (error "Context expects 2 values"
                                             _g135443_)))
                                (let ((_target133175133300_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135442_ 0)))
                                      (_tl133177133302_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135442_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133177133302_))
                                      (let ((_e133186133305_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133177133302_))))
                                        (let ((_hd133185133308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133186133305_)))
                                              (_tl133184133310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133186133305_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133184133310_))
                                              (letrec ((_loop133178133313_
                                                        (lambda (_hd133176133316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133182133318_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133176133316_))
                      (let ((_e133179133321_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133176133316_))))
                        (let ((_lp-hd133180133324_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133179133321_)))
                              (_lp-tl133181133326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133179133321_))))
                          (let ((__tmp135515
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133180133324_
                                         _kw-ref133182133318_))))
                            (declare (not safe))
                            (_loop133178133313_
                             _lp-tl133181133326_
                             __tmp135515))))
                      (let ((_kw-ref133183133329_
                             (reverse _kw-ref133182133318_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133142133217_))
                            ((lambda (_L133332_
                                      _L133333_
                                      _L133334_
                                      _L133335_
                                      _L133336_)
                               (let* ((_kw-count133387_
                                       (length (let ((__tmp135444
                                                      (lambda (_g133379133382_
                                                               _g133380133384_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133379133382_
                                                                _g133380133384_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135444
                                                         '()
                                                         _L133333_))))
                                      (_self-index133389_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133387_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133088_))
                                     (let* ((_g133392133406_
                                             (lambda (_g133393133403_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133393133403_))))
                                            (_g133391133519_
                                             (lambda (_g133393133409_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133393133409_))
                                                   (let ((_e133398133411_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133393133409_))))
                                                     (let ((_hd133397133414_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133398133411_)))
                                                           (_tl133396133416_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133398133411_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133396133416_))
                                                           (let ((_e133401133419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133396133416_))))
                     (let ((_hd133400133422_
                            (let ()
                              (declare (not safe))
                              (##car _e133401133419_)))
                           (_tl133399133424_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133401133419_))))
                       ((lambda (_L133427_ _L133428_)
                          (let ((_self133444_
                                 (list-ref _L133428_ _self-index133389_)))
                            (for-each
                             (lambda (_g133445133447_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133445133447_
                                  _self133444_
                                  _method-calls131434_
                                  _slot-refs131435_)))
                             _L133427_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131438_))
                                _stx131342_
                                (let* ((_specializer-id133456_
                                        (let* ((_id133450_
                                                (let ((__tmp135488
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131415_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135488
                                                   '"::specialize")))
                                               (_specializer-id133453_
                                                (let ((__tmp135489
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131342_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133450_
                                                   __tmp135489))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133453_))
                                          _specializer-id133453_))
                                       (_$klass133458_
                                        (let ((__tmp135490 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135490)))
                                       (_$method-table133460_
                                        (let ((__tmp135491
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135491)))
                                       (_methods133462_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131434_)))
                                       (_$methods133466_
                                        (map (lambda (_id133464_)
                                               (let ((__tmp135492
                                                      (gensym _id133464_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135492)))
                                             _methods133462_))
                                       (_g135493_
                                        (for-each
                                         (lambda (_g133467133470_
                                                  _g133468133472_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131434_
                                              _g133467133470_
                                              _g133468133472_)))
                                         _methods133462_
                                         _$methods133466_))
                                       (_methods-bind133483_
                                        (map (lambda (_g133475133478_
                                                      _g133476133480_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131344_
                                                  _$klass133458_
                                                  _$method-table133460_
                                                  _g133475133478_
                                                  _g133476133480_)))
                                             _methods133462_
                                             _$methods133466_))
                                       (_slots133485_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131435_)))
                                       (_$slots133489_
                                        (map (lambda (_id133487_)
                                               (let ((__tmp135494
                                                      (gensym _id133487_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135494)))
                                             _slots133485_))
                                       (_g135495_
                                        (for-each
                                         (lambda (_g133490133493_
                                                  _g133491133495_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131435_
                                              _g133490133493_
                                              _g133491133495_)))
                                         _slots133485_
                                         _$slots133489_))
                                       (_slots-bind133506_
                                        (map (lambda (_g133498133501_
                                                      _g133499133503_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131345_
                                                  _$klass133458_
                                                  _g133498133501_
                                                  _g133499133503_)))
                                             _slots133485_
                                             _$slots133489_))
                                       (_specializer-impl133514_
                                        (let* ((_specializer-body133512_
                                                (map (lambda (_g133507133509_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133507133509_
                                                          _self133444_
                                                          _$klass133458_
                                                          _method-calls131434_
                                                          _slot-refs131435_)))
                                                     _L133427_))
                                               (__tmp135496
                                                (let ((__tmp135497
                                                       (let ((__tmp135499
                                                              (let ((__tmp135500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135512
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133090_ '())))
                                   (__tmp135501
                                    (let ((__tmp135502
                                           (let ((__tmp135503
                                                  (let ((__tmp135505
                                                         (let ((__tmp135506
                                                                (let ((__tmp135511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133089_ '())))
                              (__tmp135507
                               (let ((__tmp135508
                                      (let ((__tmp135509
                                             (let ((__tmp135510
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133428_
                                                            _specializer-body133512_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135510))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135509
                                         _L133088_))))
                                 (declare (not safe))
                                 (cons __tmp135508 '()))))
                          (declare (not safe))
                          (cons __tmp135511 __tmp135507))))
                   (declare (not safe))
                   (cons __tmp135506 '())))
                (__tmp135504
                 (let () (declare (not safe)) (cons _L133087_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135505
                                                          __tmp135504))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135503))))
                                      (declare (not safe))
                                      (cons __tmp135502 '()))))
                               (declare (not safe))
                               (cons __tmp135512 __tmp135501))))
                        (declare (not safe))
                        (cons __tmp135500 '())))
                     (__tmp135498
                      (let () (declare (not safe)) (cons _L133086_ '()))))
                 (declare (not safe))
                 (cons __tmp135499 __tmp135498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135497))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135496
                                           _stx131342_)))
                                       (_specializer-impl133516_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131346_
                                           _$klass133458_
                                           _$method-table133460_
                                           _methods-bind133483_
                                           _slots-bind133506_
                                           _specializer-impl133514_))))
                                  (let ((__tmp135514
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131415_)))
                                        (__tmp135513
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133456_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135514
                                     '" => "
                                     __tmp135513))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131347_
                                     _L131415_
                                     _specializer-id133456_
                                     _specializer-impl133516_))))))
                        _tl133399133424_
                        _hd133400133422_)))
                   (let ()
                     (declare (not safe))
                     (_g133392133406_ _g133393133409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133392133406_
                                                      _g133393133409_))))))
                                       (declare (not safe))
                                       (_g133391133519_ _L133088_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133088_))
                                         (let* ((_g133522133552_
                                                 (lambda (_g133523133549_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133523133549_))))
                                                (_g133521134094_
                                                 (lambda (_g133523133555_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133523133555_))
                                                       (let ((_e133529133557_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133523133555_))))
                 (let ((_hd133528133560_
                        (let () (declare (not safe)) (##car _e133529133557_)))
                       (_tl133527133562_
                        (let () (declare (not safe)) (##cdr _e133529133557_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133527133562_))
                       (let ((_e133532133565_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133527133562_))))
                         (let ((_hd133531133568_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133532133565_)))
                               (_tl133530133570_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133532133565_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133531133568_))
                               (let ((_e133535133573_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133531133568_))))
                                 (let ((_hd133534133576_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133535133573_)))
                                       (_tl133533133578_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133535133573_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133534133576_))
                                       (let ((_e133538133581_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133534133576_))))
                                         (let ((_hd133537133584_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133538133581_)))
                                               (_tl133536133586_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133538133581_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133537133584_))
                                               (let ((_e133541133589_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133537133584_))))
                                                 (let ((_hd133540133592_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133541133589_)))
                                                       (_tl133539133594_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133541133589_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133539133594_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133536133586_))
                                                           (let ((_e133544133597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133536133586_))))
                     (let ((_hd133543133600_
                            (let ()
                              (declare (not safe))
                              (##car _e133544133597_)))
                           (_tl133542133602_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133544133597_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133542133602_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133533133578_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133530133570_))
                                   (let ((_e133547133605_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133530133570_))))
                                     (let ((_hd133546133608_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133547133605_)))
                                           (_tl133545133610_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133547133605_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133545133610_))
                                           ((lambda (_L133613_
                                                     _L133614_
                                                     _L133615_)
                                              (let* ((_g133638133652_
                                                      (lambda (_g133639133649_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133639133649_))))
                                                     (_g133637133693_
                                                      (lambda (_g133639133655_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133639133655_))
                                                            (let ((_e133644133657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133639133655_))))
                      (let ((_hd133643133660_
                             (let ()
                               (declare (not safe))
                               (##car _e133644133657_)))
                            (_tl133642133662_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133644133657_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133642133662_))
                            (let ((_e133647133665_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133642133662_))))
                              (let ((_hd133646133668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133647133665_)))
                                    (_tl133645133670_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133647133665_))))
                                ((lambda (_L133673_ _L133674_)
                                   (let ((_self133687_
                                          (list-ref
                                           _L133674_
                                           _self-index133389_)))
                                     (for-each
                                      (lambda (_g133688133690_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133688133690_
                                           _self133687_
                                           _method-calls131434_
                                           _slot-refs131435_)))
                                      _L133673_)))
                                 _tl133645133670_
                                 _hd133646133668_)))
                            (let ()
                              (declare (not safe))
                              (_g133638133652_ _g133639133655_)))))
                    (let ()
                      (declare (not safe))
                      (_g133638133652_ _g133639133655_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133637133693_ _L133614_))
                                              (let* ((_g133696133715_
                                                      (lambda (_g133697133712_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133697133712_))))
                                                     (_g133695133820_
                                                      (lambda (_g133697133718_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133697133718_))
                                                            (let ((_e133701133720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133697133718_))))
                      (let ((_hd133700133723_
                             (let ()
                               (declare (not safe))
                               (##car _e133701133720_)))
                            (_tl133699133725_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133701133720_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133699133725_))
                            (let ((_g135445_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133699133725_
                                      '0))))
                              (begin
                                (let ((_g135446_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135445_)
                                             (##vector-length _g135445_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135446_ 2)))
                                      (error "Context expects 2 values"
                                             _g135446_)))
                                (let ((_target133702133728_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135445_ 0)))
                                      (_tl133704133730_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135445_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133704133730_))
                                      (letrec ((_loop133705133733_
                                                (lambda (_hd133703133736_
                                                         _clause133709133738_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133703133736_))
                                                      (let ((_e133706133741_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133703133736_))))
                (let ((_lp-hd133707133744_
                       (let () (declare (not safe)) (##car _e133706133741_)))
                      (_lp-tl133708133746_
                       (let () (declare (not safe)) (##cdr _e133706133741_))))
                  (let ((__tmp135448
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133707133744_ _clause133709133738_))))
                    (declare (not safe))
                    (_loop133705133733_ _lp-tl133708133746_ __tmp135448))))
              (let ((_clause133710133749_ (reverse _clause133709133738_)))
                ((lambda (_L133752_)
                   (for-each
                    (lambda (_clause133765_)
                      (let* ((_g133767133778_
                              (lambda (_g133768133775_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133768133775_))))
                             (_g133766133810_
                              (lambda (_g133768133781_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133768133781_))
                                    (let ((_e133773133783_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133768133781_))))
                                      (let ((_hd133772133786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133773133783_)))
                                            (_tl133771133788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133773133783_))))
                                        ((lambda (_L133791_ _L133792_)
                                           (let ((_self133804_
                                                  (list-ref
                                                   _L133792_
                                                   _self-index133389_)))
                                             (for-each
                                              (lambda (_g133805133807_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133805133807_
                                                   _self133804_
                                                   _method-calls131434_
                                                   _slot-refs131435_)))
                                              _L133791_)))
                                         _tl133771133788_
                                         _hd133772133786_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133767133778_ _g133768133781_))))))
                        (declare (not safe))
                        (_g133766133810_ _clause133765_)))
                    (let ((__tmp135447
                           (lambda (_g133812133815_ _g133813133817_)
                             (let ()
                               (declare (not safe))
                               (cons _g133812133815_ _g133813133817_)))))
                      (declare (not safe))
                      (foldr1 __tmp135447 '() _L133752_))))
                 _clause133710133749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133705133733_
                                           _target133702133728_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133696133715_ _g133697133718_))))))
                            (let ()
                              (declare (not safe))
                              (_g133696133715_ _g133697133718_)))))
                    (let ()
                      (declare (not safe))
                      (_g133696133715_ _g133697133718_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133695133820_ _L133613_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131438_))
                                                  _stx131342_
                                                  (let* ((_specializer-id133829_
                                                          (let* ((_id133823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135449
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131415_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135449 '"::specialize")))
                         (_specializer-id133826_
                          (let ((__tmp135450
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131342_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133823_ __tmp135450))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133826_))
                    _specializer-id133826_))
                 (_$klass133831_
                  (let ((__tmp135451 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135451)))
                 (_$method-table133833_
                  (let ((__tmp135452 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135452)))
                 (_methods133835_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131434_)))
                 (_$methods133839_
                  (map (lambda (_id133837_)
                         (let ((__tmp135453 (gensym _id133837_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135453)))
                       _methods133835_))
                 (_g135454_
                  (for-each
                   (lambda (_g133840133843_ _g133841133845_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131434_
                        _g133840133843_
                        _g133841133845_)))
                   _methods133835_
                   _$methods133839_))
                 (_methods-bind133856_
                  (map (lambda (_g133848133851_ _g133849133853_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131344_
                            _$klass133831_
                            _$method-table133833_
                            _g133848133851_
                            _g133849133853_)))
                       _methods133835_
                       _$methods133839_))
                 (_slots133858_
                  (let () (declare (not safe)) (hash-keys _slot-refs131435_)))
                 (_$slots133862_
                  (map (lambda (_id133860_)
                         (let ((__tmp135455 (gensym _id133860_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135455)))
                       _slots133858_))
                 (_g135456_
                  (for-each
                   (lambda (_g133863133866_ _g133864133868_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131435_
                        _g133863133866_
                        _g133864133868_)))
                   _slots133858_
                   _$slots133862_))
                 (_slots-bind133879_
                  (map (lambda (_g133871133874_ _g133872133876_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131345_
                            _$klass133831_
                            _g133871133874_
                            _g133872133876_)))
                       _slots133858_
                       _$slots133862_))
                 (_specializer-lambda-expr133952_
                  (let* ((_g133881133895_
                          (lambda (_g133882133892_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133882133892_))))
                         (_g133880133949_
                          (lambda (_g133882133898_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133882133898_))
                                (let ((_e133887133900_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133882133898_))))
                                  (let ((_hd133886133903_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133887133900_)))
                                        (_tl133885133905_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133887133900_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133885133905_))
                                        (let ((_e133890133908_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133885133905_))))
                                          (let ((_hd133889133911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133890133908_)))
                                                (_tl133888133913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133890133908_))))
                                            ((lambda (_L133916_ _L133917_)
                                               (let* ((_self133940_
                                                       (list-ref
                                                        _L133917_
                                                        _self-index133389_))
                                                      (_body133946_
                                                       (map (lambda (_g133941133943_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133941133943_
                         _self133940_
                         _$klass133831_
                         _method-calls131434_
                         _slot-refs131435_)))
                    _L133916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135457
                                                        (let ((__tmp135458
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133917_ _body133946_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135457
                                                    _L133614_))))
                                             _tl133888133913_
                                             _hd133889133911_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133881133895_ _g133882133898_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133881133895_ _g133882133898_))))))
                    (declare (not safe))
                    (_g133880133949_ _L133614_)))
                 (_specializer-case-lambda-expr134087_
                  (let* ((_g133954133973_
                          (lambda (_g133955133970_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133955133970_))))
                         (_g133953134084_
                          (lambda (_g133955133976_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133955133976_))
                                (let ((_e133959133978_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133955133976_))))
                                  (let ((_hd133958133981_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133959133978_)))
                                        (_tl133957133983_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133959133978_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133957133983_))
                                        (let ((_g135459_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133957133983_
                                                  '0))))
                                          (begin
                                            (let ((_g135460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135459_)
                                                         (##vector-length
                                                          _g135459_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135460_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135460_)))
                                            (let ((_target133960133986_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135459_
                                                      0)))
                                                  (_tl133962133988_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135459_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133962133988_))
                                                  (letrec ((_loop133963133991_
                                                            (lambda (_hd133961133994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133967133996_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133961133994_))
                          (let ((_e133964133999_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133961133994_))))
                            (let ((_lp-hd133965134002_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133964133999_)))
                                  (_lp-tl133966134004_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133964133999_))))
                              (let ((__tmp135463
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133965134002_
                                             _clause133967133996_))))
                                (declare (not safe))
                                (_loop133963133991_
                                 _lp-tl133966134004_
                                 __tmp135463))))
                          (let ((_clause133968134007_
                                 (reverse _clause133967133996_)))
                            ((lambda (_L134010_)
                               (let* ((_clauses134082_
                                       (map (lambda (_clause134024_)
                                              (let* ((_g134026134037_
                                                      (lambda (_g134027134034_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134027134034_))))
                                                     (_g134025134072_
                                                      (lambda (_g134027134040_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134027134040_))
                                                            (let ((_e134032134042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134027134040_))))
                      (let ((_hd134031134045_
                             (let ()
                               (declare (not safe))
                               (##car _e134032134042_)))
                            (_tl134030134047_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134032134042_))))
                        ((lambda (_L134050_ _L134051_)
                           (let* ((_self134063_
                                   (list-ref _L134051_ _self-index133389_))
                                  (_body134069_
                                   (map (lambda (_g134064134066_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134064134066_
                                             _self134063_
                                             _$klass133831_
                                             _method-calls131434_
                                             _slot-refs131435_)))
                                        _L134050_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134051_ _body134069_))))
                         _tl134030134047_
                         _hd134031134045_)))
                    (let ()
                      (declare (not safe))
                      (_g134026134037_ _g134027134040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134025134072_
                                                 _clause134024_)))
                                            (let ((__tmp135461
                                                   (lambda (_g134074134077_
                                                            _g134075134079_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134074134077_
                                                             _g134075134079_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135461
                                                      '()
                                                      _L134010_))))
                                      (__tmp135462
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134082_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135462
                                  _L133613_)))
                             _clause133968134007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133963133991_
                                                       _target133960133986_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133954133973_
                                                     _g133955133976_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133954133973_ _g133955133976_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133954133973_ _g133955133976_))))))
                    (declare (not safe))
                    (_g133953134084_ _L133613_)))
                 (_specializer-impl134089_
                  (let ((__tmp135464
                         (let ((__tmp135465
                                (let ((__tmp135467
                                       (let ((__tmp135468
                                              (let ((__tmp135485
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133090_ '())))
                                                    (__tmp135469
                                                     (let ((__tmp135470
                                                            (let ((__tmp135471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135473
                                  (let ((__tmp135474
                                         (let ((__tmp135484
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133089_ '())))
                                               (__tmp135475
                                                (let ((__tmp135476
                                                       (let ((__tmp135477
                                                              (let ((__tmp135478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135480
                                    (let ((__tmp135481
                                           (let ((__tmp135483
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133615_ '())))
                                                 (__tmp135482
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133952_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135483 __tmp135482))))
                                      (declare (not safe))
                                      (cons __tmp135481 '())))
                                   (__tmp135479
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134087_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135480 __tmp135479))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135478))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135477 _stx131342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135476 '()))))
                                           (declare (not safe))
                                           (cons __tmp135484 __tmp135475))))
                                    (declare (not safe))
                                    (cons __tmp135474 '())))
                                 (__tmp135472
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133087_ '()))))
                             (declare (not safe))
                             (cons __tmp135473 __tmp135472))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135471))))
               (declare (not safe))
               (cons __tmp135470 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135485
                                                      __tmp135469))))
                                         (declare (not safe))
                                         (cons __tmp135468 '())))
                                      (__tmp135466
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133086_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135467 __tmp135466))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135465))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135464 _stx131342_)))
                 (_specializer-impl134091_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131346_
                     _$klass133831_
                     _$method-table133833_
                     _methods-bind133856_
                     _slots-bind133879_
                     _specializer-impl134089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135487
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131415_)))
                                                          (__tmp135486
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133829_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135487
                                                       '" => "
                                                       __tmp135486))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131347_
                                                       _L131415_
                                                       _specializer-id133829_
                                                       _specializer-impl134091_)))))
                                            _hd133546133608_
                                            _hd133543133600_
                                            _hd133540133592_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133522133552_
                                              _g133523133555_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133522133552_ _g133523133555_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133522133552_ _g133523133555_)))
                           (let ()
                             (declare (not safe))
                             (_g133522133552_ _g133523133555_)))))
                   (let ()
                     (declare (not safe))
                     (_g133522133552_ _g133523133555_)))
               (let ()
                 (declare (not safe))
                 (_g133522133552_ _g133523133555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133522133552_
                                                  _g133523133555_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133522133552_ _g133523133555_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133522133552_ _g133523133555_)))))
                       (let ()
                         (declare (not safe))
                         (_g133522133552_ _g133523133555_)))))
               (let ()
                 (declare (not safe))
                 (_g133522133552_ _g133523133555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133521134094_ _L133088_))
                                         _stx131342_))))
                             _hd133185133308_
                             _kw-ref133183133329_
                             _hd133173133295_
                             _hd133164133271_
                             _hd133155133247_)
                            (let ()
                              (declare (not safe))
                              (_g133129133191_ _g133130133194_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133178133313_
                                                   _target133175133300_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133129133191_
                                                 _g133130133194_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133129133191_ _g133130133194_))))))
                            (let ()
                              (declare (not safe))
                              (_g133129133191_ _g133130133194_)))
                        (let ()
                          (declare (not safe))
                          (_g133129133191_ _g133130133194_)))
                    (let ()
                      (declare (not safe))
                      (_g133129133191_ _g133130133194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133129133191_
                                                       _g133130133194_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133129133191_
                                                   _g133130133194_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133129133191_
                                               _g133130133194_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133129133191_ _g133130133194_)))))
                            (let ()
                              (declare (not safe))
                              (_g133129133191_ _g133130133194_)))
                        (let ()
                          (declare (not safe))
                          (_g133129133191_ _g133130133194_)))))
                (let ()
                  (declare (not safe))
                  (_g133129133191_ _g133130133194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133129133191_
                                                       _g133130133194_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133129133191_
                                                   _g133130133194_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133129133191_ _g133130133194_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133129133191_ _g133130133194_)))
                            (let ()
                              (declare (not safe))
                              (_g133129133191_ _g133130133194_)))))
                    (let ()
                      (declare (not safe))
                      (_g133129133191_ _g133130133194_)))
                (let ()
                  (declare (not safe))
                  (_g133129133191_ _g133130133194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133129133191_
                                                       _g133130133194_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133129133191_
                                               _g133130133194_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133129133191_ _g133130133194_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133129133191_ _g133130133194_)))
                            (let ()
                              (declare (not safe))
                              (_g133129133191_ _g133130133194_)))))
                    (let ()
                      (declare (not safe))
                      (_g133129133191_ _g133130133194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133129133191_
                                                       _g133130133194_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133129133191_
                                               _g133130133194_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133129133191_ _g133130133194_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133129133191_ _g133130133194_)))))
                            (let ()
                              (declare (not safe))
                              (_g133129133191_ _g133130133194_))))))
                (declare (not safe))
                (_g133128134097_ _L133087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132963133081_
                                                    _hd132960133073_
                                                    _hd132957133065_
                                                    _hd132954133057_
                                                    _hd132936133009_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132916132969_
                                                      _g132917132972_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132916132969_
                                              _g132917132972_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132916132969_ _g132917132972_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132916132969_ _g132917132972_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132916132969_ _g132917132972_)))))
                       (let ()
                         (declare (not safe))
                         (_g132916132969_ _g132917132972_)))
                   (let ()
                     (declare (not safe))
                     (_g132916132969_ _g132917132972_)))
               (let ()
                 (declare (not safe))
                 (_g132916132969_ _g132917132972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132916132969_
                                                  _g132917132972_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132916132969_
                                              _g132917132972_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132916132969_ _g132917132972_)))))
                           (let ()
                             (declare (not safe))
                             (_g132916132969_ _g132917132972_)))))
                   (let ()
                     (declare (not safe))
                     (_g132916132969_ _g132917132972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132916132969_
                                                      _g132917132972_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132916132969_
                                                  _g132917132972_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132916132969_
                                              _g132917132972_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132916132969_ _g132917132972_)))))
                           (let ()
                             (declare (not safe))
                             (_g132916132969_ _g132917132972_)))
                       (let ()
                         (declare (not safe))
                         (_g132916132969_ _g132917132972_)))))
               (let ()
                 (declare (not safe))
                 (_g132916132969_ _g132917132972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132916132969_
                                                  _g132917132972_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132916132969_ _g132917132972_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132916132969_ _g132917132972_)))
                           (let ()
                             (declare (not safe))
                             (_g132916132969_ _g132917132972_)))
                       (let ()
                         (declare (not safe))
                         (_g132916132969_ _g132917132972_)))))
               (let ()
                 (declare (not safe))
                 (_g132916132969_ _g132917132972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132915134100_ _L131414_))
                                         _stx131342_))))))))
                  (___kont134280134281_ (lambda () _stx131342_)))
              (let ((___match134309134310_
                     (lambda (_e131356131382_
                              _hd131355131385_
                              _tl131354131387_
                              _e131359131390_
                              _hd131358131393_
                              _tl131357131395_
                              _e131362131398_
                              _hd131361131401_
                              _tl131360131403_
                              _e131365131406_
                              _hd131364131409_
                              _tl131363131411_)
                       (let ((_L131414_ _hd131364131409_)
                             (_L131415_ _hd131361131401_))
                         (if (let ((__tmp135576
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131415_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135576))
                             (___kont134278134279_ _L131414_ _L131415_)
                             (___kont134280134281_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134276134277_))
                    (let ((_e131356131382_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134276134277_))))
                      (let ((_tl131354131387_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131356131382_)))
                            (_hd131355131385_
                             (let ()
                               (declare (not safe))
                               (##car _e131356131382_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131354131387_))
                            (let ((_e131359131390_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131354131387_))))
                              (let ((_tl131357131395_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131359131390_)))
                                    (_hd131358131393_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131359131390_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131358131393_))
                                    (let ((_e131362131398_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131358131393_))))
                                      (let ((_tl131360131403_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131362131398_)))
                                            (_hd131361131401_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131362131398_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131360131403_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131357131395_))
                                                (let ((_e131365131406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131357131395_))))
                                                  (let ((_tl131363131411_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131365131406_)))
                                                        (_hd131364131409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131365131406_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131363131411_))
                                                        (___match134309134310_
                                                         _e131356131382_
                                                         _hd131355131385_
                                                         _tl131354131387_
                                                         _e131359131390_
                                                         _hd131358131393_
                                                         _tl131357131395_
                                                         _e131362131398_
                                                         _hd131361131401_
                                                         _tl131360131403_
                                                         _e131365131406_
                                                         _hd131364131409_
                                                         _tl131363131411_)
                                                        (___kont134280134281_))))
                                                (___kont134280134281_))
                                            (___kont134280134281_))))
                                    (___kont134280134281_))))
                            (___kont134280134281_))))
                    (___kont134280134281_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx130301_ _self130302_ _methods130303_ _slots130304_)
        (let* ((___stx134312134313_ _stx130301_)
               (_g130312130534_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134312134313_)))))
          (let ((___kont134314134315_
                 (lambda (_L131291_ _L131292_ _L131293_ _L131294_)
                   (let ((__tmp135577
                          (let () (declare (not safe)) (gx#stx-e _L131292_))))
                     (declare (not safe))
                     (hash-put! _methods130303_ __tmp135577 '#t))
                   (for-each
                    (lambda (_g131327131329_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131327131329_
                         _self130302_
                         _methods130303_
                         _slots130304_)))
                    (let ((__tmp135578
                           (lambda (_g131331131334_ _g131332131336_)
                             (let ()
                               (declare (not safe))
                               (cons _g131331131334_ _g131332131336_)))))
                      (declare (not safe))
                      (foldr1 __tmp135578 '() _L131291_)))))
                (___kont134318134319_
                 (lambda (_L131126_ _L131127_ _L131128_ _L131129_ _L131130_)
                   (let ((__tmp135579
                          (let () (declare (not safe)) (gx#stx-e _L131127_))))
                     (declare (not safe))
                     (hash-put! _methods130303_ __tmp135579 '#t))
                   (for-each
                    (lambda (_g131170131172_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g131170131172_
                         _self130302_
                         _methods130303_
                         _slots130304_)))
                    (let ((__tmp135580
                           (lambda (_g131174131177_ _g131175131179_)
                             (let ()
                               (declare (not safe))
                               (cons _g131174131177_ _g131175131179_)))))
                      (declare (not safe))
                      (foldr1 __tmp135580 '() _L131126_)))))
                (___kont134322134323_
                 (lambda (_L130959_ _L130960_ _L130961_)
                   (let ((__tmp135581
                          (let () (declare (not safe)) (gx#stx-e _L130959_))))
                     (declare (not safe))
                     (hash-put! _slots130304_ __tmp135581 '#t))))
                (___kont134324134325_
                 (lambda (_L130836_ _L130837_ _L130838_ _L130839_)
                   (let ((__tmp135582
                          (let () (declare (not safe)) (gx#stx-e _L130837_))))
                     (declare (not safe))
                     (hash-put! _slots130304_ __tmp135582 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130836_
                      _self130302_
                      _methods130303_
                      _slots130304_))))
                (___kont134326134327_
                 (lambda (_L130710_ _L130711_)
                   (let* ((_accessor130733_
                           (let ((__tmp135583
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130711_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135583)))
                          (_klass130735_
                           (let ((__tmp135584
                                  (##structure-ref
                                   _accessor130733_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130301_
                              __tmp135584)))
                          (_slot130737_
                           (##structure-ref
                            _accessor130733_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135586
                                     (##structure-ref
                                      _accessor130733_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135586))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130735_
                                     _slot130737_))
                                  (##structure-ref
                                   _klass130735_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135585
                                (##structure-ref
                                 _accessor130733_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots130304_ __tmp135585 '#t))))))
                (___kont134328134329_
                 (lambda (_L130610_ _L130611_ _L130612_)
                   (let* ((_mutator130639_
                           (let ((__tmp135587
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130612_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135587)))
                          (_klass130641_
                           (let ((__tmp135588
                                  (##structure-ref
                                   _mutator130639_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130301_
                              __tmp135588)))
                          (_slot130643_
                           (##structure-ref
                            _mutator130639_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135589
                                     (##structure-ref
                                      _mutator130639_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135589))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130641_
                                     _slot130643_))
                                  (##structure-ref
                                   _klass130641_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots130304_ _slot130643_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130610_
                        _self130302_
                        _methods130303_
                        _slots130304_)))))
                (___kont134330134331_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx130301_
                      _self130302_
                      _methods130303_
                      _slots130304_)))))
            (let* ((___match134811134812_
                    (lambda (_e130508130546_
                             _hd130507130549_
                             _tl130506130551_
                             _e130511130554_
                             _hd130510130557_
                             _tl130509130559_
                             _e130514130562_
                             _hd130513130565_
                             _tl130512130567_
                             _e130517130570_
                             _hd130516130573_
                             _tl130515130575_
                             _e130520130578_
                             _hd130519130581_
                             _tl130518130583_
                             _e130523130586_
                             _hd130522130589_
                             _tl130521130591_
                             _e130526130594_
                             _hd130525130597_
                             _tl130524130599_
                             _e130529130602_
                             _hd130528130605_
                             _tl130527130607_)
                      (let ((_L130610_ _hd130528130605_)
                            (_L130611_ _hd130525130597_)
                            (_L130612_ _hd130516130573_))
                        (if (and (let ((__tmp135590
                                        (let ((__tmp135591
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130612_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135591))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135590
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130611_
                                    _self130302_)))
                            (___kont134328134329_
                             _L130610_
                             _L130611_
                             _L130612_)
                            (___kont134330134331_)))))
                   (___match134809134810_
                    (lambda (_e130508130546_
                             _hd130507130549_
                             _tl130506130551_
                             _e130511130554_
                             _hd130510130557_
                             _tl130509130559_
                             _e130514130562_
                             _hd130513130565_
                             _tl130512130567_
                             _e130517130570_
                             _hd130516130573_
                             _tl130515130575_
                             _e130520130578_
                             _hd130519130581_
                             _tl130518130583_
                             _e130523130586_
                             _hd130522130589_
                             _tl130521130591_
                             _e130526130594_
                             _hd130525130597_
                             _tl130524130599_
                             _e130529130602_
                             _hd130528130605_
                             _tl130527130607_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130527130607_))
                          (___match134811134812_
                           _e130508130546_
                           _hd130507130549_
                           _tl130506130551_
                           _e130511130554_
                           _hd130510130557_
                           _tl130509130559_
                           _e130514130562_
                           _hd130513130565_
                           _tl130512130567_
                           _e130517130570_
                           _hd130516130573_
                           _tl130515130575_
                           _e130520130578_
                           _hd130519130581_
                           _tl130518130583_
                           _e130523130586_
                           _hd130522130589_
                           _tl130521130591_
                           _e130526130594_
                           _hd130525130597_
                           _tl130524130599_
                           _e130529130602_
                           _hd130528130605_
                           _tl130527130607_)
                          (___kont134330134331_))))
                   (___match134803134804_
                    (lambda (_e130508130546_
                             _hd130507130549_
                             _tl130506130551_
                             _e130511130554_
                             _hd130510130557_
                             _tl130509130559_
                             _e130514130562_
                             _hd130513130565_
                             _tl130512130567_
                             _e130517130570_
                             _hd130516130573_
                             _tl130515130575_
                             _e130520130578_
                             _hd130519130581_
                             _tl130518130583_
                             _e130523130586_
                             _hd130522130589_
                             _tl130521130591_
                             _e130526130594_
                             _hd130525130597_
                             _tl130524130599_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130518130583_))
                          (let ((_e130529130602_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130518130583_))))
                            (let ((_tl130527130607_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130529130602_)))
                                  (_hd130528130605_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130529130602_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130527130607_))
                                  (___match134811134812_
                                   _e130508130546_
                                   _hd130507130549_
                                   _tl130506130551_
                                   _e130511130554_
                                   _hd130510130557_
                                   _tl130509130559_
                                   _e130514130562_
                                   _hd130513130565_
                                   _tl130512130567_
                                   _e130517130570_
                                   _hd130516130573_
                                   _tl130515130575_
                                   _e130520130578_
                                   _hd130519130581_
                                   _tl130518130583_
                                   _e130523130586_
                                   _hd130522130589_
                                   _tl130521130591_
                                   _e130526130594_
                                   _hd130525130597_
                                   _tl130524130599_
                                   _e130529130602_
                                   _hd130528130605_
                                   _tl130527130607_)
                                  (___kont134330134331_))))
                          (___kont134330134331_))))
                   (___match134749134750_
                    (lambda (_e130484130654_
                             _hd130483130657_
                             _tl130482130659_
                             _e130487130662_
                             _hd130486130665_
                             _tl130485130667_
                             _e130490130670_
                             _hd130489130673_
                             _tl130488130675_
                             _e130493130678_
                             _hd130492130681_
                             _tl130491130683_
                             _e130496130686_
                             _hd130495130689_
                             _tl130494130691_
                             _e130499130694_
                             _hd130498130697_
                             _tl130497130699_
                             _e130502130702_
                             _hd130501130705_
                             _tl130500130707_)
                      (let ((_L130710_ _hd130501130705_)
                            (_L130711_ _hd130492130681_))
                        (if (and (let ((__tmp135592
                                        (let ((__tmp135593
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130711_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135593))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135592
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130710_
                                    _self130302_)))
                            (___kont134326134327_ _L130710_ _L130711_)
                            (___kont134330134331_)))))
                   (___match134747134748_
                    (lambda (_e130484130654_
                             _hd130483130657_
                             _tl130482130659_
                             _e130487130662_
                             _hd130486130665_
                             _tl130485130667_
                             _e130490130670_
                             _hd130489130673_
                             _tl130488130675_
                             _e130493130678_
                             _hd130492130681_
                             _tl130491130683_
                             _e130496130686_
                             _hd130495130689_
                             _tl130494130691_
                             _e130499130694_
                             _hd130498130697_
                             _tl130497130699_
                             _e130502130702_
                             _hd130501130705_
                             _tl130500130707_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130494130691_))
                          (___match134749134750_
                           _e130484130654_
                           _hd130483130657_
                           _tl130482130659_
                           _e130487130662_
                           _hd130486130665_
                           _tl130485130667_
                           _e130490130670_
                           _hd130489130673_
                           _tl130488130675_
                           _e130493130678_
                           _hd130492130681_
                           _tl130491130683_
                           _e130496130686_
                           _hd130495130689_
                           _tl130494130691_
                           _e130499130694_
                           _hd130498130697_
                           _tl130497130699_
                           _e130502130702_
                           _hd130501130705_
                           _tl130500130707_)
                          (___match134803134804_
                           _e130484130654_
                           _hd130483130657_
                           _tl130482130659_
                           _e130487130662_
                           _hd130486130665_
                           _tl130485130667_
                           _e130490130670_
                           _hd130489130673_
                           _tl130488130675_
                           _e130493130678_
                           _hd130492130681_
                           _tl130491130683_
                           _e130496130686_
                           _hd130495130689_
                           _tl130494130691_
                           _e130499130694_
                           _hd130498130697_
                           _tl130497130699_
                           _e130502130702_
                           _hd130501130705_
                           _tl130500130707_))))
                   (___match134693134694_
                    (lambda (_e130449130748_
                             _hd130448130751_
                             _tl130447130753_
                             _e130452130756_
                             _hd130451130759_
                             _tl130450130761_
                             _e130455130764_
                             _hd130454130767_
                             _tl130453130769_
                             _e130458130772_
                             _hd130457130775_
                             _tl130456130777_
                             _e130461130780_
                             _hd130460130783_
                             _tl130459130785_
                             _e130464130788_
                             _hd130463130791_
                             _tl130462130793_
                             _e130467130796_
                             _hd130466130799_
                             _tl130465130801_
                             _e130470130804_
                             _hd130469130807_
                             _tl130468130809_
                             _e130473130812_
                             _hd130472130815_
                             _tl130471130817_
                             _e130476130820_
                             _hd130475130823_
                             _tl130474130825_
                             _e130479130828_
                             _hd130478130831_
                             _tl130477130833_)
                      (let ((_L130836_ _hd130478130831_)
                            (_L130837_ _hd130475130823_)
                            (_L130838_ _hd130466130799_)
                            (_L130839_ _hd130457130775_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130839_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130839_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130838_
                                    _self130302_)))
                            (___kont134324134325_
                             _L130836_
                             _L130837_
                             _L130838_
                             _L130839_)
                            (___kont134330134331_)))))
                   (___match134685134686_
                    (lambda (_e130449130748_
                             _hd130448130751_
                             _tl130447130753_
                             _e130452130756_
                             _hd130451130759_
                             _tl130450130761_
                             _e130455130764_
                             _hd130454130767_
                             _tl130453130769_
                             _e130458130772_
                             _hd130457130775_
                             _tl130456130777_
                             _e130461130780_
                             _hd130460130783_
                             _tl130459130785_
                             _e130464130788_
                             _hd130463130791_
                             _tl130462130793_
                             _e130467130796_
                             _hd130466130799_
                             _tl130465130801_
                             _e130470130804_
                             _hd130469130807_
                             _tl130468130809_
                             _e130473130812_
                             _hd130472130815_
                             _tl130471130817_
                             _e130476130820_
                             _hd130475130823_
                             _tl130474130825_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130468130809_))
                          (let ((_e130479130828_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130468130809_))))
                            (let ((_tl130477130833_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130479130828_)))
                                  (_hd130478130831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130479130828_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130477130833_))
                                  (___match134693134694_
                                   _e130449130748_
                                   _hd130448130751_
                                   _tl130447130753_
                                   _e130452130756_
                                   _hd130451130759_
                                   _tl130450130761_
                                   _e130455130764_
                                   _hd130454130767_
                                   _tl130453130769_
                                   _e130458130772_
                                   _hd130457130775_
                                   _tl130456130777_
                                   _e130461130780_
                                   _hd130460130783_
                                   _tl130459130785_
                                   _e130464130788_
                                   _hd130463130791_
                                   _tl130462130793_
                                   _e130467130796_
                                   _hd130466130799_
                                   _tl130465130801_
                                   _e130470130804_
                                   _hd130469130807_
                                   _tl130468130809_
                                   _e130473130812_
                                   _hd130472130815_
                                   _tl130471130817_
                                   _e130476130820_
                                   _hd130475130823_
                                   _tl130474130825_
                                   _e130479130828_
                                   _hd130478130831_
                                   _tl130477130833_)
                                  (___kont134330134331_))))
                          (___match134809134810_
                           _e130449130748_
                           _hd130448130751_
                           _tl130447130753_
                           _e130452130756_
                           _hd130451130759_
                           _tl130450130761_
                           _e130455130764_
                           _hd130454130767_
                           _tl130453130769_
                           _e130458130772_
                           _hd130457130775_
                           _tl130456130777_
                           _e130461130780_
                           _hd130460130783_
                           _tl130459130785_
                           _e130464130788_
                           _hd130463130791_
                           _tl130462130793_
                           _e130467130796_
                           _hd130466130799_
                           _tl130465130801_
                           _e130470130804_
                           _hd130469130807_
                           _tl130468130809_))))
                   (___match134607134608_
                    (lambda (_e130415130879_
                             _hd130414130882_
                             _tl130413130884_
                             _e130418130887_
                             _hd130417130890_
                             _tl130416130892_
                             _e130421130895_
                             _hd130420130898_
                             _tl130419130900_
                             _e130424130903_
                             _hd130423130906_
                             _tl130422130908_
                             _e130427130911_
                             _hd130426130914_
                             _tl130425130916_
                             _e130430130919_
                             _hd130429130922_
                             _tl130428130924_
                             _e130433130927_
                             _hd130432130930_
                             _tl130431130932_
                             _e130436130935_
                             _hd130435130938_
                             _tl130434130940_
                             _e130439130943_
                             _hd130438130946_
                             _tl130437130948_
                             _e130442130951_
                             _hd130441130954_
                             _tl130440130956_)
                      (let ((_L130959_ _hd130441130954_)
                            (_L130960_ _hd130432130930_)
                            (_L130961_ _hd130423130906_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130961_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130961_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130960_
                                    _self130302_)))
                            (___kont134322134323_
                             _L130959_
                             _L130960_
                             _L130961_)
                            (___match134811134812_
                             _e130415130879_
                             _hd130414130882_
                             _tl130413130884_
                             _e130418130887_
                             _hd130417130890_
                             _tl130416130892_
                             _e130421130895_
                             _hd130420130898_
                             _tl130419130900_
                             _e130424130903_
                             _hd130423130906_
                             _tl130422130908_
                             _e130427130911_
                             _hd130426130914_
                             _tl130425130916_
                             _e130430130919_
                             _hd130429130922_
                             _tl130428130924_
                             _e130433130927_
                             _hd130432130930_
                             _tl130431130932_
                             _e130436130935_
                             _hd130435130938_
                             _tl130434130940_)))))
                   (___match134605134606_
                    (lambda (_e130415130879_
                             _hd130414130882_
                             _tl130413130884_
                             _e130418130887_
                             _hd130417130890_
                             _tl130416130892_
                             _e130421130895_
                             _hd130420130898_
                             _tl130419130900_
                             _e130424130903_
                             _hd130423130906_
                             _tl130422130908_
                             _e130427130911_
                             _hd130426130914_
                             _tl130425130916_
                             _e130430130919_
                             _hd130429130922_
                             _tl130428130924_
                             _e130433130927_
                             _hd130432130930_
                             _tl130431130932_
                             _e130436130935_
                             _hd130435130938_
                             _tl130434130940_
                             _e130439130943_
                             _hd130438130946_
                             _tl130437130948_
                             _e130442130951_
                             _hd130441130954_
                             _tl130440130956_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130434130940_))
                          (___match134607134608_
                           _e130415130879_
                           _hd130414130882_
                           _tl130413130884_
                           _e130418130887_
                           _hd130417130890_
                           _tl130416130892_
                           _e130421130895_
                           _hd130420130898_
                           _tl130419130900_
                           _e130424130903_
                           _hd130423130906_
                           _tl130422130908_
                           _e130427130911_
                           _hd130426130914_
                           _tl130425130916_
                           _e130430130919_
                           _hd130429130922_
                           _tl130428130924_
                           _e130433130927_
                           _hd130432130930_
                           _tl130431130932_
                           _e130436130935_
                           _hd130435130938_
                           _tl130434130940_
                           _e130439130943_
                           _hd130438130946_
                           _tl130437130948_
                           _e130442130951_
                           _hd130441130954_
                           _tl130440130956_)
                          (___match134685134686_
                           _e130415130879_
                           _hd130414130882_
                           _tl130413130884_
                           _e130418130887_
                           _hd130417130890_
                           _tl130416130892_
                           _e130421130895_
                           _hd130420130898_
                           _tl130419130900_
                           _e130424130903_
                           _hd130423130906_
                           _tl130422130908_
                           _e130427130911_
                           _hd130426130914_
                           _tl130425130916_
                           _e130430130919_
                           _hd130429130922_
                           _tl130428130924_
                           _e130433130927_
                           _hd130432130930_
                           _tl130431130932_
                           _e130436130935_
                           _hd130435130938_
                           _tl130434130940_
                           _e130439130943_
                           _hd130438130946_
                           _tl130437130948_
                           _e130442130951_
                           _hd130441130954_
                           _tl130440130956_))))
                   (___match134595134596_
                    (lambda (_e130415130879_
                             _hd130414130882_
                             _tl130413130884_
                             _e130418130887_
                             _hd130417130890_
                             _tl130416130892_
                             _e130421130895_
                             _hd130420130898_
                             _tl130419130900_
                             _e130424130903_
                             _hd130423130906_
                             _tl130422130908_
                             _e130427130911_
                             _hd130426130914_
                             _tl130425130916_
                             _e130430130919_
                             _hd130429130922_
                             _tl130428130924_
                             _e130433130927_
                             _hd130432130930_
                             _tl130431130932_
                             _e130436130935_
                             _hd130435130938_
                             _tl130434130940_
                             _e130439130943_
                             _hd130438130946_
                             _tl130437130948_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130438130946_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130437130948_))
                              (let ((_e130442130951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130437130948_))))
                                (let ((_tl130440130956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130442130951_)))
                                      (_hd130441130954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130442130951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130440130956_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130434130940_))
                                          (___match134607134608_
                                           _e130415130879_
                                           _hd130414130882_
                                           _tl130413130884_
                                           _e130418130887_
                                           _hd130417130890_
                                           _tl130416130892_
                                           _e130421130895_
                                           _hd130420130898_
                                           _tl130419130900_
                                           _e130424130903_
                                           _hd130423130906_
                                           _tl130422130908_
                                           _e130427130911_
                                           _hd130426130914_
                                           _tl130425130916_
                                           _e130430130919_
                                           _hd130429130922_
                                           _tl130428130924_
                                           _e130433130927_
                                           _hd130432130930_
                                           _tl130431130932_
                                           _e130436130935_
                                           _hd130435130938_
                                           _tl130434130940_
                                           _e130439130943_
                                           _hd130438130946_
                                           _tl130437130948_
                                           _e130442130951_
                                           _hd130441130954_
                                           _tl130440130956_)
                                          (___match134685134686_
                                           _e130415130879_
                                           _hd130414130882_
                                           _tl130413130884_
                                           _e130418130887_
                                           _hd130417130890_
                                           _tl130416130892_
                                           _e130421130895_
                                           _hd130420130898_
                                           _tl130419130900_
                                           _e130424130903_
                                           _hd130423130906_
                                           _tl130422130908_
                                           _e130427130911_
                                           _hd130426130914_
                                           _tl130425130916_
                                           _e130430130919_
                                           _hd130429130922_
                                           _tl130428130924_
                                           _e130433130927_
                                           _hd130432130930_
                                           _tl130431130932_
                                           _e130436130935_
                                           _hd130435130938_
                                           _tl130434130940_
                                           _e130439130943_
                                           _hd130438130946_
                                           _tl130437130948_
                                           _e130442130951_
                                           _hd130441130954_
                                           _tl130440130956_))
                                      (___match134809134810_
                                       _e130415130879_
                                       _hd130414130882_
                                       _tl130413130884_
                                       _e130418130887_
                                       _hd130417130890_
                                       _tl130416130892_
                                       _e130421130895_
                                       _hd130420130898_
                                       _tl130419130900_
                                       _e130424130903_
                                       _hd130423130906_
                                       _tl130422130908_
                                       _e130427130911_
                                       _hd130426130914_
                                       _tl130425130916_
                                       _e130430130919_
                                       _hd130429130922_
                                       _tl130428130924_
                                       _e130433130927_
                                       _hd130432130930_
                                       _tl130431130932_
                                       _e130436130935_
                                       _hd130435130938_
                                       _tl130434130940_))))
                              (___match134809134810_
                               _e130415130879_
                               _hd130414130882_
                               _tl130413130884_
                               _e130418130887_
                               _hd130417130890_
                               _tl130416130892_
                               _e130421130895_
                               _hd130420130898_
                               _tl130419130900_
                               _e130424130903_
                               _hd130423130906_
                               _tl130422130908_
                               _e130427130911_
                               _hd130426130914_
                               _tl130425130916_
                               _e130430130919_
                               _hd130429130922_
                               _tl130428130924_
                               _e130433130927_
                               _hd130432130930_
                               _tl130431130932_
                               _e130436130935_
                               _hd130435130938_
                               _tl130434130940_))
                          (___match134809134810_
                           _e130415130879_
                           _hd130414130882_
                           _tl130413130884_
                           _e130418130887_
                           _hd130417130890_
                           _tl130416130892_
                           _e130421130895_
                           _hd130420130898_
                           _tl130419130900_
                           _e130424130903_
                           _hd130423130906_
                           _tl130422130908_
                           _e130427130911_
                           _hd130426130914_
                           _tl130425130916_
                           _e130430130919_
                           _hd130429130922_
                           _tl130428130924_
                           _e130433130927_
                           _hd130432130930_
                           _tl130431130932_
                           _e130436130935_
                           _hd130435130938_
                           _tl130434130940_))))
                   (___match134527134528_
                    (lambda (_e130364130998_
                             _hd130363131001_
                             _tl130362131003_
                             _e130367131006_
                             _hd130366131009_
                             _tl130365131011_
                             _e130370131014_
                             _hd130369131017_
                             _tl130368131019_
                             _e130373131022_
                             _hd130372131025_
                             _tl130371131027_
                             _e130376131030_
                             _hd130375131033_
                             _tl130374131035_
                             _e130379131038_
                             _hd130378131041_
                             _tl130377131043_
                             _e130382131046_
                             _hd130381131049_
                             _tl130380131051_
                             _e130385131054_
                             _hd130384131057_
                             _tl130383131059_
                             _e130388131062_
                             _hd130387131065_
                             _tl130386131067_
                             _e130391131070_
                             _hd130390131073_
                             _tl130389131075_
                             _e130394131078_
                             _hd130393131081_
                             _tl130392131083_
                             _e130397131086_
                             _hd130396131089_
                             _tl130395131091_
                             _e130400131094_
                             _hd130399131097_
                             _tl130398131099_
                             ___splice134320134321_
                             _target130401131102_
                             _tl130403131104_)
                      (letrec ((_loop130404131107_
                                (lambda (_hd130402131110_ _args130408131112_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130402131110_))
                                      (let ((_e130405131115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130402131110_))))
                                        (let ((_lp-tl130407131120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130405131115_)))
                                              (_lp-hd130406131118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130405131115_))))
                                          (let ((__tmp135594
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130406131118_
                                                         _args130408131112_))))
                                            (declare (not safe))
                                            (_loop130404131107_
                                             _lp-tl130407131120_
                                             __tmp135594))))
                                      (let ((_args130409131123_
                                             (reverse _args130408131112_)))
                                        (let ((_L131126_ _args130409131123_)
                                              (_L131127_ _hd130399131097_)
                                              (_L131128_ _hd130390131073_)
                                              (_L131129_ _hd130381131049_)
                                              (_L131130_ _hd130372131025_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131130_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131129_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131128_
                                                      _self130302_)))
                                              (___kont134318134319_
                                               _L131126_
                                               _L131127_
                                               _L131128_
                                               _L131129_
                                               _L131130_)
                                              (___kont134330134331_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130404131107_ _target130401131102_ '())))))
                   (___match134485134486_
                    (lambda (_e130364130998_
                             _hd130363131001_
                             _tl130362131003_
                             _e130367131006_
                             _hd130366131009_
                             _tl130365131011_
                             _e130370131014_
                             _hd130369131017_
                             _tl130368131019_
                             _e130373131022_
                             _hd130372131025_
                             _tl130371131027_
                             _e130376131030_
                             _hd130375131033_
                             _tl130374131035_
                             _e130379131038_
                             _hd130378131041_
                             _tl130377131043_
                             _e130382131046_
                             _hd130381131049_
                             _tl130380131051_
                             _e130385131054_
                             _hd130384131057_
                             _tl130383131059_
                             _e130388131062_
                             _hd130387131065_
                             _tl130386131067_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130387131065_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130386131067_))
                              (let ((_e130391131070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130386131067_))))
                                (let ((_tl130389131075_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130391131070_)))
                                      (_hd130390131073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130391131070_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130389131075_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130383131059_))
                                          (let ((_e130394131078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130383131059_))))
                                            (let ((_tl130392131083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130394131078_)))
                                                  (_hd130393131081_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130394131078_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130393131081_))
                                                  (let ((_e130397131086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130393131081_))))
                                                    (let ((_tl130395131091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130397131086_)))
                                                          (_hd130396131089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130397131086_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130396131089_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130396131089_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130395131091_))
                          (let ((_e130400131094_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130395131091_))))
                            (let ((_tl130398131099_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130400131094_)))
                                  (_hd130399131097_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130400131094_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130398131099_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130392131083_))
                                      (let ((___splice134320134321_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130392131083_
                                                '0))))
                                        (let ((_tl130403131104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134320134321_
                                                  '1)))
                                              (_target130401131102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134320134321_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130403131104_))
                                              (___match134527134528_
                                               _e130364130998_
                                               _hd130363131001_
                                               _tl130362131003_
                                               _e130367131006_
                                               _hd130366131009_
                                               _tl130365131011_
                                               _e130370131014_
                                               _hd130369131017_
                                               _tl130368131019_
                                               _e130373131022_
                                               _hd130372131025_
                                               _tl130371131027_
                                               _e130376131030_
                                               _hd130375131033_
                                               _tl130374131035_
                                               _e130379131038_
                                               _hd130378131041_
                                               _tl130377131043_
                                               _e130382131046_
                                               _hd130381131049_
                                               _tl130380131051_
                                               _e130385131054_
                                               _hd130384131057_
                                               _tl130383131059_
                                               _e130388131062_
                                               _hd130387131065_
                                               _tl130386131067_
                                               _e130391131070_
                                               _hd130390131073_
                                               _tl130389131075_
                                               _e130394131078_
                                               _hd130393131081_
                                               _tl130392131083_
                                               _e130397131086_
                                               _hd130396131089_
                                               _tl130395131091_
                                               _e130400131094_
                                               _hd130399131097_
                                               _tl130398131099_
                                               ___splice134320134321_
                                               _target130401131102_
                                               _tl130403131104_)
                                              (___kont134330134331_))))
                                      (___kont134330134331_))
                                  (___kont134330134331_))))
                          (___kont134330134331_))
                      (___kont134330134331_))
                  (___kont134330134331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134330134331_))))
                                          (___match134809134810_
                                           _e130364130998_
                                           _hd130363131001_
                                           _tl130362131003_
                                           _e130367131006_
                                           _hd130366131009_
                                           _tl130365131011_
                                           _e130370131014_
                                           _hd130369131017_
                                           _tl130368131019_
                                           _e130373131022_
                                           _hd130372131025_
                                           _tl130371131027_
                                           _e130376131030_
                                           _hd130375131033_
                                           _tl130374131035_
                                           _e130379131038_
                                           _hd130378131041_
                                           _tl130377131043_
                                           _e130382131046_
                                           _hd130381131049_
                                           _tl130380131051_
                                           _e130385131054_
                                           _hd130384131057_
                                           _tl130383131059_))
                                      (___match134809134810_
                                       _e130364130998_
                                       _hd130363131001_
                                       _tl130362131003_
                                       _e130367131006_
                                       _hd130366131009_
                                       _tl130365131011_
                                       _e130370131014_
                                       _hd130369131017_
                                       _tl130368131019_
                                       _e130373131022_
                                       _hd130372131025_
                                       _tl130371131027_
                                       _e130376131030_
                                       _hd130375131033_
                                       _tl130374131035_
                                       _e130379131038_
                                       _hd130378131041_
                                       _tl130377131043_
                                       _e130382131046_
                                       _hd130381131049_
                                       _tl130380131051_
                                       _e130385131054_
                                       _hd130384131057_
                                       _tl130383131059_))))
                              (___match134809134810_
                               _e130364130998_
                               _hd130363131001_
                               _tl130362131003_
                               _e130367131006_
                               _hd130366131009_
                               _tl130365131011_
                               _e130370131014_
                               _hd130369131017_
                               _tl130368131019_
                               _e130373131022_
                               _hd130372131025_
                               _tl130371131027_
                               _e130376131030_
                               _hd130375131033_
                               _tl130374131035_
                               _e130379131038_
                               _hd130378131041_
                               _tl130377131043_
                               _e130382131046_
                               _hd130381131049_
                               _tl130380131051_
                               _e130385131054_
                               _hd130384131057_
                               _tl130383131059_))
                          (___match134595134596_
                           _e130364130998_
                           _hd130363131001_
                           _tl130362131003_
                           _e130367131006_
                           _hd130366131009_
                           _tl130365131011_
                           _e130370131014_
                           _hd130369131017_
                           _tl130368131019_
                           _e130373131022_
                           _hd130372131025_
                           _tl130371131027_
                           _e130376131030_
                           _hd130375131033_
                           _tl130374131035_
                           _e130379131038_
                           _hd130378131041_
                           _tl130377131043_
                           _e130382131046_
                           _hd130381131049_
                           _tl130380131051_
                           _e130385131054_
                           _hd130384131057_
                           _tl130383131059_
                           _e130388131062_
                           _hd130387131065_
                           _tl130386131067_))))
                   (___match134417134418_
                    (lambda (_e130320131187_
                             _hd130319131190_
                             _tl130318131192_
                             _e130323131195_
                             _hd130322131198_
                             _tl130321131200_
                             _e130326131203_
                             _hd130325131206_
                             _tl130324131208_
                             _e130329131211_
                             _hd130328131214_
                             _tl130327131216_
                             _e130332131219_
                             _hd130331131222_
                             _tl130330131224_
                             _e130335131227_
                             _hd130334131230_
                             _tl130333131232_
                             _e130338131235_
                             _hd130337131238_
                             _tl130336131240_
                             _e130341131243_
                             _hd130340131246_
                             _tl130339131248_
                             _e130344131251_
                             _hd130343131254_
                             _tl130342131256_
                             _e130347131259_
                             _hd130346131262_
                             _tl130345131264_
                             ___splice134316134317_
                             _target130348131267_
                             _tl130350131269_)
                      (letrec ((_loop130351131272_
                                (lambda (_hd130349131275_ _args130355131277_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130349131275_))
                                      (let ((_e130352131280_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130349131275_))))
                                        (let ((_lp-tl130354131285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130352131280_)))
                                              (_lp-hd130353131283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130352131280_))))
                                          (let ((__tmp135595
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130353131283_
                                                         _args130355131277_))))
                                            (declare (not safe))
                                            (_loop130351131272_
                                             _lp-tl130354131285_
                                             __tmp135595))))
                                      (let ((_args130356131288_
                                             (reverse _args130355131277_)))
                                        (let ((_L131291_ _args130356131288_)
                                              (_L131292_ _hd130346131262_)
                                              (_L131293_ _hd130337131238_)
                                              (_L131294_ _hd130328131214_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131294_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131293_
                                                      _self130302_)))
                                              (___kont134314134315_
                                               _L131291_
                                               _L131292_
                                               _L131293_
                                               _L131294_)
                                              (___match134605134606_
                                               _e130320131187_
                                               _hd130319131190_
                                               _tl130318131192_
                                               _e130323131195_
                                               _hd130322131198_
                                               _tl130321131200_
                                               _e130326131203_
                                               _hd130325131206_
                                               _tl130324131208_
                                               _e130329131211_
                                               _hd130328131214_
                                               _tl130327131216_
                                               _e130332131219_
                                               _hd130331131222_
                                               _tl130330131224_
                                               _e130335131227_
                                               _hd130334131230_
                                               _tl130333131232_
                                               _e130338131235_
                                               _hd130337131238_
                                               _tl130336131240_
                                               _e130341131243_
                                               _hd130340131246_
                                               _tl130339131248_
                                               _e130344131251_
                                               _hd130343131254_
                                               _tl130342131256_
                                               _e130347131259_
                                               _hd130346131262_
                                               _tl130345131264_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130351131272_ _target130348131267_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134312134313_))
                  (let ((_e130320131187_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134312134313_))))
                    (let ((_tl130318131192_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130320131187_)))
                          (_hd130319131190_
                           (let ()
                             (declare (not safe))
                             (##car _e130320131187_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130318131192_))
                          (let ((_e130323131195_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130318131192_))))
                            (let ((_tl130321131200_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130323131195_)))
                                  (_hd130322131198_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130323131195_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130322131198_))
                                  (let ((_e130326131203_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130322131198_))))
                                    (let ((_tl130324131208_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130326131203_)))
                                          (_hd130325131206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130326131203_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130325131206_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130325131206_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130324131208_))
                                                  (let ((_e130329131211_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130324131208_))))
                                                    (let ((_tl130327131216_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130329131211_)))
                                                          (_hd130328131214_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130329131211_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130327131216_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130321131200_))
                      (let ((_e130332131219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130321131200_))))
                        (let ((_tl130330131224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130332131219_)))
                              (_hd130331131222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130332131219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130331131222_))
                              (let ((_e130335131227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130331131222_))))
                                (let ((_tl130333131232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130335131227_)))
                                      (_hd130334131230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130335131227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130334131230_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130334131230_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130333131232_))
                                              (let ((_e130338131235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130333131232_))))
                                                (let ((_tl130336131240_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130338131235_)))
                                                      (_hd130337131238_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130338131235_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130336131240_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130330131224_))
                                                          (let ((_e130341131243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130330131224_))))
                    (let ((_tl130339131248_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130341131243_)))
                          (_hd130340131246_
                           (let ()
                             (declare (not safe))
                             (##car _e130341131243_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130340131246_))
                          (let ((_e130344131251_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130340131246_))))
                            (let ((_tl130342131256_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130344131251_)))
                                  (_hd130343131254_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130344131251_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130343131254_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130343131254_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130342131256_))
                                          (let ((_e130347131259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130342131256_))))
                                            (let ((_tl130345131264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130347131259_)))
                                                  (_hd130346131262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130347131259_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130345131264_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130339131248_))
                                                      (let ((___splice134316134317_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130339131248_ '0))))
                (let ((_tl130350131269_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134316134317_ '1)))
                      (_target130348131267_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134316134317_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130350131269_))
                      (___match134417134418_
                       _e130320131187_
                       _hd130319131190_
                       _tl130318131192_
                       _e130323131195_
                       _hd130322131198_
                       _tl130321131200_
                       _e130326131203_
                       _hd130325131206_
                       _tl130324131208_
                       _e130329131211_
                       _hd130328131214_
                       _tl130327131216_
                       _e130332131219_
                       _hd130331131222_
                       _tl130330131224_
                       _e130335131227_
                       _hd130334131230_
                       _tl130333131232_
                       _e130338131235_
                       _hd130337131238_
                       _tl130336131240_
                       _e130341131243_
                       _hd130340131246_
                       _tl130339131248_
                       _e130344131251_
                       _hd130343131254_
                       _tl130342131256_
                       _e130347131259_
                       _hd130346131262_
                       _tl130345131264_
                       ___splice134316134317_
                       _target130348131267_
                       _tl130350131269_)
                      (___match134605134606_
                       _e130320131187_
                       _hd130319131190_
                       _tl130318131192_
                       _e130323131195_
                       _hd130322131198_
                       _tl130321131200_
                       _e130326131203_
                       _hd130325131206_
                       _tl130324131208_
                       _e130329131211_
                       _hd130328131214_
                       _tl130327131216_
                       _e130332131219_
                       _hd130331131222_
                       _tl130330131224_
                       _e130335131227_
                       _hd130334131230_
                       _tl130333131232_
                       _e130338131235_
                       _hd130337131238_
                       _tl130336131240_
                       _e130341131243_
                       _hd130340131246_
                       _tl130339131248_
                       _e130344131251_
                       _hd130343131254_
                       _tl130342131256_
                       _e130347131259_
                       _hd130346131262_
                       _tl130345131264_))))
              (___match134605134606_
               _e130320131187_
               _hd130319131190_
               _tl130318131192_
               _e130323131195_
               _hd130322131198_
               _tl130321131200_
               _e130326131203_
               _hd130325131206_
               _tl130324131208_
               _e130329131211_
               _hd130328131214_
               _tl130327131216_
               _e130332131219_
               _hd130331131222_
               _tl130330131224_
               _e130335131227_
               _hd130334131230_
               _tl130333131232_
               _e130338131235_
               _hd130337131238_
               _tl130336131240_
               _e130341131243_
               _hd130340131246_
               _tl130339131248_
               _e130344131251_
               _hd130343131254_
               _tl130342131256_
               _e130347131259_
               _hd130346131262_
               _tl130345131264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134809134810_
                                                   _e130320131187_
                                                   _hd130319131190_
                                                   _tl130318131192_
                                                   _e130323131195_
                                                   _hd130322131198_
                                                   _tl130321131200_
                                                   _e130326131203_
                                                   _hd130325131206_
                                                   _tl130324131208_
                                                   _e130329131211_
                                                   _hd130328131214_
                                                   _tl130327131216_
                                                   _e130332131219_
                                                   _hd130331131222_
                                                   _tl130330131224_
                                                   _e130335131227_
                                                   _hd130334131230_
                                                   _tl130333131232_
                                                   _e130338131235_
                                                   _hd130337131238_
                                                   _tl130336131240_
                                                   _e130341131243_
                                                   _hd130340131246_
                                                   _tl130339131248_))))
                                          (___match134809134810_
                                           _e130320131187_
                                           _hd130319131190_
                                           _tl130318131192_
                                           _e130323131195_
                                           _hd130322131198_
                                           _tl130321131200_
                                           _e130326131203_
                                           _hd130325131206_
                                           _tl130324131208_
                                           _e130329131211_
                                           _hd130328131214_
                                           _tl130327131216_
                                           _e130332131219_
                                           _hd130331131222_
                                           _tl130330131224_
                                           _e130335131227_
                                           _hd130334131230_
                                           _tl130333131232_
                                           _e130338131235_
                                           _hd130337131238_
                                           _tl130336131240_
                                           _e130341131243_
                                           _hd130340131246_
                                           _tl130339131248_))
                                      (___match134485134486_
                                       _e130320131187_
                                       _hd130319131190_
                                       _tl130318131192_
                                       _e130323131195_
                                       _hd130322131198_
                                       _tl130321131200_
                                       _e130326131203_
                                       _hd130325131206_
                                       _tl130324131208_
                                       _e130329131211_
                                       _hd130328131214_
                                       _tl130327131216_
                                       _e130332131219_
                                       _hd130331131222_
                                       _tl130330131224_
                                       _e130335131227_
                                       _hd130334131230_
                                       _tl130333131232_
                                       _e130338131235_
                                       _hd130337131238_
                                       _tl130336131240_
                                       _e130341131243_
                                       _hd130340131246_
                                       _tl130339131248_
                                       _e130344131251_
                                       _hd130343131254_
                                       _tl130342131256_))
                                  (___match134809134810_
                                   _e130320131187_
                                   _hd130319131190_
                                   _tl130318131192_
                                   _e130323131195_
                                   _hd130322131198_
                                   _tl130321131200_
                                   _e130326131203_
                                   _hd130325131206_
                                   _tl130324131208_
                                   _e130329131211_
                                   _hd130328131214_
                                   _tl130327131216_
                                   _e130332131219_
                                   _hd130331131222_
                                   _tl130330131224_
                                   _e130335131227_
                                   _hd130334131230_
                                   _tl130333131232_
                                   _e130338131235_
                                   _hd130337131238_
                                   _tl130336131240_
                                   _e130341131243_
                                   _hd130340131246_
                                   _tl130339131248_))))
                          (___match134809134810_
                           _e130320131187_
                           _hd130319131190_
                           _tl130318131192_
                           _e130323131195_
                           _hd130322131198_
                           _tl130321131200_
                           _e130326131203_
                           _hd130325131206_
                           _tl130324131208_
                           _e130329131211_
                           _hd130328131214_
                           _tl130327131216_
                           _e130332131219_
                           _hd130331131222_
                           _tl130330131224_
                           _e130335131227_
                           _hd130334131230_
                           _tl130333131232_
                           _e130338131235_
                           _hd130337131238_
                           _tl130336131240_
                           _e130341131243_
                           _hd130340131246_
                           _tl130339131248_))))
                  (___match134747134748_
                   _e130320131187_
                   _hd130319131190_
                   _tl130318131192_
                   _e130323131195_
                   _hd130322131198_
                   _tl130321131200_
                   _e130326131203_
                   _hd130325131206_
                   _tl130324131208_
                   _e130329131211_
                   _hd130328131214_
                   _tl130327131216_
                   _e130332131219_
                   _hd130331131222_
                   _tl130330131224_
                   _e130335131227_
                   _hd130334131230_
                   _tl130333131232_
                   _e130338131235_
                   _hd130337131238_
                   _tl130336131240_))
              (___kont134330134331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134330134331_))
                                          (___kont134330134331_))
                                      (___kont134330134331_))))
                              (___kont134330134331_))))
                      (___kont134330134331_))
                  (___kont134330134331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134330134331_))
                                              (___kont134330134331_))
                                          (___kont134330134331_))))
                                  (___kont134330134331_))))
                          (___kont134330134331_))))
                  (___kont134330134331_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx129236_
               _self129237_
               _$klass129238_
               _methods129239_
               _slots129240_)
        (letrec ((_force-e129242_
                  (lambda (_target130299_)
                    (let ((__tmp135596
                           (let ((__tmp135600
                                  (let ((__tmp135601
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135601)))
                                 (__tmp135597
                                  (let ((__tmp135598
                                         (let ((__tmp135599
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130299_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135599))))
                                    (declare (not safe))
                                    (cons __tmp135598 '()))))
                             (declare (not safe))
                             (cons __tmp135600 __tmp135597))))
                      (declare (not safe))
                      (cons '%#call __tmp135596)))))
          (let* ((___stx134814134815_ _stx129236_)
                 (_g129250129472_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134814134815_)))))
            (let ((___kont134816134817_
                   (lambda (_L130245_ _L130246_ _L130247_ _L130248_)
                     (let ((_$method130293_
                            (let ((__tmp135602
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130246_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129239_ __tmp135602)))
                           (_args130294_
                            (map (lambda (_g130281130283_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130281130283_
                                      _self129237_
                                      _$klass129238_
                                      _methods129239_
                                      _slots129240_)))
                                 (let ((__tmp135603
                                        (lambda (_g130285130288_
                                                 _g130286130290_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130285130288_
                                                  _g130286130290_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135603 '() _L130245_)))))
                       (let ((__tmp135604
                              (let ((__tmp135605
                                     (let ((__tmp135609
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129242_
                                               _$method130293_)))
                                           (__tmp135606
                                            (let ((__tmp135607
                                                   (let ((__tmp135608
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self129237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135608))))
                                              (declare (not safe))
                                              (cons __tmp135607
                                                    _args130294_))))
                                       (declare (not safe))
                                       (cons __tmp135609 __tmp135606))))
                                (declare (not safe))
                                (cons '%#call __tmp135605))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135604 _stx129236_)))))
                  (___kont134820134821_
                   (lambda (_L130077_ _L130078_ _L130079_ _L130080_ _L130081_)
                     (let ((_$method130133_
                            (let ((__tmp135610
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130078_))))
                              (declare (not safe))
                              (hash-ref__0 _methods129239_ __tmp135610)))
                           (_args130134_
                            (map (lambda (_g130121130123_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g130121130123_
                                      _self129237_
                                      _$klass129238_
                                      _methods129239_
                                      _slots129240_)))
                                 (let ((__tmp135611
                                        (lambda (_g130125130128_
                                                 _g130126130130_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130125130128_
                                                  _g130126130130_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135611 '() _L130077_)))))
                       (let ((__tmp135612
                              (let ((__tmp135613
                                     (let ((__tmp135619
                                            (let ((__tmp135620
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135620)))
                                           (__tmp135614
                                            (let ((__tmp135618
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129242_
                                                      _$method130133_)))
                                                  (__tmp135615
                                                   (let ((__tmp135616
                                                          (let ((__tmp135617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129237_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135616
                                                           _args130134_))))
                                              (declare (not safe))
                                              (cons __tmp135618 __tmp135615))))
                                       (declare (not safe))
                                       (cons __tmp135619 __tmp135614))))
                                (declare (not safe))
                                (cons '%#call __tmp135613))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135612 _stx129236_)))))
                  (___kont134824134825_
                   (lambda (_L129908_ _L129909_ _L129910_)
                     (let* ((_$field129942_
                             (let ((__tmp135621
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129908_))))
                               (declare (not safe))
                               (hash-ref__0 _slots129240_ __tmp135621)))
                            (__tmp135622
                             (let ((__tmp135623
                                    (let ((__tmp135630
                                           (let ((__tmp135631
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass129238_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135631)))
                                          (__tmp135624
                                           (let ((__tmp135628
                                                  (let ((__tmp135629
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135629)))
                                                 (__tmp135625
                                                  (let ((__tmp135626
                                                         (let ((__tmp135627
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self129237_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135626 '()))))
                                             (declare (not safe))
                                             (cons __tmp135628 __tmp135625))))
                                      (declare (not safe))
                                      (cons __tmp135630 __tmp135624))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135623))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135622 _stx129236_))))
                  (___kont134826134827_
                   (lambda (_L129782_ _L129783_ _L129784_ _L129785_)
                     (let ((_$field129820_
                            (let ((__tmp135632
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129783_))))
                              (declare (not safe))
                              (hash-ref__0 _slots129240_ __tmp135632)))
                           (_expr129821_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129782_
                               _self129237_
                               _$klass129238_
                               _methods129239_
                               _slots129240_))))
                       (let ((__tmp135633
                              (let ((__tmp135634
                                     (let ((__tmp135642
                                            (let ((__tmp135643
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass129238_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135643)))
                                           (__tmp135635
                                            (let ((__tmp135640
                                                   (let ((__tmp135641
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135641)))
                                                  (__tmp135636
                                                   (let ((__tmp135638
                                                          (let ((__tmp135639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self129237_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135639)))
                 (__tmp135637
                  (let () (declare (not safe)) (cons _expr129821_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135638
                                                           __tmp135637))))
                                              (declare (not safe))
                                              (cons __tmp135640 __tmp135636))))
                                       (declare (not safe))
                                       (cons __tmp135642 __tmp135635))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135634))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135633 _stx129236_)))))
                  (___kont134828134829_
                   (lambda (_L129654_ _L129655_)
                     (let* ((_accessor129677_
                             (let ((__tmp135644
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129655_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135644)))
                            (_klass129679_
                             (let ((__tmp135645
                                    (##structure-ref
                                     _accessor129677_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129236_
                                __tmp135645)))
                            (_slot129681_
                             (##structure-ref
                              _accessor129677_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135656
                                       (##structure-ref
                                        _accessor129677_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135656))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129679_
                                       _slot129681_))
                                    (##structure-ref
                                     _klass129679_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129236_
                           (let* ((_$field129687_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129240_ _slot129681_)))
                                  (__tmp135646
                                   (let ((__tmp135647
                                          (let ((__tmp135654
                                                 (let ((__tmp135655
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129238_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135655)))
                                                (__tmp135648
                                                 (let ((__tmp135652
                                                        (let ((__tmp135653
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129687_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135653)))
               (__tmp135649
                (let ((__tmp135650
                       (let ((__tmp135651
                              (let ()
                                (declare (not safe))
                                (cons _self129237_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135651))))
                  (declare (not safe))
                  (cons __tmp135650 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135652
                                                         __tmp135649))))
                                            (declare (not safe))
                                            (cons __tmp135654 __tmp135648))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135647))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135646
                              _stx129236_))))))
                  (___kont134830134831_
                   (lambda (_L129548_ _L129549_ _L129550_)
                     (let* ((_mutator129579_
                             (let ((__tmp135657
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129550_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135657)))
                            (_klass129581_
                             (let ((__tmp135658
                                    (##structure-ref
                                     _mutator129579_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129236_
                                __tmp135658)))
                            (_slot129583_
                             (##structure-ref
                              _mutator129579_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129585_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129548_
                                _self129237_
                                _$klass129238_
                                _methods129239_
                                _slots129240_))))
                       (if (and (let ((__tmp135680
                                       (##structure-ref
                                        _mutator129579_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135680))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129581_
                                       _slot129583_))
                                    (##structure-ref
                                     _klass129581_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135670
                                  (let ((__tmp135671
                                         (let ((__tmp135677
                                                (let ((__tmp135679
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135678
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129550_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135679
                                                        __tmp135678)))
                                               (__tmp135672
                                                (let ((__tmp135674
                                                       (let ((__tmp135676
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135675
                      (let () (declare (not safe)) (cons _L129549_ '()))))
                 (declare (not safe))
                 (cons __tmp135676 __tmp135675)))
              (__tmp135673
               (let () (declare (not safe)) (cons _expr129585_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135674
                                                        __tmp135673))))
                                           (declare (not safe))
                                           (cons __tmp135677 __tmp135672))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135671))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135670 _stx129236_))
                           (let* ((_$field129591_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots129240_ _slot129583_)))
                                  (__tmp135659
                                   (let ((__tmp135660
                                          (let ((__tmp135668
                                                 (let ((__tmp135669
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass129238_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135669)))
                                                (__tmp135661
                                                 (let ((__tmp135666
                                                        (let ((__tmp135667
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129591_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135667)))
               (__tmp135662
                (let ((__tmp135664
                       (let ((__tmp135665
                              (let ()
                                (declare (not safe))
                                (cons _self129237_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135665)))
                      (__tmp135663
                       (let () (declare (not safe)) (cons _expr129585_ '()))))
                  (declare (not safe))
                  (cons __tmp135664 __tmp135663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135666
                                                         __tmp135662))))
                                            (declare (not safe))
                                            (cons __tmp135668 __tmp135661))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135660))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135659
                              _stx129236_))))))
                  (___kont134832134833_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx129236_
                        _self129237_
                        _$klass129238_
                        _methods129239_
                        _slots129240_)))))
              (let* ((___match135313135314_
                      (lambda (_e129446129484_
                               _hd129445129487_
                               _tl129444129489_
                               _e129449129492_
                               _hd129448129495_
                               _tl129447129497_
                               _e129452129500_
                               _hd129451129503_
                               _tl129450129505_
                               _e129455129508_
                               _hd129454129511_
                               _tl129453129513_
                               _e129458129516_
                               _hd129457129519_
                               _tl129456129521_
                               _e129461129524_
                               _hd129460129527_
                               _tl129459129529_
                               _e129464129532_
                               _hd129463129535_
                               _tl129462129537_
                               _e129467129540_
                               _hd129466129543_
                               _tl129465129545_)
                        (let ((_L129548_ _hd129466129543_)
                              (_L129549_ _hd129463129535_)
                              (_L129550_ _hd129454129511_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129549_
                                      _self129237_))
                                   (let ((__tmp135681
                                          (let ((__tmp135682
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129550_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135682))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135681
                                      'gxc#!mutator::t)))
                              (___kont134830134831_
                               _L129548_
                               _L129549_
                               _L129550_)
                              (___kont134832134833_)))))
                     (___match135311135312_
                      (lambda (_e129446129484_
                               _hd129445129487_
                               _tl129444129489_
                               _e129449129492_
                               _hd129448129495_
                               _tl129447129497_
                               _e129452129500_
                               _hd129451129503_
                               _tl129450129505_
                               _e129455129508_
                               _hd129454129511_
                               _tl129453129513_
                               _e129458129516_
                               _hd129457129519_
                               _tl129456129521_
                               _e129461129524_
                               _hd129460129527_
                               _tl129459129529_
                               _e129464129532_
                               _hd129463129535_
                               _tl129462129537_
                               _e129467129540_
                               _hd129466129543_
                               _tl129465129545_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129465129545_))
                            (___match135313135314_
                             _e129446129484_
                             _hd129445129487_
                             _tl129444129489_
                             _e129449129492_
                             _hd129448129495_
                             _tl129447129497_
                             _e129452129500_
                             _hd129451129503_
                             _tl129450129505_
                             _e129455129508_
                             _hd129454129511_
                             _tl129453129513_
                             _e129458129516_
                             _hd129457129519_
                             _tl129456129521_
                             _e129461129524_
                             _hd129460129527_
                             _tl129459129529_
                             _e129464129532_
                             _hd129463129535_
                             _tl129462129537_
                             _e129467129540_
                             _hd129466129543_
                             _tl129465129545_)
                            (___kont134832134833_))))
                     (___match135305135306_
                      (lambda (_e129446129484_
                               _hd129445129487_
                               _tl129444129489_
                               _e129449129492_
                               _hd129448129495_
                               _tl129447129497_
                               _e129452129500_
                               _hd129451129503_
                               _tl129450129505_
                               _e129455129508_
                               _hd129454129511_
                               _tl129453129513_
                               _e129458129516_
                               _hd129457129519_
                               _tl129456129521_
                               _e129461129524_
                               _hd129460129527_
                               _tl129459129529_
                               _e129464129532_
                               _hd129463129535_
                               _tl129462129537_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129456129521_))
                            (let ((_e129467129540_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129456129521_))))
                              (let ((_tl129465129545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129467129540_)))
                                    (_hd129466129543_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129467129540_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129465129545_))
                                    (___match135313135314_
                                     _e129446129484_
                                     _hd129445129487_
                                     _tl129444129489_
                                     _e129449129492_
                                     _hd129448129495_
                                     _tl129447129497_
                                     _e129452129500_
                                     _hd129451129503_
                                     _tl129450129505_
                                     _e129455129508_
                                     _hd129454129511_
                                     _tl129453129513_
                                     _e129458129516_
                                     _hd129457129519_
                                     _tl129456129521_
                                     _e129461129524_
                                     _hd129460129527_
                                     _tl129459129529_
                                     _e129464129532_
                                     _hd129463129535_
                                     _tl129462129537_
                                     _e129467129540_
                                     _hd129466129543_
                                     _tl129465129545_)
                                    (___kont134832134833_))))
                            (___kont134832134833_))))
                     (___match135251135252_
                      (lambda (_e129422129598_
                               _hd129421129601_
                               _tl129420129603_
                               _e129425129606_
                               _hd129424129609_
                               _tl129423129611_
                               _e129428129614_
                               _hd129427129617_
                               _tl129426129619_
                               _e129431129622_
                               _hd129430129625_
                               _tl129429129627_
                               _e129434129630_
                               _hd129433129633_
                               _tl129432129635_
                               _e129437129638_
                               _hd129436129641_
                               _tl129435129643_
                               _e129440129646_
                               _hd129439129649_
                               _tl129438129651_)
                        (let ((_L129654_ _hd129439129649_)
                              (_L129655_ _hd129430129625_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129654_
                                      _self129237_))
                                   (let ((__tmp135683
                                          (let ((__tmp135684
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129655_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135684))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135683
                                      'gxc#!accessor::t)))
                              (___kont134828134829_ _L129654_ _L129655_)
                              (___kont134832134833_)))))
                     (___match135249135250_
                      (lambda (_e129422129598_
                               _hd129421129601_
                               _tl129420129603_
                               _e129425129606_
                               _hd129424129609_
                               _tl129423129611_
                               _e129428129614_
                               _hd129427129617_
                               _tl129426129619_
                               _e129431129622_
                               _hd129430129625_
                               _tl129429129627_
                               _e129434129630_
                               _hd129433129633_
                               _tl129432129635_
                               _e129437129638_
                               _hd129436129641_
                               _tl129435129643_
                               _e129440129646_
                               _hd129439129649_
                               _tl129438129651_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129432129635_))
                            (___match135251135252_
                             _e129422129598_
                             _hd129421129601_
                             _tl129420129603_
                             _e129425129606_
                             _hd129424129609_
                             _tl129423129611_
                             _e129428129614_
                             _hd129427129617_
                             _tl129426129619_
                             _e129431129622_
                             _hd129430129625_
                             _tl129429129627_
                             _e129434129630_
                             _hd129433129633_
                             _tl129432129635_
                             _e129437129638_
                             _hd129436129641_
                             _tl129435129643_
                             _e129440129646_
                             _hd129439129649_
                             _tl129438129651_)
                            (___match135305135306_
                             _e129422129598_
                             _hd129421129601_
                             _tl129420129603_
                             _e129425129606_
                             _hd129424129609_
                             _tl129423129611_
                             _e129428129614_
                             _hd129427129617_
                             _tl129426129619_
                             _e129431129622_
                             _hd129430129625_
                             _tl129429129627_
                             _e129434129630_
                             _hd129433129633_
                             _tl129432129635_
                             _e129437129638_
                             _hd129436129641_
                             _tl129435129643_
                             _e129440129646_
                             _hd129439129649_
                             _tl129438129651_))))
                     (___match135195135196_
                      (lambda (_e129387129694_
                               _hd129386129697_
                               _tl129385129699_
                               _e129390129702_
                               _hd129389129705_
                               _tl129388129707_
                               _e129393129710_
                               _hd129392129713_
                               _tl129391129715_
                               _e129396129718_
                               _hd129395129721_
                               _tl129394129723_
                               _e129399129726_
                               _hd129398129729_
                               _tl129397129731_
                               _e129402129734_
                               _hd129401129737_
                               _tl129400129739_
                               _e129405129742_
                               _hd129404129745_
                               _tl129403129747_
                               _e129408129750_
                               _hd129407129753_
                               _tl129406129755_
                               _e129411129758_
                               _hd129410129761_
                               _tl129409129763_
                               _e129414129766_
                               _hd129413129769_
                               _tl129412129771_
                               _e129417129774_
                               _hd129416129777_
                               _tl129415129779_)
                        (let ((_L129782_ _hd129416129777_)
                              (_L129783_ _hd129413129769_)
                              (_L129784_ _hd129404129745_)
                              (_L129785_ _hd129395129721_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129785_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129785_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129784_
                                      _self129237_)))
                              (___kont134826134827_
                               _L129782_
                               _L129783_
                               _L129784_
                               _L129785_)
                              (___kont134832134833_)))))
                     (___match135187135188_
                      (lambda (_e129387129694_
                               _hd129386129697_
                               _tl129385129699_
                               _e129390129702_
                               _hd129389129705_
                               _tl129388129707_
                               _e129393129710_
                               _hd129392129713_
                               _tl129391129715_
                               _e129396129718_
                               _hd129395129721_
                               _tl129394129723_
                               _e129399129726_
                               _hd129398129729_
                               _tl129397129731_
                               _e129402129734_
                               _hd129401129737_
                               _tl129400129739_
                               _e129405129742_
                               _hd129404129745_
                               _tl129403129747_
                               _e129408129750_
                               _hd129407129753_
                               _tl129406129755_
                               _e129411129758_
                               _hd129410129761_
                               _tl129409129763_
                               _e129414129766_
                               _hd129413129769_
                               _tl129412129771_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129406129755_))
                            (let ((_e129417129774_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129406129755_))))
                              (let ((_tl129415129779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129417129774_)))
                                    (_hd129416129777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129417129774_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129415129779_))
                                    (___match135195135196_
                                     _e129387129694_
                                     _hd129386129697_
                                     _tl129385129699_
                                     _e129390129702_
                                     _hd129389129705_
                                     _tl129388129707_
                                     _e129393129710_
                                     _hd129392129713_
                                     _tl129391129715_
                                     _e129396129718_
                                     _hd129395129721_
                                     _tl129394129723_
                                     _e129399129726_
                                     _hd129398129729_
                                     _tl129397129731_
                                     _e129402129734_
                                     _hd129401129737_
                                     _tl129400129739_
                                     _e129405129742_
                                     _hd129404129745_
                                     _tl129403129747_
                                     _e129408129750_
                                     _hd129407129753_
                                     _tl129406129755_
                                     _e129411129758_
                                     _hd129410129761_
                                     _tl129409129763_
                                     _e129414129766_
                                     _hd129413129769_
                                     _tl129412129771_
                                     _e129417129774_
                                     _hd129416129777_
                                     _tl129415129779_)
                                    (___kont134832134833_))))
                            (___match135311135312_
                             _e129387129694_
                             _hd129386129697_
                             _tl129385129699_
                             _e129390129702_
                             _hd129389129705_
                             _tl129388129707_
                             _e129393129710_
                             _hd129392129713_
                             _tl129391129715_
                             _e129396129718_
                             _hd129395129721_
                             _tl129394129723_
                             _e129399129726_
                             _hd129398129729_
                             _tl129397129731_
                             _e129402129734_
                             _hd129401129737_
                             _tl129400129739_
                             _e129405129742_
                             _hd129404129745_
                             _tl129403129747_
                             _e129408129750_
                             _hd129407129753_
                             _tl129406129755_))))
                     (___match135109135110_
                      (lambda (_e129353129828_
                               _hd129352129831_
                               _tl129351129833_
                               _e129356129836_
                               _hd129355129839_
                               _tl129354129841_
                               _e129359129844_
                               _hd129358129847_
                               _tl129357129849_
                               _e129362129852_
                               _hd129361129855_
                               _tl129360129857_
                               _e129365129860_
                               _hd129364129863_
                               _tl129363129865_
                               _e129368129868_
                               _hd129367129871_
                               _tl129366129873_
                               _e129371129876_
                               _hd129370129879_
                               _tl129369129881_
                               _e129374129884_
                               _hd129373129887_
                               _tl129372129889_
                               _e129377129892_
                               _hd129376129895_
                               _tl129375129897_
                               _e129380129900_
                               _hd129379129903_
                               _tl129378129905_)
                        (let ((_L129908_ _hd129379129903_)
                              (_L129909_ _hd129370129879_)
                              (_L129910_ _hd129361129855_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129910_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129910_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129909_
                                      _self129237_)))
                              (___kont134824134825_
                               _L129908_
                               _L129909_
                               _L129910_)
                              (___match135313135314_
                               _e129353129828_
                               _hd129352129831_
                               _tl129351129833_
                               _e129356129836_
                               _hd129355129839_
                               _tl129354129841_
                               _e129359129844_
                               _hd129358129847_
                               _tl129357129849_
                               _e129362129852_
                               _hd129361129855_
                               _tl129360129857_
                               _e129365129860_
                               _hd129364129863_
                               _tl129363129865_
                               _e129368129868_
                               _hd129367129871_
                               _tl129366129873_
                               _e129371129876_
                               _hd129370129879_
                               _tl129369129881_
                               _e129374129884_
                               _hd129373129887_
                               _tl129372129889_)))))
                     (___match135107135108_
                      (lambda (_e129353129828_
                               _hd129352129831_
                               _tl129351129833_
                               _e129356129836_
                               _hd129355129839_
                               _tl129354129841_
                               _e129359129844_
                               _hd129358129847_
                               _tl129357129849_
                               _e129362129852_
                               _hd129361129855_
                               _tl129360129857_
                               _e129365129860_
                               _hd129364129863_
                               _tl129363129865_
                               _e129368129868_
                               _hd129367129871_
                               _tl129366129873_
                               _e129371129876_
                               _hd129370129879_
                               _tl129369129881_
                               _e129374129884_
                               _hd129373129887_
                               _tl129372129889_
                               _e129377129892_
                               _hd129376129895_
                               _tl129375129897_
                               _e129380129900_
                               _hd129379129903_
                               _tl129378129905_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129372129889_))
                            (___match135109135110_
                             _e129353129828_
                             _hd129352129831_
                             _tl129351129833_
                             _e129356129836_
                             _hd129355129839_
                             _tl129354129841_
                             _e129359129844_
                             _hd129358129847_
                             _tl129357129849_
                             _e129362129852_
                             _hd129361129855_
                             _tl129360129857_
                             _e129365129860_
                             _hd129364129863_
                             _tl129363129865_
                             _e129368129868_
                             _hd129367129871_
                             _tl129366129873_
                             _e129371129876_
                             _hd129370129879_
                             _tl129369129881_
                             _e129374129884_
                             _hd129373129887_
                             _tl129372129889_
                             _e129377129892_
                             _hd129376129895_
                             _tl129375129897_
                             _e129380129900_
                             _hd129379129903_
                             _tl129378129905_)
                            (___match135187135188_
                             _e129353129828_
                             _hd129352129831_
                             _tl129351129833_
                             _e129356129836_
                             _hd129355129839_
                             _tl129354129841_
                             _e129359129844_
                             _hd129358129847_
                             _tl129357129849_
                             _e129362129852_
                             _hd129361129855_
                             _tl129360129857_
                             _e129365129860_
                             _hd129364129863_
                             _tl129363129865_
                             _e129368129868_
                             _hd129367129871_
                             _tl129366129873_
                             _e129371129876_
                             _hd129370129879_
                             _tl129369129881_
                             _e129374129884_
                             _hd129373129887_
                             _tl129372129889_
                             _e129377129892_
                             _hd129376129895_
                             _tl129375129897_
                             _e129380129900_
                             _hd129379129903_
                             _tl129378129905_))))
                     (___match135097135098_
                      (lambda (_e129353129828_
                               _hd129352129831_
                               _tl129351129833_
                               _e129356129836_
                               _hd129355129839_
                               _tl129354129841_
                               _e129359129844_
                               _hd129358129847_
                               _tl129357129849_
                               _e129362129852_
                               _hd129361129855_
                               _tl129360129857_
                               _e129365129860_
                               _hd129364129863_
                               _tl129363129865_
                               _e129368129868_
                               _hd129367129871_
                               _tl129366129873_
                               _e129371129876_
                               _hd129370129879_
                               _tl129369129881_
                               _e129374129884_
                               _hd129373129887_
                               _tl129372129889_
                               _e129377129892_
                               _hd129376129895_
                               _tl129375129897_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129376129895_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129375129897_))
                                (let ((_e129380129900_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129375129897_))))
                                  (let ((_tl129378129905_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129380129900_)))
                                        (_hd129379129903_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129380129900_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129378129905_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129372129889_))
                                            (___match135109135110_
                                             _e129353129828_
                                             _hd129352129831_
                                             _tl129351129833_
                                             _e129356129836_
                                             _hd129355129839_
                                             _tl129354129841_
                                             _e129359129844_
                                             _hd129358129847_
                                             _tl129357129849_
                                             _e129362129852_
                                             _hd129361129855_
                                             _tl129360129857_
                                             _e129365129860_
                                             _hd129364129863_
                                             _tl129363129865_
                                             _e129368129868_
                                             _hd129367129871_
                                             _tl129366129873_
                                             _e129371129876_
                                             _hd129370129879_
                                             _tl129369129881_
                                             _e129374129884_
                                             _hd129373129887_
                                             _tl129372129889_
                                             _e129377129892_
                                             _hd129376129895_
                                             _tl129375129897_
                                             _e129380129900_
                                             _hd129379129903_
                                             _tl129378129905_)
                                            (___match135187135188_
                                             _e129353129828_
                                             _hd129352129831_
                                             _tl129351129833_
                                             _e129356129836_
                                             _hd129355129839_
                                             _tl129354129841_
                                             _e129359129844_
                                             _hd129358129847_
                                             _tl129357129849_
                                             _e129362129852_
                                             _hd129361129855_
                                             _tl129360129857_
                                             _e129365129860_
                                             _hd129364129863_
                                             _tl129363129865_
                                             _e129368129868_
                                             _hd129367129871_
                                             _tl129366129873_
                                             _e129371129876_
                                             _hd129370129879_
                                             _tl129369129881_
                                             _e129374129884_
                                             _hd129373129887_
                                             _tl129372129889_
                                             _e129377129892_
                                             _hd129376129895_
                                             _tl129375129897_
                                             _e129380129900_
                                             _hd129379129903_
                                             _tl129378129905_))
                                        (___match135311135312_
                                         _e129353129828_
                                         _hd129352129831_
                                         _tl129351129833_
                                         _e129356129836_
                                         _hd129355129839_
                                         _tl129354129841_
                                         _e129359129844_
                                         _hd129358129847_
                                         _tl129357129849_
                                         _e129362129852_
                                         _hd129361129855_
                                         _tl129360129857_
                                         _e129365129860_
                                         _hd129364129863_
                                         _tl129363129865_
                                         _e129368129868_
                                         _hd129367129871_
                                         _tl129366129873_
                                         _e129371129876_
                                         _hd129370129879_
                                         _tl129369129881_
                                         _e129374129884_
                                         _hd129373129887_
                                         _tl129372129889_))))
                                (___match135311135312_
                                 _e129353129828_
                                 _hd129352129831_
                                 _tl129351129833_
                                 _e129356129836_
                                 _hd129355129839_
                                 _tl129354129841_
                                 _e129359129844_
                                 _hd129358129847_
                                 _tl129357129849_
                                 _e129362129852_
                                 _hd129361129855_
                                 _tl129360129857_
                                 _e129365129860_
                                 _hd129364129863_
                                 _tl129363129865_
                                 _e129368129868_
                                 _hd129367129871_
                                 _tl129366129873_
                                 _e129371129876_
                                 _hd129370129879_
                                 _tl129369129881_
                                 _e129374129884_
                                 _hd129373129887_
                                 _tl129372129889_))
                            (___match135311135312_
                             _e129353129828_
                             _hd129352129831_
                             _tl129351129833_
                             _e129356129836_
                             _hd129355129839_
                             _tl129354129841_
                             _e129359129844_
                             _hd129358129847_
                             _tl129357129849_
                             _e129362129852_
                             _hd129361129855_
                             _tl129360129857_
                             _e129365129860_
                             _hd129364129863_
                             _tl129363129865_
                             _e129368129868_
                             _hd129367129871_
                             _tl129366129873_
                             _e129371129876_
                             _hd129370129879_
                             _tl129369129881_
                             _e129374129884_
                             _hd129373129887_
                             _tl129372129889_))))
                     (___match135029135030_
                      (lambda (_e129302129949_
                               _hd129301129952_
                               _tl129300129954_
                               _e129305129957_
                               _hd129304129960_
                               _tl129303129962_
                               _e129308129965_
                               _hd129307129968_
                               _tl129306129970_
                               _e129311129973_
                               _hd129310129976_
                               _tl129309129978_
                               _e129314129981_
                               _hd129313129984_
                               _tl129312129986_
                               _e129317129989_
                               _hd129316129992_
                               _tl129315129994_
                               _e129320129997_
                               _hd129319130000_
                               _tl129318130002_
                               _e129323130005_
                               _hd129322130008_
                               _tl129321130010_
                               _e129326130013_
                               _hd129325130016_
                               _tl129324130018_
                               _e129329130021_
                               _hd129328130024_
                               _tl129327130026_
                               _e129332130029_
                               _hd129331130032_
                               _tl129330130034_
                               _e129335130037_
                               _hd129334130040_
                               _tl129333130042_
                               _e129338130045_
                               _hd129337130048_
                               _tl129336130050_
                               ___splice134822134823_
                               _target129339130053_
                               _tl129341130055_)
                        (letrec ((_loop129342130058_
                                  (lambda (_hd129340130061_ _args129346130063_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129340130061_))
                                        (let ((_e129343130066_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129340130061_))))
                                          (let ((_lp-tl129345130071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129343130066_)))
                                                (_lp-hd129344130069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129343130066_))))
                                            (let ((__tmp135685
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129344130069_
                                                           _args129346130063_))))
                                              (declare (not safe))
                                              (_loop129342130058_
                                               _lp-tl129345130071_
                                               __tmp135685))))
                                        (let ((_args129347130074_
                                               (reverse _args129346130063_)))
                                          (let ((_L130077_ _args129347130074_)
                                                (_L130078_ _hd129337130048_)
                                                (_L130079_ _hd129328130024_)
                                                (_L130080_ _hd129319130000_)
                                                (_L130081_ _hd129310129976_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130081_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130080_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130079_
                                                        _self129237_)))
                                                (___kont134820134821_
                                                 _L130077_
                                                 _L130078_
                                                 _L130079_
                                                 _L130080_
                                                 _L130081_)
                                                (___kont134832134833_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129342130058_ _target129339130053_ '())))))
                     (___match134987134988_
                      (lambda (_e129302129949_
                               _hd129301129952_
                               _tl129300129954_
                               _e129305129957_
                               _hd129304129960_
                               _tl129303129962_
                               _e129308129965_
                               _hd129307129968_
                               _tl129306129970_
                               _e129311129973_
                               _hd129310129976_
                               _tl129309129978_
                               _e129314129981_
                               _hd129313129984_
                               _tl129312129986_
                               _e129317129989_
                               _hd129316129992_
                               _tl129315129994_
                               _e129320129997_
                               _hd129319130000_
                               _tl129318130002_
                               _e129323130005_
                               _hd129322130008_
                               _tl129321130010_
                               _e129326130013_
                               _hd129325130016_
                               _tl129324130018_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129325130016_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129324130018_))
                                (let ((_e129329130021_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129324130018_))))
                                  (let ((_tl129327130026_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129329130021_)))
                                        (_hd129328130024_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129329130021_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129327130026_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129321130010_))
                                            (let ((_e129332130029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129321130010_))))
                                              (let ((_tl129330130034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129332130029_)))
                                                    (_hd129331130032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129332130029_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129331130032_))
                                                    (let ((_e129335130037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129331130032_))))
                                                      (let ((_tl129333130042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129335130037_)))
                    (_hd129334130040_
                     (let () (declare (not safe)) (##car _e129335130037_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129334130040_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129334130040_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129333130042_))
                            (let ((_e129338130045_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129333130042_))))
                              (let ((_tl129336130050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129338130045_)))
                                    (_hd129337130048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129338130045_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129336130050_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129330130034_))
                                        (let ((___splice134822134823_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129330130034_
                                                  '0))))
                                          (let ((_tl129341130055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134822134823_
                                                    '1)))
                                                (_target129339130053_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134822134823_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129341130055_))
                                                (___match135029135030_
                                                 _e129302129949_
                                                 _hd129301129952_
                                                 _tl129300129954_
                                                 _e129305129957_
                                                 _hd129304129960_
                                                 _tl129303129962_
                                                 _e129308129965_
                                                 _hd129307129968_
                                                 _tl129306129970_
                                                 _e129311129973_
                                                 _hd129310129976_
                                                 _tl129309129978_
                                                 _e129314129981_
                                                 _hd129313129984_
                                                 _tl129312129986_
                                                 _e129317129989_
                                                 _hd129316129992_
                                                 _tl129315129994_
                                                 _e129320129997_
                                                 _hd129319130000_
                                                 _tl129318130002_
                                                 _e129323130005_
                                                 _hd129322130008_
                                                 _tl129321130010_
                                                 _e129326130013_
                                                 _hd129325130016_
                                                 _tl129324130018_
                                                 _e129329130021_
                                                 _hd129328130024_
                                                 _tl129327130026_
                                                 _e129332130029_
                                                 _hd129331130032_
                                                 _tl129330130034_
                                                 _e129335130037_
                                                 _hd129334130040_
                                                 _tl129333130042_
                                                 _e129338130045_
                                                 _hd129337130048_
                                                 _tl129336130050_
                                                 ___splice134822134823_
                                                 _target129339130053_
                                                 _tl129341130055_)
                                                (___kont134832134833_))))
                                        (___kont134832134833_))
                                    (___kont134832134833_))))
                            (___kont134832134833_))
                        (___kont134832134833_))
                    (___kont134832134833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134832134833_))))
                                            (___match135311135312_
                                             _e129302129949_
                                             _hd129301129952_
                                             _tl129300129954_
                                             _e129305129957_
                                             _hd129304129960_
                                             _tl129303129962_
                                             _e129308129965_
                                             _hd129307129968_
                                             _tl129306129970_
                                             _e129311129973_
                                             _hd129310129976_
                                             _tl129309129978_
                                             _e129314129981_
                                             _hd129313129984_
                                             _tl129312129986_
                                             _e129317129989_
                                             _hd129316129992_
                                             _tl129315129994_
                                             _e129320129997_
                                             _hd129319130000_
                                             _tl129318130002_
                                             _e129323130005_
                                             _hd129322130008_
                                             _tl129321130010_))
                                        (___match135311135312_
                                         _e129302129949_
                                         _hd129301129952_
                                         _tl129300129954_
                                         _e129305129957_
                                         _hd129304129960_
                                         _tl129303129962_
                                         _e129308129965_
                                         _hd129307129968_
                                         _tl129306129970_
                                         _e129311129973_
                                         _hd129310129976_
                                         _tl129309129978_
                                         _e129314129981_
                                         _hd129313129984_
                                         _tl129312129986_
                                         _e129317129989_
                                         _hd129316129992_
                                         _tl129315129994_
                                         _e129320129997_
                                         _hd129319130000_
                                         _tl129318130002_
                                         _e129323130005_
                                         _hd129322130008_
                                         _tl129321130010_))))
                                (___match135311135312_
                                 _e129302129949_
                                 _hd129301129952_
                                 _tl129300129954_
                                 _e129305129957_
                                 _hd129304129960_
                                 _tl129303129962_
                                 _e129308129965_
                                 _hd129307129968_
                                 _tl129306129970_
                                 _e129311129973_
                                 _hd129310129976_
                                 _tl129309129978_
                                 _e129314129981_
                                 _hd129313129984_
                                 _tl129312129986_
                                 _e129317129989_
                                 _hd129316129992_
                                 _tl129315129994_
                                 _e129320129997_
                                 _hd129319130000_
                                 _tl129318130002_
                                 _e129323130005_
                                 _hd129322130008_
                                 _tl129321130010_))
                            (___match135097135098_
                             _e129302129949_
                             _hd129301129952_
                             _tl129300129954_
                             _e129305129957_
                             _hd129304129960_
                             _tl129303129962_
                             _e129308129965_
                             _hd129307129968_
                             _tl129306129970_
                             _e129311129973_
                             _hd129310129976_
                             _tl129309129978_
                             _e129314129981_
                             _hd129313129984_
                             _tl129312129986_
                             _e129317129989_
                             _hd129316129992_
                             _tl129315129994_
                             _e129320129997_
                             _hd129319130000_
                             _tl129318130002_
                             _e129323130005_
                             _hd129322130008_
                             _tl129321130010_
                             _e129326130013_
                             _hd129325130016_
                             _tl129324130018_))))
                     (___match134919134920_
                      (lambda (_e129258130141_
                               _hd129257130144_
                               _tl129256130146_
                               _e129261130149_
                               _hd129260130152_
                               _tl129259130154_
                               _e129264130157_
                               _hd129263130160_
                               _tl129262130162_
                               _e129267130165_
                               _hd129266130168_
                               _tl129265130170_
                               _e129270130173_
                               _hd129269130176_
                               _tl129268130178_
                               _e129273130181_
                               _hd129272130184_
                               _tl129271130186_
                               _e129276130189_
                               _hd129275130192_
                               _tl129274130194_
                               _e129279130197_
                               _hd129278130200_
                               _tl129277130202_
                               _e129282130205_
                               _hd129281130208_
                               _tl129280130210_
                               _e129285130213_
                               _hd129284130216_
                               _tl129283130218_
                               ___splice134818134819_
                               _target129286130221_
                               _tl129288130223_)
                        (letrec ((_loop129289130226_
                                  (lambda (_hd129287130229_ _args129293130231_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129287130229_))
                                        (let ((_e129290130234_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129287130229_))))
                                          (let ((_lp-tl129292130239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129290130234_)))
                                                (_lp-hd129291130237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129290130234_))))
                                            (let ((__tmp135686
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129291130237_
                                                           _args129293130231_))))
                                              (declare (not safe))
                                              (_loop129289130226_
                                               _lp-tl129292130239_
                                               __tmp135686))))
                                        (let ((_args129294130242_
                                               (reverse _args129293130231_)))
                                          (let ((_L130245_ _args129294130242_)
                                                (_L130246_ _hd129284130216_)
                                                (_L130247_ _hd129275130192_)
                                                (_L130248_ _hd129266130168_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130248_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130247_
                                                        _self129237_)))
                                                (___kont134816134817_
                                                 _L130245_
                                                 _L130246_
                                                 _L130247_
                                                 _L130248_)
                                                (___match135107135108_
                                                 _e129258130141_
                                                 _hd129257130144_
                                                 _tl129256130146_
                                                 _e129261130149_
                                                 _hd129260130152_
                                                 _tl129259130154_
                                                 _e129264130157_
                                                 _hd129263130160_
                                                 _tl129262130162_
                                                 _e129267130165_
                                                 _hd129266130168_
                                                 _tl129265130170_
                                                 _e129270130173_
                                                 _hd129269130176_
                                                 _tl129268130178_
                                                 _e129273130181_
                                                 _hd129272130184_
                                                 _tl129271130186_
                                                 _e129276130189_
                                                 _hd129275130192_
                                                 _tl129274130194_
                                                 _e129279130197_
                                                 _hd129278130200_
                                                 _tl129277130202_
                                                 _e129282130205_
                                                 _hd129281130208_
                                                 _tl129280130210_
                                                 _e129285130213_
                                                 _hd129284130216_
                                                 _tl129283130218_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129289130226_ _target129286130221_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134814134815_))
                    (let ((_e129258130141_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134814134815_))))
                      (let ((_tl129256130146_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129258130141_)))
                            (_hd129257130144_
                             (let ()
                               (declare (not safe))
                               (##car _e129258130141_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129256130146_))
                            (let ((_e129261130149_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129256130146_))))
                              (let ((_tl129259130154_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129261130149_)))
                                    (_hd129260130152_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129261130149_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129260130152_))
                                    (let ((_e129264130157_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129260130152_))))
                                      (let ((_tl129262130162_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129264130157_)))
                                            (_hd129263130160_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129264130157_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129263130160_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129263130160_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129262130162_))
                                                    (let ((_e129267130165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129262130162_))))
                                                      (let ((_tl129265130170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129267130165_)))
                    (_hd129266130168_
                     (let () (declare (not safe)) (##car _e129267130165_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129265130170_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129259130154_))
                        (let ((_e129270130173_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129259130154_))))
                          (let ((_tl129268130178_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129270130173_)))
                                (_hd129269130176_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129270130173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129269130176_))
                                (let ((_e129273130181_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129269130176_))))
                                  (let ((_tl129271130186_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129273130181_)))
                                        (_hd129272130184_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129273130181_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129272130184_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129272130184_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129271130186_))
                                                (let ((_e129276130189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129271130186_))))
                                                  (let ((_tl129274130194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129276130189_)))
                                                        (_hd129275130192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129276130189_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129274130194_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129268130178_))
                                                            (let ((_e129279130197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129268130178_))))
                      (let ((_tl129277130202_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129279130197_)))
                            (_hd129278130200_
                             (let ()
                               (declare (not safe))
                               (##car _e129279130197_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129278130200_))
                            (let ((_e129282130205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129278130200_))))
                              (let ((_tl129280130210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129282130205_)))
                                    (_hd129281130208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129282130205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129281130208_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129281130208_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129280130210_))
                                            (let ((_e129285130213_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129280130210_))))
                                              (let ((_tl129283130218_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129285130213_)))
                                                    (_hd129284130216_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129285130213_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129283130218_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129277130202_))
                                                        (let ((___splice134818134819_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129277130202_ '0))))
                  (let ((_tl129288130223_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134818134819_ '1)))
                        (_target129286130221_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134818134819_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129288130223_))
                        (___match134919134920_
                         _e129258130141_
                         _hd129257130144_
                         _tl129256130146_
                         _e129261130149_
                         _hd129260130152_
                         _tl129259130154_
                         _e129264130157_
                         _hd129263130160_
                         _tl129262130162_
                         _e129267130165_
                         _hd129266130168_
                         _tl129265130170_
                         _e129270130173_
                         _hd129269130176_
                         _tl129268130178_
                         _e129273130181_
                         _hd129272130184_
                         _tl129271130186_
                         _e129276130189_
                         _hd129275130192_
                         _tl129274130194_
                         _e129279130197_
                         _hd129278130200_
                         _tl129277130202_
                         _e129282130205_
                         _hd129281130208_
                         _tl129280130210_
                         _e129285130213_
                         _hd129284130216_
                         _tl129283130218_
                         ___splice134818134819_
                         _target129286130221_
                         _tl129288130223_)
                        (___match135107135108_
                         _e129258130141_
                         _hd129257130144_
                         _tl129256130146_
                         _e129261130149_
                         _hd129260130152_
                         _tl129259130154_
                         _e129264130157_
                         _hd129263130160_
                         _tl129262130162_
                         _e129267130165_
                         _hd129266130168_
                         _tl129265130170_
                         _e129270130173_
                         _hd129269130176_
                         _tl129268130178_
                         _e129273130181_
                         _hd129272130184_
                         _tl129271130186_
                         _e129276130189_
                         _hd129275130192_
                         _tl129274130194_
                         _e129279130197_
                         _hd129278130200_
                         _tl129277130202_
                         _e129282130205_
                         _hd129281130208_
                         _tl129280130210_
                         _e129285130213_
                         _hd129284130216_
                         _tl129283130218_))))
                (___match135107135108_
                 _e129258130141_
                 _hd129257130144_
                 _tl129256130146_
                 _e129261130149_
                 _hd129260130152_
                 _tl129259130154_
                 _e129264130157_
                 _hd129263130160_
                 _tl129262130162_
                 _e129267130165_
                 _hd129266130168_
                 _tl129265130170_
                 _e129270130173_
                 _hd129269130176_
                 _tl129268130178_
                 _e129273130181_
                 _hd129272130184_
                 _tl129271130186_
                 _e129276130189_
                 _hd129275130192_
                 _tl129274130194_
                 _e129279130197_
                 _hd129278130200_
                 _tl129277130202_
                 _e129282130205_
                 _hd129281130208_
                 _tl129280130210_
                 _e129285130213_
                 _hd129284130216_
                 _tl129283130218_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135311135312_
                                                     _e129258130141_
                                                     _hd129257130144_
                                                     _tl129256130146_
                                                     _e129261130149_
                                                     _hd129260130152_
                                                     _tl129259130154_
                                                     _e129264130157_
                                                     _hd129263130160_
                                                     _tl129262130162_
                                                     _e129267130165_
                                                     _hd129266130168_
                                                     _tl129265130170_
                                                     _e129270130173_
                                                     _hd129269130176_
                                                     _tl129268130178_
                                                     _e129273130181_
                                                     _hd129272130184_
                                                     _tl129271130186_
                                                     _e129276130189_
                                                     _hd129275130192_
                                                     _tl129274130194_
                                                     _e129279130197_
                                                     _hd129278130200_
                                                     _tl129277130202_))))
                                            (___match135311135312_
                                             _e129258130141_
                                             _hd129257130144_
                                             _tl129256130146_
                                             _e129261130149_
                                             _hd129260130152_
                                             _tl129259130154_
                                             _e129264130157_
                                             _hd129263130160_
                                             _tl129262130162_
                                             _e129267130165_
                                             _hd129266130168_
                                             _tl129265130170_
                                             _e129270130173_
                                             _hd129269130176_
                                             _tl129268130178_
                                             _e129273130181_
                                             _hd129272130184_
                                             _tl129271130186_
                                             _e129276130189_
                                             _hd129275130192_
                                             _tl129274130194_
                                             _e129279130197_
                                             _hd129278130200_
                                             _tl129277130202_))
                                        (___match134987134988_
                                         _e129258130141_
                                         _hd129257130144_
                                         _tl129256130146_
                                         _e129261130149_
                                         _hd129260130152_
                                         _tl129259130154_
                                         _e129264130157_
                                         _hd129263130160_
                                         _tl129262130162_
                                         _e129267130165_
                                         _hd129266130168_
                                         _tl129265130170_
                                         _e129270130173_
                                         _hd129269130176_
                                         _tl129268130178_
                                         _e129273130181_
                                         _hd129272130184_
                                         _tl129271130186_
                                         _e129276130189_
                                         _hd129275130192_
                                         _tl129274130194_
                                         _e129279130197_
                                         _hd129278130200_
                                         _tl129277130202_
                                         _e129282130205_
                                         _hd129281130208_
                                         _tl129280130210_))
                                    (___match135311135312_
                                     _e129258130141_
                                     _hd129257130144_
                                     _tl129256130146_
                                     _e129261130149_
                                     _hd129260130152_
                                     _tl129259130154_
                                     _e129264130157_
                                     _hd129263130160_
                                     _tl129262130162_
                                     _e129267130165_
                                     _hd129266130168_
                                     _tl129265130170_
                                     _e129270130173_
                                     _hd129269130176_
                                     _tl129268130178_
                                     _e129273130181_
                                     _hd129272130184_
                                     _tl129271130186_
                                     _e129276130189_
                                     _hd129275130192_
                                     _tl129274130194_
                                     _e129279130197_
                                     _hd129278130200_
                                     _tl129277130202_))))
                            (___match135311135312_
                             _e129258130141_
                             _hd129257130144_
                             _tl129256130146_
                             _e129261130149_
                             _hd129260130152_
                             _tl129259130154_
                             _e129264130157_
                             _hd129263130160_
                             _tl129262130162_
                             _e129267130165_
                             _hd129266130168_
                             _tl129265130170_
                             _e129270130173_
                             _hd129269130176_
                             _tl129268130178_
                             _e129273130181_
                             _hd129272130184_
                             _tl129271130186_
                             _e129276130189_
                             _hd129275130192_
                             _tl129274130194_
                             _e129279130197_
                             _hd129278130200_
                             _tl129277130202_))))
                    (___match135249135250_
                     _e129258130141_
                     _hd129257130144_
                     _tl129256130146_
                     _e129261130149_
                     _hd129260130152_
                     _tl129259130154_
                     _e129264130157_
                     _hd129263130160_
                     _tl129262130162_
                     _e129267130165_
                     _hd129266130168_
                     _tl129265130170_
                     _e129270130173_
                     _hd129269130176_
                     _tl129268130178_
                     _e129273130181_
                     _hd129272130184_
                     _tl129271130186_
                     _e129276130189_
                     _hd129275130192_
                     _tl129274130194_))
                (___kont134832134833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134832134833_))
                                            (___kont134832134833_))
                                        (___kont134832134833_))))
                                (___kont134832134833_))))
                        (___kont134832134833_))
                    (___kont134832134833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134832134833_))
                                                (___kont134832134833_))
                                            (___kont134832134833_))))
                                    (___kont134832134833_))))
                            (___kont134832134833_))))
                    (___kont134832134833_))))))))))
