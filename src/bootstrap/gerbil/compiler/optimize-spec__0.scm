(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707740671)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl249521_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255217 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl249521_ __tmp255217))
           (let ()
             (declare (not safe))
             (table-set! _tbl249521_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249521_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249521_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249521_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl249521_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx249504_ . _args249506_)
        (let ((__tmp255219
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249506_)
                     (gxc#compile-e__0 _stx249504_)
                     (let ((_arg1249511_ (car _args249506_))
                           (_rest249513_ (cdr _args249506_)))
                       (if (null? _rest249513_)
                           (gxc#compile-e__1 _stx249504_ _arg1249511_)
                           (let ((_arg2249516_ (car _rest249513_))
                                 (_rest249518_ (cdr _rest249513_)))
                             (if (null? _rest249518_)
                                 (gxc#compile-e__2
                                  _stx249504_
                                  _arg1249511_
                                  _arg2249516_)
                                 (apply gxc#compile-e
                                        _stx249504_
                                        _arg1249511_
                                        _arg2249516_
                                        _rest249518_))))))))
              (__tmp255218 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp255219
           gxc#current-compile-methods
           __tmp255218))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249501_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255220 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl249501_ __tmp255220))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249501_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249501_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl249501_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx249484_ . _args249486_)
        (let ((__tmp255222
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249486_)
                     (gxc#compile-e__0 _stx249484_)
                     (let ((_arg1249491_ (car _args249486_))
                           (_rest249493_ (cdr _args249486_)))
                       (if (null? _rest249493_)
                           (gxc#compile-e__1 _stx249484_ _arg1249491_)
                           (let ((_arg2249496_ (car _rest249493_))
                                 (_rest249498_ (cdr _rest249493_)))
                             (if (null? _rest249498_)
                                 (gxc#compile-e__2
                                  _stx249484_
                                  _arg1249491_
                                  _arg2249496_)
                                 (apply gxc#compile-e
                                        _stx249484_
                                        _arg1249491_
                                        _arg2249496_
                                        _rest249498_))))))))
              (__tmp255221 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255222
           gxc#current-compile-methods
           __tmp255221))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249481_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255223 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl249481_ __tmp255223))
           (let ()
             (declare (not safe))
             (table-set! _tbl249481_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249481_ '%#call gxc#subst-object-refs-call%))
           _tbl249481_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx249464_ . _args249466_)
        (let ((__tmp255225
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249466_)
                     (gxc#compile-e__0 _stx249464_)
                     (let ((_arg1249471_ (car _args249466_))
                           (_rest249473_ (cdr _args249466_)))
                       (if (null? _rest249473_)
                           (gxc#compile-e__1 _stx249464_ _arg1249471_)
                           (let ((_arg2249476_ (car _rest249473_))
                                 (_rest249478_ (cdr _rest249473_)))
                             (if (null? _rest249478_)
                                 (gxc#compile-e__2
                                  _stx249464_
                                  _arg1249471_
                                  _arg2249476_)
                                 (apply gxc#compile-e
                                        _stx249464_
                                        _arg1249471_
                                        _arg2249476_
                                        _rest249478_))))))))
              (__tmp255224 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255225
           gxc#current-compile-methods
           __tmp255224))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx246134_)
        (letrec ((_generate-method-bind246136_
                  (lambda (_$t249458_ _id249459_ _$id249460_)
                    (let ((_$tmp249462_
                           (let ((__tmp255226 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255226))))
                      (let ((__tmp255271
                             (let ()
                               (declare (not safe))
                               (cons _$id249460_ '())))
                            (__tmp255227
                             (let ((__tmp255228
                                    (let ((__tmp255229
                                           (let ((__tmp255269
                                                  (let ((__tmp255270
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255270)))
                                                 (__tmp255230
                                                  (let ((__tmp255231
                                                         (let ((__tmp255232
                                                                (let ((__tmp255233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255234
                                      (let ((__tmp255235
                                             (let ((__tmp255255
                                                    (let ((__tmp255256
                                                           (let ((__tmp255268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp249462_ '())))
                         (__tmp255257
                          (let ((__tmp255258
                                 (let ((__tmp255259
                                        (let ((__tmp255266
                                               (let ((__tmp255267
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp255267)))
                                              (__tmp255260
                                               (let ((__tmp255264
                                                      (let ((__tmp255265
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t249458_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp255265)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255261
                                                      (let ((__tmp255262
                                                             (let ((__tmp255263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id249459_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp255263))))
                (declare (not safe))
                (cons __tmp255262 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp255264
                                                       __tmp255261))))
                                          (declare (not safe))
                                          (cons __tmp255266 __tmp255260))))
                                   (declare (not safe))
                                   (cons '%#call __tmp255259))))
                            (declare (not safe))
                            (cons __tmp255258 '()))))
                     (declare (not safe))
                     (cons __tmp255268 __tmp255257))))
              (declare (not safe))
              (cons __tmp255256 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255236
                                                    (let ((__tmp255237
                                                           (let ((__tmp255238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255253
                                 (let ((__tmp255254
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp249462_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp255254)))
                                (__tmp255239
                                 (let ((__tmp255251
                                        (let ((__tmp255252
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp249462_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp255252)))
                                       (__tmp255240
                                        (let ((__tmp255241
                                               (let ((__tmp255242
                                                      (let ((__tmp255249
                                                             (let ((__tmp255250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp255250)))
                    (__tmp255243
                     (let ((__tmp255247
                            (let ((__tmp255248
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp255248)))
                           (__tmp255244
                            (let ((__tmp255245
                                   (let ((__tmp255246
                                          (let ()
                                            (declare (not safe))
                                            (cons _id249459_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp255246))))
                              (declare (not safe))
                              (cons __tmp255245 '()))))
                       (declare (not safe))
                       (cons __tmp255247 __tmp255244))))
                (declare (not safe))
                (cons __tmp255249 __tmp255243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp255242))))
                                          (declare (not safe))
                                          (cons __tmp255241 '()))))
                                   (declare (not safe))
                                   (cons __tmp255251 __tmp255240))))
                            (declare (not safe))
                            (cons __tmp255253 __tmp255239))))
                     (declare (not safe))
                     (cons '%#if __tmp255238))))
              (declare (not safe))
              (cons __tmp255237 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255255
                                                     __tmp255236))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp255235))))
                                 (declare (not safe))
                                 (cons __tmp255234 '()))))
                          (declare (not safe))
                          (cons '() __tmp255233))))
                   (declare (not safe))
                   (cons '%#lambda __tmp255232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255231 '()))))
                                             (declare (not safe))
                                             (cons __tmp255269 __tmp255230))))
                                      (declare (not safe))
                                      (cons '%#call __tmp255229))))
                               (declare (not safe))
                               (cons __tmp255228 '()))))
                        (declare (not safe))
                        (cons __tmp255271 __tmp255227)))))
                 (_generate-slot-bind246137_
                  (lambda (_$t249452_ _id249453_ _$id249454_)
                    (let ((_$tmp249456_
                           (let ((__tmp255272 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255272))))
                      (let ((__tmp255309
                             (let ()
                               (declare (not safe))
                               (cons _$id249454_ '())))
                            (__tmp255273
                             (let ((__tmp255274
                                    (let ((__tmp255275
                                           (let ((__tmp255295
                                                  (let ((__tmp255296
                                                         (let ((__tmp255308
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp249456_ '())))
                       (__tmp255297
                        (let ((__tmp255298
                               (let ((__tmp255299
                                      (let ((__tmp255306
                                             (let ((__tmp255307
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp255307)))
                                            (__tmp255300
                                             (let ((__tmp255304
                                                    (let ((__tmp255305
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t249452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp255305)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255301
                                                    (let ((__tmp255302
                                                           (let ((__tmp255303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id249453_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp255303))))
              (declare (not safe))
              (cons __tmp255302 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255304
                                                     __tmp255301))))
                                        (declare (not safe))
                                        (cons __tmp255306 __tmp255300))))
                                 (declare (not safe))
                                 (cons '%#call __tmp255299))))
                          (declare (not safe))
                          (cons __tmp255298 '()))))
                   (declare (not safe))
                   (cons __tmp255308 __tmp255297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255296 '())))
                                                 (__tmp255276
                                                  (let ((__tmp255277
                                                         (let ((__tmp255278
                                                                (let ((__tmp255293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255294
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp249456_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255294)))
                              (__tmp255279
                               (let ((__tmp255291
                                      (let ((__tmp255292
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp249456_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp255292)))
                                     (__tmp255280
                                      (let ((__tmp255281
                                             (let ((__tmp255282
                                                    (let ((__tmp255289
                                                           (let ((__tmp255290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp255290)))
                  (__tmp255283
                   (let ((__tmp255287
                          (let ((__tmp255288
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp255288)))
                         (__tmp255284
                          (let ((__tmp255285
                                 (let ((__tmp255286
                                        (let ()
                                          (declare (not safe))
                                          (cons _id249453_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp255286))))
                            (declare (not safe))
                            (cons __tmp255285 '()))))
                     (declare (not safe))
                     (cons __tmp255287 __tmp255284))))
              (declare (not safe))
              (cons __tmp255289 __tmp255283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp255282))))
                                        (declare (not safe))
                                        (cons __tmp255281 '()))))
                                 (declare (not safe))
                                 (cons __tmp255291 __tmp255280))))
                          (declare (not safe))
                          (cons __tmp255293 __tmp255279))))
                   (declare (not safe))
                   (cons '%#if __tmp255278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255277 '()))))
                                             (declare (not safe))
                                             (cons __tmp255295 __tmp255276))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp255275))))
                               (declare (not safe))
                               (cons __tmp255274 '()))))
                        (declare (not safe))
                        (cons __tmp255309 __tmp255273)))))
                 (_generate-class-check-bind246138_
                  (lambda (_$t249448_ _class-type249449_ _$class-type249450_)
                    (let ((__tmp255321
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249450_ '())))
                          (__tmp255310
                           (let ((__tmp255311
                                  (let ((__tmp255312
                                         (let ((__tmp255319
                                                (let ((__tmp255320
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255320)))
                                               (__tmp255313
                                                (let ((__tmp255317
                                                       (let ((__tmp255318
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249448_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255318)))
              (__tmp255314
               (let ((__tmp255315
                      (let ((__tmp255316
                             (let ()
                               (declare (not safe))
                               (cons _class-type249449_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255316))))
                 (declare (not safe))
                 (cons __tmp255315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255317
                                                        __tmp255314))))
                                           (declare (not safe))
                                           (cons __tmp255319 __tmp255313))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255312))))
                             (declare (not safe))
                             (cons __tmp255311 '()))))
                      (declare (not safe))
                      (cons __tmp255321 __tmp255310))))
                 (_generate-struct-check-bind246139_
                  (lambda (_$t249444_ _class-type249445_ _$class-type249446_)
                    (let ((__tmp255333
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249446_ '())))
                          (__tmp255322
                           (let ((__tmp255323
                                  (let ((__tmp255324
                                         (let ((__tmp255331
                                                (let ((__tmp255332
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255332)))
                                               (__tmp255325
                                                (let ((__tmp255329
                                                       (let ((__tmp255330
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249444_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255330)))
              (__tmp255326
               (let ((__tmp255327
                      (let ((__tmp255328
                             (let ()
                               (declare (not safe))
                               (cons _class-type249445_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255328))))
                 (declare (not safe))
                 (cons __tmp255327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255329
                                                        __tmp255326))))
                                           (declare (not safe))
                                           (cons __tmp255331 __tmp255325))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255324))))
                             (declare (not safe))
                             (cons __tmp255323 '()))))
                      (declare (not safe))
                      (cons __tmp255333 __tmp255322))))
                 (_generate-specializer-impl246140_
                  (lambda (_$t249393_
                           _methods-bind249394_
                           _slots-bind249395_
                           _class-check-bind249396_
                           _struct-check-bind249397_
                           _specializer-impl249398_
                           _lifted-specializer-id249399_
                           _unchecked-specializer-impl249400_)
                    (let ((__tmp255334
                           (let ((__tmp255335
                                  (let ((__tmp255361
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t249393_ '())))
                                        (__tmp255336
                                         (let ((__tmp255337
                                                (let ((__tmp255338
                                                       (let ((__tmp255358
                                                              (let ((__tmp255359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255360
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind249397_
                                              _class-check-bind249396_))))
                               (declare (not safe))
                               (foldr1 cons __tmp255360 _slots-bind249395_))))
                        (declare (not safe))
                        (foldr1 cons __tmp255359 _methods-bind249394_)))
                     (__tmp255339
                      (let ((__tmp255340
                             (if (or _lifted-specializer-id249399_
                                     _unchecked-specializer-impl249400_)
                                 (let* ((_$specializer249405_
                                         (let ((__tmp255341
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp255341)))
                                        (__tmp255342
                                         (let ((__tmp255354
                                                (let ((__tmp255355
                                                       (let ((__tmp255357
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249405_ '())))
                     (__tmp255356
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl249398_ '()))))
                 (declare (not safe))
                 (cons __tmp255357 __tmp255356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255355 '())))
                                               (__tmp255343
                                                (let ((__tmp255344
                                                       (let _recur249407_ ((_rest249409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind249397_)))
                 (let* ((_rest249410249418_ _rest249409_)
                        (_else249412249426_
                         (lambda ()
                           (if _lifted-specializer-id249399_
                               (let ((__tmp255345
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id249399_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255345))
                               _unchecked-specializer-impl249400_)))
                        (_K249414249432_
                         (lambda (_rest249429_ _checkq249430_)
                           (let ((__tmp255346
                                  (let ((__tmp255352
                                         (let ((__tmp255353
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq249430_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255353)))
                                        (__tmp255347
                                         (let ((__tmp255351
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur249407_
                                                   _rest249429_)))
                                               (__tmp255348
                                                (let ((__tmp255349
                                                       (let ((__tmp255350
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249405_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255349 '()))))
                                           (declare (not safe))
                                           (cons __tmp255351 __tmp255348))))
                                    (declare (not safe))
                                    (cons __tmp255352 __tmp255347))))
                             (declare (not safe))
                             (cons '%#if __tmp255346)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest249410249418_))
                       (let ((_hd249415249435_
                              (let ()
                                (declare (not safe))
                                (##car _rest249410249418_)))
                             (_tl249416249437_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest249410249418_))))
                         (let* ((_checkq249440_ _hd249415249435_)
                                (_rest249442_ _tl249416249437_))
                           (declare (not safe))
                           (_K249414249432_ _rest249442_ _checkq249440_)))
                       (let () (declare (not safe)) (_else249412249426_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255344 '()))))
                                           (declare (not safe))
                                           (cons __tmp255354 __tmp255343))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp255342))
                                 _specializer-impl249398_)))
                        (declare (not safe))
                        (cons __tmp255340 '()))))
                 (declare (not safe))
                 (cons __tmp255358 __tmp255339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp255338))))
                                           (declare (not safe))
                                           (cons __tmp255337 '()))))
                                    (declare (not safe))
                                    (cons __tmp255361 __tmp255336))))
                             (declare (not safe))
                             (cons '%#lambda __tmp255335))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255334 _stx246134_))))
                 (_generate-specializer-def246141_
                  (lambda (_id249387_
                           _specializer-id249388_
                           _specializer-impl249389_
                           _lifted-specializer-id249390_
                           _unchecked-specializer-impl249391_)
                    (let ((__tmp255362
                           (let ((__tmp255363
                                  (let ((__tmp255364
                                         (let ((__tmp255384
                                                (let ((__tmp255385
                                                       (let ((__tmp255386
                                                              (let ((__tmp255388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id249388_ '())))
                            (__tmp255387
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl249389_ '()))))
                        (declare (not safe))
                        (cons __tmp255388 __tmp255387))))
                 (declare (not safe))
                 (cons '%#define-values __tmp255386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255385
                                                   _stx246134_)))
                                               (__tmp255365
                                                (let ((__tmp255372
                                                       (let ((__tmp255373
                                                              (let ((__tmp255374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255375
                                    (let ((__tmp255382
                                           (let ((__tmp255383
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255383)))
                                          (__tmp255376
                                           (let ((__tmp255380
                                                  (let ((__tmp255381
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id249387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255381)))
                                                 (__tmp255377
                                                  (let ((__tmp255378
                                                         (let ((__tmp255379
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id249388_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255378 '()))))
                                             (declare (not safe))
                                             (cons __tmp255380 __tmp255377))))
                                      (declare (not safe))
                                      (cons __tmp255382 __tmp255376))))
                               (declare (not safe))
                               (cons '%#call __tmp255375))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp255374 _stx246134_))))
                 (declare (not safe))
                 (cons __tmp255373 '())))
              (__tmp255366
               (if _lifted-specializer-id249390_
                   (let ((__tmp255367
                          (let ((__tmp255368
                                 (let ((__tmp255369
                                        (let ((__tmp255371
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id249390_
                                                       '())))
                                              (__tmp255370
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl249391_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp255371 __tmp255370))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp255369))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp255368 _stx246134_))))
                     (declare (not safe))
                     (cons __tmp255367 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp255372
                                                          __tmp255366))))
                                           (declare (not safe))
                                           (cons __tmp255384 __tmp255365))))
                                    (declare (not safe))
                                    (cons _stx246134_ __tmp255364))))
                             (declare (not safe))
                             (cons '%#begin __tmp255363))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255362 _stx246134_)))))
          (let* ((___stx254178254179_ _stx246134_)
                 (_g246144246164_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254178254179_)))))
            (let ((___kont254180254181_
                   (lambda (_L246208_ _L246209_)
                     (let ((_method-calls246228_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs246229_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check246230_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check246231_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert246232_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty246233_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?246235_
                                 (lambda ()
                                   (if (let ((__tmp255393
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246228_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255393))
                                       (if (let ((__tmp255392
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246229_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255392))
                                           (if (let ((__tmp255391
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check246230_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp255391))
                                               (if (let ((__tmp255390
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check246231_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255390))
                                                   (let ((__tmp255389
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert246232_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255389))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?246236_
                                 (lambda ()
                                   (let ((_$e249380_
                                          (let ((__tmp255394
                                                 (let ((__tmp255395
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check246231_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp255395))))
                                            (declare (not safe))
                                            (not __tmp255394))))
                                     (if _$e249380_
                                         _$e249380_
                                         (let ((__tmp255396
                                                (let ((__tmp255397
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert246232_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp255397))))
                                           (declare (not safe))
                                           (not __tmp255396))))))
                                (_lift-unchecked-specializer?246237_
                                 (lambda ()
                                   (if (let ((__tmp255400
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246228_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255400))
                                       (if (let ((__tmp255399
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246229_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255399))
                                           (let ((__tmp255398
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check246230_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255398))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L246208_))
                             (let* ((___stx254092254093_ _L246208_)
                                    (_g246750246768_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx254092254093_)))))
                               (let ((___kont254094254095_
                                      (lambda (_L246804_ _L246805_ _L246806_)
                                        (for-each
                                         (lambda (_g246821246823_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g246821246823_
                                              _L246806_
                                              _method-calls246228_
                                              _slot-refs246229_
                                              _class-type-check246230_
                                              _struct-type-check246231_
                                              _struct-type-assert246232_)))
                                         _L246804_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?246235_))
                                            _stx246134_
                                            (let* ((_specializer-id246832_
                                                    (let* ((_id246826_
                                                            (let ((__tmp255550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L246209_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp255550 '"::specialize")))
                   (_specializer-id246829_
                    (let ((__tmp255551
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx246134_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id246826_ __tmp255551))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id246829_))
              _specializer-id246829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id246839_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?246237_))
                                                        (let* ((_id246834_
                                                                (let ((__tmp255552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L246209_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp255552
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id246836_
                        (let ((__tmp255553
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx246134_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id246834_ __tmp255553))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id246836_))
                  _lifted-specializer-id246836_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t246841_
                                                    (let ((__tmp255554
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255554)))
                                                   (_methods246843_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls246228_)))
                                                   (_$methods246847_
                                                    (map (lambda (_id246845_)
                                                           (let ((__tmp255555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246845_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255555)))
                 _methods246843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255556_
                                                    (for-each
                                                     (lambda (_g246848246851_
                                                              _g246849246853_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls246228_
                                                          _g246848246851_
                                                          _g246849246853_)))
                                                     _methods246843_
                                                     _$methods246847_))
                                                   (_methods-bind246864_
                                                    (map (lambda (_g246856246859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246857246861_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind246136_
                      _$t246841_
                      _g246856246859_
                      _g246857246861_)))
                 _methods246843_
                 _$methods246847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots246866_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs246229_)))
                                                   (_$slots246870_
                                                    (map (lambda (_id246868_)
                                                           (let ((__tmp255557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246868_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255557)))
                 _slots246866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255558_
                                                    (for-each
                                                     (lambda (_g246871246874_
                                                              _g246872246876_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs246229_
                                                          _g246871246874_
                                                          _g246872246876_)))
                                                     _slots246866_
                                                     _$slots246870_))
                                                   (_slots-bind246887_
                                                    (map (lambda (_g246879246882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246880246884_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind246137_
                      _$t246841_
                      _g246879246882_
                      _g246880246884_)))
                 _slots246866_
                 _$slots246870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check246889_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check246230_)))
                                                   (_$class-check246892_
                                                    (map (lambda (_g255559_)
                                                           (let ((__tmp255560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255560)))
                 _class-check246889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255561_
                                                    (for-each
                                                     (lambda (_g246893246896_
                                                              _g246894246898_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check246230_
                                                          _g246893246896_
                                                          _g246894246898_)))
                                                     _class-check246889_
                                                     _$class-check246892_))
                                                   (_class-check-bind246909_
                                                    (map (lambda (_g246901246904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246902246906_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind246138_
                      _$t246841_
                      _g246901246904_
                      _g246902246906_)))
                 _class-check246889_
                 _$class-check246892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all246911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check246231_
                                                       _struct-type-assert246232_)))
                                                   (_struct-check246913_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all246911_)))
                                                   (_$struct-check246916_
                                                    (map (lambda (_g255562_)
                                                           (let ((__tmp255563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255563)))
                 _struct-check246913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255564_
                                                    (for-each
                                                     (lambda (_g246917246920_
                                                              _g246918246922_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all246911_
                                                          _g246917246920_
                                                          _g246918246922_)))
                                                     _struct-check246913_
                                                     _$struct-check246916_))
                                                   (_struct-check-bind246933_
                                                    (map (lambda (_g246925246928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246926246930_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind246139_
                      _$t246841_
                      _g246925246928_
                      _g246926246930_)))
                 _struct-check246913_
                 _$struct-check246916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl246944_
                                                    (lambda (_struct-type-check1246935_
                                                             _struct-type-check2246936_)
                                                      (let* ((_specializer-body246942_
                                                              (map (lambda (_g246937246939_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g246937246939_
                                _L246806_
                                _$t246841_
                                _method-calls246228_
                                _slot-refs246229_
                                _class-type-check246230_
                                _struct-type-check1246935_
                                _struct-type-check2246936_)))
                           _L246804_))
                     (__tmp255565
                      (let ((__tmp255566
                             (let ((__tmp255567
                                    (let ()
                                      (declare (not safe))
                                      (cons _L246806_ _L246805_))))
                               (declare (not safe))
                               (cons __tmp255567 _specializer-body246942_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp255566))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp255565 _stx246134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl246946_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl246944_
                                                       _struct-check-all246911_
                                                       _empty246233_)))
                                                   (_unchecked-specializer-impl246948_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?246236_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl246944_
                                                           _empty246233_
                                                           _struct-check-all246911_))
                                                        '#f))
                                                   (_specializer-impl246950_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl246140_
                                                       _$t246841_
                                                       _methods-bind246864_
                                                       _slots-bind246887_
                                                       _class-check-bind246909_
                                                       _struct-check-bind246933_
                                                       _specializer-impl246946_
                                                       _lifted-specializer-id246839_
                                                       _unchecked-specializer-impl246948_))))
                                              (let ((__tmp255569
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L246209_)))
                                                    (__tmp255568
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id246832_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp255569
                                                 '" => "
                                                 __tmp255568))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def246141_
                                                 _L246209_
                                                 _specializer-id246832_
                                                 _specializer-impl246950_
                                                 _lifted-specializer-id246839_
                                                 _unchecked-specializer-impl246948_))))))
                                     (___kont254096254097_
                                      (lambda () _stx246134_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx254092254093_))
                                     (let ((_e246757246780_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx254092254093_))))
                                       (let ((_tl246755246785_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e246757246780_)))
                                             (_hd246756246783_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e246757246780_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl246755246785_))
                                             (let ((_e246760246788_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl246755246785_))))
                                               (let ((_tl246758246793_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e246760246788_)))
                                                     (_hd246759246791_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e246760246788_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd246759246791_))
                                                     (let ((_e246763246796_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd246759246791_))))
                                                       (let ((_tl246761246801_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e246763246796_)))
                     (_hd246762246799_
                      (let () (declare (not safe)) (##car _e246763246796_))))
                 (___kont254094254095_
                  _tl246758246793_
                  _tl246761246801_
                  _hd246762246799_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont254096254097_))))
                                             (___kont254096254097_))))
                                     (___kont254096254097_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L246208_))
                                 (let* ((_g246956246975_
                                         (lambda (_g246957246972_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g246957246972_))))
                                        (_g246955247326_
                                         (lambda (_g246957246978_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g246957246978_))
                                               (let ((_e246961246980_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g246957246978_))))
                                                 (let ((_hd246960246983_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246961246980_)))
                                                       (_tl246959246985_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246961246980_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl246959246985_))
                                                       (let ((_g255526_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl246959246985_ '0))))
                 (begin
                   (let ((_g255527_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g255526_)
                                (##vector-length _g255526_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g255527_ 2)))
                         (error "Context expects 2 values" _g255527_)))
                   (let ((_target246962246988_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255526_ 0)))
                         (_tl246964246990_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255526_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl246964246990_))
                         (letrec ((_loop246965246993_
                                   (lambda (_hd246963246996_
                                            _clause246969246998_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd246963246996_))
                                         (let ((_e246966247001_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd246963246996_))))
                                           (let ((_lp-hd246967247004_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e246966247001_)))
                                                 (_lp-tl246968247006_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e246966247001_))))
                                             (let ((__tmp255549
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd246967247004_
                                                            _clause246969246998_))))
                                               (declare (not safe))
                                               (_loop246965246993_
                                                _lp-tl246968247006_
                                                __tmp255549))))
                                         (let ((_clause246970247009_
                                                (reverse _clause246969246998_)))
                                           ((lambda (_L247012_)
                                              (for-each
                                               (lambda (_clause247025_)
                                                 (let* ((___stx254118254119_
                                                         _clause247025_)
                                                        (_g247028247043_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx254118254119_)))))
                                                   (let ((___kont254120254121_
                                                          (lambda (_L247071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L247072_
                           _L247073_)
                    (for-each
                     (lambda (_g247088247090_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g247088247090_
                          _L247073_
                          _method-calls246228_
                          _slot-refs246229_
                          _class-type-check246230_
                          _struct-type-check246231_
                          _struct-type-assert246232_)))
                     _L247071_)))
                 (___kont254122254123_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx254118254119_))
                                                         (let ((_e247035247055_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx254118254119_))))
                   (let ((_tl247033247060_
                          (let ()
                            (declare (not safe))
                            (##cdr _e247035247055_)))
                         (_hd247034247058_
                          (let ()
                            (declare (not safe))
                            (##car _e247035247055_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd247034247058_))
                         (let ((_e247038247063_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd247034247058_))))
                           (let ((_tl247036247068_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e247038247063_)))
                                 (_hd247037247066_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e247038247063_))))
                             (___kont254120254121_
                              _tl247033247060_
                              _tl247036247068_
                              _hd247037247066_)))
                         (___kont254122254123_))))
                 (___kont254122254123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp255528
                                                      (lambda (_g247095247098_
                                                               _g247096247100_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247095247098_
                                                                _g247096247100_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255528
                                                         '()
                                                         _L247012_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246235_))
                                                  _stx246134_
                                                  (let* ((_specializer-id247109_
                                                          (let* ((_id247103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255529
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246209_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255529 '"::specialize")))
                         (_specializer-id247106_
                          (let ((__tmp255530
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246134_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247103_ __tmp255530))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247106_))
                    _specializer-id247106_))
                 (_lifted-specializer-id247116_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246237_))
                      (let* ((_id247111_
                              (let ((__tmp255531
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246209_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255531
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247113_
                              (let ((__tmp255532
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246134_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247111_
                                 __tmp255532))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247113_))
                        _lifted-specializer-id247113_)
                      '#f))
                 (_$t247118_
                  (let ((__tmp255533 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255533)))
                 (_methods247120_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246228_)))
                 (_$methods247124_
                  (map (lambda (_id247122_)
                         (let ((__tmp255534 (gensym _id247122_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255534)))
                       _methods247120_))
                 (_g255535_
                  (for-each
                   (lambda (_g247125247128_ _g247126247130_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246228_
                        _g247125247128_
                        _g247126247130_)))
                   _methods247120_
                   _$methods247124_))
                 (_methods-bind247141_
                  (map (lambda (_g247133247136_ _g247134247138_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246136_
                            _$t247118_
                            _g247133247136_
                            _g247134247138_)))
                       _methods247120_
                       _$methods247124_))
                 (_slots247143_
                  (let () (declare (not safe)) (hash-keys _slot-refs246229_)))
                 (_$slots247147_
                  (map (lambda (_id247145_)
                         (let ((__tmp255536 (gensym _id247145_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255536)))
                       _slots247143_))
                 (_g255537_
                  (for-each
                   (lambda (_g247148247151_ _g247149247153_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246229_
                        _g247148247151_
                        _g247149247153_)))
                   _slots247143_
                   _$slots247147_))
                 (_slots-bind247164_
                  (map (lambda (_g247156247159_ _g247157247161_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246137_
                            _$t247118_
                            _g247156247159_
                            _g247157247161_)))
                       _slots247143_
                       _$slots247147_))
                 (_class-check247166_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246230_)))
                 (_$class-check247169_
                  (map (lambda (_g255538_)
                         (let ((__tmp255539 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255539)))
                       _class-check247166_))
                 (_g255540_
                  (for-each
                   (lambda (_g247170247173_ _g247171247175_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246230_
                        _g247170247173_
                        _g247171247175_)))
                   _class-check247166_
                   _$class-check247169_))
                 (_class-check-bind247186_
                  (map (lambda (_g247178247181_ _g247179247183_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246138_
                            _$t247118_
                            _g247178247181_
                            _g247179247183_)))
                       _class-check247166_
                       _$class-check247169_))
                 (_struct-check-all247188_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246231_
                     _struct-type-assert246232_)))
                 (_struct-check247190_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247188_)))
                 (_$struct-check247193_
                  (map (lambda (_g255541_)
                         (let ((__tmp255542 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255542)))
                       _struct-check247190_))
                 (_g255543_
                  (for-each
                   (lambda (_g247194247197_ _g247195247199_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247188_
                        _g247194247197_
                        _g247195247199_)))
                   _struct-check247190_
                   _$struct-check247193_))
                 (_struct-check-bind247210_
                  (map (lambda (_g247202247205_ _g247203247207_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246139_
                            _$t247118_
                            _g247202247205_
                            _g247203247207_)))
                       _struct-check247190_
                       _$struct-check247193_))
                 (_make-specializer-impl247317_
                  (lambda (_struct-type-check1247212_
                           _struct-type-check2247213_)
                    (let* ((_specializer-clauses247315_
                            (map (lambda (_clause247215_)
                                   (let* ((___stx254138254139_ _clause247215_)
                                          (_g247218247233_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx254138254139_)))))
                                     (let ((___kont254140254141_
                                            (lambda (_L247261_
                                                     _L247262_
                                                     _L247263_)
                                              (let* ((_body247303_
                                                      (map (lambda (_g247298247300_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g247298247300_
                        _L247263_
                        _$t247118_
                        _method-calls246228_
                        _slot-refs246229_
                        _class-type-check246230_
                        _struct-type-check1247212_
                        _struct-type-check2247213_)))
                   _L247261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255544
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L247263_
                                                              _L247262_))))
                                                (declare (not safe))
                                                (cons __tmp255544
                                                      _body247303_))))
                                           (___kont254142254143_
                                            (lambda () _clause247215_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx254138254139_))
                                           (let ((_e247225247245_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx254138254139_))))
                                             (let ((_tl247223247250_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247225247245_)))
                                                   (_hd247224247248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247225247245_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd247224247248_))
                                                   (let ((_e247228247253_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd247224247248_))))
                                                     (let ((_tl247226247258_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247228247253_)))
                                                           (_hd247227247256_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247228247253_))))
                                                       (___kont254140254141_
                                                        _tl247223247250_
                                                        _tl247226247258_
                                                        _hd247227247256_)))
                                                   (___kont254142254143_))))
                                           (___kont254142254143_)))))
                                 (let ((__tmp255545
                                        (lambda (_g247307247310_
                                                 _g247308247312_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g247307247310_
                                                  _g247308247312_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255545 '() _L247012_))))
                           (__tmp255546
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses247315_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255546 _stx246134_))))
                 (_specializer-impl247319_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl247317_
                     _struct-check-all247188_
                     _empty246233_)))
                 (_unchecked-specializer-impl247321_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246236_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl247317_
                         _empty246233_
                         _struct-check-all247188_))
                      '#f))
                 (_specializer-impl247323_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246140_
                     _$t247118_
                     _methods-bind247141_
                     _slots-bind247164_
                     _class-check-bind247186_
                     _struct-check-bind247210_
                     _specializer-impl247319_
                     _lifted-specializer-id247116_
                     _unchecked-specializer-impl247321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255548
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246209_)))
                                                          (__tmp255547
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247109_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255548
                                                       '" => "
                                                       __tmp255547))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246141_
                                                       _L246209_
                                                       _specializer-id247109_
                                                       _specializer-impl247323_
                                                       _lifted-specializer-id247116_
                                                       _unchecked-specializer-impl247321_)))))
                                            _clause246970247009_))))))
                           (let ()
                             (declare (not safe))
                             (_loop246965246993_ _target246962246988_ '())))
                         (let ()
                           (declare (not safe))
                           (_g246956246975_ _g246957246978_))))))
               (let ()
                 (declare (not safe))
                 (_g246956246975_ _g246957246978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246956246975_
                                                  _g246957246978_))))))
                                   (declare (not safe))
                                   (_g246955247326_ _L246208_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L246208_))
                                     (let* ((_g247329247359_
                                             (lambda (_g247330247356_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g247330247356_))))
                                            (_g247328248047_
                                             (lambda (_g247330247362_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g247330247362_))
                                                   (let ((_e247336247364_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g247330247362_))))
                                                     (let ((_hd247335247367_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247336247364_)))
                                                           (_tl247334247369_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247336247364_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247334247369_))
                                                           (let ((_e247339247372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247334247369_))))
                     (let ((_hd247338247375_
                            (let ()
                              (declare (not safe))
                              (##car _e247339247372_)))
                           (_tl247337247377_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247339247372_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd247338247375_))
                           (let ((_e247342247380_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd247338247375_))))
                             (let ((_hd247341247383_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e247342247380_)))
                                   (_tl247340247385_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e247342247380_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd247341247383_))
                                   (let ((_e247345247388_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd247341247383_))))
                                     (let ((_hd247344247391_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e247345247388_)))
                                           (_tl247343247393_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e247345247388_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd247344247391_))
                                           (let ((_e247348247396_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd247344247391_))))
                                             (let ((_hd247347247399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247348247396_)))
                                                   (_tl247346247401_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247348247396_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl247346247401_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl247343247393_))
                                                       (let ((_e247351247404_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl247343247393_))))
                 (let ((_hd247350247407_
                        (let () (declare (not safe)) (##car _e247351247404_)))
                       (_tl247349247409_
                        (let () (declare (not safe)) (##cdr _e247351247404_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl247349247409_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl247340247385_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl247337247377_))
                               (let ((_e247354247412_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl247337247377_))))
                                 (let ((_hd247353247415_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e247354247412_)))
                                       (_tl247352247417_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e247354247412_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl247352247417_))
                                       ((lambda (_L247420_ _L247421_ _L247422_)
                                          (let* ((_g247445247463_
                                                  (lambda (_g247446247460_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247446247460_))))
                                                 (_g247444247514_
                                                  (lambda (_g247446247466_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247446247466_))
                                                        (let ((_e247452247468_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247446247466_))))
                  (let ((_hd247451247471_
                         (let () (declare (not safe)) (##car _e247452247468_)))
                        (_tl247450247473_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247452247468_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl247450247473_))
                        (let ((_e247455247476_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl247450247473_))))
                          (let ((_hd247454247479_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247455247476_)))
                                (_tl247453247481_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247455247476_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd247454247479_))
                                (let ((_e247458247484_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd247454247479_))))
                                  (let ((_hd247457247487_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247458247484_)))
                                        (_tl247456247489_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247458247484_))))
                                    ((lambda (_L247492_ _L247493_ _L247494_)
                                       (for-each
                                        (lambda (_g247509247511_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g247509247511_
                                             _L247494_
                                             _method-calls246228_
                                             _slot-refs246229_
                                             _class-type-check246230_
                                             _struct-type-check246231_
                                             _struct-type-assert246232_)))
                                        _L247492_))
                                     _tl247453247481_
                                     _tl247456247489_
                                     _hd247457247487_)))
                                (let ()
                                  (declare (not safe))
                                  (_g247445247463_ _g247446247466_)))))
                        (let ()
                          (declare (not safe))
                          (_g247445247463_ _g247446247466_)))))
                (let ()
                  (declare (not safe))
                  (_g247445247463_ _g247446247466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247444247514_ _L247421_))
                                          (let* ((_g247517247536_
                                                  (lambda (_g247518247533_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247518247533_))))
                                                 (_g247516247655_
                                                  (lambda (_g247518247539_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247518247539_))
                                                        (let ((_e247522247541_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247518247539_))))
                  (let ((_hd247521247544_
                         (let () (declare (not safe)) (##car _e247522247541_)))
                        (_tl247520247546_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247522247541_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl247520247546_))
                        (let ((_g255489_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl247520247546_
                                  '0))))
                          (begin
                            (let ((_g255490_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g255489_)
                                         (##vector-length _g255489_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g255490_ 2)))
                                  (error "Context expects 2 values"
                                         _g255490_)))
                            (let ((_target247523247549_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255489_ 0)))
                                  (_tl247525247551_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255489_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl247525247551_))
                                  (letrec ((_loop247526247554_
                                            (lambda (_hd247524247557_
                                                     _clause247530247559_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd247524247557_))
                                                  (let ((_e247527247562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd247524247557_))))
                                                    (let ((_lp-hd247528247565_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e247527247562_)))
                                                          (_lp-tl247529247567_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e247527247562_))))
                                                      (let ((__tmp255492
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd247528247565_ _clause247530247559_))))
                (declare (not safe))
                (_loop247526247554_ _lp-tl247529247567_ __tmp255492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause247531247570_
                                                         (reverse _clause247530247559_)))
                                                    ((lambda (_L247573_)
                                                       (for-each
                                                        (lambda (_clause247586_)
                                                          (let* ((_g247588247603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g247589247600_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g247589247600_))))
                         (_g247587247645_
                          (lambda (_g247589247606_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g247589247606_))
                                (let ((_e247595247608_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g247589247606_))))
                                  (let ((_hd247594247611_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247595247608_)))
                                        (_tl247593247613_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247595247608_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd247594247611_))
                                        (let ((_e247598247616_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd247594247611_))))
                                          (let ((_hd247597247619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e247598247616_)))
                                                (_tl247596247621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e247598247616_))))
                                            ((lambda (_L247624_
                                                      _L247625_
                                                      _L247626_)
                                               (for-each
                                                (lambda (_g247640247642_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g247640247642_
                                                     _L247626_
                                                     _method-calls246228_
                                                     _slot-refs246229_
                                                     _class-type-check246230_
                                                     _struct-type-check246231_
                                                     _struct-type-assert246232_)))
                                                _L247624_))
                                             _tl247593247613_
                                             _tl247596247621_
                                             _hd247597247619_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g247588247603_ _g247589247606_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g247588247603_ _g247589247606_))))))
                    (declare (not safe))
                    (_g247587247645_ _clause247586_)))
                (let ((__tmp255491
                       (lambda (_g247647247650_ _g247648247652_)
                         (let ()
                           (declare (not safe))
                           (cons _g247647247650_ _g247648247652_)))))
                  (declare (not safe))
                  (foldr1 __tmp255491 '() _L247573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause247531247570_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop247526247554_
                                       _target247523247549_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g247517247536_ _g247518247539_))))))
                        (let ()
                          (declare (not safe))
                          (_g247517247536_ _g247518247539_)))))
                (let ()
                  (declare (not safe))
                  (_g247517247536_ _g247518247539_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247516247655_ _L247420_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?246235_))
                                              _stx246134_
                                              (let* ((_specializer-id247664_
                                                      (let* ((_id247658_
                                                              (let ((__tmp255493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L246209_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp255493 '"::specialize")))
                     (_specializer-id247661_
                      (let ((__tmp255494
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx246134_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id247658_ __tmp255494))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id247661_))
                _specializer-id247661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id247671_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?246237_))
                                                          (let* ((_id247666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255495
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246209_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp255495
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id247668_
                          (let ((__tmp255496
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246134_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247666_ __tmp255496))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id247668_))
                    _lifted-specializer-id247668_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t247673_
                                                      (let ((__tmp255497
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp255497)))
                                                     (_methods247675_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls246228_)))
                                                     (_$methods247679_
                                                      (map (lambda (_id247677_)
                                                             (let ((__tmp255498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247677_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255498)))
                   _methods247675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255499_
                                                      (for-each
                                                       (lambda (_g247680247683_
                                                                _g247681247685_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls246228_
                                                            _g247680247683_
                                                            _g247681247685_)))
                                                       _methods247675_
                                                       _$methods247679_))
                                                     (_methods-bind247696_
                                                      (map (lambda (_g247688247691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247689247693_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind246136_
                        _$t247673_
                        _g247688247691_
                        _g247689247693_)))
                   _methods247675_
                   _$methods247679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots247698_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs246229_)))
                                                     (_$slots247702_
                                                      (map (lambda (_id247700_)
                                                             (let ((__tmp255500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247700_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255500)))
                   _slots247698_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255501_
                                                      (for-each
                                                       (lambda (_g247703247706_
                                                                _g247704247708_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs246229_
                                                            _g247703247706_
                                                            _g247704247708_)))
                                                       _slots247698_
                                                       _$slots247702_))
                                                     (_slots-bind247719_
                                                      (map (lambda (_g247711247714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247712247716_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind246137_
                        _$t247673_
                        _g247711247714_
                        _g247712247716_)))
                   _slots247698_
                   _$slots247702_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check247721_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check246230_)))
                                                     (_$class-check247724_
                                                      (map (lambda (_g255502_)
                                                             (let ((__tmp255503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255503)))
                   _class-check247721_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255504_
                                                      (for-each
                                                       (lambda (_g247725247728_
                                                                _g247726247730_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check246230_
                                                            _g247725247728_
                                                            _g247726247730_)))
                                                       _class-check247721_
                                                       _$class-check247724_))
                                                     (_class-check-bind247741_
                                                      (map (lambda (_g247733247736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247734247738_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind246138_
                        _$t247673_
                        _g247733247736_
                        _g247734247738_)))
                   _class-check247721_
                   _$class-check247724_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all247743_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check246231_
                                                         _struct-type-assert246232_)))
                                                     (_struct-check247745_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all247743_)))
                                                     (_$struct-check247748_
                                                      (map (lambda (_g255505_)
                                                             (let ((__tmp255506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255506)))
                   _struct-check247745_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255507_
                                                      (for-each
                                                       (lambda (_g247749247752_
                                                                _g247750247754_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all247743_
                                                            _g247749247752_
                                                            _g247750247754_)))
                                                       _struct-check247745_
                                                       _$struct-check247748_))
                                                     (_struct-check-bind247765_
                                                      (map (lambda (_g247757247760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247758247762_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind246139_
                        _$t247673_
                        _g247757247760_
                        _g247758247762_)))
                   _struct-check247745_
                   _$struct-check247748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr247864_
                                                      (lambda (_struct-type-check1247767_
                                                               _struct-type-check2247768_)
                                                        (let* ((_g247770247788_
                                                                (lambda (_g247771247785_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247771247785_))))
                       (_g247769247861_
                        (lambda (_g247771247791_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247771247791_))
                              (let ((_e247777247793_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247771247791_))))
                                (let ((_hd247776247796_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247777247793_)))
                                      (_tl247775247798_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247777247793_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl247775247798_))
                                      (let ((_e247780247801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl247775247798_))))
                                        (let ((_hd247779247804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e247780247801_)))
                                              (_tl247778247806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e247780247801_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd247779247804_))
                                              (let ((_e247783247809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd247779247804_))))
                                                (let ((_hd247782247812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e247783247809_)))
                                                      (_tl247781247814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e247783247809_))))
                                                  ((lambda (_L247817_
                                                            _L247818_
                                                            _L247819_)
                                                     (let* ((_body247859_
                                                             (map (lambda (_g247854247856_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g247854247856_
                               _L247819_
                               _$t247673_
                               _method-calls246228_
                               _slot-refs246229_
                               _class-type-check246230_
                               _struct-type-check1247767_
                               _struct-type-check2247768_)))
                          _L247817_))
                    (__tmp255508
                     (let ((__tmp255509
                            (let ((__tmp255510
                                   (let ()
                                     (declare (not safe))
                                     (cons _L247819_ _L247818_))))
                              (declare (not safe))
                              (cons __tmp255510 _body247859_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp255509))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255508 _L247421_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl247778247806_
                                                   _tl247781247814_
                                                   _hd247782247812_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g247770247788_
                                                 _g247771247791_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247770247788_ _g247771247791_)))))
                              (let ()
                                (declare (not safe))
                                (_g247770247788_ _g247771247791_))))))
                  (declare (not safe))
                  (_g247769247861_ _L247421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr248025_
                                                      (lambda (_struct-type-check1247866_
                                                               _struct-type-check2247867_)
                                                        (let* ((_g247869247888_
                                                                (lambda (_g247870247885_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247870247885_))))
                       (_g247868248022_
                        (lambda (_g247870247891_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247870247891_))
                              (let ((_e247874247893_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247870247891_))))
                                (let ((_hd247873247896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247874247893_)))
                                      (_tl247872247898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247874247893_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl247872247898_))
                                      (let ((_g255511_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl247872247898_
                                                '0))))
                                        (begin
                                          (let ((_g255512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255511_)
                                                       (##vector-length
                                                        _g255511_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255512_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255512_)))
                                          (let ((_target247875247901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g255511_ 0)))
                                                (_tl247877247903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g255511_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl247877247903_))
                                                (letrec ((_loop247878247906_
                                                          (lambda (_hd247876247909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause247882247911_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd247876247909_))
                        (let ((_e247879247914_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd247876247909_))))
                          (let ((_lp-hd247880247917_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247879247914_)))
                                (_lp-tl247881247919_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247879247914_))))
                            (let ((__tmp255516
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd247880247917_
                                           _clause247882247911_))))
                              (declare (not safe))
                              (_loop247878247906_
                               _lp-tl247881247919_
                               __tmp255516))))
                        (let ((_clause247883247922_
                               (reverse _clause247882247911_)))
                          ((lambda (_L247925_)
                             (let* ((_clauses248020_
                                     (map (lambda (_clause247940_)
                                            (let* ((___stx254158254159_
                                                    _clause247940_)
                                                   (_g247943247958_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx254158254159_)))))
                                              (let ((___kont254160254161_
                                                     (lambda (_L247986_
                                                              _L247987_
                                                              _L247988_)
                                                       (let* ((_body248008_
                                                               (map (lambda (_g248003248005_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g248003248005_
                                 _L247988_
                                 _$t247673_
                                 _method-calls246228_
                                 _slot-refs246229_
                                 _class-type-check246230_
                                 _struct-type-check1247866_
                                 _struct-type-check2247867_)))
                            _L247986_))
                      (__tmp255513
                       (let ()
                         (declare (not safe))
                         (cons _L247988_ _L247987_))))
                 (declare (not safe))
                 (cons __tmp255513 _body248008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254162254163_
                                                     (lambda ()
                                                       _clause247940_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx254158254159_))
                                                    (let ((_e247950247970_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx254158254159_))))
                                                      (let ((_tl247948247975_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e247950247970_)))
                    (_hd247949247973_
                     (let () (declare (not safe)) (##car _e247950247970_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd247949247973_))
                    (let ((_e247953247978_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd247949247973_))))
                      (let ((_tl247951247983_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247953247978_)))
                            (_hd247952247981_
                             (let ()
                               (declare (not safe))
                               (##car _e247953247978_))))
                        (___kont254160254161_
                         _tl247948247975_
                         _tl247951247983_
                         _hd247952247981_)))
                    (___kont254162254163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254162254163_)))))
                                          (let ((__tmp255514
                                                 (lambda (_g248012248015_
                                                          _g248013248017_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g248012248015_
                                                           _g248013248017_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp255514
                                                    '()
                                                    _L247925_))))
                                    (__tmp255515
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses248020_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp255515 _L247420_)))
                           _clause247883247922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop247878247906_
                                                     _target247875247901_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g247869247888_
                                                   _g247870247891_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247869247888_ _g247870247891_)))))
                              (let ()
                                (declare (not safe))
                                (_g247869247888_ _g247870247891_))))))
                  (declare (not safe))
                  (_g247868248022_ _L247420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl248030_
                                                      (lambda (_specializer-lambda-expr248027_
                                                               _specializer-case-lambda-expr248028_)
                                                        (let ((__tmp255517
                                                               (let ((__tmp255518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp255520
                                     (let ((__tmp255521
                                            (let ((__tmp255523
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L247422_ '())))
                                                  (__tmp255522
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr248027_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp255523 __tmp255522))))
                                       (declare (not safe))
                                       (cons __tmp255521 '())))
                                    (__tmp255519
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr248028_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp255520 __tmp255519))))
                         (declare (not safe))
                         (cons '%#let-values __tmp255518))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255517 _stx246134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr248032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr247864_
                                                         _struct-check-all247743_
                                                         _empty246233_)))
                                                     (_specializer-case-lambda-expr248034_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr248025_
                                                         _struct-check-all247743_
                                                         _empty246233_)))
                                                     (_specializer-impl248036_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl248030_
                                                         _specializer-lambda-expr248032_
                                                         _specializer-case-lambda-expr248034_)))
                                                     (_unchecked-specializer-lambda-expr248038_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246236_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr247864_
                                                             _empty246233_
                                                             _struct-check-all247743_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr248040_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246236_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr248025_
                                                             _empty246233_
                                                             _struct-check-all247743_))
                                                          '#f))
                                                     (_unchecked-specializer-impl248042_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246236_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl248030_
                                                             _unchecked-specializer-lambda-expr248038_
                                                             _unchecked-specializer-case-lambda-expr248040_))
                                                          '#f))
                                                     (_specializer-impl248044_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl246140_
                                                         _$t247673_
                                                         _methods-bind247696_
                                                         _slots-bind247719_
                                                         _class-check-bind247741_
                                                         _struct-check-bind247765_
                                                         _specializer-impl248036_
                                                         _lifted-specializer-id247671_
                                                         _unchecked-specializer-impl248042_))))
                                                (let ((__tmp255525
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L246209_)))
                                                      (__tmp255524
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id247664_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp255525
                                                   '" => "
                                                   __tmp255524))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def246141_
                                                   _L246209_
                                                   _specializer-id247664_
                                                   _specializer-impl248044_
                                                   _lifted-specializer-id247671_
                                                   _unchecked-specializer-impl248042_)))))
                                        _hd247353247415_
                                        _hd247350247407_
                                        _hd247347247399_)
                                       (let ()
                                         (declare (not safe))
                                         (_g247329247359_ _g247330247362_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g247329247359_ _g247330247362_)))
                           (let ()
                             (declare (not safe))
                             (_g247329247359_ _g247330247362_)))
                       (let ()
                         (declare (not safe))
                         (_g247329247359_ _g247330247362_)))))
               (let () (declare (not safe)) (_g247329247359_ _g247330247362_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247329247359_
                                                      _g247330247362_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g247329247359_
                                              _g247330247362_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g247329247359_ _g247330247362_)))))
                           (let ()
                             (declare (not safe))
                             (_g247329247359_ _g247330247362_)))))
                   (let ()
                     (declare (not safe))
                     (_g247329247359_ _g247330247362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247329247359_
                                                      _g247330247362_))))))
                                       (declare (not safe))
                                       (_g247328248047_ _L246208_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L246208_))
                                         (let* ((_g248050248103_
                                                 (lambda (_g248051248100_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248051248100_))))
                                                (_g248049249375_
                                                 (lambda (_g248051248106_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248051248106_))
                                                       (let ((_e248059248108_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248051248106_))))
                 (let ((_hd248058248111_
                        (let () (declare (not safe)) (##car _e248059248108_)))
                       (_tl248057248113_
                        (let () (declare (not safe)) (##cdr _e248059248108_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd248058248111_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd248058248111_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248057248113_))
                               (let ((_e248062248116_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248057248113_))))
                                 (let ((_hd248061248119_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248062248116_)))
                                       (_tl248060248121_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248062248116_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248061248119_))
                                       (let ((_e248065248124_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248061248119_))))
                                         (let ((_hd248064248127_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248065248124_)))
                                               (_tl248063248129_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248065248124_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248064248127_))
                                               (let ((_e248068248132_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248064248127_))))
                                                 (let ((_hd248067248135_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248068248132_)))
                                                       (_tl248066248137_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248068248132_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd248067248135_))
                                                       (let ((_e248071248140_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd248067248135_))))
                 (let ((_hd248070248143_
                        (let () (declare (not safe)) (##car _e248071248140_)))
                       (_tl248069248145_
                        (let () (declare (not safe)) (##cdr _e248071248140_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248069248145_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl248066248137_))
                           (let ((_e248074248148_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl248066248137_))))
                             (let ((_hd248073248151_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248074248148_)))
                                   (_tl248072248153_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248074248148_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248073248151_))
                                   (let ((_e248077248156_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248073248151_))))
                                     (let ((_hd248076248159_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248077248156_)))
                                           (_tl248075248161_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248077248156_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd248076248159_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd248076248159_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl248075248161_))
                                                   (let ((_e248080248164_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl248075248161_))))
                                                     (let ((_hd248079248167_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248080248164_)))
                                                           (_tl248078248169_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248080248164_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd248079248167_))
                                                           (let ((_e248083248172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd248079248167_))))
                     (let ((_hd248082248175_
                            (let ()
                              (declare (not safe))
                              (##car _e248083248172_)))
                           (_tl248081248177_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248083248172_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248082248175_))
                           (let ((_e248086248180_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248082248175_))))
                             (let ((_hd248085248183_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248086248180_)))
                                   (_tl248084248185_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248086248180_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248085248183_))
                                   (let ((_e248089248188_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248085248183_))))
                                     (let ((_hd248088248191_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248089248188_)))
                                           (_tl248087248193_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248089248188_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248087248193_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl248084248185_))
                                               (let ((_e248092248196_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl248084248185_))))
                                                 (let ((_hd248091248199_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248092248196_)))
                                                       (_tl248090248201_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248092248196_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248090248201_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl248081248177_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl248078248169_))
                       (let ((_e248095248204_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248078248169_))))
                         (let ((_hd248094248207_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248095248204_)))
                               (_tl248093248209_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248095248204_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248093248209_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl248072248153_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248063248129_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl248060248121_))
                                           (let ((_e248098248212_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl248060248121_))))
                                             (let ((_hd248097248215_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248098248212_)))
                                                   (_tl248096248217_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248098248212_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248096248217_))
                                                   ((lambda (_L248220_
                                                             _L248221_
                                                             _L248222_
                                                             _L248223_
                                                             _L248224_)
                                                      (let* ((_g248263248325_
                                                              (lambda (_g248264248322_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g248264248322_))))
                     (_g248262249372_
                      (lambda (_g248264248328_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g248264248328_))
                            (let ((_e248272248330_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g248264248328_))))
                              (let ((_hd248271248333_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248272248330_)))
                                    (_tl248270248335_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248272248330_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd248271248333_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd248271248333_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl248270248335_))
                                            (let ((_e248275248338_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl248270248335_))))
                                              (let ((_hd248274248341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248275248338_)))
                                                    (_tl248273248343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248275248338_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248273248343_))
                                                    (let ((_e248278248346_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248273248343_))))
                                                      (let ((_hd248277248349_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248278248346_)))
                    (_tl248276248351_
                     (let () (declare (not safe)) (##cdr _e248278248346_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248277248349_))
                    (let ((_e248281248354_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248277248349_))))
                      (let ((_hd248280248357_
                             (let ()
                               (declare (not safe))
                               (##car _e248281248354_)))
                            (_tl248279248359_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248281248354_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd248280248357_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd248280248357_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl248279248359_))
                                    (let ((_e248284248362_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl248279248359_))))
                                      (let ((_hd248283248365_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248284248362_)))
                                            (_tl248282248367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248284248362_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd248283248365_))
                                            (let ((_e248287248370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd248283248365_))))
                                              (let ((_hd248286248373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248287248370_)))
                                                    (_tl248285248375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248287248370_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd248286248373_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd248286248373_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl248285248375_))
                                                            (let ((_e248290248378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl248285248375_))))
                      (let ((_hd248289248381_
                             (let ()
                               (declare (not safe))
                               (##car _e248290248378_)))
                            (_tl248288248383_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248290248378_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248288248383_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl248282248367_))
                                (let ((_e248293248386_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl248282248367_))))
                                  (let ((_hd248292248389_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248293248386_)))
                                        (_tl248291248391_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248293248386_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd248292248389_))
                                        (let ((_e248296248394_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd248292248389_))))
                                          (let ((_hd248295248397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e248296248394_)))
                                                (_tl248294248399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e248296248394_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd248295248397_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd248295248397_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl248294248399_))
                                                        (let ((_e248299248402_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl248294248399_))))
                  (let ((_hd248298248405_
                         (let () (declare (not safe)) (##car _e248299248402_)))
                        (_tl248297248407_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248299248402_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl248297248407_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248291248391_))
                            (let ((_e248302248410_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248291248391_))))
                              (let ((_hd248301248413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248302248410_)))
                                    (_tl248300248415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248302248410_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd248301248413_))
                                    (let ((_e248305248418_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd248301248413_))))
                                      (let ((_hd248304248421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248305248418_)))
                                            (_tl248303248423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248305248418_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd248304248421_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd248304248421_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248303248423_))
                                                    (let ((_e248308248426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248303248423_))))
                                                      (let ((_hd248307248429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248308248426_)))
                    (_tl248306248431_
                     (let () (declare (not safe)) (##cdr _e248308248426_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl248306248431_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248300248415_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl248300248415_))
                                  '1)
                            (let ((_g255401_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248300248415_
                                      '1))))
                              (begin
                                (let ((_g255402_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255401_)
                                             (##vector-length _g255401_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255402_ 2)))
                                      (error "Context expects 2 values"
                                             _g255402_)))
                                (let ((_target248309248434_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255401_ 0)))
                                      (_tl248311248436_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255401_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl248311248436_))
                                      (let ((_e248320248439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl248311248436_))))
                                        (let ((_hd248319248442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248320248439_)))
                                              (_tl248318248444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248320248439_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl248318248444_))
                                              (letrec ((_loop248312248447_
                                                        (lambda (_hd248310248450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref248316248452_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd248310248450_))
                      (let ((_e248313248455_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd248310248450_))))
                        (let ((_lp-hd248314248458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e248313248455_)))
                              (_lp-tl248315248460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e248313248455_))))
                          (let ((__tmp255488
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd248314248458_
                                         _kw-ref248316248452_))))
                            (declare (not safe))
                            (_loop248312248447_
                             _lp-tl248315248460_
                             __tmp255488))))
                      (let ((_kw-ref248317248463_
                             (reverse _kw-ref248316248452_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248276248351_))
                            ((lambda (_L248466_
                                      _L248467_
                                      _L248468_
                                      _L248469_
                                      _L248470_)
                               (let* ((_kw-count248521_
                                       (length (let ((__tmp255403
                                                      (lambda (_g248513248516_
                                                               _g248514248518_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248513248516_
                                                                _g248514248518_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255403
                                                         '()
                                                         _L248467_))))
                                      (_self-index248523_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count248521_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L248222_))
                                     (let* ((_g248526248540_
                                             (lambda (_g248527248537_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248527248537_))))
                                            (_g248525248711_
                                             (lambda (_g248527248543_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248527248543_))
                                                   (let ((_e248532248545_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248527248543_))))
                                                     (let ((_hd248531248548_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248532248545_)))
                                                           (_tl248530248550_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248532248545_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248530248550_))
                                                           (let ((_e248535248553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248530248550_))))
                     (let ((_hd248534248556_
                            (let ()
                              (declare (not safe))
                              (##car _e248535248553_)))
                           (_tl248533248558_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248535248553_))))
                       ((lambda (_L248561_ _L248562_)
                          (let ((_self248578_
                                 (list-ref _L248562_ _self-index248523_)))
                            (for-each
                             (lambda (_g248579248581_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g248579248581_
                                  _self248578_
                                  _method-calls246228_
                                  _slot-refs246229_
                                  _class-type-check246230_
                                  _struct-type-check246231_
                                  _struct-type-assert246232_)))
                             _L248561_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?246235_))
                                _stx246134_
                                (let* ((_specializer-id248590_
                                        (let* ((_id248584_
                                                (let ((__tmp255454
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L246209_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp255454
                                                   '"::specialize")))
                                               (_specializer-id248587_
                                                (let ((__tmp255455
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx246134_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id248584_
                                                   __tmp255455))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id248587_))
                                          _specializer-id248587_))
                                       (_lifted-specializer-id248597_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?246237_))
                                            (let* ((_id248592_
                                                    (let ((__tmp255456
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246209_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp255456
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id248594_
                                                    (let ((__tmp255457
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx246134_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id248592_
                                                       __tmp255457))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id248594_))
                                              _lifted-specializer-id248594_)
                                            '#f))
                                       (_$t248599_
                                        (let ((__tmp255458 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp255458)))
                                       (_methods248601_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls246228_)))
                                       (_$methods248605_
                                        (map (lambda (_id248603_)
                                               (let ((__tmp255459
                                                      (gensym _id248603_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255459)))
                                             _methods248601_))
                                       (_g255460_
                                        (for-each
                                         (lambda (_g248606248609_
                                                  _g248607248611_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls246228_
                                              _g248606248609_
                                              _g248607248611_)))
                                         _methods248601_
                                         _$methods248605_))
                                       (_methods-bind248622_
                                        (map (lambda (_g248614248617_
                                                      _g248615248619_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind246136_
                                                  _$t248599_
                                                  _g248614248617_
                                                  _g248615248619_)))
                                             _methods248601_
                                             _$methods248605_))
                                       (_slots248624_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs246229_)))
                                       (_$slots248628_
                                        (map (lambda (_id248626_)
                                               (let ((__tmp255461
                                                      (gensym _id248626_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255461)))
                                             _slots248624_))
                                       (_g255462_
                                        (for-each
                                         (lambda (_g248629248632_
                                                  _g248630248634_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs246229_
                                              _g248629248632_
                                              _g248630248634_)))
                                         _slots248624_
                                         _$slots248628_))
                                       (_slots-bind248645_
                                        (map (lambda (_g248637248640_
                                                      _g248638248642_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind246137_
                                                  _$t248599_
                                                  _g248637248640_
                                                  _g248638248642_)))
                                             _slots248624_
                                             _$slots248628_))
                                       (_class-check248647_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check246230_)))
                                       (_$class-check248650_
                                        (map (lambda (_g255463_)
                                               (let ((__tmp255464
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255464)))
                                             _class-check248647_))
                                       (_g255465_
                                        (for-each
                                         (lambda (_g248651248654_
                                                  _g248652248656_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check246230_
                                              _g248651248654_
                                              _g248652248656_)))
                                         _class-check248647_
                                         _$class-check248650_))
                                       (_class-check-bind248667_
                                        (map (lambda (_g248659248662_
                                                      _g248660248664_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind246138_
                                                  _$t248599_
                                                  _g248659248662_
                                                  _g248660248664_)))
                                             _class-check248647_
                                             _$class-check248650_))
                                       (_struct-check-all248669_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check246231_
                                           _struct-type-assert246232_)))
                                       (_struct-check248671_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all248669_)))
                                       (_$struct-check248674_
                                        (map (lambda (_g255466_)
                                               (let ((__tmp255467
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255467)))
                                             _struct-check248671_))
                                       (_g255468_
                                        (for-each
                                         (lambda (_g248675248678_
                                                  _g248676248680_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all248669_
                                              _g248675248678_
                                              _g248676248680_)))
                                         _struct-check248671_
                                         _$struct-check248674_))
                                       (_struct-check-bind248691_
                                        (map (lambda (_g248683248686_
                                                      _g248684248688_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind246139_
                                                  _$t248599_
                                                  _g248683248686_
                                                  _g248684248688_)))
                                             _struct-check248671_
                                             _$struct-check248674_))
                                       (_make-specializer-impl248702_
                                        (lambda (_struct-type-check1248693_
                                                 _struct-type-check2248694_)
                                          (let* ((_specializer-body248700_
                                                  (map (lambda (_g248695248697_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g248695248697_
                                                            _self248578_
                                                            _$t248599_
                                                            _method-calls246228_
                                                            _slot-refs246229_
                                                            _class-type-check246230_
                                                            _struct-type-check1248693_
                                                            _struct-type-check2248694_)))
                                                       _L248561_))
                                                 (__tmp255469
                                                  (let ((__tmp255470
                                                         (let ((__tmp255472
                                                                (let ((__tmp255473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255485
                                      (let ()
                                        (declare (not safe))
                                        (cons _L248224_ '())))
                                     (__tmp255474
                                      (let ((__tmp255475
                                             (let ((__tmp255476
                                                    (let ((__tmp255478
                                                           (let ((__tmp255479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255484
                                 (let ()
                                   (declare (not safe))
                                   (cons _L248223_ '())))
                                (__tmp255480
                                 (let ((__tmp255481
                                        (let ((__tmp255482
                                               (let ((__tmp255483
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248562_
                                                              _specializer-body248700_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp255483))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp255482
                                           _L248222_))))
                                   (declare (not safe))
                                   (cons __tmp255481 '()))))
                            (declare (not safe))
                            (cons __tmp255484 __tmp255480))))
                     (declare (not safe))
                     (cons __tmp255479 '())))
                  (__tmp255477
                   (let () (declare (not safe)) (cons _L248221_ '()))))
              (declare (not safe))
              (cons __tmp255478 __tmp255477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp255476))))
                                        (declare (not safe))
                                        (cons __tmp255475 '()))))
                                 (declare (not safe))
                                 (cons __tmp255485 __tmp255474))))
                          (declare (not safe))
                          (cons __tmp255473 '())))
                       (__tmp255471
                        (let () (declare (not safe)) (cons _L248220_ '()))))
                   (declare (not safe))
                   (cons __tmp255472 __tmp255471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp255470))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp255469
                                             _stx246134_))))
                                       (_specializer-impl248704_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl248702_
                                           _struct-check-all248669_
                                           _empty246233_)))
                                       (_unchecked-specializer-impl248706_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?246236_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl248702_
                                               _empty246233_
                                               _struct-check-all248669_))
                                            '#f))
                                       (_specializer-impl248708_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl246140_
                                           _$t248599_
                                           _methods-bind248622_
                                           _slots-bind248645_
                                           _class-check-bind248667_
                                           _struct-check-bind248691_
                                           _specializer-impl248704_
                                           _lifted-specializer-id248597_
                                           _unchecked-specializer-impl248706_))))
                                  (let ((__tmp255487
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L246209_)))
                                        (__tmp255486
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id248590_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp255487
                                     '" => "
                                     __tmp255486))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def246141_
                                     _L246209_
                                     _specializer-id248590_
                                     _specializer-impl248708_
                                     _lifted-specializer-id248597_
                                     _unchecked-specializer-impl248706_))))))
                        _tl248533248558_
                        _hd248534248556_)))
                   (let ()
                     (declare (not safe))
                     (_g248526248540_ _g248527248543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248526248540_
                                                      _g248527248543_))))))
                                       (declare (not safe))
                                       (_g248525248711_ _L248222_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L248222_))
                                         (let* ((_g248714248744_
                                                 (lambda (_g248715248741_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248715248741_))))
                                                (_g248713249369_
                                                 (lambda (_g248715248747_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248715248747_))
                                                       (let ((_e248721248749_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248715248747_))))
                 (let ((_hd248720248752_
                        (let () (declare (not safe)) (##car _e248721248749_)))
                       (_tl248719248754_
                        (let () (declare (not safe)) (##cdr _e248721248749_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl248719248754_))
                       (let ((_e248724248757_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248719248754_))))
                         (let ((_hd248723248760_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248724248757_)))
                               (_tl248722248762_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248724248757_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd248723248760_))
                               (let ((_e248727248765_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd248723248760_))))
                                 (let ((_hd248726248768_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248727248765_)))
                                       (_tl248725248770_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248727248765_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248726248768_))
                                       (let ((_e248730248773_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248726248768_))))
                                         (let ((_hd248729248776_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248730248773_)))
                                               (_tl248728248778_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248730248773_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248729248776_))
                                               (let ((_e248733248781_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248729248776_))))
                                                 (let ((_hd248732248784_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248733248781_)))
                                                       (_tl248731248786_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248733248781_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248731248786_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248728248778_))
                                                           (let ((_e248736248789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248728248778_))))
                     (let ((_hd248735248792_
                            (let ()
                              (declare (not safe))
                              (##car _e248736248789_)))
                           (_tl248734248794_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248736248789_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248734248794_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248725248770_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl248722248762_))
                                   (let ((_e248739248797_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl248722248762_))))
                                     (let ((_hd248738248800_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248739248797_)))
                                           (_tl248737248802_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248739248797_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248737248802_))
                                           ((lambda (_L248805_
                                                     _L248806_
                                                     _L248807_)
                                              (let* ((_g248830248844_
                                                      (lambda (_g248831248841_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248831248841_))))
                                                     (_g248829248885_
                                                      (lambda (_g248831248847_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248831248847_))
                                                            (let ((_e248836248849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248831248847_))))
                      (let ((_hd248835248852_
                             (let ()
                               (declare (not safe))
                               (##car _e248836248849_)))
                            (_tl248834248854_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248836248849_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248834248854_))
                            (let ((_e248839248857_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248834248854_))))
                              (let ((_hd248838248860_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248839248857_)))
                                    (_tl248837248862_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248839248857_))))
                                ((lambda (_L248865_ _L248866_)
                                   (let ((_self248879_
                                          (list-ref
                                           _L248866_
                                           _self-index248523_)))
                                     (for-each
                                      (lambda (_g248880248882_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g248880248882_
                                           _self248879_
                                           _method-calls246228_
                                           _slot-refs246229_
                                           _class-type-check246230_
                                           _struct-type-check246231_
                                           _struct-type-assert246232_)))
                                      _L248865_)))
                                 _tl248837248862_
                                 _hd248838248860_)))
                            (let ()
                              (declare (not safe))
                              (_g248830248844_ _g248831248847_)))))
                    (let ()
                      (declare (not safe))
                      (_g248830248844_ _g248831248847_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248829248885_ _L248806_))
                                              (let* ((_g248888248907_
                                                      (lambda (_g248889248904_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248889248904_))))
                                                     (_g248887249012_
                                                      (lambda (_g248889248910_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248889248910_))
                                                            (let ((_e248893248912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248889248910_))))
                      (let ((_hd248892248915_
                             (let ()
                               (declare (not safe))
                               (##car _e248893248912_)))
                            (_tl248891248917_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248893248912_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl248891248917_))
                            (let ((_g255404_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248891248917_
                                      '0))))
                              (begin
                                (let ((_g255405_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255404_)
                                             (##vector-length _g255404_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255405_ 2)))
                                      (error "Context expects 2 values"
                                             _g255405_)))
                                (let ((_target248894248920_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255404_ 0)))
                                      (_tl248896248922_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255404_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl248896248922_))
                                      (letrec ((_loop248897248925_
                                                (lambda (_hd248895248928_
                                                         _clause248901248930_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd248895248928_))
                                                      (let ((_e248898248933_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd248895248928_))))
                (let ((_lp-hd248899248936_
                       (let () (declare (not safe)) (##car _e248898248933_)))
                      (_lp-tl248900248938_
                       (let () (declare (not safe)) (##cdr _e248898248933_))))
                  (let ((__tmp255407
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd248899248936_ _clause248901248930_))))
                    (declare (not safe))
                    (_loop248897248925_ _lp-tl248900248938_ __tmp255407))))
              (let ((_clause248902248941_ (reverse _clause248901248930_)))
                ((lambda (_L248944_)
                   (for-each
                    (lambda (_clause248957_)
                      (let* ((_g248959248970_
                              (lambda (_g248960248967_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g248960248967_))))
                             (_g248958249002_
                              (lambda (_g248960248973_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g248960248973_))
                                    (let ((_e248965248975_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g248960248973_))))
                                      (let ((_hd248964248978_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248965248975_)))
                                            (_tl248963248980_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248965248975_))))
                                        ((lambda (_L248983_ _L248984_)
                                           (let ((_self248996_
                                                  (list-ref
                                                   _L248984_
                                                   _self-index248523_)))
                                             (for-each
                                              (lambda (_g248997248999_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g248997248999_
                                                   _self248996_
                                                   _method-calls246228_
                                                   _slot-refs246229_
                                                   _class-type-check246230_
                                                   _struct-type-check246231_
                                                   _struct-type-assert246232_)))
                                              _L248983_)))
                                         _tl248963248980_
                                         _hd248964248978_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248959248970_ _g248960248973_))))))
                        (declare (not safe))
                        (_g248958249002_ _clause248957_)))
                    (let ((__tmp255406
                           (lambda (_g249004249007_ _g249005249009_)
                             (let ()
                               (declare (not safe))
                               (cons _g249004249007_ _g249005249009_)))))
                      (declare (not safe))
                      (foldr1 __tmp255406 '() _L248944_))))
                 _clause248902248941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop248897248925_
                                           _target248894248920_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g248888248907_ _g248889248910_))))))
                            (let ()
                              (declare (not safe))
                              (_g248888248907_ _g248889248910_)))))
                    (let ()
                      (declare (not safe))
                      (_g248888248907_ _g248889248910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248887249012_ _L248805_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246235_))
                                                  _stx246134_
                                                  (let* ((_specializer-id249021_
                                                          (let* ((_id249015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255408
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246209_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255408 '"::specialize")))
                         (_specializer-id249018_
                          (let ((__tmp255409
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246134_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249015_ __tmp255409))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id249018_))
                    _specializer-id249018_))
                 (_lifted-specializer-id249028_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246237_))
                      (let* ((_id249023_
                              (let ((__tmp255410
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246209_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255410
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id249025_
                              (let ((__tmp255411
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246134_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id249023_
                                 __tmp255411))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id249025_))
                        _lifted-specializer-id249025_)
                      '#f))
                 (_$t249030_
                  (let ((__tmp255412 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255412)))
                 (_methods249032_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246228_)))
                 (_$methods249036_
                  (map (lambda (_id249034_)
                         (let ((__tmp255413 (gensym _id249034_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255413)))
                       _methods249032_))
                 (_g255414_
                  (for-each
                   (lambda (_g249037249040_ _g249038249042_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246228_
                        _g249037249040_
                        _g249038249042_)))
                   _methods249032_
                   _$methods249036_))
                 (_methods-bind249053_
                  (map (lambda (_g249045249048_ _g249046249050_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246136_
                            _$t249030_
                            _g249045249048_
                            _g249046249050_)))
                       _methods249032_
                       _$methods249036_))
                 (_slots249055_
                  (let () (declare (not safe)) (hash-keys _slot-refs246229_)))
                 (_$slots249059_
                  (map (lambda (_id249057_)
                         (let ((__tmp255415 (gensym _id249057_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255415)))
                       _slots249055_))
                 (_g255416_
                  (for-each
                   (lambda (_g249060249063_ _g249061249065_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246229_
                        _g249060249063_
                        _g249061249065_)))
                   _slots249055_
                   _$slots249059_))
                 (_slots-bind249076_
                  (map (lambda (_g249068249071_ _g249069249073_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246137_
                            _$t249030_
                            _g249068249071_
                            _g249069249073_)))
                       _slots249055_
                       _$slots249059_))
                 (_class-check249078_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246230_)))
                 (_$class-check249081_
                  (map (lambda (_g255417_)
                         (let ((__tmp255418 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255418)))
                       _class-check249078_))
                 (_g255419_
                  (for-each
                   (lambda (_g249082249085_ _g249083249087_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246230_
                        _g249082249085_
                        _g249083249087_)))
                   _class-check249078_
                   _$class-check249081_))
                 (_class-check-bind249098_
                  (map (lambda (_g249090249093_ _g249091249095_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246138_
                            _$t249030_
                            _g249090249093_
                            _g249091249095_)))
                       _class-check249078_
                       _$class-check249081_))
                 (_struct-check-all249100_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246231_
                     _struct-type-assert246232_)))
                 (_struct-check249102_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all249100_)))
                 (_$struct-check249105_
                  (map (lambda (_g255420_)
                         (let ((__tmp255421 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255421)))
                       _struct-check249102_))
                 (_g255422_
                  (for-each
                   (lambda (_g249106249109_ _g249107249111_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all249100_
                        _g249106249109_
                        _g249107249111_)))
                   _struct-check249102_
                   _$struct-check249105_))
                 (_struct-check-bind249122_
                  (map (lambda (_g249114249117_ _g249115249119_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246139_
                            _$t249030_
                            _g249114249117_
                            _g249115249119_)))
                       _struct-check249102_
                       _$struct-check249105_))
                 (_make-specializer-lambda-expr249208_
                  (lambda (_struct-type-check1249124_
                           _struct-type-check2249125_)
                    (let* ((_g249127249141_
                            (lambda (_g249128249138_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249128249138_))))
                           (_g249126249205_
                            (lambda (_g249128249144_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249128249144_))
                                  (let ((_e249133249146_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249128249144_))))
                                    (let ((_hd249132249149_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249133249146_)))
                                          (_tl249131249151_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249133249146_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl249131249151_))
                                          (let ((_e249136249154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl249131249151_))))
                                            (let ((_hd249135249157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e249136249154_)))
                                                  (_tl249134249159_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e249136249154_))))
                                              ((lambda (_L249162_ _L249163_)
                                                 (let* ((_self249196_
                                                         (list-ref
                                                          _L249163_
                                                          _self-index248523_))
                                                        (_body249202_
                                                         (map (lambda (_g249197249199_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g249197249199_
                           _self249196_
                           _$t249030_
                           _method-calls246228_
                           _slot-refs246229_
                           _class-type-check246230_
                           _struct-type-check1249124_
                           _struct-type-check2249125_)))
                      _L249162_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp255423
                                                          (let ((__tmp255424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L249163_ _body249202_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp255424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255423
                                                      _L248806_))))
                                               _tl249134249159_
                                               _hd249135249157_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g249127249141_
                                             _g249128249144_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249127249141_ _g249128249144_))))))
                      (declare (not safe))
                      (_g249126249205_ _L248806_))))
                 (_make-specializer-case-lambda-expr249347_
                  (lambda (_struct-type-check1249210_
                           _struct-type-check2249211_)
                    (let* ((_g249213249232_
                            (lambda (_g249214249229_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249214249229_))))
                           (_g249212249344_
                            (lambda (_g249214249235_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249214249235_))
                                  (let ((_e249218249237_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249214249235_))))
                                    (let ((_hd249217249240_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249218249237_)))
                                          (_tl249216249242_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249218249237_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl249216249242_))
                                          (let ((_g255425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl249216249242_
                                                    '0))))
                                            (begin
                                              (let ((_g255426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g255425_)
                                                           (##vector-length
                                                            _g255425_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g255426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g255426_)))
                                              (let ((_target249219249245_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255425_
                                                        0)))
                                                    (_tl249221249247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255425_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249221249247_))
                                                    (letrec ((_loop249222249250_
                                                              (lambda (_hd249220249253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause249226249255_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249220249253_))
                            (let ((_e249223249258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249220249253_))))
                              (let ((_lp-hd249224249261_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249223249258_)))
                                    (_lp-tl249225249263_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249223249258_))))
                                (let ((__tmp255429
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd249224249261_
                                               _clause249226249255_))))
                                  (declare (not safe))
                                  (_loop249222249250_
                                   _lp-tl249225249263_
                                   __tmp255429))))
                            (let ((_clause249227249266_
                                   (reverse _clause249226249255_)))
                              ((lambda (_L249269_)
                                 (let* ((_clauses249342_
                                         (map (lambda (_clause249284_)
                                                (let* ((_g249286249297_
                                                        (lambda (_g249287249294_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g249287249294_))))
                                                       (_g249285249332_
                                                        (lambda (_g249287249300_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g249287249300_))
                      (let ((_e249292249302_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g249287249300_))))
                        (let ((_hd249291249305_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249292249302_)))
                              (_tl249290249307_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249292249302_))))
                          ((lambda (_L249310_ _L249311_)
                             (let* ((_self249323_
                                     (list-ref _L249311_ _self-index248523_))
                                    (_body249329_
                                     (map (lambda (_g249324249326_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g249324249326_
                                               _self249323_
                                               _$t249030_
                                               _method-calls246228_
                                               _slot-refs246229_
                                               _class-type-check246230_
                                               _struct-type-check1249210_
                                               _struct-type-check2249211_)))
                                          _L249310_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L249311_ _body249329_))))
                           _tl249290249307_
                           _hd249291249305_)))
                      (let ()
                        (declare (not safe))
                        (_g249286249297_ _g249287249300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g249285249332_
                                                   _clause249284_)))
                                              (let ((__tmp255427
                                                     (lambda (_g249334249337_
                                                              _g249335249339_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g249334249337_
                                                               _g249335249339_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp255427
                                                        '()
                                                        _L249269_))))
                                        (__tmp255428
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses249342_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255428
                                    _L248805_)))
                               _clause249227249266_))))))
              (let ()
                (declare (not safe))
                (_loop249222249250_ _target249219249245_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249213249232_
                                                       _g249214249235_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g249213249232_
                                             _g249214249235_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249213249232_ _g249214249235_))))))
                      (declare (not safe))
                      (_g249212249344_ _L248805_))))
                 (_make-specializer-impl249352_
                  (lambda (_specializer-lambda-expr249349_
                           _specializer-case-lambda-expr249350_)
                    (let ((__tmp255430
                           (let ((__tmp255431
                                  (let ((__tmp255433
                                         (let ((__tmp255434
                                                (let ((__tmp255451
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L248224_ '())))
                                                      (__tmp255435
                                                       (let ((__tmp255436
                                                              (let ((__tmp255437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255439
                                    (let ((__tmp255440
                                           (let ((__tmp255450
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L248223_ '())))
                                                 (__tmp255441
                                                  (let ((__tmp255442
                                                         (let ((__tmp255443
                                                                (let ((__tmp255444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255446
                                      (let ((__tmp255447
                                             (let ((__tmp255449
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L248807_ '())))
                                                   (__tmp255448
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr249349_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp255449
                                                     __tmp255448))))
                                        (declare (not safe))
                                        (cons __tmp255447 '())))
                                     (__tmp255445
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr249350_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp255446 __tmp255445))))
                          (declare (not safe))
                          (cons '%#let-values __tmp255444))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255443 _stx246134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255442 '()))))
                                             (declare (not safe))
                                             (cons __tmp255450 __tmp255441))))
                                      (declare (not safe))
                                      (cons __tmp255440 '())))
                                   (__tmp255438
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248221_ '()))))
                               (declare (not safe))
                               (cons __tmp255439 __tmp255438))))
                        (declare (not safe))
                        (cons '%#let-values __tmp255437))))
                 (declare (not safe))
                 (cons __tmp255436 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255451
                                                        __tmp255435))))
                                           (declare (not safe))
                                           (cons __tmp255434 '())))
                                        (__tmp255432
                                         (let ()
                                           (declare (not safe))
                                           (cons _L248220_ '()))))
                                    (declare (not safe))
                                    (cons __tmp255433 __tmp255432))))
                             (declare (not safe))
                             (cons '%#let-values __tmp255431))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255430 _stx246134_))))
                 (_specializer-lambda-expr249354_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr249208_
                     _struct-check-all249100_
                     _empty246233_)))
                 (_specializer-case-lambda-expr249356_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr249347_
                     _struct-check-all249100_
                     _empty246233_)))
                 (_specializer-impl249358_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl249352_
                     _specializer-lambda-expr249354_
                     _specializer-case-lambda-expr249356_)))
                 (_unchecked-specializer-lambda-expr249360_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246236_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr249208_
                         _empty246233_
                         _struct-check-all249100_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr249362_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246236_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr249347_
                         _empty246233_
                         _struct-check-all249100_))
                      '#f))
                 (_unchecked-specializer-impl249364_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246236_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl249352_
                         _unchecked-specializer-lambda-expr249360_
                         _unchecked-specializer-case-lambda-expr249362_))
                      '#f))
                 (_specializer-impl249366_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246140_
                     _$t249030_
                     _methods-bind249053_
                     _slots-bind249076_
                     _class-check-bind249098_
                     _struct-check-bind249122_
                     _specializer-impl249358_
                     _lifted-specializer-id249028_
                     _unchecked-specializer-impl249364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255453
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246209_)))
                                                          (__tmp255452
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id249021_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255453
                                                       '" => "
                                                       __tmp255452))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246141_
                                                       _L246209_
                                                       _specializer-id249021_
                                                       _specializer-impl249366_
                                                       _lifted-specializer-id249028_
                                                       _unchecked-specializer-impl249364_)))))
                                            _hd248738248800_
                                            _hd248735248792_
                                            _hd248732248784_)
                                           (let ()
                                             (declare (not safe))
                                             (_g248714248744_
                                              _g248715248747_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248714248744_ _g248715248747_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248714248744_ _g248715248747_)))
                           (let ()
                             (declare (not safe))
                             (_g248714248744_ _g248715248747_)))))
                   (let ()
                     (declare (not safe))
                     (_g248714248744_ _g248715248747_)))
               (let ()
                 (declare (not safe))
                 (_g248714248744_ _g248715248747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248714248744_
                                                  _g248715248747_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248714248744_ _g248715248747_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248714248744_ _g248715248747_)))))
                       (let ()
                         (declare (not safe))
                         (_g248714248744_ _g248715248747_)))))
               (let ()
                 (declare (not safe))
                 (_g248714248744_ _g248715248747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248713249369_ _L248222_))
                                         _stx246134_))))
                             _hd248319248442_
                             _kw-ref248317248463_
                             _hd248307248429_
                             _hd248298248405_
                             _hd248289248381_)
                            (let ()
                              (declare (not safe))
                              (_g248263248325_ _g248264248328_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop248312248447_
                                                   _target248309248434_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g248263248325_
                                                 _g248264248328_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248263248325_ _g248264248328_))))))
                            (let ()
                              (declare (not safe))
                              (_g248263248325_ _g248264248328_)))
                        (let ()
                          (declare (not safe))
                          (_g248263248325_ _g248264248328_)))
                    (let ()
                      (declare (not safe))
                      (_g248263248325_ _g248264248328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248263248325_
                                                       _g248264248328_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248263248325_
                                                   _g248264248328_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g248263248325_
                                               _g248264248328_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248263248325_ _g248264248328_)))))
                            (let ()
                              (declare (not safe))
                              (_g248263248325_ _g248264248328_)))
                        (let ()
                          (declare (not safe))
                          (_g248263248325_ _g248264248328_)))))
                (let ()
                  (declare (not safe))
                  (_g248263248325_ _g248264248328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248263248325_
                                                       _g248264248328_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248263248325_
                                                   _g248264248328_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g248263248325_ _g248264248328_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g248263248325_ _g248264248328_)))
                            (let ()
                              (declare (not safe))
                              (_g248263248325_ _g248264248328_)))))
                    (let ()
                      (declare (not safe))
                      (_g248263248325_ _g248264248328_)))
                (let ()
                  (declare (not safe))
                  (_g248263248325_ _g248264248328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248263248325_
                                                       _g248264248328_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248263248325_
                                               _g248264248328_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248263248325_ _g248264248328_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248263248325_ _g248264248328_)))
                            (let ()
                              (declare (not safe))
                              (_g248263248325_ _g248264248328_)))))
                    (let ()
                      (declare (not safe))
                      (_g248263248325_ _g248264248328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248263248325_
                                                       _g248264248328_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248263248325_
                                               _g248264248328_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g248263248325_ _g248264248328_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248263248325_ _g248264248328_)))))
                            (let ()
                              (declare (not safe))
                              (_g248263248325_ _g248264248328_))))))
                (declare (not safe))
                (_g248262249372_ _L248221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd248097248215_
                                                    _hd248094248207_
                                                    _hd248091248199_
                                                    _hd248088248191_
                                                    _hd248070248143_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248050248103_
                                                      _g248051248106_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248050248103_
                                              _g248051248106_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g248050248103_ _g248051248106_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g248050248103_ _g248051248106_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248050248103_ _g248051248106_)))))
                       (let ()
                         (declare (not safe))
                         (_g248050248103_ _g248051248106_)))
                   (let ()
                     (declare (not safe))
                     (_g248050248103_ _g248051248106_)))
               (let ()
                 (declare (not safe))
                 (_g248050248103_ _g248051248106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248050248103_
                                                  _g248051248106_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248050248103_
                                              _g248051248106_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248050248103_ _g248051248106_)))))
                           (let ()
                             (declare (not safe))
                             (_g248050248103_ _g248051248106_)))))
                   (let ()
                     (declare (not safe))
                     (_g248050248103_ _g248051248106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248050248103_
                                                      _g248051248106_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248050248103_
                                                  _g248051248106_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248050248103_
                                              _g248051248106_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248050248103_ _g248051248106_)))))
                           (let ()
                             (declare (not safe))
                             (_g248050248103_ _g248051248106_)))
                       (let ()
                         (declare (not safe))
                         (_g248050248103_ _g248051248106_)))))
               (let ()
                 (declare (not safe))
                 (_g248050248103_ _g248051248106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248050248103_
                                                  _g248051248106_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248050248103_ _g248051248106_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248050248103_ _g248051248106_)))
                           (let ()
                             (declare (not safe))
                             (_g248050248103_ _g248051248106_)))
                       (let ()
                         (declare (not safe))
                         (_g248050248103_ _g248051248106_)))))
               (let ()
                 (declare (not safe))
                 (_g248050248103_ _g248051248106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248049249375_ _L246208_))
                                         _stx246134_))))))))
                  (___kont254182254183_ (lambda () _stx246134_)))
              (let ((___match254211254212_
                     (lambda (_e246150246176_
                              _hd246149246179_
                              _tl246148246181_
                              _e246153246184_
                              _hd246152246187_
                              _tl246151246189_
                              _e246156246192_
                              _hd246155246195_
                              _tl246154246197_
                              _e246159246200_
                              _hd246158246203_
                              _tl246157246205_)
                       (let ((_L246208_ _hd246158246203_)
                             (_L246209_ _hd246155246195_))
                         (if (let ((__tmp255570
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L246209_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp255570))
                             (___kont254180254181_ _L246208_ _L246209_)
                             (___kont254182254183_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254178254179_))
                    (let ((_e246150246176_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254178254179_))))
                      (let ((_tl246148246181_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246150246176_)))
                            (_hd246149246179_
                             (let ()
                               (declare (not safe))
                               (##car _e246150246176_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246148246181_))
                            (let ((_e246153246184_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246148246181_))))
                              (let ((_tl246151246189_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246153246184_)))
                                    (_hd246152246187_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246153246184_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd246152246187_))
                                    (let ((_e246156246192_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd246152246187_))))
                                      (let ((_tl246154246197_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246156246192_)))
                                            (_hd246155246195_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246156246192_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl246154246197_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl246151246189_))
                                                (let ((_e246159246200_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl246151246189_))))
                                                  (let ((_tl246157246205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e246159246200_)))
                                                        (_hd246158246203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e246159246200_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl246157246205_))
                                                        (___match254211254212_
                                                         _e246150246176_
                                                         _hd246149246179_
                                                         _tl246148246181_
                                                         _e246153246184_
                                                         _hd246152246187_
                                                         _tl246151246189_
                                                         _e246156246192_
                                                         _hd246155246195_
                                                         _tl246154246197_
                                                         _e246159246200_
                                                         _hd246158246203_
                                                         _tl246157246205_)
                                                        (___kont254182254183_))))
                                                (___kont254182254183_))
                                            (___kont254182254183_))))
                                    (___kont254182254183_))))
                            (___kont254182254183_))))
                    (___kont254182254183_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx245110_
               _self245111_
               _methods245112_
               _slots245113_
               _class-check245114_
               _struct-check245115_
               _struct-assert245116_)
        (let* ((___stx254214254215_ _stx245110_)
               (_g245124245346_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx254214254215_)))))
          (let ((___kont254216254217_
                 (lambda (_L246083_ _L246084_ _L246085_ _L246086_)
                   (let ((__tmp255571
                          (let () (declare (not safe)) (gx#stx-e _L246084_))))
                     (declare (not safe))
                     (table-set! _methods245112_ __tmp255571 '#t))
                   (for-each
                    (lambda (_g246119246121_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246119246121_
                         _self245111_
                         _methods245112_
                         _slots245113_
                         _class-check245114_
                         _struct-check245115_
                         _struct-assert245116_)))
                    (let ((__tmp255572
                           (lambda (_g246123246126_ _g246124246128_)
                             (let ()
                               (declare (not safe))
                               (cons _g246123246126_ _g246124246128_)))))
                      (declare (not safe))
                      (foldr1 __tmp255572 '() _L246083_)))))
                (___kont254220254221_
                 (lambda (_L245918_ _L245919_ _L245920_ _L245921_ _L245922_)
                   (let ((__tmp255573
                          (let () (declare (not safe)) (gx#stx-e _L245919_))))
                     (declare (not safe))
                     (table-set! _methods245112_ __tmp255573 '#t))
                   (for-each
                    (lambda (_g245962245964_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g245962245964_
                         _self245111_
                         _methods245112_
                         _slots245113_
                         _class-check245114_
                         _struct-check245115_
                         _struct-assert245116_)))
                    (let ((__tmp255574
                           (lambda (_g245966245969_ _g245967245971_)
                             (let ()
                               (declare (not safe))
                               (cons _g245966245969_ _g245967245971_)))))
                      (declare (not safe))
                      (foldr1 __tmp255574 '() _L245918_)))))
                (___kont254224254225_
                 (lambda (_L245751_ _L245752_ _L245753_)
                   (let ((__tmp255575
                          (let () (declare (not safe)) (gx#stx-e _L245751_))))
                     (declare (not safe))
                     (table-set! _slots245113_ __tmp255575 '#t))))
                (___kont254226254227_
                 (lambda (_L245628_ _L245629_ _L245630_ _L245631_)
                   (let ((__tmp255576
                          (let () (declare (not safe)) (gx#stx-e _L245629_))))
                     (declare (not safe))
                     (table-set! _slots245113_ __tmp255576 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245628_
                      _self245111_
                      _methods245112_
                      _slots245113_
                      _class-check245114_
                      _struct-check245115_
                      _struct-assert245116_))))
                (___kont254228254229_
                 (lambda (_L245512_ _L245513_)
                   (let ((__tmp255577
                          (##structure-ref
                           (let ((__tmp255578
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245513_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255578))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245113_ __tmp255577 '#t))))
                (___kont254230254231_
                 (lambda (_L245422_ _L245423_ _L245424_)
                   (let ((__tmp255579
                          (##structure-ref
                           (let ((__tmp255580
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245424_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255580))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245113_ __tmp255579 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245422_
                      _self245111_
                      _methods245112_
                      _slots245113_
                      _class-check245114_
                      _struct-check245115_
                      _struct-assert245116_))))
                (___kont254232254233_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx245110_
                      _self245111_
                      _methods245112_
                      _slots245113_
                      _class-check245114_
                      _struct-check245115_
                      _struct-assert245116_)))))
            (let* ((___match254713254714_
                    (lambda (_e245320245358_
                             _hd245319245361_
                             _tl245318245363_
                             _e245323245366_
                             _hd245322245369_
                             _tl245321245371_
                             _e245326245374_
                             _hd245325245377_
                             _tl245324245379_
                             _e245329245382_
                             _hd245328245385_
                             _tl245327245387_
                             _e245332245390_
                             _hd245331245393_
                             _tl245330245395_
                             _e245335245398_
                             _hd245334245401_
                             _tl245333245403_
                             _e245338245406_
                             _hd245337245409_
                             _tl245336245411_
                             _e245341245414_
                             _hd245340245417_
                             _tl245339245419_)
                      (let ((_L245422_ _hd245340245417_)
                            (_L245423_ _hd245337245409_)
                            (_L245424_ _hd245328245385_))
                        (if (and (let ((__tmp255581
                                        (let ((__tmp255582
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245424_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255582))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255581
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245423_
                                    _self245111_)))
                            (___kont254230254231_
                             _L245422_
                             _L245423_
                             _L245424_)
                            (___kont254232254233_)))))
                   (___match254711254712_
                    (lambda (_e245320245358_
                             _hd245319245361_
                             _tl245318245363_
                             _e245323245366_
                             _hd245322245369_
                             _tl245321245371_
                             _e245326245374_
                             _hd245325245377_
                             _tl245324245379_
                             _e245329245382_
                             _hd245328245385_
                             _tl245327245387_
                             _e245332245390_
                             _hd245331245393_
                             _tl245330245395_
                             _e245335245398_
                             _hd245334245401_
                             _tl245333245403_
                             _e245338245406_
                             _hd245337245409_
                             _tl245336245411_
                             _e245341245414_
                             _hd245340245417_
                             _tl245339245419_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245339245419_))
                          (___match254713254714_
                           _e245320245358_
                           _hd245319245361_
                           _tl245318245363_
                           _e245323245366_
                           _hd245322245369_
                           _tl245321245371_
                           _e245326245374_
                           _hd245325245377_
                           _tl245324245379_
                           _e245329245382_
                           _hd245328245385_
                           _tl245327245387_
                           _e245332245390_
                           _hd245331245393_
                           _tl245330245395_
                           _e245335245398_
                           _hd245334245401_
                           _tl245333245403_
                           _e245338245406_
                           _hd245337245409_
                           _tl245336245411_
                           _e245341245414_
                           _hd245340245417_
                           _tl245339245419_)
                          (___kont254232254233_))))
                   (___match254705254706_
                    (lambda (_e245320245358_
                             _hd245319245361_
                             _tl245318245363_
                             _e245323245366_
                             _hd245322245369_
                             _tl245321245371_
                             _e245326245374_
                             _hd245325245377_
                             _tl245324245379_
                             _e245329245382_
                             _hd245328245385_
                             _tl245327245387_
                             _e245332245390_
                             _hd245331245393_
                             _tl245330245395_
                             _e245335245398_
                             _hd245334245401_
                             _tl245333245403_
                             _e245338245406_
                             _hd245337245409_
                             _tl245336245411_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245330245395_))
                          (let ((_e245341245414_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245330245395_))))
                            (let ((_tl245339245419_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245341245414_)))
                                  (_hd245340245417_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245341245414_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245339245419_))
                                  (___match254713254714_
                                   _e245320245358_
                                   _hd245319245361_
                                   _tl245318245363_
                                   _e245323245366_
                                   _hd245322245369_
                                   _tl245321245371_
                                   _e245326245374_
                                   _hd245325245377_
                                   _tl245324245379_
                                   _e245329245382_
                                   _hd245328245385_
                                   _tl245327245387_
                                   _e245332245390_
                                   _hd245331245393_
                                   _tl245330245395_
                                   _e245335245398_
                                   _hd245334245401_
                                   _tl245333245403_
                                   _e245338245406_
                                   _hd245337245409_
                                   _tl245336245411_
                                   _e245341245414_
                                   _hd245340245417_
                                   _tl245339245419_)
                                  (___kont254232254233_))))
                          (___kont254232254233_))))
                   (___match254651254652_
                    (lambda (_e245296245456_
                             _hd245295245459_
                             _tl245294245461_
                             _e245299245464_
                             _hd245298245467_
                             _tl245297245469_
                             _e245302245472_
                             _hd245301245475_
                             _tl245300245477_
                             _e245305245480_
                             _hd245304245483_
                             _tl245303245485_
                             _e245308245488_
                             _hd245307245491_
                             _tl245306245493_
                             _e245311245496_
                             _hd245310245499_
                             _tl245309245501_
                             _e245314245504_
                             _hd245313245507_
                             _tl245312245509_)
                      (let ((_L245512_ _hd245313245507_)
                            (_L245513_ _hd245304245483_))
                        (if (and (let ((__tmp255583
                                        (let ((__tmp255584
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245513_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255584))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255583
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245512_
                                    _self245111_)))
                            (___kont254228254229_ _L245512_ _L245513_)
                            (___kont254232254233_)))))
                   (___match254649254650_
                    (lambda (_e245296245456_
                             _hd245295245459_
                             _tl245294245461_
                             _e245299245464_
                             _hd245298245467_
                             _tl245297245469_
                             _e245302245472_
                             _hd245301245475_
                             _tl245300245477_
                             _e245305245480_
                             _hd245304245483_
                             _tl245303245485_
                             _e245308245488_
                             _hd245307245491_
                             _tl245306245493_
                             _e245311245496_
                             _hd245310245499_
                             _tl245309245501_
                             _e245314245504_
                             _hd245313245507_
                             _tl245312245509_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245306245493_))
                          (___match254651254652_
                           _e245296245456_
                           _hd245295245459_
                           _tl245294245461_
                           _e245299245464_
                           _hd245298245467_
                           _tl245297245469_
                           _e245302245472_
                           _hd245301245475_
                           _tl245300245477_
                           _e245305245480_
                           _hd245304245483_
                           _tl245303245485_
                           _e245308245488_
                           _hd245307245491_
                           _tl245306245493_
                           _e245311245496_
                           _hd245310245499_
                           _tl245309245501_
                           _e245314245504_
                           _hd245313245507_
                           _tl245312245509_)
                          (___match254705254706_
                           _e245296245456_
                           _hd245295245459_
                           _tl245294245461_
                           _e245299245464_
                           _hd245298245467_
                           _tl245297245469_
                           _e245302245472_
                           _hd245301245475_
                           _tl245300245477_
                           _e245305245480_
                           _hd245304245483_
                           _tl245303245485_
                           _e245308245488_
                           _hd245307245491_
                           _tl245306245493_
                           _e245311245496_
                           _hd245310245499_
                           _tl245309245501_
                           _e245314245504_
                           _hd245313245507_
                           _tl245312245509_))))
                   (___match254595254596_
                    (lambda (_e245261245540_
                             _hd245260245543_
                             _tl245259245545_
                             _e245264245548_
                             _hd245263245551_
                             _tl245262245553_
                             _e245267245556_
                             _hd245266245559_
                             _tl245265245561_
                             _e245270245564_
                             _hd245269245567_
                             _tl245268245569_
                             _e245273245572_
                             _hd245272245575_
                             _tl245271245577_
                             _e245276245580_
                             _hd245275245583_
                             _tl245274245585_
                             _e245279245588_
                             _hd245278245591_
                             _tl245277245593_
                             _e245282245596_
                             _hd245281245599_
                             _tl245280245601_
                             _e245285245604_
                             _hd245284245607_
                             _tl245283245609_
                             _e245288245612_
                             _hd245287245615_
                             _tl245286245617_
                             _e245291245620_
                             _hd245290245623_
                             _tl245289245625_)
                      (let ((_L245628_ _hd245290245623_)
                            (_L245629_ _hd245287245615_)
                            (_L245630_ _hd245278245591_)
                            (_L245631_ _hd245269245567_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245631_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245631_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245630_
                                    _self245111_)))
                            (___kont254226254227_
                             _L245628_
                             _L245629_
                             _L245630_
                             _L245631_)
                            (___kont254232254233_)))))
                   (___match254587254588_
                    (lambda (_e245261245540_
                             _hd245260245543_
                             _tl245259245545_
                             _e245264245548_
                             _hd245263245551_
                             _tl245262245553_
                             _e245267245556_
                             _hd245266245559_
                             _tl245265245561_
                             _e245270245564_
                             _hd245269245567_
                             _tl245268245569_
                             _e245273245572_
                             _hd245272245575_
                             _tl245271245577_
                             _e245276245580_
                             _hd245275245583_
                             _tl245274245585_
                             _e245279245588_
                             _hd245278245591_
                             _tl245277245593_
                             _e245282245596_
                             _hd245281245599_
                             _tl245280245601_
                             _e245285245604_
                             _hd245284245607_
                             _tl245283245609_
                             _e245288245612_
                             _hd245287245615_
                             _tl245286245617_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245280245601_))
                          (let ((_e245291245620_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245280245601_))))
                            (let ((_tl245289245625_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245291245620_)))
                                  (_hd245290245623_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245291245620_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245289245625_))
                                  (___match254595254596_
                                   _e245261245540_
                                   _hd245260245543_
                                   _tl245259245545_
                                   _e245264245548_
                                   _hd245263245551_
                                   _tl245262245553_
                                   _e245267245556_
                                   _hd245266245559_
                                   _tl245265245561_
                                   _e245270245564_
                                   _hd245269245567_
                                   _tl245268245569_
                                   _e245273245572_
                                   _hd245272245575_
                                   _tl245271245577_
                                   _e245276245580_
                                   _hd245275245583_
                                   _tl245274245585_
                                   _e245279245588_
                                   _hd245278245591_
                                   _tl245277245593_
                                   _e245282245596_
                                   _hd245281245599_
                                   _tl245280245601_
                                   _e245285245604_
                                   _hd245284245607_
                                   _tl245283245609_
                                   _e245288245612_
                                   _hd245287245615_
                                   _tl245286245617_
                                   _e245291245620_
                                   _hd245290245623_
                                   _tl245289245625_)
                                  (___kont254232254233_))))
                          (___match254711254712_
                           _e245261245540_
                           _hd245260245543_
                           _tl245259245545_
                           _e245264245548_
                           _hd245263245551_
                           _tl245262245553_
                           _e245267245556_
                           _hd245266245559_
                           _tl245265245561_
                           _e245270245564_
                           _hd245269245567_
                           _tl245268245569_
                           _e245273245572_
                           _hd245272245575_
                           _tl245271245577_
                           _e245276245580_
                           _hd245275245583_
                           _tl245274245585_
                           _e245279245588_
                           _hd245278245591_
                           _tl245277245593_
                           _e245282245596_
                           _hd245281245599_
                           _tl245280245601_))))
                   (___match254509254510_
                    (lambda (_e245227245671_
                             _hd245226245674_
                             _tl245225245676_
                             _e245230245679_
                             _hd245229245682_
                             _tl245228245684_
                             _e245233245687_
                             _hd245232245690_
                             _tl245231245692_
                             _e245236245695_
                             _hd245235245698_
                             _tl245234245700_
                             _e245239245703_
                             _hd245238245706_
                             _tl245237245708_
                             _e245242245711_
                             _hd245241245714_
                             _tl245240245716_
                             _e245245245719_
                             _hd245244245722_
                             _tl245243245724_
                             _e245248245727_
                             _hd245247245730_
                             _tl245246245732_
                             _e245251245735_
                             _hd245250245738_
                             _tl245249245740_
                             _e245254245743_
                             _hd245253245746_
                             _tl245252245748_)
                      (let ((_L245751_ _hd245253245746_)
                            (_L245752_ _hd245244245722_)
                            (_L245753_ _hd245235245698_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245753_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245753_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245752_
                                    _self245111_)))
                            (___kont254224254225_
                             _L245751_
                             _L245752_
                             _L245753_)
                            (___match254713254714_
                             _e245227245671_
                             _hd245226245674_
                             _tl245225245676_
                             _e245230245679_
                             _hd245229245682_
                             _tl245228245684_
                             _e245233245687_
                             _hd245232245690_
                             _tl245231245692_
                             _e245236245695_
                             _hd245235245698_
                             _tl245234245700_
                             _e245239245703_
                             _hd245238245706_
                             _tl245237245708_
                             _e245242245711_
                             _hd245241245714_
                             _tl245240245716_
                             _e245245245719_
                             _hd245244245722_
                             _tl245243245724_
                             _e245248245727_
                             _hd245247245730_
                             _tl245246245732_)))))
                   (___match254507254508_
                    (lambda (_e245227245671_
                             _hd245226245674_
                             _tl245225245676_
                             _e245230245679_
                             _hd245229245682_
                             _tl245228245684_
                             _e245233245687_
                             _hd245232245690_
                             _tl245231245692_
                             _e245236245695_
                             _hd245235245698_
                             _tl245234245700_
                             _e245239245703_
                             _hd245238245706_
                             _tl245237245708_
                             _e245242245711_
                             _hd245241245714_
                             _tl245240245716_
                             _e245245245719_
                             _hd245244245722_
                             _tl245243245724_
                             _e245248245727_
                             _hd245247245730_
                             _tl245246245732_
                             _e245251245735_
                             _hd245250245738_
                             _tl245249245740_
                             _e245254245743_
                             _hd245253245746_
                             _tl245252245748_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245246245732_))
                          (___match254509254510_
                           _e245227245671_
                           _hd245226245674_
                           _tl245225245676_
                           _e245230245679_
                           _hd245229245682_
                           _tl245228245684_
                           _e245233245687_
                           _hd245232245690_
                           _tl245231245692_
                           _e245236245695_
                           _hd245235245698_
                           _tl245234245700_
                           _e245239245703_
                           _hd245238245706_
                           _tl245237245708_
                           _e245242245711_
                           _hd245241245714_
                           _tl245240245716_
                           _e245245245719_
                           _hd245244245722_
                           _tl245243245724_
                           _e245248245727_
                           _hd245247245730_
                           _tl245246245732_
                           _e245251245735_
                           _hd245250245738_
                           _tl245249245740_
                           _e245254245743_
                           _hd245253245746_
                           _tl245252245748_)
                          (___match254587254588_
                           _e245227245671_
                           _hd245226245674_
                           _tl245225245676_
                           _e245230245679_
                           _hd245229245682_
                           _tl245228245684_
                           _e245233245687_
                           _hd245232245690_
                           _tl245231245692_
                           _e245236245695_
                           _hd245235245698_
                           _tl245234245700_
                           _e245239245703_
                           _hd245238245706_
                           _tl245237245708_
                           _e245242245711_
                           _hd245241245714_
                           _tl245240245716_
                           _e245245245719_
                           _hd245244245722_
                           _tl245243245724_
                           _e245248245727_
                           _hd245247245730_
                           _tl245246245732_
                           _e245251245735_
                           _hd245250245738_
                           _tl245249245740_
                           _e245254245743_
                           _hd245253245746_
                           _tl245252245748_))))
                   (___match254497254498_
                    (lambda (_e245227245671_
                             _hd245226245674_
                             _tl245225245676_
                             _e245230245679_
                             _hd245229245682_
                             _tl245228245684_
                             _e245233245687_
                             _hd245232245690_
                             _tl245231245692_
                             _e245236245695_
                             _hd245235245698_
                             _tl245234245700_
                             _e245239245703_
                             _hd245238245706_
                             _tl245237245708_
                             _e245242245711_
                             _hd245241245714_
                             _tl245240245716_
                             _e245245245719_
                             _hd245244245722_
                             _tl245243245724_
                             _e245248245727_
                             _hd245247245730_
                             _tl245246245732_
                             _e245251245735_
                             _hd245250245738_
                             _tl245249245740_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd245250245738_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245249245740_))
                              (let ((_e245254245743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245249245740_))))
                                (let ((_tl245252245748_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245254245743_)))
                                      (_hd245253245746_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245254245743_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245252245748_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl245246245732_))
                                          (___match254509254510_
                                           _e245227245671_
                                           _hd245226245674_
                                           _tl245225245676_
                                           _e245230245679_
                                           _hd245229245682_
                                           _tl245228245684_
                                           _e245233245687_
                                           _hd245232245690_
                                           _tl245231245692_
                                           _e245236245695_
                                           _hd245235245698_
                                           _tl245234245700_
                                           _e245239245703_
                                           _hd245238245706_
                                           _tl245237245708_
                                           _e245242245711_
                                           _hd245241245714_
                                           _tl245240245716_
                                           _e245245245719_
                                           _hd245244245722_
                                           _tl245243245724_
                                           _e245248245727_
                                           _hd245247245730_
                                           _tl245246245732_
                                           _e245251245735_
                                           _hd245250245738_
                                           _tl245249245740_
                                           _e245254245743_
                                           _hd245253245746_
                                           _tl245252245748_)
                                          (___match254587254588_
                                           _e245227245671_
                                           _hd245226245674_
                                           _tl245225245676_
                                           _e245230245679_
                                           _hd245229245682_
                                           _tl245228245684_
                                           _e245233245687_
                                           _hd245232245690_
                                           _tl245231245692_
                                           _e245236245695_
                                           _hd245235245698_
                                           _tl245234245700_
                                           _e245239245703_
                                           _hd245238245706_
                                           _tl245237245708_
                                           _e245242245711_
                                           _hd245241245714_
                                           _tl245240245716_
                                           _e245245245719_
                                           _hd245244245722_
                                           _tl245243245724_
                                           _e245248245727_
                                           _hd245247245730_
                                           _tl245246245732_
                                           _e245251245735_
                                           _hd245250245738_
                                           _tl245249245740_
                                           _e245254245743_
                                           _hd245253245746_
                                           _tl245252245748_))
                                      (___match254711254712_
                                       _e245227245671_
                                       _hd245226245674_
                                       _tl245225245676_
                                       _e245230245679_
                                       _hd245229245682_
                                       _tl245228245684_
                                       _e245233245687_
                                       _hd245232245690_
                                       _tl245231245692_
                                       _e245236245695_
                                       _hd245235245698_
                                       _tl245234245700_
                                       _e245239245703_
                                       _hd245238245706_
                                       _tl245237245708_
                                       _e245242245711_
                                       _hd245241245714_
                                       _tl245240245716_
                                       _e245245245719_
                                       _hd245244245722_
                                       _tl245243245724_
                                       _e245248245727_
                                       _hd245247245730_
                                       _tl245246245732_))))
                              (___match254711254712_
                               _e245227245671_
                               _hd245226245674_
                               _tl245225245676_
                               _e245230245679_
                               _hd245229245682_
                               _tl245228245684_
                               _e245233245687_
                               _hd245232245690_
                               _tl245231245692_
                               _e245236245695_
                               _hd245235245698_
                               _tl245234245700_
                               _e245239245703_
                               _hd245238245706_
                               _tl245237245708_
                               _e245242245711_
                               _hd245241245714_
                               _tl245240245716_
                               _e245245245719_
                               _hd245244245722_
                               _tl245243245724_
                               _e245248245727_
                               _hd245247245730_
                               _tl245246245732_))
                          (___match254711254712_
                           _e245227245671_
                           _hd245226245674_
                           _tl245225245676_
                           _e245230245679_
                           _hd245229245682_
                           _tl245228245684_
                           _e245233245687_
                           _hd245232245690_
                           _tl245231245692_
                           _e245236245695_
                           _hd245235245698_
                           _tl245234245700_
                           _e245239245703_
                           _hd245238245706_
                           _tl245237245708_
                           _e245242245711_
                           _hd245241245714_
                           _tl245240245716_
                           _e245245245719_
                           _hd245244245722_
                           _tl245243245724_
                           _e245248245727_
                           _hd245247245730_
                           _tl245246245732_))))
                   (___match254429254430_
                    (lambda (_e245176245790_
                             _hd245175245793_
                             _tl245174245795_
                             _e245179245798_
                             _hd245178245801_
                             _tl245177245803_
                             _e245182245806_
                             _hd245181245809_
                             _tl245180245811_
                             _e245185245814_
                             _hd245184245817_
                             _tl245183245819_
                             _e245188245822_
                             _hd245187245825_
                             _tl245186245827_
                             _e245191245830_
                             _hd245190245833_
                             _tl245189245835_
                             _e245194245838_
                             _hd245193245841_
                             _tl245192245843_
                             _e245197245846_
                             _hd245196245849_
                             _tl245195245851_
                             _e245200245854_
                             _hd245199245857_
                             _tl245198245859_
                             _e245203245862_
                             _hd245202245865_
                             _tl245201245867_
                             _e245206245870_
                             _hd245205245873_
                             _tl245204245875_
                             _e245209245878_
                             _hd245208245881_
                             _tl245207245883_
                             _e245212245886_
                             _hd245211245889_
                             _tl245210245891_
                             ___splice254222254223_
                             _target245213245894_
                             _tl245215245896_)
                      (letrec ((_loop245216245899_
                                (lambda (_hd245214245902_ _args245220245904_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245214245902_))
                                      (let ((_e245217245907_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245214245902_))))
                                        (let ((_lp-tl245219245912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245217245907_)))
                                              (_lp-hd245218245910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245217245907_))))
                                          (let ((__tmp255585
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245218245910_
                                                         _args245220245904_))))
                                            (declare (not safe))
                                            (_loop245216245899_
                                             _lp-tl245219245912_
                                             __tmp255585))))
                                      (let ((_args245221245915_
                                             (reverse _args245220245904_)))
                                        (let ((_L245918_ _args245221245915_)
                                              (_L245919_ _hd245211245889_)
                                              (_L245920_ _hd245202245865_)
                                              (_L245921_ _hd245193245841_)
                                              (_L245922_ _hd245184245817_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245922_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245921_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L245920_
                                                      _self245111_)))
                                              (___kont254220254221_
                                               _L245918_
                                               _L245919_
                                               _L245920_
                                               _L245921_
                                               _L245922_)
                                              (___kont254232254233_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245216245899_ _target245213245894_ '())))))
                   (___match254387254388_
                    (lambda (_e245176245790_
                             _hd245175245793_
                             _tl245174245795_
                             _e245179245798_
                             _hd245178245801_
                             _tl245177245803_
                             _e245182245806_
                             _hd245181245809_
                             _tl245180245811_
                             _e245185245814_
                             _hd245184245817_
                             _tl245183245819_
                             _e245188245822_
                             _hd245187245825_
                             _tl245186245827_
                             _e245191245830_
                             _hd245190245833_
                             _tl245189245835_
                             _e245194245838_
                             _hd245193245841_
                             _tl245192245843_
                             _e245197245846_
                             _hd245196245849_
                             _tl245195245851_
                             _e245200245854_
                             _hd245199245857_
                             _tl245198245859_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd245199245857_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245198245859_))
                              (let ((_e245203245862_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245198245859_))))
                                (let ((_tl245201245867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245203245862_)))
                                      (_hd245202245865_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245203245862_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245201245867_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245195245851_))
                                          (let ((_e245206245870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245195245851_))))
                                            (let ((_tl245204245875_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245206245870_)))
                                                  (_hd245205245873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245206245870_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245205245873_))
                                                  (let ((_e245209245878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245205245873_))))
                                                    (let ((_tl245207245883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245209245878_)))
                                                          (_hd245208245881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245209245878_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd245208245881_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd245208245881_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245207245883_))
                          (let ((_e245212245886_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245207245883_))))
                            (let ((_tl245210245891_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245212245886_)))
                                  (_hd245211245889_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245212245886_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245210245891_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245204245875_))
                                      (let ((___splice254222254223_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245204245875_
                                                '0))))
                                        (let ((_tl245215245896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254222254223_
                                                  '1)))
                                              (_target245213245894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254222254223_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245215245896_))
                                              (___match254429254430_
                                               _e245176245790_
                                               _hd245175245793_
                                               _tl245174245795_
                                               _e245179245798_
                                               _hd245178245801_
                                               _tl245177245803_
                                               _e245182245806_
                                               _hd245181245809_
                                               _tl245180245811_
                                               _e245185245814_
                                               _hd245184245817_
                                               _tl245183245819_
                                               _e245188245822_
                                               _hd245187245825_
                                               _tl245186245827_
                                               _e245191245830_
                                               _hd245190245833_
                                               _tl245189245835_
                                               _e245194245838_
                                               _hd245193245841_
                                               _tl245192245843_
                                               _e245197245846_
                                               _hd245196245849_
                                               _tl245195245851_
                                               _e245200245854_
                                               _hd245199245857_
                                               _tl245198245859_
                                               _e245203245862_
                                               _hd245202245865_
                                               _tl245201245867_
                                               _e245206245870_
                                               _hd245205245873_
                                               _tl245204245875_
                                               _e245209245878_
                                               _hd245208245881_
                                               _tl245207245883_
                                               _e245212245886_
                                               _hd245211245889_
                                               _tl245210245891_
                                               ___splice254222254223_
                                               _target245213245894_
                                               _tl245215245896_)
                                              (___kont254232254233_))))
                                      (___kont254232254233_))
                                  (___kont254232254233_))))
                          (___kont254232254233_))
                      (___kont254232254233_))
                  (___kont254232254233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254232254233_))))
                                          (___match254711254712_
                                           _e245176245790_
                                           _hd245175245793_
                                           _tl245174245795_
                                           _e245179245798_
                                           _hd245178245801_
                                           _tl245177245803_
                                           _e245182245806_
                                           _hd245181245809_
                                           _tl245180245811_
                                           _e245185245814_
                                           _hd245184245817_
                                           _tl245183245819_
                                           _e245188245822_
                                           _hd245187245825_
                                           _tl245186245827_
                                           _e245191245830_
                                           _hd245190245833_
                                           _tl245189245835_
                                           _e245194245838_
                                           _hd245193245841_
                                           _tl245192245843_
                                           _e245197245846_
                                           _hd245196245849_
                                           _tl245195245851_))
                                      (___match254711254712_
                                       _e245176245790_
                                       _hd245175245793_
                                       _tl245174245795_
                                       _e245179245798_
                                       _hd245178245801_
                                       _tl245177245803_
                                       _e245182245806_
                                       _hd245181245809_
                                       _tl245180245811_
                                       _e245185245814_
                                       _hd245184245817_
                                       _tl245183245819_
                                       _e245188245822_
                                       _hd245187245825_
                                       _tl245186245827_
                                       _e245191245830_
                                       _hd245190245833_
                                       _tl245189245835_
                                       _e245194245838_
                                       _hd245193245841_
                                       _tl245192245843_
                                       _e245197245846_
                                       _hd245196245849_
                                       _tl245195245851_))))
                              (___match254711254712_
                               _e245176245790_
                               _hd245175245793_
                               _tl245174245795_
                               _e245179245798_
                               _hd245178245801_
                               _tl245177245803_
                               _e245182245806_
                               _hd245181245809_
                               _tl245180245811_
                               _e245185245814_
                               _hd245184245817_
                               _tl245183245819_
                               _e245188245822_
                               _hd245187245825_
                               _tl245186245827_
                               _e245191245830_
                               _hd245190245833_
                               _tl245189245835_
                               _e245194245838_
                               _hd245193245841_
                               _tl245192245843_
                               _e245197245846_
                               _hd245196245849_
                               _tl245195245851_))
                          (___match254497254498_
                           _e245176245790_
                           _hd245175245793_
                           _tl245174245795_
                           _e245179245798_
                           _hd245178245801_
                           _tl245177245803_
                           _e245182245806_
                           _hd245181245809_
                           _tl245180245811_
                           _e245185245814_
                           _hd245184245817_
                           _tl245183245819_
                           _e245188245822_
                           _hd245187245825_
                           _tl245186245827_
                           _e245191245830_
                           _hd245190245833_
                           _tl245189245835_
                           _e245194245838_
                           _hd245193245841_
                           _tl245192245843_
                           _e245197245846_
                           _hd245196245849_
                           _tl245195245851_
                           _e245200245854_
                           _hd245199245857_
                           _tl245198245859_))))
                   (___match254319254320_
                    (lambda (_e245132245979_
                             _hd245131245982_
                             _tl245130245984_
                             _e245135245987_
                             _hd245134245990_
                             _tl245133245992_
                             _e245138245995_
                             _hd245137245998_
                             _tl245136246000_
                             _e245141246003_
                             _hd245140246006_
                             _tl245139246008_
                             _e245144246011_
                             _hd245143246014_
                             _tl245142246016_
                             _e245147246019_
                             _hd245146246022_
                             _tl245145246024_
                             _e245150246027_
                             _hd245149246030_
                             _tl245148246032_
                             _e245153246035_
                             _hd245152246038_
                             _tl245151246040_
                             _e245156246043_
                             _hd245155246046_
                             _tl245154246048_
                             _e245159246051_
                             _hd245158246054_
                             _tl245157246056_
                             ___splice254218254219_
                             _target245160246059_
                             _tl245162246061_)
                      (letrec ((_loop245163246064_
                                (lambda (_hd245161246067_ _args245167246069_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245161246067_))
                                      (let ((_e245164246072_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245161246067_))))
                                        (let ((_lp-tl245166246077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245164246072_)))
                                              (_lp-hd245165246075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245164246072_))))
                                          (let ((__tmp255586
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245165246075_
                                                         _args245167246069_))))
                                            (declare (not safe))
                                            (_loop245163246064_
                                             _lp-tl245166246077_
                                             __tmp255586))))
                                      (let ((_args245168246080_
                                             (reverse _args245167246069_)))
                                        (let ((_L246083_ _args245168246080_)
                                              (_L246084_ _hd245158246054_)
                                              (_L246085_ _hd245149246030_)
                                              (_L246086_ _hd245140246006_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246086_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246085_
                                                      _self245111_)))
                                              (___kont254216254217_
                                               _L246083_
                                               _L246084_
                                               _L246085_
                                               _L246086_)
                                              (___match254507254508_
                                               _e245132245979_
                                               _hd245131245982_
                                               _tl245130245984_
                                               _e245135245987_
                                               _hd245134245990_
                                               _tl245133245992_
                                               _e245138245995_
                                               _hd245137245998_
                                               _tl245136246000_
                                               _e245141246003_
                                               _hd245140246006_
                                               _tl245139246008_
                                               _e245144246011_
                                               _hd245143246014_
                                               _tl245142246016_
                                               _e245147246019_
                                               _hd245146246022_
                                               _tl245145246024_
                                               _e245150246027_
                                               _hd245149246030_
                                               _tl245148246032_
                                               _e245153246035_
                                               _hd245152246038_
                                               _tl245151246040_
                                               _e245156246043_
                                               _hd245155246046_
                                               _tl245154246048_
                                               _e245159246051_
                                               _hd245158246054_
                                               _tl245157246056_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245163246064_ _target245160246059_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx254214254215_))
                  (let ((_e245132245979_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx254214254215_))))
                    (let ((_tl245130245984_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245132245979_)))
                          (_hd245131245982_
                           (let ()
                             (declare (not safe))
                             (##car _e245132245979_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245130245984_))
                          (let ((_e245135245987_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245130245984_))))
                            (let ((_tl245133245992_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245135245987_)))
                                  (_hd245134245990_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245135245987_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd245134245990_))
                                  (let ((_e245138245995_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd245134245990_))))
                                    (let ((_tl245136246000_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245138245995_)))
                                          (_hd245137245998_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245138245995_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd245137245998_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd245137245998_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl245136246000_))
                                                  (let ((_e245141246003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl245136246000_))))
                                                    (let ((_tl245139246008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245141246003_)))
                                                          (_hd245140246006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245141246003_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl245139246008_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl245133245992_))
                      (let ((_e245144246011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl245133245992_))))
                        (let ((_tl245142246016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245144246011_)))
                              (_hd245143246014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245144246011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd245143246014_))
                              (let ((_e245147246019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd245143246014_))))
                                (let ((_tl245145246024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245147246019_)))
                                      (_hd245146246022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245147246019_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd245146246022_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd245146246022_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl245145246024_))
                                              (let ((_e245150246027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl245145246024_))))
                                                (let ((_tl245148246032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245150246027_)))
                                                      (_hd245149246030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245150246027_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl245148246032_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl245142246016_))
                                                          (let ((_e245153246035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl245142246016_))))
                    (let ((_tl245151246040_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245153246035_)))
                          (_hd245152246038_
                           (let ()
                             (declare (not safe))
                             (##car _e245153246035_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd245152246038_))
                          (let ((_e245156246043_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd245152246038_))))
                            (let ((_tl245154246048_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245156246043_)))
                                  (_hd245155246046_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245156246043_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd245155246046_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd245155246046_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245154246048_))
                                          (let ((_e245159246051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245154246048_))))
                                            (let ((_tl245157246056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245159246051_)))
                                                  (_hd245158246054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245159246051_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl245157246056_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl245151246040_))
                                                      (let ((___splice254218254219_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl245151246040_ '0))))
                (let ((_tl245162246061_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254218254219_ '1)))
                      (_target245160246059_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254218254219_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl245162246061_))
                      (___match254319254320_
                       _e245132245979_
                       _hd245131245982_
                       _tl245130245984_
                       _e245135245987_
                       _hd245134245990_
                       _tl245133245992_
                       _e245138245995_
                       _hd245137245998_
                       _tl245136246000_
                       _e245141246003_
                       _hd245140246006_
                       _tl245139246008_
                       _e245144246011_
                       _hd245143246014_
                       _tl245142246016_
                       _e245147246019_
                       _hd245146246022_
                       _tl245145246024_
                       _e245150246027_
                       _hd245149246030_
                       _tl245148246032_
                       _e245153246035_
                       _hd245152246038_
                       _tl245151246040_
                       _e245156246043_
                       _hd245155246046_
                       _tl245154246048_
                       _e245159246051_
                       _hd245158246054_
                       _tl245157246056_
                       ___splice254218254219_
                       _target245160246059_
                       _tl245162246061_)
                      (___match254507254508_
                       _e245132245979_
                       _hd245131245982_
                       _tl245130245984_
                       _e245135245987_
                       _hd245134245990_
                       _tl245133245992_
                       _e245138245995_
                       _hd245137245998_
                       _tl245136246000_
                       _e245141246003_
                       _hd245140246006_
                       _tl245139246008_
                       _e245144246011_
                       _hd245143246014_
                       _tl245142246016_
                       _e245147246019_
                       _hd245146246022_
                       _tl245145246024_
                       _e245150246027_
                       _hd245149246030_
                       _tl245148246032_
                       _e245153246035_
                       _hd245152246038_
                       _tl245151246040_
                       _e245156246043_
                       _hd245155246046_
                       _tl245154246048_
                       _e245159246051_
                       _hd245158246054_
                       _tl245157246056_))))
              (___match254507254508_
               _e245132245979_
               _hd245131245982_
               _tl245130245984_
               _e245135245987_
               _hd245134245990_
               _tl245133245992_
               _e245138245995_
               _hd245137245998_
               _tl245136246000_
               _e245141246003_
               _hd245140246006_
               _tl245139246008_
               _e245144246011_
               _hd245143246014_
               _tl245142246016_
               _e245147246019_
               _hd245146246022_
               _tl245145246024_
               _e245150246027_
               _hd245149246030_
               _tl245148246032_
               _e245153246035_
               _hd245152246038_
               _tl245151246040_
               _e245156246043_
               _hd245155246046_
               _tl245154246048_
               _e245159246051_
               _hd245158246054_
               _tl245157246056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match254711254712_
                                                   _e245132245979_
                                                   _hd245131245982_
                                                   _tl245130245984_
                                                   _e245135245987_
                                                   _hd245134245990_
                                                   _tl245133245992_
                                                   _e245138245995_
                                                   _hd245137245998_
                                                   _tl245136246000_
                                                   _e245141246003_
                                                   _hd245140246006_
                                                   _tl245139246008_
                                                   _e245144246011_
                                                   _hd245143246014_
                                                   _tl245142246016_
                                                   _e245147246019_
                                                   _hd245146246022_
                                                   _tl245145246024_
                                                   _e245150246027_
                                                   _hd245149246030_
                                                   _tl245148246032_
                                                   _e245153246035_
                                                   _hd245152246038_
                                                   _tl245151246040_))))
                                          (___match254711254712_
                                           _e245132245979_
                                           _hd245131245982_
                                           _tl245130245984_
                                           _e245135245987_
                                           _hd245134245990_
                                           _tl245133245992_
                                           _e245138245995_
                                           _hd245137245998_
                                           _tl245136246000_
                                           _e245141246003_
                                           _hd245140246006_
                                           _tl245139246008_
                                           _e245144246011_
                                           _hd245143246014_
                                           _tl245142246016_
                                           _e245147246019_
                                           _hd245146246022_
                                           _tl245145246024_
                                           _e245150246027_
                                           _hd245149246030_
                                           _tl245148246032_
                                           _e245153246035_
                                           _hd245152246038_
                                           _tl245151246040_))
                                      (___match254387254388_
                                       _e245132245979_
                                       _hd245131245982_
                                       _tl245130245984_
                                       _e245135245987_
                                       _hd245134245990_
                                       _tl245133245992_
                                       _e245138245995_
                                       _hd245137245998_
                                       _tl245136246000_
                                       _e245141246003_
                                       _hd245140246006_
                                       _tl245139246008_
                                       _e245144246011_
                                       _hd245143246014_
                                       _tl245142246016_
                                       _e245147246019_
                                       _hd245146246022_
                                       _tl245145246024_
                                       _e245150246027_
                                       _hd245149246030_
                                       _tl245148246032_
                                       _e245153246035_
                                       _hd245152246038_
                                       _tl245151246040_
                                       _e245156246043_
                                       _hd245155246046_
                                       _tl245154246048_))
                                  (___match254711254712_
                                   _e245132245979_
                                   _hd245131245982_
                                   _tl245130245984_
                                   _e245135245987_
                                   _hd245134245990_
                                   _tl245133245992_
                                   _e245138245995_
                                   _hd245137245998_
                                   _tl245136246000_
                                   _e245141246003_
                                   _hd245140246006_
                                   _tl245139246008_
                                   _e245144246011_
                                   _hd245143246014_
                                   _tl245142246016_
                                   _e245147246019_
                                   _hd245146246022_
                                   _tl245145246024_
                                   _e245150246027_
                                   _hd245149246030_
                                   _tl245148246032_
                                   _e245153246035_
                                   _hd245152246038_
                                   _tl245151246040_))))
                          (___match254711254712_
                           _e245132245979_
                           _hd245131245982_
                           _tl245130245984_
                           _e245135245987_
                           _hd245134245990_
                           _tl245133245992_
                           _e245138245995_
                           _hd245137245998_
                           _tl245136246000_
                           _e245141246003_
                           _hd245140246006_
                           _tl245139246008_
                           _e245144246011_
                           _hd245143246014_
                           _tl245142246016_
                           _e245147246019_
                           _hd245146246022_
                           _tl245145246024_
                           _e245150246027_
                           _hd245149246030_
                           _tl245148246032_
                           _e245153246035_
                           _hd245152246038_
                           _tl245151246040_))))
                  (___match254649254650_
                   _e245132245979_
                   _hd245131245982_
                   _tl245130245984_
                   _e245135245987_
                   _hd245134245990_
                   _tl245133245992_
                   _e245138245995_
                   _hd245137245998_
                   _tl245136246000_
                   _e245141246003_
                   _hd245140246006_
                   _tl245139246008_
                   _e245144246011_
                   _hd245143246014_
                   _tl245142246016_
                   _e245147246019_
                   _hd245146246022_
                   _tl245145246024_
                   _e245150246027_
                   _hd245149246030_
                   _tl245148246032_))
              (___kont254232254233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont254232254233_))
                                          (___kont254232254233_))
                                      (___kont254232254233_))))
                              (___kont254232254233_))))
                      (___kont254232254233_))
                  (___kont254232254233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254232254233_))
                                              (___kont254232254233_))
                                          (___kont254232254233_))))
                                  (___kont254232254233_))))
                          (___kont254232254233_))))
                  (___kont254232254233_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx244056_
               _self244057_
               _$t244058_
               _methods244059_
               _slots244060_
               _class-check244061_
               _struct-check244062_
               _struct-assert244063_)
        (letrec ((_force-e244065_
                  (lambda (_what245108_)
                    (let ((__tmp255587
                           (let ((__tmp255591
                                  (let ((__tmp255592
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp255592)))
                                 (__tmp255588
                                  (let ((__tmp255589
                                         (let ((__tmp255590
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what245108_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255590))))
                                    (declare (not safe))
                                    (cons __tmp255589 '()))))
                             (declare (not safe))
                             (cons __tmp255591 __tmp255588))))
                      (declare (not safe))
                      (cons '%#call __tmp255587)))))
          (let* ((___stx254716254717_ _stx244056_)
                 (_g244073244295_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254716254717_)))))
            (let ((___kont254718254719_
                   (lambda (_L245054_ _L245055_ _L245056_ _L245057_)
                     (let ((_$method245102_
                            (let ((__tmp255593
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245055_))))
                              (declare (not safe))
                              (table-ref _methods244059_ __tmp255593)))
                           (_args245103_
                            (map (lambda (_g245090245092_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245090245092_
                                      _self244057_
                                      _$t244058_
                                      _methods244059_
                                      _slots244060_
                                      _class-check244061_
                                      _struct-check244062_
                                      _struct-assert244063_)))
                                 (let ((__tmp255594
                                        (lambda (_g245094245097_
                                                 _g245095245099_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245094245097_
                                                  _g245095245099_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255594 '() _L245054_)))))
                       (let ((__tmp255595
                              (let ((__tmp255596
                                     (let ((__tmp255600
                                            (let ()
                                              (declare (not safe))
                                              (_force-e244065_
                                               _$method245102_)))
                                           (__tmp255597
                                            (let ((__tmp255598
                                                   (let ((__tmp255599
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self244057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255599))))
                                              (declare (not safe))
                                              (cons __tmp255598
                                                    _args245103_))))
                                       (declare (not safe))
                                       (cons __tmp255600 __tmp255597))))
                                (declare (not safe))
                                (cons '%#call __tmp255596))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255595 _stx244056_)))))
                  (___kont254722254723_
                   (lambda (_L244886_ _L244887_ _L244888_ _L244889_ _L244890_)
                     (let ((_$method244942_
                            (let ((__tmp255601
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244887_))))
                              (declare (not safe))
                              (table-ref _methods244059_ __tmp255601)))
                           (_args244943_
                            (map (lambda (_g244930244932_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g244930244932_
                                      _self244057_
                                      _$t244058_
                                      _methods244059_
                                      _slots244060_
                                      _class-check244061_
                                      _struct-check244062_
                                      _struct-assert244063_)))
                                 (let ((__tmp255602
                                        (lambda (_g244934244937_
                                                 _g244935244939_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244934244937_
                                                  _g244935244939_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255602 '() _L244886_)))))
                       (let ((__tmp255603
                              (let ((__tmp255604
                                     (let ((__tmp255610
                                            (let ((__tmp255611
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255611)))
                                           (__tmp255605
                                            (let ((__tmp255609
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e244065_
                                                      _$method244942_)))
                                                  (__tmp255606
                                                   (let ((__tmp255607
                                                          (let ((__tmp255608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244057_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255607
                                                           _args244943_))))
                                              (declare (not safe))
                                              (cons __tmp255609 __tmp255606))))
                                       (declare (not safe))
                                       (cons __tmp255610 __tmp255605))))
                                (declare (not safe))
                                (cons '%#call __tmp255604))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255603 _stx244056_)))))
                  (___kont254726254727_
                   (lambda (_L244717_ _L244718_ _L244719_)
                     (let* ((_$field244751_
                             (let ((__tmp255612
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L244717_))))
                               (declare (not safe))
                               (table-ref _slots244060_ __tmp255612)))
                            (__tmp255613
                             (let ((__tmp255614
                                    (let ((__tmp255621
                                           (let ((__tmp255622
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t244058_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255622)))
                                          (__tmp255615
                                           (let ((__tmp255619
                                                  (let ((__tmp255620
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field244751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255620)))
                                                 (__tmp255616
                                                  (let ((__tmp255617
                                                         (let ((__tmp255618
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self244057_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255617 '()))))
                                             (declare (not safe))
                                             (cons __tmp255619 __tmp255616))))
                                      (declare (not safe))
                                      (cons __tmp255621 __tmp255615))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp255614))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255613 _stx244056_))))
                  (___kont254728254729_
                   (lambda (_L244591_ _L244592_ _L244593_ _L244594_)
                     (let ((_$field244629_
                            (let ((__tmp255623
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244592_))))
                              (declare (not safe))
                              (table-ref _slots244060_ __tmp255623)))
                           (_expr244630_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L244591_
                               _self244057_
                               _$t244058_
                               _methods244059_
                               _slots244060_
                               _class-check244061_
                               _struct-check244062_
                               _struct-assert244063_))))
                       (let ((__tmp255624
                              (let ((__tmp255625
                                     (let ((__tmp255633
                                            (let ((__tmp255634
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244058_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255634)))
                                           (__tmp255626
                                            (let ((__tmp255631
                                                   (let ((__tmp255632
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255632)))
                                                  (__tmp255627
                                                   (let ((__tmp255629
                                                          (let ((__tmp255630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244057_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255630)))
                 (__tmp255628
                  (let () (declare (not safe)) (cons _expr244630_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255629
                                                           __tmp255628))))
                                              (declare (not safe))
                                              (cons __tmp255631 __tmp255627))))
                                       (declare (not safe))
                                       (cons __tmp255633 __tmp255626))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255625))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255624 _stx244056_)))))
                  (___kont254730254731_
                   (lambda (_L244470_ _L244471_)
                     (let* ((_slot244493_
                             (##structure-ref
                              (let ((__tmp255635
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244471_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255635))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field244495_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244060_ _slot244493_))))
                       (let ((__tmp255636
                              (let ((__tmp255637
                                     (let ((__tmp255644
                                            (let ((__tmp255645
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244058_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255645)))
                                           (__tmp255638
                                            (let ((__tmp255642
                                                   (let ((__tmp255643
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255643)))
                                                  (__tmp255639
                                                   (let ((__tmp255640
                                                          (let ((__tmp255641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244057_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255640 '()))))
                                              (declare (not safe))
                                              (cons __tmp255642 __tmp255639))))
                                       (declare (not safe))
                                       (cons __tmp255644 __tmp255638))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp255637))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255636 _stx244056_)))))
                  (___kont254732254733_
                   (lambda (_L244371_ _L244372_ _L244373_)
                     (let* ((_slot244402_
                             (##structure-ref
                              (let ((__tmp255646
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244373_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255646))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field244404_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244060_ _slot244402_)))
                            (_expr244406_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L244371_
                                _self244057_
                                _$t244058_
                                _methods244059_
                                _slots244060_
                                _class-check244061_
                                _struct-check244062_
                                _struct-assert244063_))))
                       (let ((__tmp255647
                              (let ((__tmp255648
                                     (let ((__tmp255656
                                            (let ((__tmp255657
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244058_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255657)))
                                           (__tmp255649
                                            (let ((__tmp255654
                                                   (let ((__tmp255655
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255655)))
                                                  (__tmp255650
                                                   (let ((__tmp255652
                                                          (let ((__tmp255653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244057_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255653)))
                 (__tmp255651
                  (let () (declare (not safe)) (cons _expr244406_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255652
                                                           __tmp255651))))
                                              (declare (not safe))
                                              (cons __tmp255654 __tmp255650))))
                                       (declare (not safe))
                                       (cons __tmp255656 __tmp255649))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255648))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255647 _stx244056_)))))
                  (___kont254734254735_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx244056_
                        _self244057_
                        _$t244058_
                        _methods244059_
                        _slots244060_
                        _class-check244061_
                        _struct-check244062_
                        _struct-assert244063_)))))
              (let* ((___match255215255216_
                      (lambda (_e244269244307_
                               _hd244268244310_
                               _tl244267244312_
                               _e244272244315_
                               _hd244271244318_
                               _tl244270244320_
                               _e244275244323_
                               _hd244274244326_
                               _tl244273244328_
                               _e244278244331_
                               _hd244277244334_
                               _tl244276244336_
                               _e244281244339_
                               _hd244280244342_
                               _tl244279244344_
                               _e244284244347_
                               _hd244283244350_
                               _tl244282244352_
                               _e244287244355_
                               _hd244286244358_
                               _tl244285244360_
                               _e244290244363_
                               _hd244289244366_
                               _tl244288244368_)
                        (let ((_L244371_ _hd244289244366_)
                              (_L244372_ _hd244286244358_)
                              (_L244373_ _hd244277244334_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244372_
                                      _self244057_))
                                   (let ((__tmp255658
                                          (let ((__tmp255659
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244373_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255659))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255658
                                      'gxc#!mutator::t)))
                              (___kont254732254733_
                               _L244371_
                               _L244372_
                               _L244373_)
                              (___kont254734254735_)))))
                     (___match255213255214_
                      (lambda (_e244269244307_
                               _hd244268244310_
                               _tl244267244312_
                               _e244272244315_
                               _hd244271244318_
                               _tl244270244320_
                               _e244275244323_
                               _hd244274244326_
                               _tl244273244328_
                               _e244278244331_
                               _hd244277244334_
                               _tl244276244336_
                               _e244281244339_
                               _hd244280244342_
                               _tl244279244344_
                               _e244284244347_
                               _hd244283244350_
                               _tl244282244352_
                               _e244287244355_
                               _hd244286244358_
                               _tl244285244360_
                               _e244290244363_
                               _hd244289244366_
                               _tl244288244368_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244288244368_))
                            (___match255215255216_
                             _e244269244307_
                             _hd244268244310_
                             _tl244267244312_
                             _e244272244315_
                             _hd244271244318_
                             _tl244270244320_
                             _e244275244323_
                             _hd244274244326_
                             _tl244273244328_
                             _e244278244331_
                             _hd244277244334_
                             _tl244276244336_
                             _e244281244339_
                             _hd244280244342_
                             _tl244279244344_
                             _e244284244347_
                             _hd244283244350_
                             _tl244282244352_
                             _e244287244355_
                             _hd244286244358_
                             _tl244285244360_
                             _e244290244363_
                             _hd244289244366_
                             _tl244288244368_)
                            (___kont254734254735_))))
                     (___match255207255208_
                      (lambda (_e244269244307_
                               _hd244268244310_
                               _tl244267244312_
                               _e244272244315_
                               _hd244271244318_
                               _tl244270244320_
                               _e244275244323_
                               _hd244274244326_
                               _tl244273244328_
                               _e244278244331_
                               _hd244277244334_
                               _tl244276244336_
                               _e244281244339_
                               _hd244280244342_
                               _tl244279244344_
                               _e244284244347_
                               _hd244283244350_
                               _tl244282244352_
                               _e244287244355_
                               _hd244286244358_
                               _tl244285244360_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244279244344_))
                            (let ((_e244290244363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244279244344_))))
                              (let ((_tl244288244368_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244290244363_)))
                                    (_hd244289244366_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244290244363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244288244368_))
                                    (___match255215255216_
                                     _e244269244307_
                                     _hd244268244310_
                                     _tl244267244312_
                                     _e244272244315_
                                     _hd244271244318_
                                     _tl244270244320_
                                     _e244275244323_
                                     _hd244274244326_
                                     _tl244273244328_
                                     _e244278244331_
                                     _hd244277244334_
                                     _tl244276244336_
                                     _e244281244339_
                                     _hd244280244342_
                                     _tl244279244344_
                                     _e244284244347_
                                     _hd244283244350_
                                     _tl244282244352_
                                     _e244287244355_
                                     _hd244286244358_
                                     _tl244285244360_
                                     _e244290244363_
                                     _hd244289244366_
                                     _tl244288244368_)
                                    (___kont254734254735_))))
                            (___kont254734254735_))))
                     (___match255153255154_
                      (lambda (_e244245244414_
                               _hd244244244417_
                               _tl244243244419_
                               _e244248244422_
                               _hd244247244425_
                               _tl244246244427_
                               _e244251244430_
                               _hd244250244433_
                               _tl244249244435_
                               _e244254244438_
                               _hd244253244441_
                               _tl244252244443_
                               _e244257244446_
                               _hd244256244449_
                               _tl244255244451_
                               _e244260244454_
                               _hd244259244457_
                               _tl244258244459_
                               _e244263244462_
                               _hd244262244465_
                               _tl244261244467_)
                        (let ((_L244470_ _hd244262244465_)
                              (_L244471_ _hd244253244441_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244470_
                                      _self244057_))
                                   (let ((__tmp255660
                                          (let ((__tmp255661
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244471_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255661))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255660
                                      'gxc#!accessor::t)))
                              (___kont254730254731_ _L244470_ _L244471_)
                              (___kont254734254735_)))))
                     (___match255151255152_
                      (lambda (_e244245244414_
                               _hd244244244417_
                               _tl244243244419_
                               _e244248244422_
                               _hd244247244425_
                               _tl244246244427_
                               _e244251244430_
                               _hd244250244433_
                               _tl244249244435_
                               _e244254244438_
                               _hd244253244441_
                               _tl244252244443_
                               _e244257244446_
                               _hd244256244449_
                               _tl244255244451_
                               _e244260244454_
                               _hd244259244457_
                               _tl244258244459_
                               _e244263244462_
                               _hd244262244465_
                               _tl244261244467_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244255244451_))
                            (___match255153255154_
                             _e244245244414_
                             _hd244244244417_
                             _tl244243244419_
                             _e244248244422_
                             _hd244247244425_
                             _tl244246244427_
                             _e244251244430_
                             _hd244250244433_
                             _tl244249244435_
                             _e244254244438_
                             _hd244253244441_
                             _tl244252244443_
                             _e244257244446_
                             _hd244256244449_
                             _tl244255244451_
                             _e244260244454_
                             _hd244259244457_
                             _tl244258244459_
                             _e244263244462_
                             _hd244262244465_
                             _tl244261244467_)
                            (___match255207255208_
                             _e244245244414_
                             _hd244244244417_
                             _tl244243244419_
                             _e244248244422_
                             _hd244247244425_
                             _tl244246244427_
                             _e244251244430_
                             _hd244250244433_
                             _tl244249244435_
                             _e244254244438_
                             _hd244253244441_
                             _tl244252244443_
                             _e244257244446_
                             _hd244256244449_
                             _tl244255244451_
                             _e244260244454_
                             _hd244259244457_
                             _tl244258244459_
                             _e244263244462_
                             _hd244262244465_
                             _tl244261244467_))))
                     (___match255097255098_
                      (lambda (_e244210244503_
                               _hd244209244506_
                               _tl244208244508_
                               _e244213244511_
                               _hd244212244514_
                               _tl244211244516_
                               _e244216244519_
                               _hd244215244522_
                               _tl244214244524_
                               _e244219244527_
                               _hd244218244530_
                               _tl244217244532_
                               _e244222244535_
                               _hd244221244538_
                               _tl244220244540_
                               _e244225244543_
                               _hd244224244546_
                               _tl244223244548_
                               _e244228244551_
                               _hd244227244554_
                               _tl244226244556_
                               _e244231244559_
                               _hd244230244562_
                               _tl244229244564_
                               _e244234244567_
                               _hd244233244570_
                               _tl244232244572_
                               _e244237244575_
                               _hd244236244578_
                               _tl244235244580_
                               _e244240244583_
                               _hd244239244586_
                               _tl244238244588_)
                        (let ((_L244591_ _hd244239244586_)
                              (_L244592_ _hd244236244578_)
                              (_L244593_ _hd244227244554_)
                              (_L244594_ _hd244218244530_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244594_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244594_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244593_
                                      _self244057_)))
                              (___kont254728254729_
                               _L244591_
                               _L244592_
                               _L244593_
                               _L244594_)
                              (___kont254734254735_)))))
                     (___match255089255090_
                      (lambda (_e244210244503_
                               _hd244209244506_
                               _tl244208244508_
                               _e244213244511_
                               _hd244212244514_
                               _tl244211244516_
                               _e244216244519_
                               _hd244215244522_
                               _tl244214244524_
                               _e244219244527_
                               _hd244218244530_
                               _tl244217244532_
                               _e244222244535_
                               _hd244221244538_
                               _tl244220244540_
                               _e244225244543_
                               _hd244224244546_
                               _tl244223244548_
                               _e244228244551_
                               _hd244227244554_
                               _tl244226244556_
                               _e244231244559_
                               _hd244230244562_
                               _tl244229244564_
                               _e244234244567_
                               _hd244233244570_
                               _tl244232244572_
                               _e244237244575_
                               _hd244236244578_
                               _tl244235244580_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244229244564_))
                            (let ((_e244240244583_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244229244564_))))
                              (let ((_tl244238244588_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244240244583_)))
                                    (_hd244239244586_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244240244583_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244238244588_))
                                    (___match255097255098_
                                     _e244210244503_
                                     _hd244209244506_
                                     _tl244208244508_
                                     _e244213244511_
                                     _hd244212244514_
                                     _tl244211244516_
                                     _e244216244519_
                                     _hd244215244522_
                                     _tl244214244524_
                                     _e244219244527_
                                     _hd244218244530_
                                     _tl244217244532_
                                     _e244222244535_
                                     _hd244221244538_
                                     _tl244220244540_
                                     _e244225244543_
                                     _hd244224244546_
                                     _tl244223244548_
                                     _e244228244551_
                                     _hd244227244554_
                                     _tl244226244556_
                                     _e244231244559_
                                     _hd244230244562_
                                     _tl244229244564_
                                     _e244234244567_
                                     _hd244233244570_
                                     _tl244232244572_
                                     _e244237244575_
                                     _hd244236244578_
                                     _tl244235244580_
                                     _e244240244583_
                                     _hd244239244586_
                                     _tl244238244588_)
                                    (___kont254734254735_))))
                            (___match255213255214_
                             _e244210244503_
                             _hd244209244506_
                             _tl244208244508_
                             _e244213244511_
                             _hd244212244514_
                             _tl244211244516_
                             _e244216244519_
                             _hd244215244522_
                             _tl244214244524_
                             _e244219244527_
                             _hd244218244530_
                             _tl244217244532_
                             _e244222244535_
                             _hd244221244538_
                             _tl244220244540_
                             _e244225244543_
                             _hd244224244546_
                             _tl244223244548_
                             _e244228244551_
                             _hd244227244554_
                             _tl244226244556_
                             _e244231244559_
                             _hd244230244562_
                             _tl244229244564_))))
                     (___match255011255012_
                      (lambda (_e244176244637_
                               _hd244175244640_
                               _tl244174244642_
                               _e244179244645_
                               _hd244178244648_
                               _tl244177244650_
                               _e244182244653_
                               _hd244181244656_
                               _tl244180244658_
                               _e244185244661_
                               _hd244184244664_
                               _tl244183244666_
                               _e244188244669_
                               _hd244187244672_
                               _tl244186244674_
                               _e244191244677_
                               _hd244190244680_
                               _tl244189244682_
                               _e244194244685_
                               _hd244193244688_
                               _tl244192244690_
                               _e244197244693_
                               _hd244196244696_
                               _tl244195244698_
                               _e244200244701_
                               _hd244199244704_
                               _tl244198244706_
                               _e244203244709_
                               _hd244202244712_
                               _tl244201244714_)
                        (let ((_L244717_ _hd244202244712_)
                              (_L244718_ _hd244193244688_)
                              (_L244719_ _hd244184244664_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244719_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244719_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244718_
                                      _self244057_)))
                              (___kont254726254727_
                               _L244717_
                               _L244718_
                               _L244719_)
                              (___match255215255216_
                               _e244176244637_
                               _hd244175244640_
                               _tl244174244642_
                               _e244179244645_
                               _hd244178244648_
                               _tl244177244650_
                               _e244182244653_
                               _hd244181244656_
                               _tl244180244658_
                               _e244185244661_
                               _hd244184244664_
                               _tl244183244666_
                               _e244188244669_
                               _hd244187244672_
                               _tl244186244674_
                               _e244191244677_
                               _hd244190244680_
                               _tl244189244682_
                               _e244194244685_
                               _hd244193244688_
                               _tl244192244690_
                               _e244197244693_
                               _hd244196244696_
                               _tl244195244698_)))))
                     (___match255009255010_
                      (lambda (_e244176244637_
                               _hd244175244640_
                               _tl244174244642_
                               _e244179244645_
                               _hd244178244648_
                               _tl244177244650_
                               _e244182244653_
                               _hd244181244656_
                               _tl244180244658_
                               _e244185244661_
                               _hd244184244664_
                               _tl244183244666_
                               _e244188244669_
                               _hd244187244672_
                               _tl244186244674_
                               _e244191244677_
                               _hd244190244680_
                               _tl244189244682_
                               _e244194244685_
                               _hd244193244688_
                               _tl244192244690_
                               _e244197244693_
                               _hd244196244696_
                               _tl244195244698_
                               _e244200244701_
                               _hd244199244704_
                               _tl244198244706_
                               _e244203244709_
                               _hd244202244712_
                               _tl244201244714_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244195244698_))
                            (___match255011255012_
                             _e244176244637_
                             _hd244175244640_
                             _tl244174244642_
                             _e244179244645_
                             _hd244178244648_
                             _tl244177244650_
                             _e244182244653_
                             _hd244181244656_
                             _tl244180244658_
                             _e244185244661_
                             _hd244184244664_
                             _tl244183244666_
                             _e244188244669_
                             _hd244187244672_
                             _tl244186244674_
                             _e244191244677_
                             _hd244190244680_
                             _tl244189244682_
                             _e244194244685_
                             _hd244193244688_
                             _tl244192244690_
                             _e244197244693_
                             _hd244196244696_
                             _tl244195244698_
                             _e244200244701_
                             _hd244199244704_
                             _tl244198244706_
                             _e244203244709_
                             _hd244202244712_
                             _tl244201244714_)
                            (___match255089255090_
                             _e244176244637_
                             _hd244175244640_
                             _tl244174244642_
                             _e244179244645_
                             _hd244178244648_
                             _tl244177244650_
                             _e244182244653_
                             _hd244181244656_
                             _tl244180244658_
                             _e244185244661_
                             _hd244184244664_
                             _tl244183244666_
                             _e244188244669_
                             _hd244187244672_
                             _tl244186244674_
                             _e244191244677_
                             _hd244190244680_
                             _tl244189244682_
                             _e244194244685_
                             _hd244193244688_
                             _tl244192244690_
                             _e244197244693_
                             _hd244196244696_
                             _tl244195244698_
                             _e244200244701_
                             _hd244199244704_
                             _tl244198244706_
                             _e244203244709_
                             _hd244202244712_
                             _tl244201244714_))))
                     (___match254999255000_
                      (lambda (_e244176244637_
                               _hd244175244640_
                               _tl244174244642_
                               _e244179244645_
                               _hd244178244648_
                               _tl244177244650_
                               _e244182244653_
                               _hd244181244656_
                               _tl244180244658_
                               _e244185244661_
                               _hd244184244664_
                               _tl244183244666_
                               _e244188244669_
                               _hd244187244672_
                               _tl244186244674_
                               _e244191244677_
                               _hd244190244680_
                               _tl244189244682_
                               _e244194244685_
                               _hd244193244688_
                               _tl244192244690_
                               _e244197244693_
                               _hd244196244696_
                               _tl244195244698_
                               _e244200244701_
                               _hd244199244704_
                               _tl244198244706_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd244199244704_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244198244706_))
                                (let ((_e244203244709_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244198244706_))))
                                  (let ((_tl244201244714_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244203244709_)))
                                        (_hd244202244712_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244203244709_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244201244714_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244195244698_))
                                            (___match255011255012_
                                             _e244176244637_
                                             _hd244175244640_
                                             _tl244174244642_
                                             _e244179244645_
                                             _hd244178244648_
                                             _tl244177244650_
                                             _e244182244653_
                                             _hd244181244656_
                                             _tl244180244658_
                                             _e244185244661_
                                             _hd244184244664_
                                             _tl244183244666_
                                             _e244188244669_
                                             _hd244187244672_
                                             _tl244186244674_
                                             _e244191244677_
                                             _hd244190244680_
                                             _tl244189244682_
                                             _e244194244685_
                                             _hd244193244688_
                                             _tl244192244690_
                                             _e244197244693_
                                             _hd244196244696_
                                             _tl244195244698_
                                             _e244200244701_
                                             _hd244199244704_
                                             _tl244198244706_
                                             _e244203244709_
                                             _hd244202244712_
                                             _tl244201244714_)
                                            (___match255089255090_
                                             _e244176244637_
                                             _hd244175244640_
                                             _tl244174244642_
                                             _e244179244645_
                                             _hd244178244648_
                                             _tl244177244650_
                                             _e244182244653_
                                             _hd244181244656_
                                             _tl244180244658_
                                             _e244185244661_
                                             _hd244184244664_
                                             _tl244183244666_
                                             _e244188244669_
                                             _hd244187244672_
                                             _tl244186244674_
                                             _e244191244677_
                                             _hd244190244680_
                                             _tl244189244682_
                                             _e244194244685_
                                             _hd244193244688_
                                             _tl244192244690_
                                             _e244197244693_
                                             _hd244196244696_
                                             _tl244195244698_
                                             _e244200244701_
                                             _hd244199244704_
                                             _tl244198244706_
                                             _e244203244709_
                                             _hd244202244712_
                                             _tl244201244714_))
                                        (___match255213255214_
                                         _e244176244637_
                                         _hd244175244640_
                                         _tl244174244642_
                                         _e244179244645_
                                         _hd244178244648_
                                         _tl244177244650_
                                         _e244182244653_
                                         _hd244181244656_
                                         _tl244180244658_
                                         _e244185244661_
                                         _hd244184244664_
                                         _tl244183244666_
                                         _e244188244669_
                                         _hd244187244672_
                                         _tl244186244674_
                                         _e244191244677_
                                         _hd244190244680_
                                         _tl244189244682_
                                         _e244194244685_
                                         _hd244193244688_
                                         _tl244192244690_
                                         _e244197244693_
                                         _hd244196244696_
                                         _tl244195244698_))))
                                (___match255213255214_
                                 _e244176244637_
                                 _hd244175244640_
                                 _tl244174244642_
                                 _e244179244645_
                                 _hd244178244648_
                                 _tl244177244650_
                                 _e244182244653_
                                 _hd244181244656_
                                 _tl244180244658_
                                 _e244185244661_
                                 _hd244184244664_
                                 _tl244183244666_
                                 _e244188244669_
                                 _hd244187244672_
                                 _tl244186244674_
                                 _e244191244677_
                                 _hd244190244680_
                                 _tl244189244682_
                                 _e244194244685_
                                 _hd244193244688_
                                 _tl244192244690_
                                 _e244197244693_
                                 _hd244196244696_
                                 _tl244195244698_))
                            (___match255213255214_
                             _e244176244637_
                             _hd244175244640_
                             _tl244174244642_
                             _e244179244645_
                             _hd244178244648_
                             _tl244177244650_
                             _e244182244653_
                             _hd244181244656_
                             _tl244180244658_
                             _e244185244661_
                             _hd244184244664_
                             _tl244183244666_
                             _e244188244669_
                             _hd244187244672_
                             _tl244186244674_
                             _e244191244677_
                             _hd244190244680_
                             _tl244189244682_
                             _e244194244685_
                             _hd244193244688_
                             _tl244192244690_
                             _e244197244693_
                             _hd244196244696_
                             _tl244195244698_))))
                     (___match254931254932_
                      (lambda (_e244125244758_
                               _hd244124244761_
                               _tl244123244763_
                               _e244128244766_
                               _hd244127244769_
                               _tl244126244771_
                               _e244131244774_
                               _hd244130244777_
                               _tl244129244779_
                               _e244134244782_
                               _hd244133244785_
                               _tl244132244787_
                               _e244137244790_
                               _hd244136244793_
                               _tl244135244795_
                               _e244140244798_
                               _hd244139244801_
                               _tl244138244803_
                               _e244143244806_
                               _hd244142244809_
                               _tl244141244811_
                               _e244146244814_
                               _hd244145244817_
                               _tl244144244819_
                               _e244149244822_
                               _hd244148244825_
                               _tl244147244827_
                               _e244152244830_
                               _hd244151244833_
                               _tl244150244835_
                               _e244155244838_
                               _hd244154244841_
                               _tl244153244843_
                               _e244158244846_
                               _hd244157244849_
                               _tl244156244851_
                               _e244161244854_
                               _hd244160244857_
                               _tl244159244859_
                               ___splice254724254725_
                               _target244162244862_
                               _tl244164244864_)
                        (letrec ((_loop244165244867_
                                  (lambda (_hd244163244870_ _args244169244872_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244163244870_))
                                        (let ((_e244166244875_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244163244870_))))
                                          (let ((_lp-tl244168244880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244166244875_)))
                                                (_lp-hd244167244878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244166244875_))))
                                            (let ((__tmp255662
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244167244878_
                                                           _args244169244872_))))
                                              (declare (not safe))
                                              (_loop244165244867_
                                               _lp-tl244168244880_
                                               __tmp255662))))
                                        (let ((_args244170244883_
                                               (reverse _args244169244872_)))
                                          (let ((_L244886_ _args244170244883_)
                                                (_L244887_ _hd244160244857_)
                                                (_L244888_ _hd244151244833_)
                                                (_L244889_ _hd244142244809_)
                                                (_L244890_ _hd244133244785_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244890_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244889_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L244888_
                                                        _self244057_)))
                                                (___kont254722254723_
                                                 _L244886_
                                                 _L244887_
                                                 _L244888_
                                                 _L244889_
                                                 _L244890_)
                                                (___kont254734254735_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244165244867_ _target244162244862_ '())))))
                     (___match254889254890_
                      (lambda (_e244125244758_
                               _hd244124244761_
                               _tl244123244763_
                               _e244128244766_
                               _hd244127244769_
                               _tl244126244771_
                               _e244131244774_
                               _hd244130244777_
                               _tl244129244779_
                               _e244134244782_
                               _hd244133244785_
                               _tl244132244787_
                               _e244137244790_
                               _hd244136244793_
                               _tl244135244795_
                               _e244140244798_
                               _hd244139244801_
                               _tl244138244803_
                               _e244143244806_
                               _hd244142244809_
                               _tl244141244811_
                               _e244146244814_
                               _hd244145244817_
                               _tl244144244819_
                               _e244149244822_
                               _hd244148244825_
                               _tl244147244827_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd244148244825_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244147244827_))
                                (let ((_e244152244830_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244147244827_))))
                                  (let ((_tl244150244835_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244152244830_)))
                                        (_hd244151244833_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244152244830_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244150244835_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244144244819_))
                                            (let ((_e244155244838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244144244819_))))
                                              (let ((_tl244153244843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244155244838_)))
                                                    (_hd244154244841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244155244838_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd244154244841_))
                                                    (let ((_e244158244846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd244154244841_))))
                                                      (let ((_tl244156244851_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244158244846_)))
                    (_hd244157244849_
                     (let () (declare (not safe)) (##car _e244158244846_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd244157244849_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd244157244849_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244156244851_))
                            (let ((_e244161244854_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244156244851_))))
                              (let ((_tl244159244859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244161244854_)))
                                    (_hd244160244857_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244161244854_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244159244859_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl244153244843_))
                                        (let ((___splice254724254725_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl244153244843_
                                                  '0))))
                                          (let ((_tl244164244864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254724254725_
                                                    '1)))
                                                (_target244162244862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254724254725_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244164244864_))
                                                (___match254931254932_
                                                 _e244125244758_
                                                 _hd244124244761_
                                                 _tl244123244763_
                                                 _e244128244766_
                                                 _hd244127244769_
                                                 _tl244126244771_
                                                 _e244131244774_
                                                 _hd244130244777_
                                                 _tl244129244779_
                                                 _e244134244782_
                                                 _hd244133244785_
                                                 _tl244132244787_
                                                 _e244137244790_
                                                 _hd244136244793_
                                                 _tl244135244795_
                                                 _e244140244798_
                                                 _hd244139244801_
                                                 _tl244138244803_
                                                 _e244143244806_
                                                 _hd244142244809_
                                                 _tl244141244811_
                                                 _e244146244814_
                                                 _hd244145244817_
                                                 _tl244144244819_
                                                 _e244149244822_
                                                 _hd244148244825_
                                                 _tl244147244827_
                                                 _e244152244830_
                                                 _hd244151244833_
                                                 _tl244150244835_
                                                 _e244155244838_
                                                 _hd244154244841_
                                                 _tl244153244843_
                                                 _e244158244846_
                                                 _hd244157244849_
                                                 _tl244156244851_
                                                 _e244161244854_
                                                 _hd244160244857_
                                                 _tl244159244859_
                                                 ___splice254724254725_
                                                 _target244162244862_
                                                 _tl244164244864_)
                                                (___kont254734254735_))))
                                        (___kont254734254735_))
                                    (___kont254734254735_))))
                            (___kont254734254735_))
                        (___kont254734254735_))
                    (___kont254734254735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254734254735_))))
                                            (___match255213255214_
                                             _e244125244758_
                                             _hd244124244761_
                                             _tl244123244763_
                                             _e244128244766_
                                             _hd244127244769_
                                             _tl244126244771_
                                             _e244131244774_
                                             _hd244130244777_
                                             _tl244129244779_
                                             _e244134244782_
                                             _hd244133244785_
                                             _tl244132244787_
                                             _e244137244790_
                                             _hd244136244793_
                                             _tl244135244795_
                                             _e244140244798_
                                             _hd244139244801_
                                             _tl244138244803_
                                             _e244143244806_
                                             _hd244142244809_
                                             _tl244141244811_
                                             _e244146244814_
                                             _hd244145244817_
                                             _tl244144244819_))
                                        (___match255213255214_
                                         _e244125244758_
                                         _hd244124244761_
                                         _tl244123244763_
                                         _e244128244766_
                                         _hd244127244769_
                                         _tl244126244771_
                                         _e244131244774_
                                         _hd244130244777_
                                         _tl244129244779_
                                         _e244134244782_
                                         _hd244133244785_
                                         _tl244132244787_
                                         _e244137244790_
                                         _hd244136244793_
                                         _tl244135244795_
                                         _e244140244798_
                                         _hd244139244801_
                                         _tl244138244803_
                                         _e244143244806_
                                         _hd244142244809_
                                         _tl244141244811_
                                         _e244146244814_
                                         _hd244145244817_
                                         _tl244144244819_))))
                                (___match255213255214_
                                 _e244125244758_
                                 _hd244124244761_
                                 _tl244123244763_
                                 _e244128244766_
                                 _hd244127244769_
                                 _tl244126244771_
                                 _e244131244774_
                                 _hd244130244777_
                                 _tl244129244779_
                                 _e244134244782_
                                 _hd244133244785_
                                 _tl244132244787_
                                 _e244137244790_
                                 _hd244136244793_
                                 _tl244135244795_
                                 _e244140244798_
                                 _hd244139244801_
                                 _tl244138244803_
                                 _e244143244806_
                                 _hd244142244809_
                                 _tl244141244811_
                                 _e244146244814_
                                 _hd244145244817_
                                 _tl244144244819_))
                            (___match254999255000_
                             _e244125244758_
                             _hd244124244761_
                             _tl244123244763_
                             _e244128244766_
                             _hd244127244769_
                             _tl244126244771_
                             _e244131244774_
                             _hd244130244777_
                             _tl244129244779_
                             _e244134244782_
                             _hd244133244785_
                             _tl244132244787_
                             _e244137244790_
                             _hd244136244793_
                             _tl244135244795_
                             _e244140244798_
                             _hd244139244801_
                             _tl244138244803_
                             _e244143244806_
                             _hd244142244809_
                             _tl244141244811_
                             _e244146244814_
                             _hd244145244817_
                             _tl244144244819_
                             _e244149244822_
                             _hd244148244825_
                             _tl244147244827_))))
                     (___match254821254822_
                      (lambda (_e244081244950_
                               _hd244080244953_
                               _tl244079244955_
                               _e244084244958_
                               _hd244083244961_
                               _tl244082244963_
                               _e244087244966_
                               _hd244086244969_
                               _tl244085244971_
                               _e244090244974_
                               _hd244089244977_
                               _tl244088244979_
                               _e244093244982_
                               _hd244092244985_
                               _tl244091244987_
                               _e244096244990_
                               _hd244095244993_
                               _tl244094244995_
                               _e244099244998_
                               _hd244098245001_
                               _tl244097245003_
                               _e244102245006_
                               _hd244101245009_
                               _tl244100245011_
                               _e244105245014_
                               _hd244104245017_
                               _tl244103245019_
                               _e244108245022_
                               _hd244107245025_
                               _tl244106245027_
                               ___splice254720254721_
                               _target244109245030_
                               _tl244111245032_)
                        (letrec ((_loop244112245035_
                                  (lambda (_hd244110245038_ _args244116245040_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244110245038_))
                                        (let ((_e244113245043_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244110245038_))))
                                          (let ((_lp-tl244115245048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244113245043_)))
                                                (_lp-hd244114245046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244113245043_))))
                                            (let ((__tmp255663
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244114245046_
                                                           _args244116245040_))))
                                              (declare (not safe))
                                              (_loop244112245035_
                                               _lp-tl244115245048_
                                               __tmp255663))))
                                        (let ((_args244117245051_
                                               (reverse _args244116245040_)))
                                          (let ((_L245054_ _args244117245051_)
                                                (_L245055_ _hd244107245025_)
                                                (_L245056_ _hd244098245001_)
                                                (_L245057_ _hd244089244977_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245057_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245056_
                                                        _self244057_)))
                                                (___kont254718254719_
                                                 _L245054_
                                                 _L245055_
                                                 _L245056_
                                                 _L245057_)
                                                (___match255009255010_
                                                 _e244081244950_
                                                 _hd244080244953_
                                                 _tl244079244955_
                                                 _e244084244958_
                                                 _hd244083244961_
                                                 _tl244082244963_
                                                 _e244087244966_
                                                 _hd244086244969_
                                                 _tl244085244971_
                                                 _e244090244974_
                                                 _hd244089244977_
                                                 _tl244088244979_
                                                 _e244093244982_
                                                 _hd244092244985_
                                                 _tl244091244987_
                                                 _e244096244990_
                                                 _hd244095244993_
                                                 _tl244094244995_
                                                 _e244099244998_
                                                 _hd244098245001_
                                                 _tl244097245003_
                                                 _e244102245006_
                                                 _hd244101245009_
                                                 _tl244100245011_
                                                 _e244105245014_
                                                 _hd244104245017_
                                                 _tl244103245019_
                                                 _e244108245022_
                                                 _hd244107245025_
                                                 _tl244106245027_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244112245035_ _target244109245030_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254716254717_))
                    (let ((_e244081244950_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254716254717_))))
                      (let ((_tl244079244955_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244081244950_)))
                            (_hd244080244953_
                             (let ()
                               (declare (not safe))
                               (##car _e244081244950_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244079244955_))
                            (let ((_e244084244958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244079244955_))))
                              (let ((_tl244082244963_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244084244958_)))
                                    (_hd244083244961_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244084244958_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244083244961_))
                                    (let ((_e244087244966_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244083244961_))))
                                      (let ((_tl244085244971_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244087244966_)))
                                            (_hd244086244969_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244087244966_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244086244969_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244086244969_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244085244971_))
                                                    (let ((_e244090244974_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244085244971_))))
                                                      (let ((_tl244088244979_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244090244974_)))
                    (_hd244089244977_
                     (let () (declare (not safe)) (##car _e244090244974_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244088244979_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244082244963_))
                        (let ((_e244093244982_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244082244963_))))
                          (let ((_tl244091244987_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244093244982_)))
                                (_hd244092244985_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244093244982_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244092244985_))
                                (let ((_e244096244990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244092244985_))))
                                  (let ((_tl244094244995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244096244990_)))
                                        (_hd244095244993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244096244990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd244095244993_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd244095244993_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244094244995_))
                                                (let ((_e244099244998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244094244995_))))
                                                  (let ((_tl244097245003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244099244998_)))
                                                        (_hd244098245001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244099244998_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244097245003_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244091244987_))
                                                            (let ((_e244102245006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244091244987_))))
                      (let ((_tl244100245011_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244102245006_)))
                            (_hd244101245009_
                             (let ()
                               (declare (not safe))
                               (##car _e244102245006_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd244101245009_))
                            (let ((_e244105245014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd244101245009_))))
                              (let ((_tl244103245019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244105245014_)))
                                    (_hd244104245017_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244105245014_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244104245017_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd244104245017_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244103245019_))
                                            (let ((_e244108245022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244103245019_))))
                                              (let ((_tl244106245027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244108245022_)))
                                                    (_hd244107245025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244108245022_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl244106245027_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl244100245011_))
                                                        (let ((___splice254720254721_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl244100245011_ '0))))
                  (let ((_tl244111245032_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254720254721_ '1)))
                        (_target244109245030_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254720254721_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244111245032_))
                        (___match254821254822_
                         _e244081244950_
                         _hd244080244953_
                         _tl244079244955_
                         _e244084244958_
                         _hd244083244961_
                         _tl244082244963_
                         _e244087244966_
                         _hd244086244969_
                         _tl244085244971_
                         _e244090244974_
                         _hd244089244977_
                         _tl244088244979_
                         _e244093244982_
                         _hd244092244985_
                         _tl244091244987_
                         _e244096244990_
                         _hd244095244993_
                         _tl244094244995_
                         _e244099244998_
                         _hd244098245001_
                         _tl244097245003_
                         _e244102245006_
                         _hd244101245009_
                         _tl244100245011_
                         _e244105245014_
                         _hd244104245017_
                         _tl244103245019_
                         _e244108245022_
                         _hd244107245025_
                         _tl244106245027_
                         ___splice254720254721_
                         _target244109245030_
                         _tl244111245032_)
                        (___match255009255010_
                         _e244081244950_
                         _hd244080244953_
                         _tl244079244955_
                         _e244084244958_
                         _hd244083244961_
                         _tl244082244963_
                         _e244087244966_
                         _hd244086244969_
                         _tl244085244971_
                         _e244090244974_
                         _hd244089244977_
                         _tl244088244979_
                         _e244093244982_
                         _hd244092244985_
                         _tl244091244987_
                         _e244096244990_
                         _hd244095244993_
                         _tl244094244995_
                         _e244099244998_
                         _hd244098245001_
                         _tl244097245003_
                         _e244102245006_
                         _hd244101245009_
                         _tl244100245011_
                         _e244105245014_
                         _hd244104245017_
                         _tl244103245019_
                         _e244108245022_
                         _hd244107245025_
                         _tl244106245027_))))
                (___match255009255010_
                 _e244081244950_
                 _hd244080244953_
                 _tl244079244955_
                 _e244084244958_
                 _hd244083244961_
                 _tl244082244963_
                 _e244087244966_
                 _hd244086244969_
                 _tl244085244971_
                 _e244090244974_
                 _hd244089244977_
                 _tl244088244979_
                 _e244093244982_
                 _hd244092244985_
                 _tl244091244987_
                 _e244096244990_
                 _hd244095244993_
                 _tl244094244995_
                 _e244099244998_
                 _hd244098245001_
                 _tl244097245003_
                 _e244102245006_
                 _hd244101245009_
                 _tl244100245011_
                 _e244105245014_
                 _hd244104245017_
                 _tl244103245019_
                 _e244108245022_
                 _hd244107245025_
                 _tl244106245027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match255213255214_
                                                     _e244081244950_
                                                     _hd244080244953_
                                                     _tl244079244955_
                                                     _e244084244958_
                                                     _hd244083244961_
                                                     _tl244082244963_
                                                     _e244087244966_
                                                     _hd244086244969_
                                                     _tl244085244971_
                                                     _e244090244974_
                                                     _hd244089244977_
                                                     _tl244088244979_
                                                     _e244093244982_
                                                     _hd244092244985_
                                                     _tl244091244987_
                                                     _e244096244990_
                                                     _hd244095244993_
                                                     _tl244094244995_
                                                     _e244099244998_
                                                     _hd244098245001_
                                                     _tl244097245003_
                                                     _e244102245006_
                                                     _hd244101245009_
                                                     _tl244100245011_))))
                                            (___match255213255214_
                                             _e244081244950_
                                             _hd244080244953_
                                             _tl244079244955_
                                             _e244084244958_
                                             _hd244083244961_
                                             _tl244082244963_
                                             _e244087244966_
                                             _hd244086244969_
                                             _tl244085244971_
                                             _e244090244974_
                                             _hd244089244977_
                                             _tl244088244979_
                                             _e244093244982_
                                             _hd244092244985_
                                             _tl244091244987_
                                             _e244096244990_
                                             _hd244095244993_
                                             _tl244094244995_
                                             _e244099244998_
                                             _hd244098245001_
                                             _tl244097245003_
                                             _e244102245006_
                                             _hd244101245009_
                                             _tl244100245011_))
                                        (___match254889254890_
                                         _e244081244950_
                                         _hd244080244953_
                                         _tl244079244955_
                                         _e244084244958_
                                         _hd244083244961_
                                         _tl244082244963_
                                         _e244087244966_
                                         _hd244086244969_
                                         _tl244085244971_
                                         _e244090244974_
                                         _hd244089244977_
                                         _tl244088244979_
                                         _e244093244982_
                                         _hd244092244985_
                                         _tl244091244987_
                                         _e244096244990_
                                         _hd244095244993_
                                         _tl244094244995_
                                         _e244099244998_
                                         _hd244098245001_
                                         _tl244097245003_
                                         _e244102245006_
                                         _hd244101245009_
                                         _tl244100245011_
                                         _e244105245014_
                                         _hd244104245017_
                                         _tl244103245019_))
                                    (___match255213255214_
                                     _e244081244950_
                                     _hd244080244953_
                                     _tl244079244955_
                                     _e244084244958_
                                     _hd244083244961_
                                     _tl244082244963_
                                     _e244087244966_
                                     _hd244086244969_
                                     _tl244085244971_
                                     _e244090244974_
                                     _hd244089244977_
                                     _tl244088244979_
                                     _e244093244982_
                                     _hd244092244985_
                                     _tl244091244987_
                                     _e244096244990_
                                     _hd244095244993_
                                     _tl244094244995_
                                     _e244099244998_
                                     _hd244098245001_
                                     _tl244097245003_
                                     _e244102245006_
                                     _hd244101245009_
                                     _tl244100245011_))))
                            (___match255213255214_
                             _e244081244950_
                             _hd244080244953_
                             _tl244079244955_
                             _e244084244958_
                             _hd244083244961_
                             _tl244082244963_
                             _e244087244966_
                             _hd244086244969_
                             _tl244085244971_
                             _e244090244974_
                             _hd244089244977_
                             _tl244088244979_
                             _e244093244982_
                             _hd244092244985_
                             _tl244091244987_
                             _e244096244990_
                             _hd244095244993_
                             _tl244094244995_
                             _e244099244998_
                             _hd244098245001_
                             _tl244097245003_
                             _e244102245006_
                             _hd244101245009_
                             _tl244100245011_))))
                    (___match255151255152_
                     _e244081244950_
                     _hd244080244953_
                     _tl244079244955_
                     _e244084244958_
                     _hd244083244961_
                     _tl244082244963_
                     _e244087244966_
                     _hd244086244969_
                     _tl244085244971_
                     _e244090244974_
                     _hd244089244977_
                     _tl244088244979_
                     _e244093244982_
                     _hd244092244985_
                     _tl244091244987_
                     _e244096244990_
                     _hd244095244993_
                     _tl244094244995_
                     _e244099244998_
                     _hd244098245001_
                     _tl244097245003_))
                (___kont254734254735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont254734254735_))
                                            (___kont254734254735_))
                                        (___kont254734254735_))))
                                (___kont254734254735_))))
                        (___kont254734254735_))
                    (___kont254734254735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254734254735_))
                                                (___kont254734254735_))
                                            (___kont254734254735_))))
                                    (___kont254734254735_))))
                            (___kont254734254735_))))
                    (___kont254734254735_))))))))))
