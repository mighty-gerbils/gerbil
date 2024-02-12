(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707742544)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl249519_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255215 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl249519_ __tmp255215))
           (let ()
             (declare (not safe))
             (table-set! _tbl249519_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249519_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249519_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249519_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl249519_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx249502_ . _args249504_)
        (let ((__tmp255217
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249504_)
                     (gxc#compile-e__0 _stx249502_)
                     (let ((_arg1249509_ (car _args249504_))
                           (_rest249511_ (cdr _args249504_)))
                       (if (null? _rest249511_)
                           (gxc#compile-e__1 _stx249502_ _arg1249509_)
                           (let ((_arg2249514_ (car _rest249511_))
                                 (_rest249516_ (cdr _rest249511_)))
                             (if (null? _rest249516_)
                                 (gxc#compile-e__2
                                  _stx249502_
                                  _arg1249509_
                                  _arg2249514_)
                                 (apply gxc#compile-e
                                        _stx249502_
                                        _arg1249509_
                                        _arg2249514_
                                        _rest249516_))))))))
              (__tmp255216 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp255217
           gxc#current-compile-methods
           __tmp255216))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249499_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255218 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl249499_ __tmp255218))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249499_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249499_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl249499_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx249482_ . _args249484_)
        (let ((__tmp255220
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249484_)
                     (gxc#compile-e__0 _stx249482_)
                     (let ((_arg1249489_ (car _args249484_))
                           (_rest249491_ (cdr _args249484_)))
                       (if (null? _rest249491_)
                           (gxc#compile-e__1 _stx249482_ _arg1249489_)
                           (let ((_arg2249494_ (car _rest249491_))
                                 (_rest249496_ (cdr _rest249491_)))
                             (if (null? _rest249496_)
                                 (gxc#compile-e__2
                                  _stx249482_
                                  _arg1249489_
                                  _arg2249494_)
                                 (apply gxc#compile-e
                                        _stx249482_
                                        _arg1249489_
                                        _arg2249494_
                                        _rest249496_))))))))
              (__tmp255219 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255220
           gxc#current-compile-methods
           __tmp255219))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249479_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255221 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl249479_ __tmp255221))
           (let ()
             (declare (not safe))
             (table-set! _tbl249479_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249479_ '%#call gxc#subst-object-refs-call%))
           _tbl249479_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx249462_ . _args249464_)
        (let ((__tmp255223
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249464_)
                     (gxc#compile-e__0 _stx249462_)
                     (let ((_arg1249469_ (car _args249464_))
                           (_rest249471_ (cdr _args249464_)))
                       (if (null? _rest249471_)
                           (gxc#compile-e__1 _stx249462_ _arg1249469_)
                           (let ((_arg2249474_ (car _rest249471_))
                                 (_rest249476_ (cdr _rest249471_)))
                             (if (null? _rest249476_)
                                 (gxc#compile-e__2
                                  _stx249462_
                                  _arg1249469_
                                  _arg2249474_)
                                 (apply gxc#compile-e
                                        _stx249462_
                                        _arg1249469_
                                        _arg2249474_
                                        _rest249476_))))))))
              (__tmp255222 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255223
           gxc#current-compile-methods
           __tmp255222))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx246132_)
        (letrec ((_generate-method-bind246134_
                  (lambda (_$t249456_ _id249457_ _$id249458_)
                    (let ((_$tmp249460_
                           (let ((__tmp255224 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255224))))
                      (let ((__tmp255269
                             (let ()
                               (declare (not safe))
                               (cons _$id249458_ '())))
                            (__tmp255225
                             (let ((__tmp255226
                                    (let ((__tmp255227
                                           (let ((__tmp255267
                                                  (let ((__tmp255268
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255268)))
                                                 (__tmp255228
                                                  (let ((__tmp255229
                                                         (let ((__tmp255230
                                                                (let ((__tmp255231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255232
                                      (let ((__tmp255233
                                             (let ((__tmp255253
                                                    (let ((__tmp255254
                                                           (let ((__tmp255266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp249460_ '())))
                         (__tmp255255
                          (let ((__tmp255256
                                 (let ((__tmp255257
                                        (let ((__tmp255264
                                               (let ((__tmp255265
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp255265)))
                                              (__tmp255258
                                               (let ((__tmp255262
                                                      (let ((__tmp255263
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t249456_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp255263)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255259
                                                      (let ((__tmp255260
                                                             (let ((__tmp255261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id249457_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp255261))))
                (declare (not safe))
                (cons __tmp255260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp255262
                                                       __tmp255259))))
                                          (declare (not safe))
                                          (cons __tmp255264 __tmp255258))))
                                   (declare (not safe))
                                   (cons '%#call __tmp255257))))
                            (declare (not safe))
                            (cons __tmp255256 '()))))
                     (declare (not safe))
                     (cons __tmp255266 __tmp255255))))
              (declare (not safe))
              (cons __tmp255254 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255234
                                                    (let ((__tmp255235
                                                           (let ((__tmp255236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255251
                                 (let ((__tmp255252
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp249460_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp255252)))
                                (__tmp255237
                                 (let ((__tmp255249
                                        (let ((__tmp255250
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp249460_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp255250)))
                                       (__tmp255238
                                        (let ((__tmp255239
                                               (let ((__tmp255240
                                                      (let ((__tmp255247
                                                             (let ((__tmp255248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp255248)))
                    (__tmp255241
                     (let ((__tmp255245
                            (let ((__tmp255246
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp255246)))
                           (__tmp255242
                            (let ((__tmp255243
                                   (let ((__tmp255244
                                          (let ()
                                            (declare (not safe))
                                            (cons _id249457_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp255244))))
                              (declare (not safe))
                              (cons __tmp255243 '()))))
                       (declare (not safe))
                       (cons __tmp255245 __tmp255242))))
                (declare (not safe))
                (cons __tmp255247 __tmp255241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp255240))))
                                          (declare (not safe))
                                          (cons __tmp255239 '()))))
                                   (declare (not safe))
                                   (cons __tmp255249 __tmp255238))))
                            (declare (not safe))
                            (cons __tmp255251 __tmp255237))))
                     (declare (not safe))
                     (cons '%#if __tmp255236))))
              (declare (not safe))
              (cons __tmp255235 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255253
                                                     __tmp255234))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp255233))))
                                 (declare (not safe))
                                 (cons __tmp255232 '()))))
                          (declare (not safe))
                          (cons '() __tmp255231))))
                   (declare (not safe))
                   (cons '%#lambda __tmp255230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255229 '()))))
                                             (declare (not safe))
                                             (cons __tmp255267 __tmp255228))))
                                      (declare (not safe))
                                      (cons '%#call __tmp255227))))
                               (declare (not safe))
                               (cons __tmp255226 '()))))
                        (declare (not safe))
                        (cons __tmp255269 __tmp255225)))))
                 (_generate-slot-bind246135_
                  (lambda (_$t249450_ _id249451_ _$id249452_)
                    (let ((_$tmp249454_
                           (let ((__tmp255270 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255270))))
                      (let ((__tmp255307
                             (let ()
                               (declare (not safe))
                               (cons _$id249452_ '())))
                            (__tmp255271
                             (let ((__tmp255272
                                    (let ((__tmp255273
                                           (let ((__tmp255293
                                                  (let ((__tmp255294
                                                         (let ((__tmp255306
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp249454_ '())))
                       (__tmp255295
                        (let ((__tmp255296
                               (let ((__tmp255297
                                      (let ((__tmp255304
                                             (let ((__tmp255305
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp255305)))
                                            (__tmp255298
                                             (let ((__tmp255302
                                                    (let ((__tmp255303
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t249450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp255303)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255299
                                                    (let ((__tmp255300
                                                           (let ((__tmp255301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id249451_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp255301))))
              (declare (not safe))
              (cons __tmp255300 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255302
                                                     __tmp255299))))
                                        (declare (not safe))
                                        (cons __tmp255304 __tmp255298))))
                                 (declare (not safe))
                                 (cons '%#call __tmp255297))))
                          (declare (not safe))
                          (cons __tmp255296 '()))))
                   (declare (not safe))
                   (cons __tmp255306 __tmp255295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255294 '())))
                                                 (__tmp255274
                                                  (let ((__tmp255275
                                                         (let ((__tmp255276
                                                                (let ((__tmp255291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255292
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp249454_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255292)))
                              (__tmp255277
                               (let ((__tmp255289
                                      (let ((__tmp255290
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp249454_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp255290)))
                                     (__tmp255278
                                      (let ((__tmp255279
                                             (let ((__tmp255280
                                                    (let ((__tmp255287
                                                           (let ((__tmp255288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp255288)))
                  (__tmp255281
                   (let ((__tmp255285
                          (let ((__tmp255286
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp255286)))
                         (__tmp255282
                          (let ((__tmp255283
                                 (let ((__tmp255284
                                        (let ()
                                          (declare (not safe))
                                          (cons _id249451_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp255284))))
                            (declare (not safe))
                            (cons __tmp255283 '()))))
                     (declare (not safe))
                     (cons __tmp255285 __tmp255282))))
              (declare (not safe))
              (cons __tmp255287 __tmp255281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp255280))))
                                        (declare (not safe))
                                        (cons __tmp255279 '()))))
                                 (declare (not safe))
                                 (cons __tmp255289 __tmp255278))))
                          (declare (not safe))
                          (cons __tmp255291 __tmp255277))))
                   (declare (not safe))
                   (cons '%#if __tmp255276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255275 '()))))
                                             (declare (not safe))
                                             (cons __tmp255293 __tmp255274))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp255273))))
                               (declare (not safe))
                               (cons __tmp255272 '()))))
                        (declare (not safe))
                        (cons __tmp255307 __tmp255271)))))
                 (_generate-class-check-bind246136_
                  (lambda (_$t249446_ _class-type249447_ _$class-type249448_)
                    (let ((__tmp255319
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249448_ '())))
                          (__tmp255308
                           (let ((__tmp255309
                                  (let ((__tmp255310
                                         (let ((__tmp255317
                                                (let ((__tmp255318
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255318)))
                                               (__tmp255311
                                                (let ((__tmp255315
                                                       (let ((__tmp255316
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249446_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255316)))
              (__tmp255312
               (let ((__tmp255313
                      (let ((__tmp255314
                             (let ()
                               (declare (not safe))
                               (cons _class-type249447_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255314))))
                 (declare (not safe))
                 (cons __tmp255313 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255315
                                                        __tmp255312))))
                                           (declare (not safe))
                                           (cons __tmp255317 __tmp255311))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255310))))
                             (declare (not safe))
                             (cons __tmp255309 '()))))
                      (declare (not safe))
                      (cons __tmp255319 __tmp255308))))
                 (_generate-struct-check-bind246137_
                  (lambda (_$t249442_ _class-type249443_ _$class-type249444_)
                    (let ((__tmp255331
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249444_ '())))
                          (__tmp255320
                           (let ((__tmp255321
                                  (let ((__tmp255322
                                         (let ((__tmp255329
                                                (let ((__tmp255330
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255330)))
                                               (__tmp255323
                                                (let ((__tmp255327
                                                       (let ((__tmp255328
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249442_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255328)))
              (__tmp255324
               (let ((__tmp255325
                      (let ((__tmp255326
                             (let ()
                               (declare (not safe))
                               (cons _class-type249443_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255326))))
                 (declare (not safe))
                 (cons __tmp255325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255327
                                                        __tmp255324))))
                                           (declare (not safe))
                                           (cons __tmp255329 __tmp255323))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255322))))
                             (declare (not safe))
                             (cons __tmp255321 '()))))
                      (declare (not safe))
                      (cons __tmp255331 __tmp255320))))
                 (_generate-specializer-impl246138_
                  (lambda (_$t249391_
                           _methods-bind249392_
                           _slots-bind249393_
                           _class-check-bind249394_
                           _struct-check-bind249395_
                           _specializer-impl249396_
                           _lifted-specializer-id249397_
                           _unchecked-specializer-impl249398_)
                    (let ((__tmp255332
                           (let ((__tmp255333
                                  (let ((__tmp255359
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t249391_ '())))
                                        (__tmp255334
                                         (let ((__tmp255335
                                                (let ((__tmp255336
                                                       (let ((__tmp255356
                                                              (let ((__tmp255357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255358
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind249395_
                                              _class-check-bind249394_))))
                               (declare (not safe))
                               (foldr1 cons __tmp255358 _slots-bind249393_))))
                        (declare (not safe))
                        (foldr1 cons __tmp255357 _methods-bind249392_)))
                     (__tmp255337
                      (let ((__tmp255338
                             (if (or _lifted-specializer-id249397_
                                     _unchecked-specializer-impl249398_)
                                 (let* ((_$specializer249403_
                                         (let ((__tmp255339
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp255339)))
                                        (__tmp255340
                                         (let ((__tmp255352
                                                (let ((__tmp255353
                                                       (let ((__tmp255355
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249403_ '())))
                     (__tmp255354
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl249396_ '()))))
                 (declare (not safe))
                 (cons __tmp255355 __tmp255354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255353 '())))
                                               (__tmp255341
                                                (let ((__tmp255342
                                                       (let _recur249405_ ((_rest249407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind249395_)))
                 (let* ((_rest249408249416_ _rest249407_)
                        (_else249410249424_
                         (lambda ()
                           (if _lifted-specializer-id249397_
                               (let ((__tmp255343
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id249397_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255343))
                               _unchecked-specializer-impl249398_)))
                        (_K249412249430_
                         (lambda (_rest249427_ _checkq249428_)
                           (let ((__tmp255344
                                  (let ((__tmp255350
                                         (let ((__tmp255351
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq249428_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255351)))
                                        (__tmp255345
                                         (let ((__tmp255349
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur249405_
                                                   _rest249427_)))
                                               (__tmp255346
                                                (let ((__tmp255347
                                                       (let ((__tmp255348
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249403_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255347 '()))))
                                           (declare (not safe))
                                           (cons __tmp255349 __tmp255346))))
                                    (declare (not safe))
                                    (cons __tmp255350 __tmp255345))))
                             (declare (not safe))
                             (cons '%#if __tmp255344)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest249408249416_))
                       (let ((_hd249413249433_
                              (let ()
                                (declare (not safe))
                                (##car _rest249408249416_)))
                             (_tl249414249435_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest249408249416_))))
                         (let* ((_checkq249438_ _hd249413249433_)
                                (_rest249440_ _tl249414249435_))
                           (declare (not safe))
                           (_K249412249430_ _rest249440_ _checkq249438_)))
                       (let () (declare (not safe)) (_else249410249424_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255342 '()))))
                                           (declare (not safe))
                                           (cons __tmp255352 __tmp255341))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp255340))
                                 _specializer-impl249396_)))
                        (declare (not safe))
                        (cons __tmp255338 '()))))
                 (declare (not safe))
                 (cons __tmp255356 __tmp255337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp255336))))
                                           (declare (not safe))
                                           (cons __tmp255335 '()))))
                                    (declare (not safe))
                                    (cons __tmp255359 __tmp255334))))
                             (declare (not safe))
                             (cons '%#lambda __tmp255333))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255332 _stx246132_))))
                 (_generate-specializer-def246139_
                  (lambda (_id249385_
                           _specializer-id249386_
                           _specializer-impl249387_
                           _lifted-specializer-id249388_
                           _unchecked-specializer-impl249389_)
                    (let ((__tmp255360
                           (let ((__tmp255361
                                  (let ((__tmp255362
                                         (let ((__tmp255382
                                                (let ((__tmp255383
                                                       (let ((__tmp255384
                                                              (let ((__tmp255386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id249386_ '())))
                            (__tmp255385
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl249387_ '()))))
                        (declare (not safe))
                        (cons __tmp255386 __tmp255385))))
                 (declare (not safe))
                 (cons '%#define-values __tmp255384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255383
                                                   _stx246132_)))
                                               (__tmp255363
                                                (let ((__tmp255370
                                                       (let ((__tmp255371
                                                              (let ((__tmp255372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255373
                                    (let ((__tmp255380
                                           (let ((__tmp255381
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255381)))
                                          (__tmp255374
                                           (let ((__tmp255378
                                                  (let ((__tmp255379
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id249385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255379)))
                                                 (__tmp255375
                                                  (let ((__tmp255376
                                                         (let ((__tmp255377
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id249386_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255376 '()))))
                                             (declare (not safe))
                                             (cons __tmp255378 __tmp255375))))
                                      (declare (not safe))
                                      (cons __tmp255380 __tmp255374))))
                               (declare (not safe))
                               (cons '%#call __tmp255373))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp255372 _stx246132_))))
                 (declare (not safe))
                 (cons __tmp255371 '())))
              (__tmp255364
               (if _lifted-specializer-id249388_
                   (let ((__tmp255365
                          (let ((__tmp255366
                                 (let ((__tmp255367
                                        (let ((__tmp255369
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id249388_
                                                       '())))
                                              (__tmp255368
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl249389_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp255369 __tmp255368))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp255367))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp255366 _stx246132_))))
                     (declare (not safe))
                     (cons __tmp255365 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp255370
                                                          __tmp255364))))
                                           (declare (not safe))
                                           (cons __tmp255382 __tmp255363))))
                                    (declare (not safe))
                                    (cons _stx246132_ __tmp255362))))
                             (declare (not safe))
                             (cons '%#begin __tmp255361))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255360 _stx246132_)))))
          (let* ((___stx254176254177_ _stx246132_)
                 (_g246142246162_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254176254177_)))))
            (let ((___kont254178254179_
                   (lambda (_L246206_ _L246207_)
                     (let ((_method-calls246226_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs246227_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check246228_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check246229_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert246230_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty246231_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?246233_
                                 (lambda ()
                                   (if (let ((__tmp255391
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246226_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255391))
                                       (if (let ((__tmp255390
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246227_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255390))
                                           (if (let ((__tmp255389
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check246228_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp255389))
                                               (if (let ((__tmp255388
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check246229_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255388))
                                                   (let ((__tmp255387
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert246230_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255387))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?246234_
                                 (lambda ()
                                   (let ((_$e249378_
                                          (let ((__tmp255392
                                                 (let ((__tmp255393
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check246229_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp255393))))
                                            (declare (not safe))
                                            (not __tmp255392))))
                                     (if _$e249378_
                                         _$e249378_
                                         (let ((__tmp255394
                                                (let ((__tmp255395
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert246230_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp255395))))
                                           (declare (not safe))
                                           (not __tmp255394))))))
                                (_lift-unchecked-specializer?246235_
                                 (lambda ()
                                   (if (let ((__tmp255398
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246226_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255398))
                                       (if (let ((__tmp255397
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246227_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255397))
                                           (let ((__tmp255396
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check246228_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255396))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L246206_))
                             (let* ((___stx254090254091_ _L246206_)
                                    (_g246748246766_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx254090254091_)))))
                               (let ((___kont254092254093_
                                      (lambda (_L246802_ _L246803_ _L246804_)
                                        (for-each
                                         (lambda (_g246819246821_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g246819246821_
                                              _L246804_
                                              _method-calls246226_
                                              _slot-refs246227_
                                              _class-type-check246228_
                                              _struct-type-check246229_
                                              _struct-type-assert246230_)))
                                         _L246802_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?246233_))
                                            _stx246132_
                                            (let* ((_specializer-id246830_
                                                    (let* ((_id246824_
                                                            (let ((__tmp255548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L246207_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp255548 '"::specialize")))
                   (_specializer-id246827_
                    (let ((__tmp255549
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx246132_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id246824_ __tmp255549))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id246827_))
              _specializer-id246827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id246837_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?246235_))
                                                        (let* ((_id246832_
                                                                (let ((__tmp255550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L246207_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp255550
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id246834_
                        (let ((__tmp255551
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx246132_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id246832_ __tmp255551))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id246834_))
                  _lifted-specializer-id246834_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t246839_
                                                    (let ((__tmp255552
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255552)))
                                                   (_methods246841_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls246226_)))
                                                   (_$methods246845_
                                                    (map (lambda (_id246843_)
                                                           (let ((__tmp255553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246843_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255553)))
                 _methods246841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255554_
                                                    (for-each
                                                     (lambda (_g246846246849_
                                                              _g246847246851_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls246226_
                                                          _g246846246849_
                                                          _g246847246851_)))
                                                     _methods246841_
                                                     _$methods246845_))
                                                   (_methods-bind246862_
                                                    (map (lambda (_g246854246857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246855246859_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind246134_
                      _$t246839_
                      _g246854246857_
                      _g246855246859_)))
                 _methods246841_
                 _$methods246845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots246864_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs246227_)))
                                                   (_$slots246868_
                                                    (map (lambda (_id246866_)
                                                           (let ((__tmp255555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246866_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255555)))
                 _slots246864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255556_
                                                    (for-each
                                                     (lambda (_g246869246872_
                                                              _g246870246874_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs246227_
                                                          _g246869246872_
                                                          _g246870246874_)))
                                                     _slots246864_
                                                     _$slots246868_))
                                                   (_slots-bind246885_
                                                    (map (lambda (_g246877246880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246878246882_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind246135_
                      _$t246839_
                      _g246877246880_
                      _g246878246882_)))
                 _slots246864_
                 _$slots246868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check246887_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check246228_)))
                                                   (_$class-check246890_
                                                    (map (lambda (_g255557_)
                                                           (let ((__tmp255558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255558)))
                 _class-check246887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255559_
                                                    (for-each
                                                     (lambda (_g246891246894_
                                                              _g246892246896_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check246228_
                                                          _g246891246894_
                                                          _g246892246896_)))
                                                     _class-check246887_
                                                     _$class-check246890_))
                                                   (_class-check-bind246907_
                                                    (map (lambda (_g246899246902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246900246904_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind246136_
                      _$t246839_
                      _g246899246902_
                      _g246900246904_)))
                 _class-check246887_
                 _$class-check246890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all246909_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check246229_
                                                       _struct-type-assert246230_)))
                                                   (_struct-check246911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all246909_)))
                                                   (_$struct-check246914_
                                                    (map (lambda (_g255560_)
                                                           (let ((__tmp255561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255561)))
                 _struct-check246911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255562_
                                                    (for-each
                                                     (lambda (_g246915246918_
                                                              _g246916246920_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all246909_
                                                          _g246915246918_
                                                          _g246916246920_)))
                                                     _struct-check246911_
                                                     _$struct-check246914_))
                                                   (_struct-check-bind246931_
                                                    (map (lambda (_g246923246926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246924246928_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind246137_
                      _$t246839_
                      _g246923246926_
                      _g246924246928_)))
                 _struct-check246911_
                 _$struct-check246914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl246942_
                                                    (lambda (_struct-type-check1246933_
                                                             _struct-type-check2246934_)
                                                      (let* ((_specializer-body246940_
                                                              (map (lambda (_g246935246937_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g246935246937_
                                _L246804_
                                _$t246839_
                                _method-calls246226_
                                _slot-refs246227_
                                _class-type-check246228_
                                _struct-type-check1246933_
                                _struct-type-check2246934_)))
                           _L246802_))
                     (__tmp255563
                      (let ((__tmp255564
                             (let ((__tmp255565
                                    (let ()
                                      (declare (not safe))
                                      (cons _L246804_ _L246803_))))
                               (declare (not safe))
                               (cons __tmp255565 _specializer-body246940_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp255564))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp255563 _stx246132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl246944_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl246942_
                                                       _struct-check-all246909_
                                                       _empty246231_)))
                                                   (_unchecked-specializer-impl246946_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?246234_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl246942_
                                                           _empty246231_
                                                           _struct-check-all246909_))
                                                        '#f))
                                                   (_specializer-impl246948_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl246138_
                                                       _$t246839_
                                                       _methods-bind246862_
                                                       _slots-bind246885_
                                                       _class-check-bind246907_
                                                       _struct-check-bind246931_
                                                       _specializer-impl246944_
                                                       _lifted-specializer-id246837_
                                                       _unchecked-specializer-impl246946_))))
                                              (let ((__tmp255567
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L246207_)))
                                                    (__tmp255566
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id246830_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp255567
                                                 '" => "
                                                 __tmp255566))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def246139_
                                                 _L246207_
                                                 _specializer-id246830_
                                                 _specializer-impl246948_
                                                 _lifted-specializer-id246837_
                                                 _unchecked-specializer-impl246946_))))))
                                     (___kont254094254095_
                                      (lambda () _stx246132_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx254090254091_))
                                     (let ((_e246755246778_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx254090254091_))))
                                       (let ((_tl246753246783_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e246755246778_)))
                                             (_hd246754246781_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e246755246778_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl246753246783_))
                                             (let ((_e246758246786_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl246753246783_))))
                                               (let ((_tl246756246791_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e246758246786_)))
                                                     (_hd246757246789_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e246758246786_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd246757246789_))
                                                     (let ((_e246761246794_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd246757246789_))))
                                                       (let ((_tl246759246799_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e246761246794_)))
                     (_hd246760246797_
                      (let () (declare (not safe)) (##car _e246761246794_))))
                 (___kont254092254093_
                  _tl246756246791_
                  _tl246759246799_
                  _hd246760246797_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont254094254095_))))
                                             (___kont254094254095_))))
                                     (___kont254094254095_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L246206_))
                                 (let* ((_g246954246973_
                                         (lambda (_g246955246970_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g246955246970_))))
                                        (_g246953247324_
                                         (lambda (_g246955246976_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g246955246976_))
                                               (let ((_e246959246978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g246955246976_))))
                                                 (let ((_hd246958246981_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246959246978_)))
                                                       (_tl246957246983_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246959246978_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl246957246983_))
                                                       (let ((_g255524_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl246957246983_ '0))))
                 (begin
                   (let ((_g255525_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g255524_)
                                (##vector-length _g255524_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g255525_ 2)))
                         (error "Context expects 2 values" _g255525_)))
                   (let ((_target246960246986_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255524_ 0)))
                         (_tl246962246988_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255524_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl246962246988_))
                         (letrec ((_loop246963246991_
                                   (lambda (_hd246961246994_
                                            _clause246967246996_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd246961246994_))
                                         (let ((_e246964246999_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd246961246994_))))
                                           (let ((_lp-hd246965247002_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e246964246999_)))
                                                 (_lp-tl246966247004_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e246964246999_))))
                                             (let ((__tmp255547
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd246965247002_
                                                            _clause246967246996_))))
                                               (declare (not safe))
                                               (_loop246963246991_
                                                _lp-tl246966247004_
                                                __tmp255547))))
                                         (let ((_clause246968247007_
                                                (reverse _clause246967246996_)))
                                           ((lambda (_L247010_)
                                              (for-each
                                               (lambda (_clause247023_)
                                                 (let* ((___stx254116254117_
                                                         _clause247023_)
                                                        (_g247026247041_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx254116254117_)))))
                                                   (let ((___kont254118254119_
                                                          (lambda (_L247069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L247070_
                           _L247071_)
                    (for-each
                     (lambda (_g247086247088_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g247086247088_
                          _L247071_
                          _method-calls246226_
                          _slot-refs246227_
                          _class-type-check246228_
                          _struct-type-check246229_
                          _struct-type-assert246230_)))
                     _L247069_)))
                 (___kont254120254121_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx254116254117_))
                                                         (let ((_e247033247053_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx254116254117_))))
                   (let ((_tl247031247058_
                          (let ()
                            (declare (not safe))
                            (##cdr _e247033247053_)))
                         (_hd247032247056_
                          (let ()
                            (declare (not safe))
                            (##car _e247033247053_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd247032247056_))
                         (let ((_e247036247061_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd247032247056_))))
                           (let ((_tl247034247066_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e247036247061_)))
                                 (_hd247035247064_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e247036247061_))))
                             (___kont254118254119_
                              _tl247031247058_
                              _tl247034247066_
                              _hd247035247064_)))
                         (___kont254120254121_))))
                 (___kont254120254121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp255526
                                                      (lambda (_g247093247096_
                                                               _g247094247098_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247093247096_
                                                                _g247094247098_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255526
                                                         '()
                                                         _L247010_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246233_))
                                                  _stx246132_
                                                  (let* ((_specializer-id247107_
                                                          (let* ((_id247101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255527
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246207_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255527 '"::specialize")))
                         (_specializer-id247104_
                          (let ((__tmp255528
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246132_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247101_ __tmp255528))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247104_))
                    _specializer-id247104_))
                 (_lifted-specializer-id247114_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246235_))
                      (let* ((_id247109_
                              (let ((__tmp255529
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246207_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255529
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247111_
                              (let ((__tmp255530
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246132_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247109_
                                 __tmp255530))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247111_))
                        _lifted-specializer-id247111_)
                      '#f))
                 (_$t247116_
                  (let ((__tmp255531 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255531)))
                 (_methods247118_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246226_)))
                 (_$methods247122_
                  (map (lambda (_id247120_)
                         (let ((__tmp255532 (gensym _id247120_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255532)))
                       _methods247118_))
                 (_g255533_
                  (for-each
                   (lambda (_g247123247126_ _g247124247128_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246226_
                        _g247123247126_
                        _g247124247128_)))
                   _methods247118_
                   _$methods247122_))
                 (_methods-bind247139_
                  (map (lambda (_g247131247134_ _g247132247136_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246134_
                            _$t247116_
                            _g247131247134_
                            _g247132247136_)))
                       _methods247118_
                       _$methods247122_))
                 (_slots247141_
                  (let () (declare (not safe)) (hash-keys _slot-refs246227_)))
                 (_$slots247145_
                  (map (lambda (_id247143_)
                         (let ((__tmp255534 (gensym _id247143_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255534)))
                       _slots247141_))
                 (_g255535_
                  (for-each
                   (lambda (_g247146247149_ _g247147247151_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246227_
                        _g247146247149_
                        _g247147247151_)))
                   _slots247141_
                   _$slots247145_))
                 (_slots-bind247162_
                  (map (lambda (_g247154247157_ _g247155247159_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246135_
                            _$t247116_
                            _g247154247157_
                            _g247155247159_)))
                       _slots247141_
                       _$slots247145_))
                 (_class-check247164_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246228_)))
                 (_$class-check247167_
                  (map (lambda (_g255536_)
                         (let ((__tmp255537 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255537)))
                       _class-check247164_))
                 (_g255538_
                  (for-each
                   (lambda (_g247168247171_ _g247169247173_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246228_
                        _g247168247171_
                        _g247169247173_)))
                   _class-check247164_
                   _$class-check247167_))
                 (_class-check-bind247184_
                  (map (lambda (_g247176247179_ _g247177247181_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246136_
                            _$t247116_
                            _g247176247179_
                            _g247177247181_)))
                       _class-check247164_
                       _$class-check247167_))
                 (_struct-check-all247186_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246229_
                     _struct-type-assert246230_)))
                 (_struct-check247188_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247186_)))
                 (_$struct-check247191_
                  (map (lambda (_g255539_)
                         (let ((__tmp255540 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255540)))
                       _struct-check247188_))
                 (_g255541_
                  (for-each
                   (lambda (_g247192247195_ _g247193247197_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247186_
                        _g247192247195_
                        _g247193247197_)))
                   _struct-check247188_
                   _$struct-check247191_))
                 (_struct-check-bind247208_
                  (map (lambda (_g247200247203_ _g247201247205_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246137_
                            _$t247116_
                            _g247200247203_
                            _g247201247205_)))
                       _struct-check247188_
                       _$struct-check247191_))
                 (_make-specializer-impl247315_
                  (lambda (_struct-type-check1247210_
                           _struct-type-check2247211_)
                    (let* ((_specializer-clauses247313_
                            (map (lambda (_clause247213_)
                                   (let* ((___stx254136254137_ _clause247213_)
                                          (_g247216247231_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx254136254137_)))))
                                     (let ((___kont254138254139_
                                            (lambda (_L247259_
                                                     _L247260_
                                                     _L247261_)
                                              (let* ((_body247301_
                                                      (map (lambda (_g247296247298_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g247296247298_
                        _L247261_
                        _$t247116_
                        _method-calls246226_
                        _slot-refs246227_
                        _class-type-check246228_
                        _struct-type-check1247210_
                        _struct-type-check2247211_)))
                   _L247259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255542
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L247261_
                                                              _L247260_))))
                                                (declare (not safe))
                                                (cons __tmp255542
                                                      _body247301_))))
                                           (___kont254140254141_
                                            (lambda () _clause247213_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx254136254137_))
                                           (let ((_e247223247243_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx254136254137_))))
                                             (let ((_tl247221247248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247223247243_)))
                                                   (_hd247222247246_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247223247243_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd247222247246_))
                                                   (let ((_e247226247251_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd247222247246_))))
                                                     (let ((_tl247224247256_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247226247251_)))
                                                           (_hd247225247254_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247226247251_))))
                                                       (___kont254138254139_
                                                        _tl247221247248_
                                                        _tl247224247256_
                                                        _hd247225247254_)))
                                                   (___kont254140254141_))))
                                           (___kont254140254141_)))))
                                 (let ((__tmp255543
                                        (lambda (_g247305247308_
                                                 _g247306247310_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g247305247308_
                                                  _g247306247310_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255543 '() _L247010_))))
                           (__tmp255544
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses247313_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255544 _stx246132_))))
                 (_specializer-impl247317_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl247315_
                     _struct-check-all247186_
                     _empty246231_)))
                 (_unchecked-specializer-impl247319_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246234_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl247315_
                         _empty246231_
                         _struct-check-all247186_))
                      '#f))
                 (_specializer-impl247321_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246138_
                     _$t247116_
                     _methods-bind247139_
                     _slots-bind247162_
                     _class-check-bind247184_
                     _struct-check-bind247208_
                     _specializer-impl247317_
                     _lifted-specializer-id247114_
                     _unchecked-specializer-impl247319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255546
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246207_)))
                                                          (__tmp255545
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247107_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255546
                                                       '" => "
                                                       __tmp255545))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246139_
                                                       _L246207_
                                                       _specializer-id247107_
                                                       _specializer-impl247321_
                                                       _lifted-specializer-id247114_
                                                       _unchecked-specializer-impl247319_)))))
                                            _clause246968247007_))))))
                           (let ()
                             (declare (not safe))
                             (_loop246963246991_ _target246960246986_ '())))
                         (let ()
                           (declare (not safe))
                           (_g246954246973_ _g246955246976_))))))
               (let ()
                 (declare (not safe))
                 (_g246954246973_ _g246955246976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246954246973_
                                                  _g246955246976_))))))
                                   (declare (not safe))
                                   (_g246953247324_ _L246206_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L246206_))
                                     (let* ((_g247327247357_
                                             (lambda (_g247328247354_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g247328247354_))))
                                            (_g247326248045_
                                             (lambda (_g247328247360_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g247328247360_))
                                                   (let ((_e247334247362_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g247328247360_))))
                                                     (let ((_hd247333247365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247334247362_)))
                                                           (_tl247332247367_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247334247362_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247332247367_))
                                                           (let ((_e247337247370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247332247367_))))
                     (let ((_hd247336247373_
                            (let ()
                              (declare (not safe))
                              (##car _e247337247370_)))
                           (_tl247335247375_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247337247370_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd247336247373_))
                           (let ((_e247340247378_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd247336247373_))))
                             (let ((_hd247339247381_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e247340247378_)))
                                   (_tl247338247383_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e247340247378_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd247339247381_))
                                   (let ((_e247343247386_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd247339247381_))))
                                     (let ((_hd247342247389_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e247343247386_)))
                                           (_tl247341247391_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e247343247386_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd247342247389_))
                                           (let ((_e247346247394_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd247342247389_))))
                                             (let ((_hd247345247397_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247346247394_)))
                                                   (_tl247344247399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247346247394_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl247344247399_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl247341247391_))
                                                       (let ((_e247349247402_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl247341247391_))))
                 (let ((_hd247348247405_
                        (let () (declare (not safe)) (##car _e247349247402_)))
                       (_tl247347247407_
                        (let () (declare (not safe)) (##cdr _e247349247402_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl247347247407_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl247338247383_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl247335247375_))
                               (let ((_e247352247410_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl247335247375_))))
                                 (let ((_hd247351247413_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e247352247410_)))
                                       (_tl247350247415_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e247352247410_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl247350247415_))
                                       ((lambda (_L247418_ _L247419_ _L247420_)
                                          (let* ((_g247443247461_
                                                  (lambda (_g247444247458_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247444247458_))))
                                                 (_g247442247512_
                                                  (lambda (_g247444247464_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247444247464_))
                                                        (let ((_e247450247466_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247444247464_))))
                  (let ((_hd247449247469_
                         (let () (declare (not safe)) (##car _e247450247466_)))
                        (_tl247448247471_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247450247466_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl247448247471_))
                        (let ((_e247453247474_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl247448247471_))))
                          (let ((_hd247452247477_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247453247474_)))
                                (_tl247451247479_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247453247474_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd247452247477_))
                                (let ((_e247456247482_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd247452247477_))))
                                  (let ((_hd247455247485_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247456247482_)))
                                        (_tl247454247487_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247456247482_))))
                                    ((lambda (_L247490_ _L247491_ _L247492_)
                                       (for-each
                                        (lambda (_g247507247509_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g247507247509_
                                             _L247492_
                                             _method-calls246226_
                                             _slot-refs246227_
                                             _class-type-check246228_
                                             _struct-type-check246229_
                                             _struct-type-assert246230_)))
                                        _L247490_))
                                     _tl247451247479_
                                     _tl247454247487_
                                     _hd247455247485_)))
                                (let ()
                                  (declare (not safe))
                                  (_g247443247461_ _g247444247464_)))))
                        (let ()
                          (declare (not safe))
                          (_g247443247461_ _g247444247464_)))))
                (let ()
                  (declare (not safe))
                  (_g247443247461_ _g247444247464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247442247512_ _L247419_))
                                          (let* ((_g247515247534_
                                                  (lambda (_g247516247531_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247516247531_))))
                                                 (_g247514247653_
                                                  (lambda (_g247516247537_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247516247537_))
                                                        (let ((_e247520247539_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247516247537_))))
                  (let ((_hd247519247542_
                         (let () (declare (not safe)) (##car _e247520247539_)))
                        (_tl247518247544_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247520247539_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl247518247544_))
                        (let ((_g255487_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl247518247544_
                                  '0))))
                          (begin
                            (let ((_g255488_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g255487_)
                                         (##vector-length _g255487_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g255488_ 2)))
                                  (error "Context expects 2 values"
                                         _g255488_)))
                            (let ((_target247521247547_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255487_ 0)))
                                  (_tl247523247549_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255487_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl247523247549_))
                                  (letrec ((_loop247524247552_
                                            (lambda (_hd247522247555_
                                                     _clause247528247557_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd247522247555_))
                                                  (let ((_e247525247560_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd247522247555_))))
                                                    (let ((_lp-hd247526247563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e247525247560_)))
                                                          (_lp-tl247527247565_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e247525247560_))))
                                                      (let ((__tmp255490
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd247526247563_ _clause247528247557_))))
                (declare (not safe))
                (_loop247524247552_ _lp-tl247527247565_ __tmp255490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause247529247568_
                                                         (reverse _clause247528247557_)))
                                                    ((lambda (_L247571_)
                                                       (for-each
                                                        (lambda (_clause247584_)
                                                          (let* ((_g247586247601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g247587247598_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g247587247598_))))
                         (_g247585247643_
                          (lambda (_g247587247604_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g247587247604_))
                                (let ((_e247593247606_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g247587247604_))))
                                  (let ((_hd247592247609_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247593247606_)))
                                        (_tl247591247611_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247593247606_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd247592247609_))
                                        (let ((_e247596247614_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd247592247609_))))
                                          (let ((_hd247595247617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e247596247614_)))
                                                (_tl247594247619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e247596247614_))))
                                            ((lambda (_L247622_
                                                      _L247623_
                                                      _L247624_)
                                               (for-each
                                                (lambda (_g247638247640_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g247638247640_
                                                     _L247624_
                                                     _method-calls246226_
                                                     _slot-refs246227_
                                                     _class-type-check246228_
                                                     _struct-type-check246229_
                                                     _struct-type-assert246230_)))
                                                _L247622_))
                                             _tl247591247611_
                                             _tl247594247619_
                                             _hd247595247617_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g247586247601_ _g247587247604_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g247586247601_ _g247587247604_))))))
                    (declare (not safe))
                    (_g247585247643_ _clause247584_)))
                (let ((__tmp255489
                       (lambda (_g247645247648_ _g247646247650_)
                         (let ()
                           (declare (not safe))
                           (cons _g247645247648_ _g247646247650_)))))
                  (declare (not safe))
                  (foldr1 __tmp255489 '() _L247571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause247529247568_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop247524247552_
                                       _target247521247547_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g247515247534_ _g247516247537_))))))
                        (let ()
                          (declare (not safe))
                          (_g247515247534_ _g247516247537_)))))
                (let ()
                  (declare (not safe))
                  (_g247515247534_ _g247516247537_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247514247653_ _L247418_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?246233_))
                                              _stx246132_
                                              (let* ((_specializer-id247662_
                                                      (let* ((_id247656_
                                                              (let ((__tmp255491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L246207_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp255491 '"::specialize")))
                     (_specializer-id247659_
                      (let ((__tmp255492
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx246132_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id247656_ __tmp255492))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id247659_))
                _specializer-id247659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id247669_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?246235_))
                                                          (let* ((_id247664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255493
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246207_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp255493
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id247666_
                          (let ((__tmp255494
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246132_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247664_ __tmp255494))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id247666_))
                    _lifted-specializer-id247666_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t247671_
                                                      (let ((__tmp255495
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp255495)))
                                                     (_methods247673_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls246226_)))
                                                     (_$methods247677_
                                                      (map (lambda (_id247675_)
                                                             (let ((__tmp255496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247675_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255496)))
                   _methods247673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255497_
                                                      (for-each
                                                       (lambda (_g247678247681_
                                                                _g247679247683_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls246226_
                                                            _g247678247681_
                                                            _g247679247683_)))
                                                       _methods247673_
                                                       _$methods247677_))
                                                     (_methods-bind247694_
                                                      (map (lambda (_g247686247689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247687247691_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind246134_
                        _$t247671_
                        _g247686247689_
                        _g247687247691_)))
                   _methods247673_
                   _$methods247677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots247696_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs246227_)))
                                                     (_$slots247700_
                                                      (map (lambda (_id247698_)
                                                             (let ((__tmp255498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247698_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255498)))
                   _slots247696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255499_
                                                      (for-each
                                                       (lambda (_g247701247704_
                                                                _g247702247706_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs246227_
                                                            _g247701247704_
                                                            _g247702247706_)))
                                                       _slots247696_
                                                       _$slots247700_))
                                                     (_slots-bind247717_
                                                      (map (lambda (_g247709247712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247710247714_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind246135_
                        _$t247671_
                        _g247709247712_
                        _g247710247714_)))
                   _slots247696_
                   _$slots247700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check247719_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check246228_)))
                                                     (_$class-check247722_
                                                      (map (lambda (_g255500_)
                                                             (let ((__tmp255501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255501)))
                   _class-check247719_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255502_
                                                      (for-each
                                                       (lambda (_g247723247726_
                                                                _g247724247728_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check246228_
                                                            _g247723247726_
                                                            _g247724247728_)))
                                                       _class-check247719_
                                                       _$class-check247722_))
                                                     (_class-check-bind247739_
                                                      (map (lambda (_g247731247734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247732247736_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind246136_
                        _$t247671_
                        _g247731247734_
                        _g247732247736_)))
                   _class-check247719_
                   _$class-check247722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all247741_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check246229_
                                                         _struct-type-assert246230_)))
                                                     (_struct-check247743_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all247741_)))
                                                     (_$struct-check247746_
                                                      (map (lambda (_g255503_)
                                                             (let ((__tmp255504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255504)))
                   _struct-check247743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255505_
                                                      (for-each
                                                       (lambda (_g247747247750_
                                                                _g247748247752_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all247741_
                                                            _g247747247750_
                                                            _g247748247752_)))
                                                       _struct-check247743_
                                                       _$struct-check247746_))
                                                     (_struct-check-bind247763_
                                                      (map (lambda (_g247755247758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247756247760_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind246137_
                        _$t247671_
                        _g247755247758_
                        _g247756247760_)))
                   _struct-check247743_
                   _$struct-check247746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr247862_
                                                      (lambda (_struct-type-check1247765_
                                                               _struct-type-check2247766_)
                                                        (let* ((_g247768247786_
                                                                (lambda (_g247769247783_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247769247783_))))
                       (_g247767247859_
                        (lambda (_g247769247789_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247769247789_))
                              (let ((_e247775247791_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247769247789_))))
                                (let ((_hd247774247794_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247775247791_)))
                                      (_tl247773247796_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247775247791_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl247773247796_))
                                      (let ((_e247778247799_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl247773247796_))))
                                        (let ((_hd247777247802_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e247778247799_)))
                                              (_tl247776247804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e247778247799_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd247777247802_))
                                              (let ((_e247781247807_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd247777247802_))))
                                                (let ((_hd247780247810_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e247781247807_)))
                                                      (_tl247779247812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e247781247807_))))
                                                  ((lambda (_L247815_
                                                            _L247816_
                                                            _L247817_)
                                                     (let* ((_body247857_
                                                             (map (lambda (_g247852247854_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g247852247854_
                               _L247817_
                               _$t247671_
                               _method-calls246226_
                               _slot-refs246227_
                               _class-type-check246228_
                               _struct-type-check1247765_
                               _struct-type-check2247766_)))
                          _L247815_))
                    (__tmp255506
                     (let ((__tmp255507
                            (let ((__tmp255508
                                   (let ()
                                     (declare (not safe))
                                     (cons _L247817_ _L247816_))))
                              (declare (not safe))
                              (cons __tmp255508 _body247857_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp255507))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255506 _L247419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl247776247804_
                                                   _tl247779247812_
                                                   _hd247780247810_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g247768247786_
                                                 _g247769247789_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247768247786_ _g247769247789_)))))
                              (let ()
                                (declare (not safe))
                                (_g247768247786_ _g247769247789_))))))
                  (declare (not safe))
                  (_g247767247859_ _L247419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr248023_
                                                      (lambda (_struct-type-check1247864_
                                                               _struct-type-check2247865_)
                                                        (let* ((_g247867247886_
                                                                (lambda (_g247868247883_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247868247883_))))
                       (_g247866248020_
                        (lambda (_g247868247889_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247868247889_))
                              (let ((_e247872247891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247868247889_))))
                                (let ((_hd247871247894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247872247891_)))
                                      (_tl247870247896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247872247891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl247870247896_))
                                      (let ((_g255509_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl247870247896_
                                                '0))))
                                        (begin
                                          (let ((_g255510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255509_)
                                                       (##vector-length
                                                        _g255509_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255510_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255510_)))
                                          (let ((_target247873247899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g255509_ 0)))
                                                (_tl247875247901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g255509_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl247875247901_))
                                                (letrec ((_loop247876247904_
                                                          (lambda (_hd247874247907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause247880247909_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd247874247907_))
                        (let ((_e247877247912_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd247874247907_))))
                          (let ((_lp-hd247878247915_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247877247912_)))
                                (_lp-tl247879247917_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247877247912_))))
                            (let ((__tmp255514
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd247878247915_
                                           _clause247880247909_))))
                              (declare (not safe))
                              (_loop247876247904_
                               _lp-tl247879247917_
                               __tmp255514))))
                        (let ((_clause247881247920_
                               (reverse _clause247880247909_)))
                          ((lambda (_L247923_)
                             (let* ((_clauses248018_
                                     (map (lambda (_clause247938_)
                                            (let* ((___stx254156254157_
                                                    _clause247938_)
                                                   (_g247941247956_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx254156254157_)))))
                                              (let ((___kont254158254159_
                                                     (lambda (_L247984_
                                                              _L247985_
                                                              _L247986_)
                                                       (let* ((_body248006_
                                                               (map (lambda (_g248001248003_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g248001248003_
                                 _L247986_
                                 _$t247671_
                                 _method-calls246226_
                                 _slot-refs246227_
                                 _class-type-check246228_
                                 _struct-type-check1247864_
                                 _struct-type-check2247865_)))
                            _L247984_))
                      (__tmp255511
                       (let ()
                         (declare (not safe))
                         (cons _L247986_ _L247985_))))
                 (declare (not safe))
                 (cons __tmp255511 _body248006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254160254161_
                                                     (lambda ()
                                                       _clause247938_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx254156254157_))
                                                    (let ((_e247948247968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx254156254157_))))
                                                      (let ((_tl247946247973_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e247948247968_)))
                    (_hd247947247971_
                     (let () (declare (not safe)) (##car _e247948247968_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd247947247971_))
                    (let ((_e247951247976_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd247947247971_))))
                      (let ((_tl247949247981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247951247976_)))
                            (_hd247950247979_
                             (let ()
                               (declare (not safe))
                               (##car _e247951247976_))))
                        (___kont254158254159_
                         _tl247946247973_
                         _tl247949247981_
                         _hd247950247979_)))
                    (___kont254160254161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254160254161_)))))
                                          (let ((__tmp255512
                                                 (lambda (_g248010248013_
                                                          _g248011248015_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g248010248013_
                                                           _g248011248015_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp255512
                                                    '()
                                                    _L247923_))))
                                    (__tmp255513
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses248018_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp255513 _L247418_)))
                           _clause247881247920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop247876247904_
                                                     _target247873247899_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g247867247886_
                                                   _g247868247889_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247867247886_ _g247868247889_)))))
                              (let ()
                                (declare (not safe))
                                (_g247867247886_ _g247868247889_))))))
                  (declare (not safe))
                  (_g247866248020_ _L247418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl248028_
                                                      (lambda (_specializer-lambda-expr248025_
                                                               _specializer-case-lambda-expr248026_)
                                                        (let ((__tmp255515
                                                               (let ((__tmp255516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp255518
                                     (let ((__tmp255519
                                            (let ((__tmp255521
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L247420_ '())))
                                                  (__tmp255520
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr248025_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp255521 __tmp255520))))
                                       (declare (not safe))
                                       (cons __tmp255519 '())))
                                    (__tmp255517
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr248026_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp255518 __tmp255517))))
                         (declare (not safe))
                         (cons '%#let-values __tmp255516))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255515 _stx246132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr248030_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr247862_
                                                         _struct-check-all247741_
                                                         _empty246231_)))
                                                     (_specializer-case-lambda-expr248032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr248023_
                                                         _struct-check-all247741_
                                                         _empty246231_)))
                                                     (_specializer-impl248034_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl248028_
                                                         _specializer-lambda-expr248030_
                                                         _specializer-case-lambda-expr248032_)))
                                                     (_unchecked-specializer-lambda-expr248036_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246234_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr247862_
                                                             _empty246231_
                                                             _struct-check-all247741_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr248038_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246234_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr248023_
                                                             _empty246231_
                                                             _struct-check-all247741_))
                                                          '#f))
                                                     (_unchecked-specializer-impl248040_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246234_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl248028_
                                                             _unchecked-specializer-lambda-expr248036_
                                                             _unchecked-specializer-case-lambda-expr248038_))
                                                          '#f))
                                                     (_specializer-impl248042_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl246138_
                                                         _$t247671_
                                                         _methods-bind247694_
                                                         _slots-bind247717_
                                                         _class-check-bind247739_
                                                         _struct-check-bind247763_
                                                         _specializer-impl248034_
                                                         _lifted-specializer-id247669_
                                                         _unchecked-specializer-impl248040_))))
                                                (let ((__tmp255523
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L246207_)))
                                                      (__tmp255522
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id247662_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp255523
                                                   '" => "
                                                   __tmp255522))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def246139_
                                                   _L246207_
                                                   _specializer-id247662_
                                                   _specializer-impl248042_
                                                   _lifted-specializer-id247669_
                                                   _unchecked-specializer-impl248040_)))))
                                        _hd247351247413_
                                        _hd247348247405_
                                        _hd247345247397_)
                                       (let ()
                                         (declare (not safe))
                                         (_g247327247357_ _g247328247360_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g247327247357_ _g247328247360_)))
                           (let ()
                             (declare (not safe))
                             (_g247327247357_ _g247328247360_)))
                       (let ()
                         (declare (not safe))
                         (_g247327247357_ _g247328247360_)))))
               (let () (declare (not safe)) (_g247327247357_ _g247328247360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247327247357_
                                                      _g247328247360_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g247327247357_
                                              _g247328247360_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g247327247357_ _g247328247360_)))))
                           (let ()
                             (declare (not safe))
                             (_g247327247357_ _g247328247360_)))))
                   (let ()
                     (declare (not safe))
                     (_g247327247357_ _g247328247360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247327247357_
                                                      _g247328247360_))))))
                                       (declare (not safe))
                                       (_g247326248045_ _L246206_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L246206_))
                                         (let* ((_g248048248101_
                                                 (lambda (_g248049248098_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248049248098_))))
                                                (_g248047249373_
                                                 (lambda (_g248049248104_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248049248104_))
                                                       (let ((_e248057248106_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248049248104_))))
                 (let ((_hd248056248109_
                        (let () (declare (not safe)) (##car _e248057248106_)))
                       (_tl248055248111_
                        (let () (declare (not safe)) (##cdr _e248057248106_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd248056248109_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd248056248109_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248055248111_))
                               (let ((_e248060248114_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248055248111_))))
                                 (let ((_hd248059248117_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248060248114_)))
                                       (_tl248058248119_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248060248114_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248059248117_))
                                       (let ((_e248063248122_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248059248117_))))
                                         (let ((_hd248062248125_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248063248122_)))
                                               (_tl248061248127_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248063248122_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248062248125_))
                                               (let ((_e248066248130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248062248125_))))
                                                 (let ((_hd248065248133_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248066248130_)))
                                                       (_tl248064248135_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248066248130_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd248065248133_))
                                                       (let ((_e248069248138_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd248065248133_))))
                 (let ((_hd248068248141_
                        (let () (declare (not safe)) (##car _e248069248138_)))
                       (_tl248067248143_
                        (let () (declare (not safe)) (##cdr _e248069248138_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248067248143_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl248064248135_))
                           (let ((_e248072248146_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl248064248135_))))
                             (let ((_hd248071248149_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248072248146_)))
                                   (_tl248070248151_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248072248146_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248071248149_))
                                   (let ((_e248075248154_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248071248149_))))
                                     (let ((_hd248074248157_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248075248154_)))
                                           (_tl248073248159_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248075248154_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd248074248157_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd248074248157_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl248073248159_))
                                                   (let ((_e248078248162_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl248073248159_))))
                                                     (let ((_hd248077248165_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248078248162_)))
                                                           (_tl248076248167_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248078248162_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd248077248165_))
                                                           (let ((_e248081248170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd248077248165_))))
                     (let ((_hd248080248173_
                            (let ()
                              (declare (not safe))
                              (##car _e248081248170_)))
                           (_tl248079248175_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248081248170_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248080248173_))
                           (let ((_e248084248178_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248080248173_))))
                             (let ((_hd248083248181_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248084248178_)))
                                   (_tl248082248183_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248084248178_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248083248181_))
                                   (let ((_e248087248186_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248083248181_))))
                                     (let ((_hd248086248189_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248087248186_)))
                                           (_tl248085248191_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248087248186_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248085248191_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl248082248183_))
                                               (let ((_e248090248194_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl248082248183_))))
                                                 (let ((_hd248089248197_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248090248194_)))
                                                       (_tl248088248199_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248090248194_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248088248199_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl248079248175_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl248076248167_))
                       (let ((_e248093248202_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248076248167_))))
                         (let ((_hd248092248205_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248093248202_)))
                               (_tl248091248207_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248093248202_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248091248207_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl248070248151_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248061248127_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl248058248119_))
                                           (let ((_e248096248210_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl248058248119_))))
                                             (let ((_hd248095248213_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248096248210_)))
                                                   (_tl248094248215_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248096248210_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248094248215_))
                                                   ((lambda (_L248218_
                                                             _L248219_
                                                             _L248220_
                                                             _L248221_
                                                             _L248222_)
                                                      (let* ((_g248261248323_
                                                              (lambda (_g248262248320_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g248262248320_))))
                     (_g248260249370_
                      (lambda (_g248262248326_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g248262248326_))
                            (let ((_e248270248328_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g248262248326_))))
                              (let ((_hd248269248331_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248270248328_)))
                                    (_tl248268248333_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248270248328_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd248269248331_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd248269248331_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl248268248333_))
                                            (let ((_e248273248336_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl248268248333_))))
                                              (let ((_hd248272248339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248273248336_)))
                                                    (_tl248271248341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248273248336_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248271248341_))
                                                    (let ((_e248276248344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248271248341_))))
                                                      (let ((_hd248275248347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248276248344_)))
                    (_tl248274248349_
                     (let () (declare (not safe)) (##cdr _e248276248344_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248275248347_))
                    (let ((_e248279248352_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248275248347_))))
                      (let ((_hd248278248355_
                             (let ()
                               (declare (not safe))
                               (##car _e248279248352_)))
                            (_tl248277248357_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248279248352_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd248278248355_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd248278248355_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl248277248357_))
                                    (let ((_e248282248360_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl248277248357_))))
                                      (let ((_hd248281248363_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248282248360_)))
                                            (_tl248280248365_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248282248360_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd248281248363_))
                                            (let ((_e248285248368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd248281248363_))))
                                              (let ((_hd248284248371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248285248368_)))
                                                    (_tl248283248373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248285248368_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd248284248371_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd248284248371_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl248283248373_))
                                                            (let ((_e248288248376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl248283248373_))))
                      (let ((_hd248287248379_
                             (let ()
                               (declare (not safe))
                               (##car _e248288248376_)))
                            (_tl248286248381_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248288248376_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248286248381_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl248280248365_))
                                (let ((_e248291248384_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl248280248365_))))
                                  (let ((_hd248290248387_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248291248384_)))
                                        (_tl248289248389_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248291248384_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd248290248387_))
                                        (let ((_e248294248392_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd248290248387_))))
                                          (let ((_hd248293248395_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e248294248392_)))
                                                (_tl248292248397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e248294248392_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd248293248395_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd248293248395_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl248292248397_))
                                                        (let ((_e248297248400_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl248292248397_))))
                  (let ((_hd248296248403_
                         (let () (declare (not safe)) (##car _e248297248400_)))
                        (_tl248295248405_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248297248400_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl248295248405_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248289248389_))
                            (let ((_e248300248408_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248289248389_))))
                              (let ((_hd248299248411_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248300248408_)))
                                    (_tl248298248413_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248300248408_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd248299248411_))
                                    (let ((_e248303248416_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd248299248411_))))
                                      (let ((_hd248302248419_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248303248416_)))
                                            (_tl248301248421_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248303248416_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd248302248419_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd248302248419_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248301248421_))
                                                    (let ((_e248306248424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248301248421_))))
                                                      (let ((_hd248305248427_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248306248424_)))
                    (_tl248304248429_
                     (let () (declare (not safe)) (##cdr _e248306248424_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl248304248429_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248298248413_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl248298248413_))
                                  '1)
                            (let ((_g255399_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248298248413_
                                      '1))))
                              (begin
                                (let ((_g255400_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255399_)
                                             (##vector-length _g255399_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255400_ 2)))
                                      (error "Context expects 2 values"
                                             _g255400_)))
                                (let ((_target248307248432_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255399_ 0)))
                                      (_tl248309248434_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255399_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl248309248434_))
                                      (let ((_e248318248437_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl248309248434_))))
                                        (let ((_hd248317248440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248318248437_)))
                                              (_tl248316248442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248318248437_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl248316248442_))
                                              (letrec ((_loop248310248445_
                                                        (lambda (_hd248308248448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref248314248450_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd248308248448_))
                      (let ((_e248311248453_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd248308248448_))))
                        (let ((_lp-hd248312248456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e248311248453_)))
                              (_lp-tl248313248458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e248311248453_))))
                          (let ((__tmp255486
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd248312248456_
                                         _kw-ref248314248450_))))
                            (declare (not safe))
                            (_loop248310248445_
                             _lp-tl248313248458_
                             __tmp255486))))
                      (let ((_kw-ref248315248461_
                             (reverse _kw-ref248314248450_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248274248349_))
                            ((lambda (_L248464_
                                      _L248465_
                                      _L248466_
                                      _L248467_
                                      _L248468_)
                               (let* ((_kw-count248519_
                                       (length (let ((__tmp255401
                                                      (lambda (_g248511248514_
                                                               _g248512248516_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248511248514_
                                                                _g248512248516_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255401
                                                         '()
                                                         _L248465_))))
                                      (_self-index248521_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count248519_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L248220_))
                                     (let* ((_g248524248538_
                                             (lambda (_g248525248535_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248525248535_))))
                                            (_g248523248709_
                                             (lambda (_g248525248541_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248525248541_))
                                                   (let ((_e248530248543_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248525248541_))))
                                                     (let ((_hd248529248546_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248530248543_)))
                                                           (_tl248528248548_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248530248543_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248528248548_))
                                                           (let ((_e248533248551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248528248548_))))
                     (let ((_hd248532248554_
                            (let ()
                              (declare (not safe))
                              (##car _e248533248551_)))
                           (_tl248531248556_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248533248551_))))
                       ((lambda (_L248559_ _L248560_)
                          (let ((_self248576_
                                 (list-ref _L248560_ _self-index248521_)))
                            (for-each
                             (lambda (_g248577248579_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g248577248579_
                                  _self248576_
                                  _method-calls246226_
                                  _slot-refs246227_
                                  _class-type-check246228_
                                  _struct-type-check246229_
                                  _struct-type-assert246230_)))
                             _L248559_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?246233_))
                                _stx246132_
                                (let* ((_specializer-id248588_
                                        (let* ((_id248582_
                                                (let ((__tmp255452
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L246207_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp255452
                                                   '"::specialize")))
                                               (_specializer-id248585_
                                                (let ((__tmp255453
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx246132_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id248582_
                                                   __tmp255453))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id248585_))
                                          _specializer-id248585_))
                                       (_lifted-specializer-id248595_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?246235_))
                                            (let* ((_id248590_
                                                    (let ((__tmp255454
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246207_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp255454
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id248592_
                                                    (let ((__tmp255455
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx246132_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id248590_
                                                       __tmp255455))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id248592_))
                                              _lifted-specializer-id248592_)
                                            '#f))
                                       (_$t248597_
                                        (let ((__tmp255456 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp255456)))
                                       (_methods248599_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls246226_)))
                                       (_$methods248603_
                                        (map (lambda (_id248601_)
                                               (let ((__tmp255457
                                                      (gensym _id248601_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255457)))
                                             _methods248599_))
                                       (_g255458_
                                        (for-each
                                         (lambda (_g248604248607_
                                                  _g248605248609_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls246226_
                                              _g248604248607_
                                              _g248605248609_)))
                                         _methods248599_
                                         _$methods248603_))
                                       (_methods-bind248620_
                                        (map (lambda (_g248612248615_
                                                      _g248613248617_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind246134_
                                                  _$t248597_
                                                  _g248612248615_
                                                  _g248613248617_)))
                                             _methods248599_
                                             _$methods248603_))
                                       (_slots248622_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs246227_)))
                                       (_$slots248626_
                                        (map (lambda (_id248624_)
                                               (let ((__tmp255459
                                                      (gensym _id248624_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255459)))
                                             _slots248622_))
                                       (_g255460_
                                        (for-each
                                         (lambda (_g248627248630_
                                                  _g248628248632_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs246227_
                                              _g248627248630_
                                              _g248628248632_)))
                                         _slots248622_
                                         _$slots248626_))
                                       (_slots-bind248643_
                                        (map (lambda (_g248635248638_
                                                      _g248636248640_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind246135_
                                                  _$t248597_
                                                  _g248635248638_
                                                  _g248636248640_)))
                                             _slots248622_
                                             _$slots248626_))
                                       (_class-check248645_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check246228_)))
                                       (_$class-check248648_
                                        (map (lambda (_g255461_)
                                               (let ((__tmp255462
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255462)))
                                             _class-check248645_))
                                       (_g255463_
                                        (for-each
                                         (lambda (_g248649248652_
                                                  _g248650248654_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check246228_
                                              _g248649248652_
                                              _g248650248654_)))
                                         _class-check248645_
                                         _$class-check248648_))
                                       (_class-check-bind248665_
                                        (map (lambda (_g248657248660_
                                                      _g248658248662_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind246136_
                                                  _$t248597_
                                                  _g248657248660_
                                                  _g248658248662_)))
                                             _class-check248645_
                                             _$class-check248648_))
                                       (_struct-check-all248667_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check246229_
                                           _struct-type-assert246230_)))
                                       (_struct-check248669_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all248667_)))
                                       (_$struct-check248672_
                                        (map (lambda (_g255464_)
                                               (let ((__tmp255465
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255465)))
                                             _struct-check248669_))
                                       (_g255466_
                                        (for-each
                                         (lambda (_g248673248676_
                                                  _g248674248678_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all248667_
                                              _g248673248676_
                                              _g248674248678_)))
                                         _struct-check248669_
                                         _$struct-check248672_))
                                       (_struct-check-bind248689_
                                        (map (lambda (_g248681248684_
                                                      _g248682248686_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind246137_
                                                  _$t248597_
                                                  _g248681248684_
                                                  _g248682248686_)))
                                             _struct-check248669_
                                             _$struct-check248672_))
                                       (_make-specializer-impl248700_
                                        (lambda (_struct-type-check1248691_
                                                 _struct-type-check2248692_)
                                          (let* ((_specializer-body248698_
                                                  (map (lambda (_g248693248695_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g248693248695_
                                                            _self248576_
                                                            _$t248597_
                                                            _method-calls246226_
                                                            _slot-refs246227_
                                                            _class-type-check246228_
                                                            _struct-type-check1248691_
                                                            _struct-type-check2248692_)))
                                                       _L248559_))
                                                 (__tmp255467
                                                  (let ((__tmp255468
                                                         (let ((__tmp255470
                                                                (let ((__tmp255471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255483
                                      (let ()
                                        (declare (not safe))
                                        (cons _L248222_ '())))
                                     (__tmp255472
                                      (let ((__tmp255473
                                             (let ((__tmp255474
                                                    (let ((__tmp255476
                                                           (let ((__tmp255477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255482
                                 (let ()
                                   (declare (not safe))
                                   (cons _L248221_ '())))
                                (__tmp255478
                                 (let ((__tmp255479
                                        (let ((__tmp255480
                                               (let ((__tmp255481
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248560_
                                                              _specializer-body248698_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp255481))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp255480
                                           _L248220_))))
                                   (declare (not safe))
                                   (cons __tmp255479 '()))))
                            (declare (not safe))
                            (cons __tmp255482 __tmp255478))))
                     (declare (not safe))
                     (cons __tmp255477 '())))
                  (__tmp255475
                   (let () (declare (not safe)) (cons _L248219_ '()))))
              (declare (not safe))
              (cons __tmp255476 __tmp255475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp255474))))
                                        (declare (not safe))
                                        (cons __tmp255473 '()))))
                                 (declare (not safe))
                                 (cons __tmp255483 __tmp255472))))
                          (declare (not safe))
                          (cons __tmp255471 '())))
                       (__tmp255469
                        (let () (declare (not safe)) (cons _L248218_ '()))))
                   (declare (not safe))
                   (cons __tmp255470 __tmp255469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp255468))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp255467
                                             _stx246132_))))
                                       (_specializer-impl248702_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl248700_
                                           _struct-check-all248667_
                                           _empty246231_)))
                                       (_unchecked-specializer-impl248704_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?246234_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl248700_
                                               _empty246231_
                                               _struct-check-all248667_))
                                            '#f))
                                       (_specializer-impl248706_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl246138_
                                           _$t248597_
                                           _methods-bind248620_
                                           _slots-bind248643_
                                           _class-check-bind248665_
                                           _struct-check-bind248689_
                                           _specializer-impl248702_
                                           _lifted-specializer-id248595_
                                           _unchecked-specializer-impl248704_))))
                                  (let ((__tmp255485
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L246207_)))
                                        (__tmp255484
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id248588_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp255485
                                     '" => "
                                     __tmp255484))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def246139_
                                     _L246207_
                                     _specializer-id248588_
                                     _specializer-impl248706_
                                     _lifted-specializer-id248595_
                                     _unchecked-specializer-impl248704_))))))
                        _tl248531248556_
                        _hd248532248554_)))
                   (let ()
                     (declare (not safe))
                     (_g248524248538_ _g248525248541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248524248538_
                                                      _g248525248541_))))))
                                       (declare (not safe))
                                       (_g248523248709_ _L248220_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L248220_))
                                         (let* ((_g248712248742_
                                                 (lambda (_g248713248739_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248713248739_))))
                                                (_g248711249367_
                                                 (lambda (_g248713248745_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248713248745_))
                                                       (let ((_e248719248747_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248713248745_))))
                 (let ((_hd248718248750_
                        (let () (declare (not safe)) (##car _e248719248747_)))
                       (_tl248717248752_
                        (let () (declare (not safe)) (##cdr _e248719248747_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl248717248752_))
                       (let ((_e248722248755_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248717248752_))))
                         (let ((_hd248721248758_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248722248755_)))
                               (_tl248720248760_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248722248755_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd248721248758_))
                               (let ((_e248725248763_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd248721248758_))))
                                 (let ((_hd248724248766_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248725248763_)))
                                       (_tl248723248768_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248725248763_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248724248766_))
                                       (let ((_e248728248771_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248724248766_))))
                                         (let ((_hd248727248774_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248728248771_)))
                                               (_tl248726248776_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248728248771_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248727248774_))
                                               (let ((_e248731248779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248727248774_))))
                                                 (let ((_hd248730248782_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248731248779_)))
                                                       (_tl248729248784_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248731248779_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248729248784_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248726248776_))
                                                           (let ((_e248734248787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248726248776_))))
                     (let ((_hd248733248790_
                            (let ()
                              (declare (not safe))
                              (##car _e248734248787_)))
                           (_tl248732248792_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248734248787_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248732248792_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248723248768_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl248720248760_))
                                   (let ((_e248737248795_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl248720248760_))))
                                     (let ((_hd248736248798_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248737248795_)))
                                           (_tl248735248800_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248737248795_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248735248800_))
                                           ((lambda (_L248803_
                                                     _L248804_
                                                     _L248805_)
                                              (let* ((_g248828248842_
                                                      (lambda (_g248829248839_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248829248839_))))
                                                     (_g248827248883_
                                                      (lambda (_g248829248845_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248829248845_))
                                                            (let ((_e248834248847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248829248845_))))
                      (let ((_hd248833248850_
                             (let ()
                               (declare (not safe))
                               (##car _e248834248847_)))
                            (_tl248832248852_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248834248847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248832248852_))
                            (let ((_e248837248855_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248832248852_))))
                              (let ((_hd248836248858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248837248855_)))
                                    (_tl248835248860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248837248855_))))
                                ((lambda (_L248863_ _L248864_)
                                   (let ((_self248877_
                                          (list-ref
                                           _L248864_
                                           _self-index248521_)))
                                     (for-each
                                      (lambda (_g248878248880_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g248878248880_
                                           _self248877_
                                           _method-calls246226_
                                           _slot-refs246227_
                                           _class-type-check246228_
                                           _struct-type-check246229_
                                           _struct-type-assert246230_)))
                                      _L248863_)))
                                 _tl248835248860_
                                 _hd248836248858_)))
                            (let ()
                              (declare (not safe))
                              (_g248828248842_ _g248829248845_)))))
                    (let ()
                      (declare (not safe))
                      (_g248828248842_ _g248829248845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248827248883_ _L248804_))
                                              (let* ((_g248886248905_
                                                      (lambda (_g248887248902_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248887248902_))))
                                                     (_g248885249010_
                                                      (lambda (_g248887248908_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248887248908_))
                                                            (let ((_e248891248910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248887248908_))))
                      (let ((_hd248890248913_
                             (let ()
                               (declare (not safe))
                               (##car _e248891248910_)))
                            (_tl248889248915_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248891248910_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl248889248915_))
                            (let ((_g255402_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248889248915_
                                      '0))))
                              (begin
                                (let ((_g255403_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255402_)
                                             (##vector-length _g255402_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255403_ 2)))
                                      (error "Context expects 2 values"
                                             _g255403_)))
                                (let ((_target248892248918_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255402_ 0)))
                                      (_tl248894248920_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255402_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl248894248920_))
                                      (letrec ((_loop248895248923_
                                                (lambda (_hd248893248926_
                                                         _clause248899248928_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd248893248926_))
                                                      (let ((_e248896248931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd248893248926_))))
                (let ((_lp-hd248897248934_
                       (let () (declare (not safe)) (##car _e248896248931_)))
                      (_lp-tl248898248936_
                       (let () (declare (not safe)) (##cdr _e248896248931_))))
                  (let ((__tmp255405
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd248897248934_ _clause248899248928_))))
                    (declare (not safe))
                    (_loop248895248923_ _lp-tl248898248936_ __tmp255405))))
              (let ((_clause248900248939_ (reverse _clause248899248928_)))
                ((lambda (_L248942_)
                   (for-each
                    (lambda (_clause248955_)
                      (let* ((_g248957248968_
                              (lambda (_g248958248965_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g248958248965_))))
                             (_g248956249000_
                              (lambda (_g248958248971_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g248958248971_))
                                    (let ((_e248963248973_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g248958248971_))))
                                      (let ((_hd248962248976_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248963248973_)))
                                            (_tl248961248978_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248963248973_))))
                                        ((lambda (_L248981_ _L248982_)
                                           (let ((_self248994_
                                                  (list-ref
                                                   _L248982_
                                                   _self-index248521_)))
                                             (for-each
                                              (lambda (_g248995248997_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g248995248997_
                                                   _self248994_
                                                   _method-calls246226_
                                                   _slot-refs246227_
                                                   _class-type-check246228_
                                                   _struct-type-check246229_
                                                   _struct-type-assert246230_)))
                                              _L248981_)))
                                         _tl248961248978_
                                         _hd248962248976_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248957248968_ _g248958248971_))))))
                        (declare (not safe))
                        (_g248956249000_ _clause248955_)))
                    (let ((__tmp255404
                           (lambda (_g249002249005_ _g249003249007_)
                             (let ()
                               (declare (not safe))
                               (cons _g249002249005_ _g249003249007_)))))
                      (declare (not safe))
                      (foldr1 __tmp255404 '() _L248942_))))
                 _clause248900248939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop248895248923_
                                           _target248892248918_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g248886248905_ _g248887248908_))))))
                            (let ()
                              (declare (not safe))
                              (_g248886248905_ _g248887248908_)))))
                    (let ()
                      (declare (not safe))
                      (_g248886248905_ _g248887248908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248885249010_ _L248803_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246233_))
                                                  _stx246132_
                                                  (let* ((_specializer-id249019_
                                                          (let* ((_id249013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255406
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246207_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255406 '"::specialize")))
                         (_specializer-id249016_
                          (let ((__tmp255407
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246132_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249013_ __tmp255407))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id249016_))
                    _specializer-id249016_))
                 (_lifted-specializer-id249026_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246235_))
                      (let* ((_id249021_
                              (let ((__tmp255408
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246207_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255408
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id249023_
                              (let ((__tmp255409
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246132_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id249021_
                                 __tmp255409))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id249023_))
                        _lifted-specializer-id249023_)
                      '#f))
                 (_$t249028_
                  (let ((__tmp255410 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255410)))
                 (_methods249030_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246226_)))
                 (_$methods249034_
                  (map (lambda (_id249032_)
                         (let ((__tmp255411 (gensym _id249032_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255411)))
                       _methods249030_))
                 (_g255412_
                  (for-each
                   (lambda (_g249035249038_ _g249036249040_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246226_
                        _g249035249038_
                        _g249036249040_)))
                   _methods249030_
                   _$methods249034_))
                 (_methods-bind249051_
                  (map (lambda (_g249043249046_ _g249044249048_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246134_
                            _$t249028_
                            _g249043249046_
                            _g249044249048_)))
                       _methods249030_
                       _$methods249034_))
                 (_slots249053_
                  (let () (declare (not safe)) (hash-keys _slot-refs246227_)))
                 (_$slots249057_
                  (map (lambda (_id249055_)
                         (let ((__tmp255413 (gensym _id249055_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255413)))
                       _slots249053_))
                 (_g255414_
                  (for-each
                   (lambda (_g249058249061_ _g249059249063_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246227_
                        _g249058249061_
                        _g249059249063_)))
                   _slots249053_
                   _$slots249057_))
                 (_slots-bind249074_
                  (map (lambda (_g249066249069_ _g249067249071_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246135_
                            _$t249028_
                            _g249066249069_
                            _g249067249071_)))
                       _slots249053_
                       _$slots249057_))
                 (_class-check249076_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246228_)))
                 (_$class-check249079_
                  (map (lambda (_g255415_)
                         (let ((__tmp255416 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255416)))
                       _class-check249076_))
                 (_g255417_
                  (for-each
                   (lambda (_g249080249083_ _g249081249085_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246228_
                        _g249080249083_
                        _g249081249085_)))
                   _class-check249076_
                   _$class-check249079_))
                 (_class-check-bind249096_
                  (map (lambda (_g249088249091_ _g249089249093_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246136_
                            _$t249028_
                            _g249088249091_
                            _g249089249093_)))
                       _class-check249076_
                       _$class-check249079_))
                 (_struct-check-all249098_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246229_
                     _struct-type-assert246230_)))
                 (_struct-check249100_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all249098_)))
                 (_$struct-check249103_
                  (map (lambda (_g255418_)
                         (let ((__tmp255419 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255419)))
                       _struct-check249100_))
                 (_g255420_
                  (for-each
                   (lambda (_g249104249107_ _g249105249109_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all249098_
                        _g249104249107_
                        _g249105249109_)))
                   _struct-check249100_
                   _$struct-check249103_))
                 (_struct-check-bind249120_
                  (map (lambda (_g249112249115_ _g249113249117_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246137_
                            _$t249028_
                            _g249112249115_
                            _g249113249117_)))
                       _struct-check249100_
                       _$struct-check249103_))
                 (_make-specializer-lambda-expr249206_
                  (lambda (_struct-type-check1249122_
                           _struct-type-check2249123_)
                    (let* ((_g249125249139_
                            (lambda (_g249126249136_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249126249136_))))
                           (_g249124249203_
                            (lambda (_g249126249142_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249126249142_))
                                  (let ((_e249131249144_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249126249142_))))
                                    (let ((_hd249130249147_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249131249144_)))
                                          (_tl249129249149_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249131249144_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl249129249149_))
                                          (let ((_e249134249152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl249129249149_))))
                                            (let ((_hd249133249155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e249134249152_)))
                                                  (_tl249132249157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e249134249152_))))
                                              ((lambda (_L249160_ _L249161_)
                                                 (let* ((_self249194_
                                                         (list-ref
                                                          _L249161_
                                                          _self-index248521_))
                                                        (_body249200_
                                                         (map (lambda (_g249195249197_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g249195249197_
                           _self249194_
                           _$t249028_
                           _method-calls246226_
                           _slot-refs246227_
                           _class-type-check246228_
                           _struct-type-check1249122_
                           _struct-type-check2249123_)))
                      _L249160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp255421
                                                          (let ((__tmp255422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L249161_ _body249200_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp255422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255421
                                                      _L248804_))))
                                               _tl249132249157_
                                               _hd249133249155_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g249125249139_
                                             _g249126249142_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249125249139_ _g249126249142_))))))
                      (declare (not safe))
                      (_g249124249203_ _L248804_))))
                 (_make-specializer-case-lambda-expr249345_
                  (lambda (_struct-type-check1249208_
                           _struct-type-check2249209_)
                    (let* ((_g249211249230_
                            (lambda (_g249212249227_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249212249227_))))
                           (_g249210249342_
                            (lambda (_g249212249233_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249212249233_))
                                  (let ((_e249216249235_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249212249233_))))
                                    (let ((_hd249215249238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249216249235_)))
                                          (_tl249214249240_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249216249235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl249214249240_))
                                          (let ((_g255423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl249214249240_
                                                    '0))))
                                            (begin
                                              (let ((_g255424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g255423_)
                                                           (##vector-length
                                                            _g255423_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g255424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g255424_)))
                                              (let ((_target249217249243_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255423_
                                                        0)))
                                                    (_tl249219249245_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255423_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249219249245_))
                                                    (letrec ((_loop249220249248_
                                                              (lambda (_hd249218249251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause249224249253_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249218249251_))
                            (let ((_e249221249256_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249218249251_))))
                              (let ((_lp-hd249222249259_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249221249256_)))
                                    (_lp-tl249223249261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249221249256_))))
                                (let ((__tmp255427
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd249222249259_
                                               _clause249224249253_))))
                                  (declare (not safe))
                                  (_loop249220249248_
                                   _lp-tl249223249261_
                                   __tmp255427))))
                            (let ((_clause249225249264_
                                   (reverse _clause249224249253_)))
                              ((lambda (_L249267_)
                                 (let* ((_clauses249340_
                                         (map (lambda (_clause249282_)
                                                (let* ((_g249284249295_
                                                        (lambda (_g249285249292_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g249285249292_))))
                                                       (_g249283249330_
                                                        (lambda (_g249285249298_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g249285249298_))
                      (let ((_e249290249300_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g249285249298_))))
                        (let ((_hd249289249303_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249290249300_)))
                              (_tl249288249305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249290249300_))))
                          ((lambda (_L249308_ _L249309_)
                             (let* ((_self249321_
                                     (list-ref _L249309_ _self-index248521_))
                                    (_body249327_
                                     (map (lambda (_g249322249324_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g249322249324_
                                               _self249321_
                                               _$t249028_
                                               _method-calls246226_
                                               _slot-refs246227_
                                               _class-type-check246228_
                                               _struct-type-check1249208_
                                               _struct-type-check2249209_)))
                                          _L249308_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L249309_ _body249327_))))
                           _tl249288249305_
                           _hd249289249303_)))
                      (let ()
                        (declare (not safe))
                        (_g249284249295_ _g249285249298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g249283249330_
                                                   _clause249282_)))
                                              (let ((__tmp255425
                                                     (lambda (_g249332249335_
                                                              _g249333249337_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g249332249335_
                                                               _g249333249337_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp255425
                                                        '()
                                                        _L249267_))))
                                        (__tmp255426
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses249340_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255426
                                    _L248803_)))
                               _clause249225249264_))))))
              (let ()
                (declare (not safe))
                (_loop249220249248_ _target249217249243_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249211249230_
                                                       _g249212249233_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g249211249230_
                                             _g249212249233_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249211249230_ _g249212249233_))))))
                      (declare (not safe))
                      (_g249210249342_ _L248803_))))
                 (_make-specializer-impl249350_
                  (lambda (_specializer-lambda-expr249347_
                           _specializer-case-lambda-expr249348_)
                    (let ((__tmp255428
                           (let ((__tmp255429
                                  (let ((__tmp255431
                                         (let ((__tmp255432
                                                (let ((__tmp255449
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L248222_ '())))
                                                      (__tmp255433
                                                       (let ((__tmp255434
                                                              (let ((__tmp255435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255437
                                    (let ((__tmp255438
                                           (let ((__tmp255448
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L248221_ '())))
                                                 (__tmp255439
                                                  (let ((__tmp255440
                                                         (let ((__tmp255441
                                                                (let ((__tmp255442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255444
                                      (let ((__tmp255445
                                             (let ((__tmp255447
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L248805_ '())))
                                                   (__tmp255446
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr249347_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp255447
                                                     __tmp255446))))
                                        (declare (not safe))
                                        (cons __tmp255445 '())))
                                     (__tmp255443
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr249348_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp255444 __tmp255443))))
                          (declare (not safe))
                          (cons '%#let-values __tmp255442))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255441 _stx246132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255440 '()))))
                                             (declare (not safe))
                                             (cons __tmp255448 __tmp255439))))
                                      (declare (not safe))
                                      (cons __tmp255438 '())))
                                   (__tmp255436
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248219_ '()))))
                               (declare (not safe))
                               (cons __tmp255437 __tmp255436))))
                        (declare (not safe))
                        (cons '%#let-values __tmp255435))))
                 (declare (not safe))
                 (cons __tmp255434 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255449
                                                        __tmp255433))))
                                           (declare (not safe))
                                           (cons __tmp255432 '())))
                                        (__tmp255430
                                         (let ()
                                           (declare (not safe))
                                           (cons _L248218_ '()))))
                                    (declare (not safe))
                                    (cons __tmp255431 __tmp255430))))
                             (declare (not safe))
                             (cons '%#let-values __tmp255429))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255428 _stx246132_))))
                 (_specializer-lambda-expr249352_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr249206_
                     _struct-check-all249098_
                     _empty246231_)))
                 (_specializer-case-lambda-expr249354_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr249345_
                     _struct-check-all249098_
                     _empty246231_)))
                 (_specializer-impl249356_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl249350_
                     _specializer-lambda-expr249352_
                     _specializer-case-lambda-expr249354_)))
                 (_unchecked-specializer-lambda-expr249358_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246234_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr249206_
                         _empty246231_
                         _struct-check-all249098_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr249360_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246234_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr249345_
                         _empty246231_
                         _struct-check-all249098_))
                      '#f))
                 (_unchecked-specializer-impl249362_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246234_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl249350_
                         _unchecked-specializer-lambda-expr249358_
                         _unchecked-specializer-case-lambda-expr249360_))
                      '#f))
                 (_specializer-impl249364_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246138_
                     _$t249028_
                     _methods-bind249051_
                     _slots-bind249074_
                     _class-check-bind249096_
                     _struct-check-bind249120_
                     _specializer-impl249356_
                     _lifted-specializer-id249026_
                     _unchecked-specializer-impl249362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255451
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246207_)))
                                                          (__tmp255450
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id249019_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255451
                                                       '" => "
                                                       __tmp255450))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246139_
                                                       _L246207_
                                                       _specializer-id249019_
                                                       _specializer-impl249364_
                                                       _lifted-specializer-id249026_
                                                       _unchecked-specializer-impl249362_)))))
                                            _hd248736248798_
                                            _hd248733248790_
                                            _hd248730248782_)
                                           (let ()
                                             (declare (not safe))
                                             (_g248712248742_
                                              _g248713248745_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248712248742_ _g248713248745_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248712248742_ _g248713248745_)))
                           (let ()
                             (declare (not safe))
                             (_g248712248742_ _g248713248745_)))))
                   (let ()
                     (declare (not safe))
                     (_g248712248742_ _g248713248745_)))
               (let ()
                 (declare (not safe))
                 (_g248712248742_ _g248713248745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248712248742_
                                                  _g248713248745_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248712248742_ _g248713248745_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248712248742_ _g248713248745_)))))
                       (let ()
                         (declare (not safe))
                         (_g248712248742_ _g248713248745_)))))
               (let ()
                 (declare (not safe))
                 (_g248712248742_ _g248713248745_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248711249367_ _L248220_))
                                         _stx246132_))))
                             _hd248317248440_
                             _kw-ref248315248461_
                             _hd248305248427_
                             _hd248296248403_
                             _hd248287248379_)
                            (let ()
                              (declare (not safe))
                              (_g248261248323_ _g248262248326_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop248310248445_
                                                   _target248307248432_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g248261248323_
                                                 _g248262248326_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248261248323_ _g248262248326_))))))
                            (let ()
                              (declare (not safe))
                              (_g248261248323_ _g248262248326_)))
                        (let ()
                          (declare (not safe))
                          (_g248261248323_ _g248262248326_)))
                    (let ()
                      (declare (not safe))
                      (_g248261248323_ _g248262248326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248261248323_
                                                       _g248262248326_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248261248323_
                                                   _g248262248326_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g248261248323_
                                               _g248262248326_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248261248323_ _g248262248326_)))))
                            (let ()
                              (declare (not safe))
                              (_g248261248323_ _g248262248326_)))
                        (let ()
                          (declare (not safe))
                          (_g248261248323_ _g248262248326_)))))
                (let ()
                  (declare (not safe))
                  (_g248261248323_ _g248262248326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248261248323_
                                                       _g248262248326_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248261248323_
                                                   _g248262248326_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g248261248323_ _g248262248326_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g248261248323_ _g248262248326_)))
                            (let ()
                              (declare (not safe))
                              (_g248261248323_ _g248262248326_)))))
                    (let ()
                      (declare (not safe))
                      (_g248261248323_ _g248262248326_)))
                (let ()
                  (declare (not safe))
                  (_g248261248323_ _g248262248326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248261248323_
                                                       _g248262248326_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248261248323_
                                               _g248262248326_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248261248323_ _g248262248326_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248261248323_ _g248262248326_)))
                            (let ()
                              (declare (not safe))
                              (_g248261248323_ _g248262248326_)))))
                    (let ()
                      (declare (not safe))
                      (_g248261248323_ _g248262248326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248261248323_
                                                       _g248262248326_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248261248323_
                                               _g248262248326_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g248261248323_ _g248262248326_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248261248323_ _g248262248326_)))))
                            (let ()
                              (declare (not safe))
                              (_g248261248323_ _g248262248326_))))))
                (declare (not safe))
                (_g248260249370_ _L248219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd248095248213_
                                                    _hd248092248205_
                                                    _hd248089248197_
                                                    _hd248086248189_
                                                    _hd248068248141_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248048248101_
                                                      _g248049248104_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248048248101_
                                              _g248049248104_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g248048248101_ _g248049248104_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g248048248101_ _g248049248104_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248048248101_ _g248049248104_)))))
                       (let ()
                         (declare (not safe))
                         (_g248048248101_ _g248049248104_)))
                   (let ()
                     (declare (not safe))
                     (_g248048248101_ _g248049248104_)))
               (let ()
                 (declare (not safe))
                 (_g248048248101_ _g248049248104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248048248101_
                                                  _g248049248104_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248048248101_
                                              _g248049248104_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248048248101_ _g248049248104_)))))
                           (let ()
                             (declare (not safe))
                             (_g248048248101_ _g248049248104_)))))
                   (let ()
                     (declare (not safe))
                     (_g248048248101_ _g248049248104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248048248101_
                                                      _g248049248104_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248048248101_
                                                  _g248049248104_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248048248101_
                                              _g248049248104_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248048248101_ _g248049248104_)))))
                           (let ()
                             (declare (not safe))
                             (_g248048248101_ _g248049248104_)))
                       (let ()
                         (declare (not safe))
                         (_g248048248101_ _g248049248104_)))))
               (let ()
                 (declare (not safe))
                 (_g248048248101_ _g248049248104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248048248101_
                                                  _g248049248104_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248048248101_ _g248049248104_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248048248101_ _g248049248104_)))
                           (let ()
                             (declare (not safe))
                             (_g248048248101_ _g248049248104_)))
                       (let ()
                         (declare (not safe))
                         (_g248048248101_ _g248049248104_)))))
               (let ()
                 (declare (not safe))
                 (_g248048248101_ _g248049248104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248047249373_ _L246206_))
                                         _stx246132_))))))))
                  (___kont254180254181_ (lambda () _stx246132_)))
              (let ((___match254209254210_
                     (lambda (_e246148246174_
                              _hd246147246177_
                              _tl246146246179_
                              _e246151246182_
                              _hd246150246185_
                              _tl246149246187_
                              _e246154246190_
                              _hd246153246193_
                              _tl246152246195_
                              _e246157246198_
                              _hd246156246201_
                              _tl246155246203_)
                       (let ((_L246206_ _hd246156246201_)
                             (_L246207_ _hd246153246193_))
                         (if (let ((__tmp255568
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L246207_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp255568))
                             (___kont254178254179_ _L246206_ _L246207_)
                             (___kont254180254181_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254176254177_))
                    (let ((_e246148246174_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254176254177_))))
                      (let ((_tl246146246179_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246148246174_)))
                            (_hd246147246177_
                             (let ()
                               (declare (not safe))
                               (##car _e246148246174_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246146246179_))
                            (let ((_e246151246182_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246146246179_))))
                              (let ((_tl246149246187_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246151246182_)))
                                    (_hd246150246185_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246151246182_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd246150246185_))
                                    (let ((_e246154246190_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd246150246185_))))
                                      (let ((_tl246152246195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246154246190_)))
                                            (_hd246153246193_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246154246190_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl246152246195_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl246149246187_))
                                                (let ((_e246157246198_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl246149246187_))))
                                                  (let ((_tl246155246203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e246157246198_)))
                                                        (_hd246156246201_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e246157246198_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl246155246203_))
                                                        (___match254209254210_
                                                         _e246148246174_
                                                         _hd246147246177_
                                                         _tl246146246179_
                                                         _e246151246182_
                                                         _hd246150246185_
                                                         _tl246149246187_
                                                         _e246154246190_
                                                         _hd246153246193_
                                                         _tl246152246195_
                                                         _e246157246198_
                                                         _hd246156246201_
                                                         _tl246155246203_)
                                                        (___kont254180254181_))))
                                                (___kont254180254181_))
                                            (___kont254180254181_))))
                                    (___kont254180254181_))))
                            (___kont254180254181_))))
                    (___kont254180254181_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx245108_
               _self245109_
               _methods245110_
               _slots245111_
               _class-check245112_
               _struct-check245113_
               _struct-assert245114_)
        (let* ((___stx254212254213_ _stx245108_)
               (_g245122245344_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx254212254213_)))))
          (let ((___kont254214254215_
                 (lambda (_L246081_ _L246082_ _L246083_ _L246084_)
                   (let ((__tmp255569
                          (let () (declare (not safe)) (gx#stx-e _L246082_))))
                     (declare (not safe))
                     (table-set! _methods245110_ __tmp255569 '#t))
                   (for-each
                    (lambda (_g246117246119_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246117246119_
                         _self245109_
                         _methods245110_
                         _slots245111_
                         _class-check245112_
                         _struct-check245113_
                         _struct-assert245114_)))
                    (let ((__tmp255570
                           (lambda (_g246121246124_ _g246122246126_)
                             (let ()
                               (declare (not safe))
                               (cons _g246121246124_ _g246122246126_)))))
                      (declare (not safe))
                      (foldr1 __tmp255570 '() _L246081_)))))
                (___kont254218254219_
                 (lambda (_L245916_ _L245917_ _L245918_ _L245919_ _L245920_)
                   (let ((__tmp255571
                          (let () (declare (not safe)) (gx#stx-e _L245917_))))
                     (declare (not safe))
                     (table-set! _methods245110_ __tmp255571 '#t))
                   (for-each
                    (lambda (_g245960245962_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g245960245962_
                         _self245109_
                         _methods245110_
                         _slots245111_
                         _class-check245112_
                         _struct-check245113_
                         _struct-assert245114_)))
                    (let ((__tmp255572
                           (lambda (_g245964245967_ _g245965245969_)
                             (let ()
                               (declare (not safe))
                               (cons _g245964245967_ _g245965245969_)))))
                      (declare (not safe))
                      (foldr1 __tmp255572 '() _L245916_)))))
                (___kont254222254223_
                 (lambda (_L245749_ _L245750_ _L245751_)
                   (let ((__tmp255573
                          (let () (declare (not safe)) (gx#stx-e _L245749_))))
                     (declare (not safe))
                     (table-set! _slots245111_ __tmp255573 '#t))))
                (___kont254224254225_
                 (lambda (_L245626_ _L245627_ _L245628_ _L245629_)
                   (let ((__tmp255574
                          (let () (declare (not safe)) (gx#stx-e _L245627_))))
                     (declare (not safe))
                     (table-set! _slots245111_ __tmp255574 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245626_
                      _self245109_
                      _methods245110_
                      _slots245111_
                      _class-check245112_
                      _struct-check245113_
                      _struct-assert245114_))))
                (___kont254226254227_
                 (lambda (_L245510_ _L245511_)
                   (let ((__tmp255575
                          (##structure-ref
                           (let ((__tmp255576
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245511_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255576))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245111_ __tmp255575 '#t))))
                (___kont254228254229_
                 (lambda (_L245420_ _L245421_ _L245422_)
                   (let ((__tmp255577
                          (##structure-ref
                           (let ((__tmp255578
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245422_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255578))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245111_ __tmp255577 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245420_
                      _self245109_
                      _methods245110_
                      _slots245111_
                      _class-check245112_
                      _struct-check245113_
                      _struct-assert245114_))))
                (___kont254230254231_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx245108_
                      _self245109_
                      _methods245110_
                      _slots245111_
                      _class-check245112_
                      _struct-check245113_
                      _struct-assert245114_)))))
            (let* ((___match254711254712_
                    (lambda (_e245318245356_
                             _hd245317245359_
                             _tl245316245361_
                             _e245321245364_
                             _hd245320245367_
                             _tl245319245369_
                             _e245324245372_
                             _hd245323245375_
                             _tl245322245377_
                             _e245327245380_
                             _hd245326245383_
                             _tl245325245385_
                             _e245330245388_
                             _hd245329245391_
                             _tl245328245393_
                             _e245333245396_
                             _hd245332245399_
                             _tl245331245401_
                             _e245336245404_
                             _hd245335245407_
                             _tl245334245409_
                             _e245339245412_
                             _hd245338245415_
                             _tl245337245417_)
                      (let ((_L245420_ _hd245338245415_)
                            (_L245421_ _hd245335245407_)
                            (_L245422_ _hd245326245383_))
                        (if (and (let ((__tmp255579
                                        (let ((__tmp255580
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245422_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255580))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255579
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245421_
                                    _self245109_)))
                            (___kont254228254229_
                             _L245420_
                             _L245421_
                             _L245422_)
                            (___kont254230254231_)))))
                   (___match254709254710_
                    (lambda (_e245318245356_
                             _hd245317245359_
                             _tl245316245361_
                             _e245321245364_
                             _hd245320245367_
                             _tl245319245369_
                             _e245324245372_
                             _hd245323245375_
                             _tl245322245377_
                             _e245327245380_
                             _hd245326245383_
                             _tl245325245385_
                             _e245330245388_
                             _hd245329245391_
                             _tl245328245393_
                             _e245333245396_
                             _hd245332245399_
                             _tl245331245401_
                             _e245336245404_
                             _hd245335245407_
                             _tl245334245409_
                             _e245339245412_
                             _hd245338245415_
                             _tl245337245417_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245337245417_))
                          (___match254711254712_
                           _e245318245356_
                           _hd245317245359_
                           _tl245316245361_
                           _e245321245364_
                           _hd245320245367_
                           _tl245319245369_
                           _e245324245372_
                           _hd245323245375_
                           _tl245322245377_
                           _e245327245380_
                           _hd245326245383_
                           _tl245325245385_
                           _e245330245388_
                           _hd245329245391_
                           _tl245328245393_
                           _e245333245396_
                           _hd245332245399_
                           _tl245331245401_
                           _e245336245404_
                           _hd245335245407_
                           _tl245334245409_
                           _e245339245412_
                           _hd245338245415_
                           _tl245337245417_)
                          (___kont254230254231_))))
                   (___match254703254704_
                    (lambda (_e245318245356_
                             _hd245317245359_
                             _tl245316245361_
                             _e245321245364_
                             _hd245320245367_
                             _tl245319245369_
                             _e245324245372_
                             _hd245323245375_
                             _tl245322245377_
                             _e245327245380_
                             _hd245326245383_
                             _tl245325245385_
                             _e245330245388_
                             _hd245329245391_
                             _tl245328245393_
                             _e245333245396_
                             _hd245332245399_
                             _tl245331245401_
                             _e245336245404_
                             _hd245335245407_
                             _tl245334245409_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245328245393_))
                          (let ((_e245339245412_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245328245393_))))
                            (let ((_tl245337245417_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245339245412_)))
                                  (_hd245338245415_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245339245412_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245337245417_))
                                  (___match254711254712_
                                   _e245318245356_
                                   _hd245317245359_
                                   _tl245316245361_
                                   _e245321245364_
                                   _hd245320245367_
                                   _tl245319245369_
                                   _e245324245372_
                                   _hd245323245375_
                                   _tl245322245377_
                                   _e245327245380_
                                   _hd245326245383_
                                   _tl245325245385_
                                   _e245330245388_
                                   _hd245329245391_
                                   _tl245328245393_
                                   _e245333245396_
                                   _hd245332245399_
                                   _tl245331245401_
                                   _e245336245404_
                                   _hd245335245407_
                                   _tl245334245409_
                                   _e245339245412_
                                   _hd245338245415_
                                   _tl245337245417_)
                                  (___kont254230254231_))))
                          (___kont254230254231_))))
                   (___match254649254650_
                    (lambda (_e245294245454_
                             _hd245293245457_
                             _tl245292245459_
                             _e245297245462_
                             _hd245296245465_
                             _tl245295245467_
                             _e245300245470_
                             _hd245299245473_
                             _tl245298245475_
                             _e245303245478_
                             _hd245302245481_
                             _tl245301245483_
                             _e245306245486_
                             _hd245305245489_
                             _tl245304245491_
                             _e245309245494_
                             _hd245308245497_
                             _tl245307245499_
                             _e245312245502_
                             _hd245311245505_
                             _tl245310245507_)
                      (let ((_L245510_ _hd245311245505_)
                            (_L245511_ _hd245302245481_))
                        (if (and (let ((__tmp255581
                                        (let ((__tmp255582
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245511_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255582))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255581
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245510_
                                    _self245109_)))
                            (___kont254226254227_ _L245510_ _L245511_)
                            (___kont254230254231_)))))
                   (___match254647254648_
                    (lambda (_e245294245454_
                             _hd245293245457_
                             _tl245292245459_
                             _e245297245462_
                             _hd245296245465_
                             _tl245295245467_
                             _e245300245470_
                             _hd245299245473_
                             _tl245298245475_
                             _e245303245478_
                             _hd245302245481_
                             _tl245301245483_
                             _e245306245486_
                             _hd245305245489_
                             _tl245304245491_
                             _e245309245494_
                             _hd245308245497_
                             _tl245307245499_
                             _e245312245502_
                             _hd245311245505_
                             _tl245310245507_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245304245491_))
                          (___match254649254650_
                           _e245294245454_
                           _hd245293245457_
                           _tl245292245459_
                           _e245297245462_
                           _hd245296245465_
                           _tl245295245467_
                           _e245300245470_
                           _hd245299245473_
                           _tl245298245475_
                           _e245303245478_
                           _hd245302245481_
                           _tl245301245483_
                           _e245306245486_
                           _hd245305245489_
                           _tl245304245491_
                           _e245309245494_
                           _hd245308245497_
                           _tl245307245499_
                           _e245312245502_
                           _hd245311245505_
                           _tl245310245507_)
                          (___match254703254704_
                           _e245294245454_
                           _hd245293245457_
                           _tl245292245459_
                           _e245297245462_
                           _hd245296245465_
                           _tl245295245467_
                           _e245300245470_
                           _hd245299245473_
                           _tl245298245475_
                           _e245303245478_
                           _hd245302245481_
                           _tl245301245483_
                           _e245306245486_
                           _hd245305245489_
                           _tl245304245491_
                           _e245309245494_
                           _hd245308245497_
                           _tl245307245499_
                           _e245312245502_
                           _hd245311245505_
                           _tl245310245507_))))
                   (___match254593254594_
                    (lambda (_e245259245538_
                             _hd245258245541_
                             _tl245257245543_
                             _e245262245546_
                             _hd245261245549_
                             _tl245260245551_
                             _e245265245554_
                             _hd245264245557_
                             _tl245263245559_
                             _e245268245562_
                             _hd245267245565_
                             _tl245266245567_
                             _e245271245570_
                             _hd245270245573_
                             _tl245269245575_
                             _e245274245578_
                             _hd245273245581_
                             _tl245272245583_
                             _e245277245586_
                             _hd245276245589_
                             _tl245275245591_
                             _e245280245594_
                             _hd245279245597_
                             _tl245278245599_
                             _e245283245602_
                             _hd245282245605_
                             _tl245281245607_
                             _e245286245610_
                             _hd245285245613_
                             _tl245284245615_
                             _e245289245618_
                             _hd245288245621_
                             _tl245287245623_)
                      (let ((_L245626_ _hd245288245621_)
                            (_L245627_ _hd245285245613_)
                            (_L245628_ _hd245276245589_)
                            (_L245629_ _hd245267245565_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245629_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245629_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245628_
                                    _self245109_)))
                            (___kont254224254225_
                             _L245626_
                             _L245627_
                             _L245628_
                             _L245629_)
                            (___kont254230254231_)))))
                   (___match254585254586_
                    (lambda (_e245259245538_
                             _hd245258245541_
                             _tl245257245543_
                             _e245262245546_
                             _hd245261245549_
                             _tl245260245551_
                             _e245265245554_
                             _hd245264245557_
                             _tl245263245559_
                             _e245268245562_
                             _hd245267245565_
                             _tl245266245567_
                             _e245271245570_
                             _hd245270245573_
                             _tl245269245575_
                             _e245274245578_
                             _hd245273245581_
                             _tl245272245583_
                             _e245277245586_
                             _hd245276245589_
                             _tl245275245591_
                             _e245280245594_
                             _hd245279245597_
                             _tl245278245599_
                             _e245283245602_
                             _hd245282245605_
                             _tl245281245607_
                             _e245286245610_
                             _hd245285245613_
                             _tl245284245615_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245278245599_))
                          (let ((_e245289245618_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245278245599_))))
                            (let ((_tl245287245623_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245289245618_)))
                                  (_hd245288245621_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245289245618_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245287245623_))
                                  (___match254593254594_
                                   _e245259245538_
                                   _hd245258245541_
                                   _tl245257245543_
                                   _e245262245546_
                                   _hd245261245549_
                                   _tl245260245551_
                                   _e245265245554_
                                   _hd245264245557_
                                   _tl245263245559_
                                   _e245268245562_
                                   _hd245267245565_
                                   _tl245266245567_
                                   _e245271245570_
                                   _hd245270245573_
                                   _tl245269245575_
                                   _e245274245578_
                                   _hd245273245581_
                                   _tl245272245583_
                                   _e245277245586_
                                   _hd245276245589_
                                   _tl245275245591_
                                   _e245280245594_
                                   _hd245279245597_
                                   _tl245278245599_
                                   _e245283245602_
                                   _hd245282245605_
                                   _tl245281245607_
                                   _e245286245610_
                                   _hd245285245613_
                                   _tl245284245615_
                                   _e245289245618_
                                   _hd245288245621_
                                   _tl245287245623_)
                                  (___kont254230254231_))))
                          (___match254709254710_
                           _e245259245538_
                           _hd245258245541_
                           _tl245257245543_
                           _e245262245546_
                           _hd245261245549_
                           _tl245260245551_
                           _e245265245554_
                           _hd245264245557_
                           _tl245263245559_
                           _e245268245562_
                           _hd245267245565_
                           _tl245266245567_
                           _e245271245570_
                           _hd245270245573_
                           _tl245269245575_
                           _e245274245578_
                           _hd245273245581_
                           _tl245272245583_
                           _e245277245586_
                           _hd245276245589_
                           _tl245275245591_
                           _e245280245594_
                           _hd245279245597_
                           _tl245278245599_))))
                   (___match254507254508_
                    (lambda (_e245225245669_
                             _hd245224245672_
                             _tl245223245674_
                             _e245228245677_
                             _hd245227245680_
                             _tl245226245682_
                             _e245231245685_
                             _hd245230245688_
                             _tl245229245690_
                             _e245234245693_
                             _hd245233245696_
                             _tl245232245698_
                             _e245237245701_
                             _hd245236245704_
                             _tl245235245706_
                             _e245240245709_
                             _hd245239245712_
                             _tl245238245714_
                             _e245243245717_
                             _hd245242245720_
                             _tl245241245722_
                             _e245246245725_
                             _hd245245245728_
                             _tl245244245730_
                             _e245249245733_
                             _hd245248245736_
                             _tl245247245738_
                             _e245252245741_
                             _hd245251245744_
                             _tl245250245746_)
                      (let ((_L245749_ _hd245251245744_)
                            (_L245750_ _hd245242245720_)
                            (_L245751_ _hd245233245696_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245751_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245751_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245750_
                                    _self245109_)))
                            (___kont254222254223_
                             _L245749_
                             _L245750_
                             _L245751_)
                            (___match254711254712_
                             _e245225245669_
                             _hd245224245672_
                             _tl245223245674_
                             _e245228245677_
                             _hd245227245680_
                             _tl245226245682_
                             _e245231245685_
                             _hd245230245688_
                             _tl245229245690_
                             _e245234245693_
                             _hd245233245696_
                             _tl245232245698_
                             _e245237245701_
                             _hd245236245704_
                             _tl245235245706_
                             _e245240245709_
                             _hd245239245712_
                             _tl245238245714_
                             _e245243245717_
                             _hd245242245720_
                             _tl245241245722_
                             _e245246245725_
                             _hd245245245728_
                             _tl245244245730_)))))
                   (___match254505254506_
                    (lambda (_e245225245669_
                             _hd245224245672_
                             _tl245223245674_
                             _e245228245677_
                             _hd245227245680_
                             _tl245226245682_
                             _e245231245685_
                             _hd245230245688_
                             _tl245229245690_
                             _e245234245693_
                             _hd245233245696_
                             _tl245232245698_
                             _e245237245701_
                             _hd245236245704_
                             _tl245235245706_
                             _e245240245709_
                             _hd245239245712_
                             _tl245238245714_
                             _e245243245717_
                             _hd245242245720_
                             _tl245241245722_
                             _e245246245725_
                             _hd245245245728_
                             _tl245244245730_
                             _e245249245733_
                             _hd245248245736_
                             _tl245247245738_
                             _e245252245741_
                             _hd245251245744_
                             _tl245250245746_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245244245730_))
                          (___match254507254508_
                           _e245225245669_
                           _hd245224245672_
                           _tl245223245674_
                           _e245228245677_
                           _hd245227245680_
                           _tl245226245682_
                           _e245231245685_
                           _hd245230245688_
                           _tl245229245690_
                           _e245234245693_
                           _hd245233245696_
                           _tl245232245698_
                           _e245237245701_
                           _hd245236245704_
                           _tl245235245706_
                           _e245240245709_
                           _hd245239245712_
                           _tl245238245714_
                           _e245243245717_
                           _hd245242245720_
                           _tl245241245722_
                           _e245246245725_
                           _hd245245245728_
                           _tl245244245730_
                           _e245249245733_
                           _hd245248245736_
                           _tl245247245738_
                           _e245252245741_
                           _hd245251245744_
                           _tl245250245746_)
                          (___match254585254586_
                           _e245225245669_
                           _hd245224245672_
                           _tl245223245674_
                           _e245228245677_
                           _hd245227245680_
                           _tl245226245682_
                           _e245231245685_
                           _hd245230245688_
                           _tl245229245690_
                           _e245234245693_
                           _hd245233245696_
                           _tl245232245698_
                           _e245237245701_
                           _hd245236245704_
                           _tl245235245706_
                           _e245240245709_
                           _hd245239245712_
                           _tl245238245714_
                           _e245243245717_
                           _hd245242245720_
                           _tl245241245722_
                           _e245246245725_
                           _hd245245245728_
                           _tl245244245730_
                           _e245249245733_
                           _hd245248245736_
                           _tl245247245738_
                           _e245252245741_
                           _hd245251245744_
                           _tl245250245746_))))
                   (___match254495254496_
                    (lambda (_e245225245669_
                             _hd245224245672_
                             _tl245223245674_
                             _e245228245677_
                             _hd245227245680_
                             _tl245226245682_
                             _e245231245685_
                             _hd245230245688_
                             _tl245229245690_
                             _e245234245693_
                             _hd245233245696_
                             _tl245232245698_
                             _e245237245701_
                             _hd245236245704_
                             _tl245235245706_
                             _e245240245709_
                             _hd245239245712_
                             _tl245238245714_
                             _e245243245717_
                             _hd245242245720_
                             _tl245241245722_
                             _e245246245725_
                             _hd245245245728_
                             _tl245244245730_
                             _e245249245733_
                             _hd245248245736_
                             _tl245247245738_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd245248245736_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245247245738_))
                              (let ((_e245252245741_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245247245738_))))
                                (let ((_tl245250245746_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245252245741_)))
                                      (_hd245251245744_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245252245741_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245250245746_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl245244245730_))
                                          (___match254507254508_
                                           _e245225245669_
                                           _hd245224245672_
                                           _tl245223245674_
                                           _e245228245677_
                                           _hd245227245680_
                                           _tl245226245682_
                                           _e245231245685_
                                           _hd245230245688_
                                           _tl245229245690_
                                           _e245234245693_
                                           _hd245233245696_
                                           _tl245232245698_
                                           _e245237245701_
                                           _hd245236245704_
                                           _tl245235245706_
                                           _e245240245709_
                                           _hd245239245712_
                                           _tl245238245714_
                                           _e245243245717_
                                           _hd245242245720_
                                           _tl245241245722_
                                           _e245246245725_
                                           _hd245245245728_
                                           _tl245244245730_
                                           _e245249245733_
                                           _hd245248245736_
                                           _tl245247245738_
                                           _e245252245741_
                                           _hd245251245744_
                                           _tl245250245746_)
                                          (___match254585254586_
                                           _e245225245669_
                                           _hd245224245672_
                                           _tl245223245674_
                                           _e245228245677_
                                           _hd245227245680_
                                           _tl245226245682_
                                           _e245231245685_
                                           _hd245230245688_
                                           _tl245229245690_
                                           _e245234245693_
                                           _hd245233245696_
                                           _tl245232245698_
                                           _e245237245701_
                                           _hd245236245704_
                                           _tl245235245706_
                                           _e245240245709_
                                           _hd245239245712_
                                           _tl245238245714_
                                           _e245243245717_
                                           _hd245242245720_
                                           _tl245241245722_
                                           _e245246245725_
                                           _hd245245245728_
                                           _tl245244245730_
                                           _e245249245733_
                                           _hd245248245736_
                                           _tl245247245738_
                                           _e245252245741_
                                           _hd245251245744_
                                           _tl245250245746_))
                                      (___match254709254710_
                                       _e245225245669_
                                       _hd245224245672_
                                       _tl245223245674_
                                       _e245228245677_
                                       _hd245227245680_
                                       _tl245226245682_
                                       _e245231245685_
                                       _hd245230245688_
                                       _tl245229245690_
                                       _e245234245693_
                                       _hd245233245696_
                                       _tl245232245698_
                                       _e245237245701_
                                       _hd245236245704_
                                       _tl245235245706_
                                       _e245240245709_
                                       _hd245239245712_
                                       _tl245238245714_
                                       _e245243245717_
                                       _hd245242245720_
                                       _tl245241245722_
                                       _e245246245725_
                                       _hd245245245728_
                                       _tl245244245730_))))
                              (___match254709254710_
                               _e245225245669_
                               _hd245224245672_
                               _tl245223245674_
                               _e245228245677_
                               _hd245227245680_
                               _tl245226245682_
                               _e245231245685_
                               _hd245230245688_
                               _tl245229245690_
                               _e245234245693_
                               _hd245233245696_
                               _tl245232245698_
                               _e245237245701_
                               _hd245236245704_
                               _tl245235245706_
                               _e245240245709_
                               _hd245239245712_
                               _tl245238245714_
                               _e245243245717_
                               _hd245242245720_
                               _tl245241245722_
                               _e245246245725_
                               _hd245245245728_
                               _tl245244245730_))
                          (___match254709254710_
                           _e245225245669_
                           _hd245224245672_
                           _tl245223245674_
                           _e245228245677_
                           _hd245227245680_
                           _tl245226245682_
                           _e245231245685_
                           _hd245230245688_
                           _tl245229245690_
                           _e245234245693_
                           _hd245233245696_
                           _tl245232245698_
                           _e245237245701_
                           _hd245236245704_
                           _tl245235245706_
                           _e245240245709_
                           _hd245239245712_
                           _tl245238245714_
                           _e245243245717_
                           _hd245242245720_
                           _tl245241245722_
                           _e245246245725_
                           _hd245245245728_
                           _tl245244245730_))))
                   (___match254427254428_
                    (lambda (_e245174245788_
                             _hd245173245791_
                             _tl245172245793_
                             _e245177245796_
                             _hd245176245799_
                             _tl245175245801_
                             _e245180245804_
                             _hd245179245807_
                             _tl245178245809_
                             _e245183245812_
                             _hd245182245815_
                             _tl245181245817_
                             _e245186245820_
                             _hd245185245823_
                             _tl245184245825_
                             _e245189245828_
                             _hd245188245831_
                             _tl245187245833_
                             _e245192245836_
                             _hd245191245839_
                             _tl245190245841_
                             _e245195245844_
                             _hd245194245847_
                             _tl245193245849_
                             _e245198245852_
                             _hd245197245855_
                             _tl245196245857_
                             _e245201245860_
                             _hd245200245863_
                             _tl245199245865_
                             _e245204245868_
                             _hd245203245871_
                             _tl245202245873_
                             _e245207245876_
                             _hd245206245879_
                             _tl245205245881_
                             _e245210245884_
                             _hd245209245887_
                             _tl245208245889_
                             ___splice254220254221_
                             _target245211245892_
                             _tl245213245894_)
                      (letrec ((_loop245214245897_
                                (lambda (_hd245212245900_ _args245218245902_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245212245900_))
                                      (let ((_e245215245905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245212245900_))))
                                        (let ((_lp-tl245217245910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245215245905_)))
                                              (_lp-hd245216245908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245215245905_))))
                                          (let ((__tmp255583
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245216245908_
                                                         _args245218245902_))))
                                            (declare (not safe))
                                            (_loop245214245897_
                                             _lp-tl245217245910_
                                             __tmp255583))))
                                      (let ((_args245219245913_
                                             (reverse _args245218245902_)))
                                        (let ((_L245916_ _args245219245913_)
                                              (_L245917_ _hd245209245887_)
                                              (_L245918_ _hd245200245863_)
                                              (_L245919_ _hd245191245839_)
                                              (_L245920_ _hd245182245815_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245920_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245919_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L245918_
                                                      _self245109_)))
                                              (___kont254218254219_
                                               _L245916_
                                               _L245917_
                                               _L245918_
                                               _L245919_
                                               _L245920_)
                                              (___kont254230254231_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245214245897_ _target245211245892_ '())))))
                   (___match254385254386_
                    (lambda (_e245174245788_
                             _hd245173245791_
                             _tl245172245793_
                             _e245177245796_
                             _hd245176245799_
                             _tl245175245801_
                             _e245180245804_
                             _hd245179245807_
                             _tl245178245809_
                             _e245183245812_
                             _hd245182245815_
                             _tl245181245817_
                             _e245186245820_
                             _hd245185245823_
                             _tl245184245825_
                             _e245189245828_
                             _hd245188245831_
                             _tl245187245833_
                             _e245192245836_
                             _hd245191245839_
                             _tl245190245841_
                             _e245195245844_
                             _hd245194245847_
                             _tl245193245849_
                             _e245198245852_
                             _hd245197245855_
                             _tl245196245857_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd245197245855_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245196245857_))
                              (let ((_e245201245860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245196245857_))))
                                (let ((_tl245199245865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245201245860_)))
                                      (_hd245200245863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245201245860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245199245865_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245193245849_))
                                          (let ((_e245204245868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245193245849_))))
                                            (let ((_tl245202245873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245204245868_)))
                                                  (_hd245203245871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245204245868_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245203245871_))
                                                  (let ((_e245207245876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245203245871_))))
                                                    (let ((_tl245205245881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245207245876_)))
                                                          (_hd245206245879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245207245876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd245206245879_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd245206245879_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245205245881_))
                          (let ((_e245210245884_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245205245881_))))
                            (let ((_tl245208245889_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245210245884_)))
                                  (_hd245209245887_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245210245884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245208245889_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245202245873_))
                                      (let ((___splice254220254221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245202245873_
                                                '0))))
                                        (let ((_tl245213245894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254220254221_
                                                  '1)))
                                              (_target245211245892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254220254221_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245213245894_))
                                              (___match254427254428_
                                               _e245174245788_
                                               _hd245173245791_
                                               _tl245172245793_
                                               _e245177245796_
                                               _hd245176245799_
                                               _tl245175245801_
                                               _e245180245804_
                                               _hd245179245807_
                                               _tl245178245809_
                                               _e245183245812_
                                               _hd245182245815_
                                               _tl245181245817_
                                               _e245186245820_
                                               _hd245185245823_
                                               _tl245184245825_
                                               _e245189245828_
                                               _hd245188245831_
                                               _tl245187245833_
                                               _e245192245836_
                                               _hd245191245839_
                                               _tl245190245841_
                                               _e245195245844_
                                               _hd245194245847_
                                               _tl245193245849_
                                               _e245198245852_
                                               _hd245197245855_
                                               _tl245196245857_
                                               _e245201245860_
                                               _hd245200245863_
                                               _tl245199245865_
                                               _e245204245868_
                                               _hd245203245871_
                                               _tl245202245873_
                                               _e245207245876_
                                               _hd245206245879_
                                               _tl245205245881_
                                               _e245210245884_
                                               _hd245209245887_
                                               _tl245208245889_
                                               ___splice254220254221_
                                               _target245211245892_
                                               _tl245213245894_)
                                              (___kont254230254231_))))
                                      (___kont254230254231_))
                                  (___kont254230254231_))))
                          (___kont254230254231_))
                      (___kont254230254231_))
                  (___kont254230254231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254230254231_))))
                                          (___match254709254710_
                                           _e245174245788_
                                           _hd245173245791_
                                           _tl245172245793_
                                           _e245177245796_
                                           _hd245176245799_
                                           _tl245175245801_
                                           _e245180245804_
                                           _hd245179245807_
                                           _tl245178245809_
                                           _e245183245812_
                                           _hd245182245815_
                                           _tl245181245817_
                                           _e245186245820_
                                           _hd245185245823_
                                           _tl245184245825_
                                           _e245189245828_
                                           _hd245188245831_
                                           _tl245187245833_
                                           _e245192245836_
                                           _hd245191245839_
                                           _tl245190245841_
                                           _e245195245844_
                                           _hd245194245847_
                                           _tl245193245849_))
                                      (___match254709254710_
                                       _e245174245788_
                                       _hd245173245791_
                                       _tl245172245793_
                                       _e245177245796_
                                       _hd245176245799_
                                       _tl245175245801_
                                       _e245180245804_
                                       _hd245179245807_
                                       _tl245178245809_
                                       _e245183245812_
                                       _hd245182245815_
                                       _tl245181245817_
                                       _e245186245820_
                                       _hd245185245823_
                                       _tl245184245825_
                                       _e245189245828_
                                       _hd245188245831_
                                       _tl245187245833_
                                       _e245192245836_
                                       _hd245191245839_
                                       _tl245190245841_
                                       _e245195245844_
                                       _hd245194245847_
                                       _tl245193245849_))))
                              (___match254709254710_
                               _e245174245788_
                               _hd245173245791_
                               _tl245172245793_
                               _e245177245796_
                               _hd245176245799_
                               _tl245175245801_
                               _e245180245804_
                               _hd245179245807_
                               _tl245178245809_
                               _e245183245812_
                               _hd245182245815_
                               _tl245181245817_
                               _e245186245820_
                               _hd245185245823_
                               _tl245184245825_
                               _e245189245828_
                               _hd245188245831_
                               _tl245187245833_
                               _e245192245836_
                               _hd245191245839_
                               _tl245190245841_
                               _e245195245844_
                               _hd245194245847_
                               _tl245193245849_))
                          (___match254495254496_
                           _e245174245788_
                           _hd245173245791_
                           _tl245172245793_
                           _e245177245796_
                           _hd245176245799_
                           _tl245175245801_
                           _e245180245804_
                           _hd245179245807_
                           _tl245178245809_
                           _e245183245812_
                           _hd245182245815_
                           _tl245181245817_
                           _e245186245820_
                           _hd245185245823_
                           _tl245184245825_
                           _e245189245828_
                           _hd245188245831_
                           _tl245187245833_
                           _e245192245836_
                           _hd245191245839_
                           _tl245190245841_
                           _e245195245844_
                           _hd245194245847_
                           _tl245193245849_
                           _e245198245852_
                           _hd245197245855_
                           _tl245196245857_))))
                   (___match254317254318_
                    (lambda (_e245130245977_
                             _hd245129245980_
                             _tl245128245982_
                             _e245133245985_
                             _hd245132245988_
                             _tl245131245990_
                             _e245136245993_
                             _hd245135245996_
                             _tl245134245998_
                             _e245139246001_
                             _hd245138246004_
                             _tl245137246006_
                             _e245142246009_
                             _hd245141246012_
                             _tl245140246014_
                             _e245145246017_
                             _hd245144246020_
                             _tl245143246022_
                             _e245148246025_
                             _hd245147246028_
                             _tl245146246030_
                             _e245151246033_
                             _hd245150246036_
                             _tl245149246038_
                             _e245154246041_
                             _hd245153246044_
                             _tl245152246046_
                             _e245157246049_
                             _hd245156246052_
                             _tl245155246054_
                             ___splice254216254217_
                             _target245158246057_
                             _tl245160246059_)
                      (letrec ((_loop245161246062_
                                (lambda (_hd245159246065_ _args245165246067_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245159246065_))
                                      (let ((_e245162246070_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245159246065_))))
                                        (let ((_lp-tl245164246075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245162246070_)))
                                              (_lp-hd245163246073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245162246070_))))
                                          (let ((__tmp255584
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245163246073_
                                                         _args245165246067_))))
                                            (declare (not safe))
                                            (_loop245161246062_
                                             _lp-tl245164246075_
                                             __tmp255584))))
                                      (let ((_args245166246078_
                                             (reverse _args245165246067_)))
                                        (let ((_L246081_ _args245166246078_)
                                              (_L246082_ _hd245156246052_)
                                              (_L246083_ _hd245147246028_)
                                              (_L246084_ _hd245138246004_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246084_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246083_
                                                      _self245109_)))
                                              (___kont254214254215_
                                               _L246081_
                                               _L246082_
                                               _L246083_
                                               _L246084_)
                                              (___match254505254506_
                                               _e245130245977_
                                               _hd245129245980_
                                               _tl245128245982_
                                               _e245133245985_
                                               _hd245132245988_
                                               _tl245131245990_
                                               _e245136245993_
                                               _hd245135245996_
                                               _tl245134245998_
                                               _e245139246001_
                                               _hd245138246004_
                                               _tl245137246006_
                                               _e245142246009_
                                               _hd245141246012_
                                               _tl245140246014_
                                               _e245145246017_
                                               _hd245144246020_
                                               _tl245143246022_
                                               _e245148246025_
                                               _hd245147246028_
                                               _tl245146246030_
                                               _e245151246033_
                                               _hd245150246036_
                                               _tl245149246038_
                                               _e245154246041_
                                               _hd245153246044_
                                               _tl245152246046_
                                               _e245157246049_
                                               _hd245156246052_
                                               _tl245155246054_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245161246062_ _target245158246057_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx254212254213_))
                  (let ((_e245130245977_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx254212254213_))))
                    (let ((_tl245128245982_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245130245977_)))
                          (_hd245129245980_
                           (let ()
                             (declare (not safe))
                             (##car _e245130245977_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245128245982_))
                          (let ((_e245133245985_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245128245982_))))
                            (let ((_tl245131245990_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245133245985_)))
                                  (_hd245132245988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245133245985_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd245132245988_))
                                  (let ((_e245136245993_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd245132245988_))))
                                    (let ((_tl245134245998_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245136245993_)))
                                          (_hd245135245996_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245136245993_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd245135245996_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd245135245996_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl245134245998_))
                                                  (let ((_e245139246001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl245134245998_))))
                                                    (let ((_tl245137246006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245139246001_)))
                                                          (_hd245138246004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245139246001_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl245137246006_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl245131245990_))
                      (let ((_e245142246009_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl245131245990_))))
                        (let ((_tl245140246014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245142246009_)))
                              (_hd245141246012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245142246009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd245141246012_))
                              (let ((_e245145246017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd245141246012_))))
                                (let ((_tl245143246022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245145246017_)))
                                      (_hd245144246020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245145246017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd245144246020_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd245144246020_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl245143246022_))
                                              (let ((_e245148246025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl245143246022_))))
                                                (let ((_tl245146246030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245148246025_)))
                                                      (_hd245147246028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245148246025_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl245146246030_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl245140246014_))
                                                          (let ((_e245151246033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl245140246014_))))
                    (let ((_tl245149246038_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245151246033_)))
                          (_hd245150246036_
                           (let ()
                             (declare (not safe))
                             (##car _e245151246033_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd245150246036_))
                          (let ((_e245154246041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd245150246036_))))
                            (let ((_tl245152246046_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245154246041_)))
                                  (_hd245153246044_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245154246041_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd245153246044_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd245153246044_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245152246046_))
                                          (let ((_e245157246049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245152246046_))))
                                            (let ((_tl245155246054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245157246049_)))
                                                  (_hd245156246052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245157246049_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl245155246054_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl245149246038_))
                                                      (let ((___splice254216254217_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl245149246038_ '0))))
                (let ((_tl245160246059_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254216254217_ '1)))
                      (_target245158246057_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254216254217_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl245160246059_))
                      (___match254317254318_
                       _e245130245977_
                       _hd245129245980_
                       _tl245128245982_
                       _e245133245985_
                       _hd245132245988_
                       _tl245131245990_
                       _e245136245993_
                       _hd245135245996_
                       _tl245134245998_
                       _e245139246001_
                       _hd245138246004_
                       _tl245137246006_
                       _e245142246009_
                       _hd245141246012_
                       _tl245140246014_
                       _e245145246017_
                       _hd245144246020_
                       _tl245143246022_
                       _e245148246025_
                       _hd245147246028_
                       _tl245146246030_
                       _e245151246033_
                       _hd245150246036_
                       _tl245149246038_
                       _e245154246041_
                       _hd245153246044_
                       _tl245152246046_
                       _e245157246049_
                       _hd245156246052_
                       _tl245155246054_
                       ___splice254216254217_
                       _target245158246057_
                       _tl245160246059_)
                      (___match254505254506_
                       _e245130245977_
                       _hd245129245980_
                       _tl245128245982_
                       _e245133245985_
                       _hd245132245988_
                       _tl245131245990_
                       _e245136245993_
                       _hd245135245996_
                       _tl245134245998_
                       _e245139246001_
                       _hd245138246004_
                       _tl245137246006_
                       _e245142246009_
                       _hd245141246012_
                       _tl245140246014_
                       _e245145246017_
                       _hd245144246020_
                       _tl245143246022_
                       _e245148246025_
                       _hd245147246028_
                       _tl245146246030_
                       _e245151246033_
                       _hd245150246036_
                       _tl245149246038_
                       _e245154246041_
                       _hd245153246044_
                       _tl245152246046_
                       _e245157246049_
                       _hd245156246052_
                       _tl245155246054_))))
              (___match254505254506_
               _e245130245977_
               _hd245129245980_
               _tl245128245982_
               _e245133245985_
               _hd245132245988_
               _tl245131245990_
               _e245136245993_
               _hd245135245996_
               _tl245134245998_
               _e245139246001_
               _hd245138246004_
               _tl245137246006_
               _e245142246009_
               _hd245141246012_
               _tl245140246014_
               _e245145246017_
               _hd245144246020_
               _tl245143246022_
               _e245148246025_
               _hd245147246028_
               _tl245146246030_
               _e245151246033_
               _hd245150246036_
               _tl245149246038_
               _e245154246041_
               _hd245153246044_
               _tl245152246046_
               _e245157246049_
               _hd245156246052_
               _tl245155246054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match254709254710_
                                                   _e245130245977_
                                                   _hd245129245980_
                                                   _tl245128245982_
                                                   _e245133245985_
                                                   _hd245132245988_
                                                   _tl245131245990_
                                                   _e245136245993_
                                                   _hd245135245996_
                                                   _tl245134245998_
                                                   _e245139246001_
                                                   _hd245138246004_
                                                   _tl245137246006_
                                                   _e245142246009_
                                                   _hd245141246012_
                                                   _tl245140246014_
                                                   _e245145246017_
                                                   _hd245144246020_
                                                   _tl245143246022_
                                                   _e245148246025_
                                                   _hd245147246028_
                                                   _tl245146246030_
                                                   _e245151246033_
                                                   _hd245150246036_
                                                   _tl245149246038_))))
                                          (___match254709254710_
                                           _e245130245977_
                                           _hd245129245980_
                                           _tl245128245982_
                                           _e245133245985_
                                           _hd245132245988_
                                           _tl245131245990_
                                           _e245136245993_
                                           _hd245135245996_
                                           _tl245134245998_
                                           _e245139246001_
                                           _hd245138246004_
                                           _tl245137246006_
                                           _e245142246009_
                                           _hd245141246012_
                                           _tl245140246014_
                                           _e245145246017_
                                           _hd245144246020_
                                           _tl245143246022_
                                           _e245148246025_
                                           _hd245147246028_
                                           _tl245146246030_
                                           _e245151246033_
                                           _hd245150246036_
                                           _tl245149246038_))
                                      (___match254385254386_
                                       _e245130245977_
                                       _hd245129245980_
                                       _tl245128245982_
                                       _e245133245985_
                                       _hd245132245988_
                                       _tl245131245990_
                                       _e245136245993_
                                       _hd245135245996_
                                       _tl245134245998_
                                       _e245139246001_
                                       _hd245138246004_
                                       _tl245137246006_
                                       _e245142246009_
                                       _hd245141246012_
                                       _tl245140246014_
                                       _e245145246017_
                                       _hd245144246020_
                                       _tl245143246022_
                                       _e245148246025_
                                       _hd245147246028_
                                       _tl245146246030_
                                       _e245151246033_
                                       _hd245150246036_
                                       _tl245149246038_
                                       _e245154246041_
                                       _hd245153246044_
                                       _tl245152246046_))
                                  (___match254709254710_
                                   _e245130245977_
                                   _hd245129245980_
                                   _tl245128245982_
                                   _e245133245985_
                                   _hd245132245988_
                                   _tl245131245990_
                                   _e245136245993_
                                   _hd245135245996_
                                   _tl245134245998_
                                   _e245139246001_
                                   _hd245138246004_
                                   _tl245137246006_
                                   _e245142246009_
                                   _hd245141246012_
                                   _tl245140246014_
                                   _e245145246017_
                                   _hd245144246020_
                                   _tl245143246022_
                                   _e245148246025_
                                   _hd245147246028_
                                   _tl245146246030_
                                   _e245151246033_
                                   _hd245150246036_
                                   _tl245149246038_))))
                          (___match254709254710_
                           _e245130245977_
                           _hd245129245980_
                           _tl245128245982_
                           _e245133245985_
                           _hd245132245988_
                           _tl245131245990_
                           _e245136245993_
                           _hd245135245996_
                           _tl245134245998_
                           _e245139246001_
                           _hd245138246004_
                           _tl245137246006_
                           _e245142246009_
                           _hd245141246012_
                           _tl245140246014_
                           _e245145246017_
                           _hd245144246020_
                           _tl245143246022_
                           _e245148246025_
                           _hd245147246028_
                           _tl245146246030_
                           _e245151246033_
                           _hd245150246036_
                           _tl245149246038_))))
                  (___match254647254648_
                   _e245130245977_
                   _hd245129245980_
                   _tl245128245982_
                   _e245133245985_
                   _hd245132245988_
                   _tl245131245990_
                   _e245136245993_
                   _hd245135245996_
                   _tl245134245998_
                   _e245139246001_
                   _hd245138246004_
                   _tl245137246006_
                   _e245142246009_
                   _hd245141246012_
                   _tl245140246014_
                   _e245145246017_
                   _hd245144246020_
                   _tl245143246022_
                   _e245148246025_
                   _hd245147246028_
                   _tl245146246030_))
              (___kont254230254231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont254230254231_))
                                          (___kont254230254231_))
                                      (___kont254230254231_))))
                              (___kont254230254231_))))
                      (___kont254230254231_))
                  (___kont254230254231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254230254231_))
                                              (___kont254230254231_))
                                          (___kont254230254231_))))
                                  (___kont254230254231_))))
                          (___kont254230254231_))))
                  (___kont254230254231_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx244054_
               _self244055_
               _$t244056_
               _methods244057_
               _slots244058_
               _class-check244059_
               _struct-check244060_
               _struct-assert244061_)
        (letrec ((_force-e244063_
                  (lambda (_what245106_)
                    (let ((__tmp255585
                           (let ((__tmp255589
                                  (let ((__tmp255590
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp255590)))
                                 (__tmp255586
                                  (let ((__tmp255587
                                         (let ((__tmp255588
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what245106_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255588))))
                                    (declare (not safe))
                                    (cons __tmp255587 '()))))
                             (declare (not safe))
                             (cons __tmp255589 __tmp255586))))
                      (declare (not safe))
                      (cons '%#call __tmp255585)))))
          (let* ((___stx254714254715_ _stx244054_)
                 (_g244071244293_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254714254715_)))))
            (let ((___kont254716254717_
                   (lambda (_L245052_ _L245053_ _L245054_ _L245055_)
                     (let ((_$method245100_
                            (let ((__tmp255591
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245053_))))
                              (declare (not safe))
                              (table-ref _methods244057_ __tmp255591)))
                           (_args245101_
                            (map (lambda (_g245088245090_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245088245090_
                                      _self244055_
                                      _$t244056_
                                      _methods244057_
                                      _slots244058_
                                      _class-check244059_
                                      _struct-check244060_
                                      _struct-assert244061_)))
                                 (let ((__tmp255592
                                        (lambda (_g245092245095_
                                                 _g245093245097_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245092245095_
                                                  _g245093245097_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255592 '() _L245052_)))))
                       (let ((__tmp255593
                              (let ((__tmp255594
                                     (let ((__tmp255598
                                            (let ()
                                              (declare (not safe))
                                              (_force-e244063_
                                               _$method245100_)))
                                           (__tmp255595
                                            (let ((__tmp255596
                                                   (let ((__tmp255597
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self244055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255597))))
                                              (declare (not safe))
                                              (cons __tmp255596
                                                    _args245101_))))
                                       (declare (not safe))
                                       (cons __tmp255598 __tmp255595))))
                                (declare (not safe))
                                (cons '%#call __tmp255594))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255593 _stx244054_)))))
                  (___kont254720254721_
                   (lambda (_L244884_ _L244885_ _L244886_ _L244887_ _L244888_)
                     (let ((_$method244940_
                            (let ((__tmp255599
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244885_))))
                              (declare (not safe))
                              (table-ref _methods244057_ __tmp255599)))
                           (_args244941_
                            (map (lambda (_g244928244930_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g244928244930_
                                      _self244055_
                                      _$t244056_
                                      _methods244057_
                                      _slots244058_
                                      _class-check244059_
                                      _struct-check244060_
                                      _struct-assert244061_)))
                                 (let ((__tmp255600
                                        (lambda (_g244932244935_
                                                 _g244933244937_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244932244935_
                                                  _g244933244937_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255600 '() _L244884_)))))
                       (let ((__tmp255601
                              (let ((__tmp255602
                                     (let ((__tmp255608
                                            (let ((__tmp255609
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255609)))
                                           (__tmp255603
                                            (let ((__tmp255607
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e244063_
                                                      _$method244940_)))
                                                  (__tmp255604
                                                   (let ((__tmp255605
                                                          (let ((__tmp255606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244055_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255605
                                                           _args244941_))))
                                              (declare (not safe))
                                              (cons __tmp255607 __tmp255604))))
                                       (declare (not safe))
                                       (cons __tmp255608 __tmp255603))))
                                (declare (not safe))
                                (cons '%#call __tmp255602))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255601 _stx244054_)))))
                  (___kont254724254725_
                   (lambda (_L244715_ _L244716_ _L244717_)
                     (let* ((_$field244749_
                             (let ((__tmp255610
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L244715_))))
                               (declare (not safe))
                               (table-ref _slots244058_ __tmp255610)))
                            (__tmp255611
                             (let ((__tmp255612
                                    (let ((__tmp255619
                                           (let ((__tmp255620
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t244056_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255620)))
                                          (__tmp255613
                                           (let ((__tmp255617
                                                  (let ((__tmp255618
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field244749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255618)))
                                                 (__tmp255614
                                                  (let ((__tmp255615
                                                         (let ((__tmp255616
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self244055_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255615 '()))))
                                             (declare (not safe))
                                             (cons __tmp255617 __tmp255614))))
                                      (declare (not safe))
                                      (cons __tmp255619 __tmp255613))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp255612))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255611 _stx244054_))))
                  (___kont254726254727_
                   (lambda (_L244589_ _L244590_ _L244591_ _L244592_)
                     (let ((_$field244627_
                            (let ((__tmp255621
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244590_))))
                              (declare (not safe))
                              (table-ref _slots244058_ __tmp255621)))
                           (_expr244628_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L244589_
                               _self244055_
                               _$t244056_
                               _methods244057_
                               _slots244058_
                               _class-check244059_
                               _struct-check244060_
                               _struct-assert244061_))))
                       (let ((__tmp255622
                              (let ((__tmp255623
                                     (let ((__tmp255631
                                            (let ((__tmp255632
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244056_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255632)))
                                           (__tmp255624
                                            (let ((__tmp255629
                                                   (let ((__tmp255630
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255630)))
                                                  (__tmp255625
                                                   (let ((__tmp255627
                                                          (let ((__tmp255628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244055_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255628)))
                 (__tmp255626
                  (let () (declare (not safe)) (cons _expr244628_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255627
                                                           __tmp255626))))
                                              (declare (not safe))
                                              (cons __tmp255629 __tmp255625))))
                                       (declare (not safe))
                                       (cons __tmp255631 __tmp255624))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255623))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255622 _stx244054_)))))
                  (___kont254728254729_
                   (lambda (_L244468_ _L244469_)
                     (let* ((_slot244491_
                             (##structure-ref
                              (let ((__tmp255633
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244469_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255633))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field244493_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244058_ _slot244491_))))
                       (let ((__tmp255634
                              (let ((__tmp255635
                                     (let ((__tmp255642
                                            (let ((__tmp255643
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244056_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255643)))
                                           (__tmp255636
                                            (let ((__tmp255640
                                                   (let ((__tmp255641
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255641)))
                                                  (__tmp255637
                                                   (let ((__tmp255638
                                                          (let ((__tmp255639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244055_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255638 '()))))
                                              (declare (not safe))
                                              (cons __tmp255640 __tmp255637))))
                                       (declare (not safe))
                                       (cons __tmp255642 __tmp255636))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp255635))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255634 _stx244054_)))))
                  (___kont254730254731_
                   (lambda (_L244369_ _L244370_ _L244371_)
                     (let* ((_slot244400_
                             (##structure-ref
                              (let ((__tmp255644
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244371_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255644))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field244402_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244058_ _slot244400_)))
                            (_expr244404_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L244369_
                                _self244055_
                                _$t244056_
                                _methods244057_
                                _slots244058_
                                _class-check244059_
                                _struct-check244060_
                                _struct-assert244061_))))
                       (let ((__tmp255645
                              (let ((__tmp255646
                                     (let ((__tmp255654
                                            (let ((__tmp255655
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244056_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255655)))
                                           (__tmp255647
                                            (let ((__tmp255652
                                                   (let ((__tmp255653
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255653)))
                                                  (__tmp255648
                                                   (let ((__tmp255650
                                                          (let ((__tmp255651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244055_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255651)))
                 (__tmp255649
                  (let () (declare (not safe)) (cons _expr244404_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255650
                                                           __tmp255649))))
                                              (declare (not safe))
                                              (cons __tmp255652 __tmp255648))))
                                       (declare (not safe))
                                       (cons __tmp255654 __tmp255647))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255646))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255645 _stx244054_)))))
                  (___kont254732254733_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx244054_
                        _self244055_
                        _$t244056_
                        _methods244057_
                        _slots244058_
                        _class-check244059_
                        _struct-check244060_
                        _struct-assert244061_)))))
              (let* ((___match255213255214_
                      (lambda (_e244267244305_
                               _hd244266244308_
                               _tl244265244310_
                               _e244270244313_
                               _hd244269244316_
                               _tl244268244318_
                               _e244273244321_
                               _hd244272244324_
                               _tl244271244326_
                               _e244276244329_
                               _hd244275244332_
                               _tl244274244334_
                               _e244279244337_
                               _hd244278244340_
                               _tl244277244342_
                               _e244282244345_
                               _hd244281244348_
                               _tl244280244350_
                               _e244285244353_
                               _hd244284244356_
                               _tl244283244358_
                               _e244288244361_
                               _hd244287244364_
                               _tl244286244366_)
                        (let ((_L244369_ _hd244287244364_)
                              (_L244370_ _hd244284244356_)
                              (_L244371_ _hd244275244332_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244370_
                                      _self244055_))
                                   (let ((__tmp255656
                                          (let ((__tmp255657
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244371_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255657))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255656
                                      'gxc#!mutator::t)))
                              (___kont254730254731_
                               _L244369_
                               _L244370_
                               _L244371_)
                              (___kont254732254733_)))))
                     (___match255211255212_
                      (lambda (_e244267244305_
                               _hd244266244308_
                               _tl244265244310_
                               _e244270244313_
                               _hd244269244316_
                               _tl244268244318_
                               _e244273244321_
                               _hd244272244324_
                               _tl244271244326_
                               _e244276244329_
                               _hd244275244332_
                               _tl244274244334_
                               _e244279244337_
                               _hd244278244340_
                               _tl244277244342_
                               _e244282244345_
                               _hd244281244348_
                               _tl244280244350_
                               _e244285244353_
                               _hd244284244356_
                               _tl244283244358_
                               _e244288244361_
                               _hd244287244364_
                               _tl244286244366_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244286244366_))
                            (___match255213255214_
                             _e244267244305_
                             _hd244266244308_
                             _tl244265244310_
                             _e244270244313_
                             _hd244269244316_
                             _tl244268244318_
                             _e244273244321_
                             _hd244272244324_
                             _tl244271244326_
                             _e244276244329_
                             _hd244275244332_
                             _tl244274244334_
                             _e244279244337_
                             _hd244278244340_
                             _tl244277244342_
                             _e244282244345_
                             _hd244281244348_
                             _tl244280244350_
                             _e244285244353_
                             _hd244284244356_
                             _tl244283244358_
                             _e244288244361_
                             _hd244287244364_
                             _tl244286244366_)
                            (___kont254732254733_))))
                     (___match255205255206_
                      (lambda (_e244267244305_
                               _hd244266244308_
                               _tl244265244310_
                               _e244270244313_
                               _hd244269244316_
                               _tl244268244318_
                               _e244273244321_
                               _hd244272244324_
                               _tl244271244326_
                               _e244276244329_
                               _hd244275244332_
                               _tl244274244334_
                               _e244279244337_
                               _hd244278244340_
                               _tl244277244342_
                               _e244282244345_
                               _hd244281244348_
                               _tl244280244350_
                               _e244285244353_
                               _hd244284244356_
                               _tl244283244358_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244277244342_))
                            (let ((_e244288244361_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244277244342_))))
                              (let ((_tl244286244366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244288244361_)))
                                    (_hd244287244364_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244288244361_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244286244366_))
                                    (___match255213255214_
                                     _e244267244305_
                                     _hd244266244308_
                                     _tl244265244310_
                                     _e244270244313_
                                     _hd244269244316_
                                     _tl244268244318_
                                     _e244273244321_
                                     _hd244272244324_
                                     _tl244271244326_
                                     _e244276244329_
                                     _hd244275244332_
                                     _tl244274244334_
                                     _e244279244337_
                                     _hd244278244340_
                                     _tl244277244342_
                                     _e244282244345_
                                     _hd244281244348_
                                     _tl244280244350_
                                     _e244285244353_
                                     _hd244284244356_
                                     _tl244283244358_
                                     _e244288244361_
                                     _hd244287244364_
                                     _tl244286244366_)
                                    (___kont254732254733_))))
                            (___kont254732254733_))))
                     (___match255151255152_
                      (lambda (_e244243244412_
                               _hd244242244415_
                               _tl244241244417_
                               _e244246244420_
                               _hd244245244423_
                               _tl244244244425_
                               _e244249244428_
                               _hd244248244431_
                               _tl244247244433_
                               _e244252244436_
                               _hd244251244439_
                               _tl244250244441_
                               _e244255244444_
                               _hd244254244447_
                               _tl244253244449_
                               _e244258244452_
                               _hd244257244455_
                               _tl244256244457_
                               _e244261244460_
                               _hd244260244463_
                               _tl244259244465_)
                        (let ((_L244468_ _hd244260244463_)
                              (_L244469_ _hd244251244439_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244468_
                                      _self244055_))
                                   (let ((__tmp255658
                                          (let ((__tmp255659
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244469_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255659))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255658
                                      'gxc#!accessor::t)))
                              (___kont254728254729_ _L244468_ _L244469_)
                              (___kont254732254733_)))))
                     (___match255149255150_
                      (lambda (_e244243244412_
                               _hd244242244415_
                               _tl244241244417_
                               _e244246244420_
                               _hd244245244423_
                               _tl244244244425_
                               _e244249244428_
                               _hd244248244431_
                               _tl244247244433_
                               _e244252244436_
                               _hd244251244439_
                               _tl244250244441_
                               _e244255244444_
                               _hd244254244447_
                               _tl244253244449_
                               _e244258244452_
                               _hd244257244455_
                               _tl244256244457_
                               _e244261244460_
                               _hd244260244463_
                               _tl244259244465_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244253244449_))
                            (___match255151255152_
                             _e244243244412_
                             _hd244242244415_
                             _tl244241244417_
                             _e244246244420_
                             _hd244245244423_
                             _tl244244244425_
                             _e244249244428_
                             _hd244248244431_
                             _tl244247244433_
                             _e244252244436_
                             _hd244251244439_
                             _tl244250244441_
                             _e244255244444_
                             _hd244254244447_
                             _tl244253244449_
                             _e244258244452_
                             _hd244257244455_
                             _tl244256244457_
                             _e244261244460_
                             _hd244260244463_
                             _tl244259244465_)
                            (___match255205255206_
                             _e244243244412_
                             _hd244242244415_
                             _tl244241244417_
                             _e244246244420_
                             _hd244245244423_
                             _tl244244244425_
                             _e244249244428_
                             _hd244248244431_
                             _tl244247244433_
                             _e244252244436_
                             _hd244251244439_
                             _tl244250244441_
                             _e244255244444_
                             _hd244254244447_
                             _tl244253244449_
                             _e244258244452_
                             _hd244257244455_
                             _tl244256244457_
                             _e244261244460_
                             _hd244260244463_
                             _tl244259244465_))))
                     (___match255095255096_
                      (lambda (_e244208244501_
                               _hd244207244504_
                               _tl244206244506_
                               _e244211244509_
                               _hd244210244512_
                               _tl244209244514_
                               _e244214244517_
                               _hd244213244520_
                               _tl244212244522_
                               _e244217244525_
                               _hd244216244528_
                               _tl244215244530_
                               _e244220244533_
                               _hd244219244536_
                               _tl244218244538_
                               _e244223244541_
                               _hd244222244544_
                               _tl244221244546_
                               _e244226244549_
                               _hd244225244552_
                               _tl244224244554_
                               _e244229244557_
                               _hd244228244560_
                               _tl244227244562_
                               _e244232244565_
                               _hd244231244568_
                               _tl244230244570_
                               _e244235244573_
                               _hd244234244576_
                               _tl244233244578_
                               _e244238244581_
                               _hd244237244584_
                               _tl244236244586_)
                        (let ((_L244589_ _hd244237244584_)
                              (_L244590_ _hd244234244576_)
                              (_L244591_ _hd244225244552_)
                              (_L244592_ _hd244216244528_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244592_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244592_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244591_
                                      _self244055_)))
                              (___kont254726254727_
                               _L244589_
                               _L244590_
                               _L244591_
                               _L244592_)
                              (___kont254732254733_)))))
                     (___match255087255088_
                      (lambda (_e244208244501_
                               _hd244207244504_
                               _tl244206244506_
                               _e244211244509_
                               _hd244210244512_
                               _tl244209244514_
                               _e244214244517_
                               _hd244213244520_
                               _tl244212244522_
                               _e244217244525_
                               _hd244216244528_
                               _tl244215244530_
                               _e244220244533_
                               _hd244219244536_
                               _tl244218244538_
                               _e244223244541_
                               _hd244222244544_
                               _tl244221244546_
                               _e244226244549_
                               _hd244225244552_
                               _tl244224244554_
                               _e244229244557_
                               _hd244228244560_
                               _tl244227244562_
                               _e244232244565_
                               _hd244231244568_
                               _tl244230244570_
                               _e244235244573_
                               _hd244234244576_
                               _tl244233244578_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244227244562_))
                            (let ((_e244238244581_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244227244562_))))
                              (let ((_tl244236244586_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244238244581_)))
                                    (_hd244237244584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244238244581_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244236244586_))
                                    (___match255095255096_
                                     _e244208244501_
                                     _hd244207244504_
                                     _tl244206244506_
                                     _e244211244509_
                                     _hd244210244512_
                                     _tl244209244514_
                                     _e244214244517_
                                     _hd244213244520_
                                     _tl244212244522_
                                     _e244217244525_
                                     _hd244216244528_
                                     _tl244215244530_
                                     _e244220244533_
                                     _hd244219244536_
                                     _tl244218244538_
                                     _e244223244541_
                                     _hd244222244544_
                                     _tl244221244546_
                                     _e244226244549_
                                     _hd244225244552_
                                     _tl244224244554_
                                     _e244229244557_
                                     _hd244228244560_
                                     _tl244227244562_
                                     _e244232244565_
                                     _hd244231244568_
                                     _tl244230244570_
                                     _e244235244573_
                                     _hd244234244576_
                                     _tl244233244578_
                                     _e244238244581_
                                     _hd244237244584_
                                     _tl244236244586_)
                                    (___kont254732254733_))))
                            (___match255211255212_
                             _e244208244501_
                             _hd244207244504_
                             _tl244206244506_
                             _e244211244509_
                             _hd244210244512_
                             _tl244209244514_
                             _e244214244517_
                             _hd244213244520_
                             _tl244212244522_
                             _e244217244525_
                             _hd244216244528_
                             _tl244215244530_
                             _e244220244533_
                             _hd244219244536_
                             _tl244218244538_
                             _e244223244541_
                             _hd244222244544_
                             _tl244221244546_
                             _e244226244549_
                             _hd244225244552_
                             _tl244224244554_
                             _e244229244557_
                             _hd244228244560_
                             _tl244227244562_))))
                     (___match255009255010_
                      (lambda (_e244174244635_
                               _hd244173244638_
                               _tl244172244640_
                               _e244177244643_
                               _hd244176244646_
                               _tl244175244648_
                               _e244180244651_
                               _hd244179244654_
                               _tl244178244656_
                               _e244183244659_
                               _hd244182244662_
                               _tl244181244664_
                               _e244186244667_
                               _hd244185244670_
                               _tl244184244672_
                               _e244189244675_
                               _hd244188244678_
                               _tl244187244680_
                               _e244192244683_
                               _hd244191244686_
                               _tl244190244688_
                               _e244195244691_
                               _hd244194244694_
                               _tl244193244696_
                               _e244198244699_
                               _hd244197244702_
                               _tl244196244704_
                               _e244201244707_
                               _hd244200244710_
                               _tl244199244712_)
                        (let ((_L244715_ _hd244200244710_)
                              (_L244716_ _hd244191244686_)
                              (_L244717_ _hd244182244662_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244717_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244717_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244716_
                                      _self244055_)))
                              (___kont254724254725_
                               _L244715_
                               _L244716_
                               _L244717_)
                              (___match255213255214_
                               _e244174244635_
                               _hd244173244638_
                               _tl244172244640_
                               _e244177244643_
                               _hd244176244646_
                               _tl244175244648_
                               _e244180244651_
                               _hd244179244654_
                               _tl244178244656_
                               _e244183244659_
                               _hd244182244662_
                               _tl244181244664_
                               _e244186244667_
                               _hd244185244670_
                               _tl244184244672_
                               _e244189244675_
                               _hd244188244678_
                               _tl244187244680_
                               _e244192244683_
                               _hd244191244686_
                               _tl244190244688_
                               _e244195244691_
                               _hd244194244694_
                               _tl244193244696_)))))
                     (___match255007255008_
                      (lambda (_e244174244635_
                               _hd244173244638_
                               _tl244172244640_
                               _e244177244643_
                               _hd244176244646_
                               _tl244175244648_
                               _e244180244651_
                               _hd244179244654_
                               _tl244178244656_
                               _e244183244659_
                               _hd244182244662_
                               _tl244181244664_
                               _e244186244667_
                               _hd244185244670_
                               _tl244184244672_
                               _e244189244675_
                               _hd244188244678_
                               _tl244187244680_
                               _e244192244683_
                               _hd244191244686_
                               _tl244190244688_
                               _e244195244691_
                               _hd244194244694_
                               _tl244193244696_
                               _e244198244699_
                               _hd244197244702_
                               _tl244196244704_
                               _e244201244707_
                               _hd244200244710_
                               _tl244199244712_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244193244696_))
                            (___match255009255010_
                             _e244174244635_
                             _hd244173244638_
                             _tl244172244640_
                             _e244177244643_
                             _hd244176244646_
                             _tl244175244648_
                             _e244180244651_
                             _hd244179244654_
                             _tl244178244656_
                             _e244183244659_
                             _hd244182244662_
                             _tl244181244664_
                             _e244186244667_
                             _hd244185244670_
                             _tl244184244672_
                             _e244189244675_
                             _hd244188244678_
                             _tl244187244680_
                             _e244192244683_
                             _hd244191244686_
                             _tl244190244688_
                             _e244195244691_
                             _hd244194244694_
                             _tl244193244696_
                             _e244198244699_
                             _hd244197244702_
                             _tl244196244704_
                             _e244201244707_
                             _hd244200244710_
                             _tl244199244712_)
                            (___match255087255088_
                             _e244174244635_
                             _hd244173244638_
                             _tl244172244640_
                             _e244177244643_
                             _hd244176244646_
                             _tl244175244648_
                             _e244180244651_
                             _hd244179244654_
                             _tl244178244656_
                             _e244183244659_
                             _hd244182244662_
                             _tl244181244664_
                             _e244186244667_
                             _hd244185244670_
                             _tl244184244672_
                             _e244189244675_
                             _hd244188244678_
                             _tl244187244680_
                             _e244192244683_
                             _hd244191244686_
                             _tl244190244688_
                             _e244195244691_
                             _hd244194244694_
                             _tl244193244696_
                             _e244198244699_
                             _hd244197244702_
                             _tl244196244704_
                             _e244201244707_
                             _hd244200244710_
                             _tl244199244712_))))
                     (___match254997254998_
                      (lambda (_e244174244635_
                               _hd244173244638_
                               _tl244172244640_
                               _e244177244643_
                               _hd244176244646_
                               _tl244175244648_
                               _e244180244651_
                               _hd244179244654_
                               _tl244178244656_
                               _e244183244659_
                               _hd244182244662_
                               _tl244181244664_
                               _e244186244667_
                               _hd244185244670_
                               _tl244184244672_
                               _e244189244675_
                               _hd244188244678_
                               _tl244187244680_
                               _e244192244683_
                               _hd244191244686_
                               _tl244190244688_
                               _e244195244691_
                               _hd244194244694_
                               _tl244193244696_
                               _e244198244699_
                               _hd244197244702_
                               _tl244196244704_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd244197244702_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244196244704_))
                                (let ((_e244201244707_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244196244704_))))
                                  (let ((_tl244199244712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244201244707_)))
                                        (_hd244200244710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244201244707_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244199244712_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244193244696_))
                                            (___match255009255010_
                                             _e244174244635_
                                             _hd244173244638_
                                             _tl244172244640_
                                             _e244177244643_
                                             _hd244176244646_
                                             _tl244175244648_
                                             _e244180244651_
                                             _hd244179244654_
                                             _tl244178244656_
                                             _e244183244659_
                                             _hd244182244662_
                                             _tl244181244664_
                                             _e244186244667_
                                             _hd244185244670_
                                             _tl244184244672_
                                             _e244189244675_
                                             _hd244188244678_
                                             _tl244187244680_
                                             _e244192244683_
                                             _hd244191244686_
                                             _tl244190244688_
                                             _e244195244691_
                                             _hd244194244694_
                                             _tl244193244696_
                                             _e244198244699_
                                             _hd244197244702_
                                             _tl244196244704_
                                             _e244201244707_
                                             _hd244200244710_
                                             _tl244199244712_)
                                            (___match255087255088_
                                             _e244174244635_
                                             _hd244173244638_
                                             _tl244172244640_
                                             _e244177244643_
                                             _hd244176244646_
                                             _tl244175244648_
                                             _e244180244651_
                                             _hd244179244654_
                                             _tl244178244656_
                                             _e244183244659_
                                             _hd244182244662_
                                             _tl244181244664_
                                             _e244186244667_
                                             _hd244185244670_
                                             _tl244184244672_
                                             _e244189244675_
                                             _hd244188244678_
                                             _tl244187244680_
                                             _e244192244683_
                                             _hd244191244686_
                                             _tl244190244688_
                                             _e244195244691_
                                             _hd244194244694_
                                             _tl244193244696_
                                             _e244198244699_
                                             _hd244197244702_
                                             _tl244196244704_
                                             _e244201244707_
                                             _hd244200244710_
                                             _tl244199244712_))
                                        (___match255211255212_
                                         _e244174244635_
                                         _hd244173244638_
                                         _tl244172244640_
                                         _e244177244643_
                                         _hd244176244646_
                                         _tl244175244648_
                                         _e244180244651_
                                         _hd244179244654_
                                         _tl244178244656_
                                         _e244183244659_
                                         _hd244182244662_
                                         _tl244181244664_
                                         _e244186244667_
                                         _hd244185244670_
                                         _tl244184244672_
                                         _e244189244675_
                                         _hd244188244678_
                                         _tl244187244680_
                                         _e244192244683_
                                         _hd244191244686_
                                         _tl244190244688_
                                         _e244195244691_
                                         _hd244194244694_
                                         _tl244193244696_))))
                                (___match255211255212_
                                 _e244174244635_
                                 _hd244173244638_
                                 _tl244172244640_
                                 _e244177244643_
                                 _hd244176244646_
                                 _tl244175244648_
                                 _e244180244651_
                                 _hd244179244654_
                                 _tl244178244656_
                                 _e244183244659_
                                 _hd244182244662_
                                 _tl244181244664_
                                 _e244186244667_
                                 _hd244185244670_
                                 _tl244184244672_
                                 _e244189244675_
                                 _hd244188244678_
                                 _tl244187244680_
                                 _e244192244683_
                                 _hd244191244686_
                                 _tl244190244688_
                                 _e244195244691_
                                 _hd244194244694_
                                 _tl244193244696_))
                            (___match255211255212_
                             _e244174244635_
                             _hd244173244638_
                             _tl244172244640_
                             _e244177244643_
                             _hd244176244646_
                             _tl244175244648_
                             _e244180244651_
                             _hd244179244654_
                             _tl244178244656_
                             _e244183244659_
                             _hd244182244662_
                             _tl244181244664_
                             _e244186244667_
                             _hd244185244670_
                             _tl244184244672_
                             _e244189244675_
                             _hd244188244678_
                             _tl244187244680_
                             _e244192244683_
                             _hd244191244686_
                             _tl244190244688_
                             _e244195244691_
                             _hd244194244694_
                             _tl244193244696_))))
                     (___match254929254930_
                      (lambda (_e244123244756_
                               _hd244122244759_
                               _tl244121244761_
                               _e244126244764_
                               _hd244125244767_
                               _tl244124244769_
                               _e244129244772_
                               _hd244128244775_
                               _tl244127244777_
                               _e244132244780_
                               _hd244131244783_
                               _tl244130244785_
                               _e244135244788_
                               _hd244134244791_
                               _tl244133244793_
                               _e244138244796_
                               _hd244137244799_
                               _tl244136244801_
                               _e244141244804_
                               _hd244140244807_
                               _tl244139244809_
                               _e244144244812_
                               _hd244143244815_
                               _tl244142244817_
                               _e244147244820_
                               _hd244146244823_
                               _tl244145244825_
                               _e244150244828_
                               _hd244149244831_
                               _tl244148244833_
                               _e244153244836_
                               _hd244152244839_
                               _tl244151244841_
                               _e244156244844_
                               _hd244155244847_
                               _tl244154244849_
                               _e244159244852_
                               _hd244158244855_
                               _tl244157244857_
                               ___splice254722254723_
                               _target244160244860_
                               _tl244162244862_)
                        (letrec ((_loop244163244865_
                                  (lambda (_hd244161244868_ _args244167244870_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244161244868_))
                                        (let ((_e244164244873_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244161244868_))))
                                          (let ((_lp-tl244166244878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244164244873_)))
                                                (_lp-hd244165244876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244164244873_))))
                                            (let ((__tmp255660
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244165244876_
                                                           _args244167244870_))))
                                              (declare (not safe))
                                              (_loop244163244865_
                                               _lp-tl244166244878_
                                               __tmp255660))))
                                        (let ((_args244168244881_
                                               (reverse _args244167244870_)))
                                          (let ((_L244884_ _args244168244881_)
                                                (_L244885_ _hd244158244855_)
                                                (_L244886_ _hd244149244831_)
                                                (_L244887_ _hd244140244807_)
                                                (_L244888_ _hd244131244783_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244888_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244887_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L244886_
                                                        _self244055_)))
                                                (___kont254720254721_
                                                 _L244884_
                                                 _L244885_
                                                 _L244886_
                                                 _L244887_
                                                 _L244888_)
                                                (___kont254732254733_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244163244865_ _target244160244860_ '())))))
                     (___match254887254888_
                      (lambda (_e244123244756_
                               _hd244122244759_
                               _tl244121244761_
                               _e244126244764_
                               _hd244125244767_
                               _tl244124244769_
                               _e244129244772_
                               _hd244128244775_
                               _tl244127244777_
                               _e244132244780_
                               _hd244131244783_
                               _tl244130244785_
                               _e244135244788_
                               _hd244134244791_
                               _tl244133244793_
                               _e244138244796_
                               _hd244137244799_
                               _tl244136244801_
                               _e244141244804_
                               _hd244140244807_
                               _tl244139244809_
                               _e244144244812_
                               _hd244143244815_
                               _tl244142244817_
                               _e244147244820_
                               _hd244146244823_
                               _tl244145244825_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd244146244823_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244145244825_))
                                (let ((_e244150244828_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244145244825_))))
                                  (let ((_tl244148244833_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244150244828_)))
                                        (_hd244149244831_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244150244828_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244148244833_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244142244817_))
                                            (let ((_e244153244836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244142244817_))))
                                              (let ((_tl244151244841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244153244836_)))
                                                    (_hd244152244839_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244153244836_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd244152244839_))
                                                    (let ((_e244156244844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd244152244839_))))
                                                      (let ((_tl244154244849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244156244844_)))
                    (_hd244155244847_
                     (let () (declare (not safe)) (##car _e244156244844_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd244155244847_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd244155244847_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244154244849_))
                            (let ((_e244159244852_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244154244849_))))
                              (let ((_tl244157244857_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244159244852_)))
                                    (_hd244158244855_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244159244852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244157244857_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl244151244841_))
                                        (let ((___splice254722254723_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl244151244841_
                                                  '0))))
                                          (let ((_tl244162244862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254722254723_
                                                    '1)))
                                                (_target244160244860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254722254723_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244162244862_))
                                                (___match254929254930_
                                                 _e244123244756_
                                                 _hd244122244759_
                                                 _tl244121244761_
                                                 _e244126244764_
                                                 _hd244125244767_
                                                 _tl244124244769_
                                                 _e244129244772_
                                                 _hd244128244775_
                                                 _tl244127244777_
                                                 _e244132244780_
                                                 _hd244131244783_
                                                 _tl244130244785_
                                                 _e244135244788_
                                                 _hd244134244791_
                                                 _tl244133244793_
                                                 _e244138244796_
                                                 _hd244137244799_
                                                 _tl244136244801_
                                                 _e244141244804_
                                                 _hd244140244807_
                                                 _tl244139244809_
                                                 _e244144244812_
                                                 _hd244143244815_
                                                 _tl244142244817_
                                                 _e244147244820_
                                                 _hd244146244823_
                                                 _tl244145244825_
                                                 _e244150244828_
                                                 _hd244149244831_
                                                 _tl244148244833_
                                                 _e244153244836_
                                                 _hd244152244839_
                                                 _tl244151244841_
                                                 _e244156244844_
                                                 _hd244155244847_
                                                 _tl244154244849_
                                                 _e244159244852_
                                                 _hd244158244855_
                                                 _tl244157244857_
                                                 ___splice254722254723_
                                                 _target244160244860_
                                                 _tl244162244862_)
                                                (___kont254732254733_))))
                                        (___kont254732254733_))
                                    (___kont254732254733_))))
                            (___kont254732254733_))
                        (___kont254732254733_))
                    (___kont254732254733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254732254733_))))
                                            (___match255211255212_
                                             _e244123244756_
                                             _hd244122244759_
                                             _tl244121244761_
                                             _e244126244764_
                                             _hd244125244767_
                                             _tl244124244769_
                                             _e244129244772_
                                             _hd244128244775_
                                             _tl244127244777_
                                             _e244132244780_
                                             _hd244131244783_
                                             _tl244130244785_
                                             _e244135244788_
                                             _hd244134244791_
                                             _tl244133244793_
                                             _e244138244796_
                                             _hd244137244799_
                                             _tl244136244801_
                                             _e244141244804_
                                             _hd244140244807_
                                             _tl244139244809_
                                             _e244144244812_
                                             _hd244143244815_
                                             _tl244142244817_))
                                        (___match255211255212_
                                         _e244123244756_
                                         _hd244122244759_
                                         _tl244121244761_
                                         _e244126244764_
                                         _hd244125244767_
                                         _tl244124244769_
                                         _e244129244772_
                                         _hd244128244775_
                                         _tl244127244777_
                                         _e244132244780_
                                         _hd244131244783_
                                         _tl244130244785_
                                         _e244135244788_
                                         _hd244134244791_
                                         _tl244133244793_
                                         _e244138244796_
                                         _hd244137244799_
                                         _tl244136244801_
                                         _e244141244804_
                                         _hd244140244807_
                                         _tl244139244809_
                                         _e244144244812_
                                         _hd244143244815_
                                         _tl244142244817_))))
                                (___match255211255212_
                                 _e244123244756_
                                 _hd244122244759_
                                 _tl244121244761_
                                 _e244126244764_
                                 _hd244125244767_
                                 _tl244124244769_
                                 _e244129244772_
                                 _hd244128244775_
                                 _tl244127244777_
                                 _e244132244780_
                                 _hd244131244783_
                                 _tl244130244785_
                                 _e244135244788_
                                 _hd244134244791_
                                 _tl244133244793_
                                 _e244138244796_
                                 _hd244137244799_
                                 _tl244136244801_
                                 _e244141244804_
                                 _hd244140244807_
                                 _tl244139244809_
                                 _e244144244812_
                                 _hd244143244815_
                                 _tl244142244817_))
                            (___match254997254998_
                             _e244123244756_
                             _hd244122244759_
                             _tl244121244761_
                             _e244126244764_
                             _hd244125244767_
                             _tl244124244769_
                             _e244129244772_
                             _hd244128244775_
                             _tl244127244777_
                             _e244132244780_
                             _hd244131244783_
                             _tl244130244785_
                             _e244135244788_
                             _hd244134244791_
                             _tl244133244793_
                             _e244138244796_
                             _hd244137244799_
                             _tl244136244801_
                             _e244141244804_
                             _hd244140244807_
                             _tl244139244809_
                             _e244144244812_
                             _hd244143244815_
                             _tl244142244817_
                             _e244147244820_
                             _hd244146244823_
                             _tl244145244825_))))
                     (___match254819254820_
                      (lambda (_e244079244948_
                               _hd244078244951_
                               _tl244077244953_
                               _e244082244956_
                               _hd244081244959_
                               _tl244080244961_
                               _e244085244964_
                               _hd244084244967_
                               _tl244083244969_
                               _e244088244972_
                               _hd244087244975_
                               _tl244086244977_
                               _e244091244980_
                               _hd244090244983_
                               _tl244089244985_
                               _e244094244988_
                               _hd244093244991_
                               _tl244092244993_
                               _e244097244996_
                               _hd244096244999_
                               _tl244095245001_
                               _e244100245004_
                               _hd244099245007_
                               _tl244098245009_
                               _e244103245012_
                               _hd244102245015_
                               _tl244101245017_
                               _e244106245020_
                               _hd244105245023_
                               _tl244104245025_
                               ___splice254718254719_
                               _target244107245028_
                               _tl244109245030_)
                        (letrec ((_loop244110245033_
                                  (lambda (_hd244108245036_ _args244114245038_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244108245036_))
                                        (let ((_e244111245041_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244108245036_))))
                                          (let ((_lp-tl244113245046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244111245041_)))
                                                (_lp-hd244112245044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244111245041_))))
                                            (let ((__tmp255661
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244112245044_
                                                           _args244114245038_))))
                                              (declare (not safe))
                                              (_loop244110245033_
                                               _lp-tl244113245046_
                                               __tmp255661))))
                                        (let ((_args244115245049_
                                               (reverse _args244114245038_)))
                                          (let ((_L245052_ _args244115245049_)
                                                (_L245053_ _hd244105245023_)
                                                (_L245054_ _hd244096244999_)
                                                (_L245055_ _hd244087244975_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245055_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245054_
                                                        _self244055_)))
                                                (___kont254716254717_
                                                 _L245052_
                                                 _L245053_
                                                 _L245054_
                                                 _L245055_)
                                                (___match255007255008_
                                                 _e244079244948_
                                                 _hd244078244951_
                                                 _tl244077244953_
                                                 _e244082244956_
                                                 _hd244081244959_
                                                 _tl244080244961_
                                                 _e244085244964_
                                                 _hd244084244967_
                                                 _tl244083244969_
                                                 _e244088244972_
                                                 _hd244087244975_
                                                 _tl244086244977_
                                                 _e244091244980_
                                                 _hd244090244983_
                                                 _tl244089244985_
                                                 _e244094244988_
                                                 _hd244093244991_
                                                 _tl244092244993_
                                                 _e244097244996_
                                                 _hd244096244999_
                                                 _tl244095245001_
                                                 _e244100245004_
                                                 _hd244099245007_
                                                 _tl244098245009_
                                                 _e244103245012_
                                                 _hd244102245015_
                                                 _tl244101245017_
                                                 _e244106245020_
                                                 _hd244105245023_
                                                 _tl244104245025_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244110245033_ _target244107245028_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254714254715_))
                    (let ((_e244079244948_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254714254715_))))
                      (let ((_tl244077244953_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244079244948_)))
                            (_hd244078244951_
                             (let ()
                               (declare (not safe))
                               (##car _e244079244948_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244077244953_))
                            (let ((_e244082244956_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244077244953_))))
                              (let ((_tl244080244961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244082244956_)))
                                    (_hd244081244959_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244082244956_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244081244959_))
                                    (let ((_e244085244964_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244081244959_))))
                                      (let ((_tl244083244969_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244085244964_)))
                                            (_hd244084244967_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244085244964_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244084244967_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244084244967_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244083244969_))
                                                    (let ((_e244088244972_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244083244969_))))
                                                      (let ((_tl244086244977_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244088244972_)))
                    (_hd244087244975_
                     (let () (declare (not safe)) (##car _e244088244972_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244086244977_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244080244961_))
                        (let ((_e244091244980_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244080244961_))))
                          (let ((_tl244089244985_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244091244980_)))
                                (_hd244090244983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244091244980_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244090244983_))
                                (let ((_e244094244988_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244090244983_))))
                                  (let ((_tl244092244993_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244094244988_)))
                                        (_hd244093244991_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244094244988_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd244093244991_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd244093244991_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244092244993_))
                                                (let ((_e244097244996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244092244993_))))
                                                  (let ((_tl244095245001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244097244996_)))
                                                        (_hd244096244999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244097244996_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244095245001_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244089244985_))
                                                            (let ((_e244100245004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244089244985_))))
                      (let ((_tl244098245009_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244100245004_)))
                            (_hd244099245007_
                             (let ()
                               (declare (not safe))
                               (##car _e244100245004_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd244099245007_))
                            (let ((_e244103245012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd244099245007_))))
                              (let ((_tl244101245017_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244103245012_)))
                                    (_hd244102245015_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244103245012_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244102245015_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd244102245015_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244101245017_))
                                            (let ((_e244106245020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244101245017_))))
                                              (let ((_tl244104245025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244106245020_)))
                                                    (_hd244105245023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244106245020_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl244104245025_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl244098245009_))
                                                        (let ((___splice254718254719_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl244098245009_ '0))))
                  (let ((_tl244109245030_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254718254719_ '1)))
                        (_target244107245028_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254718254719_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244109245030_))
                        (___match254819254820_
                         _e244079244948_
                         _hd244078244951_
                         _tl244077244953_
                         _e244082244956_
                         _hd244081244959_
                         _tl244080244961_
                         _e244085244964_
                         _hd244084244967_
                         _tl244083244969_
                         _e244088244972_
                         _hd244087244975_
                         _tl244086244977_
                         _e244091244980_
                         _hd244090244983_
                         _tl244089244985_
                         _e244094244988_
                         _hd244093244991_
                         _tl244092244993_
                         _e244097244996_
                         _hd244096244999_
                         _tl244095245001_
                         _e244100245004_
                         _hd244099245007_
                         _tl244098245009_
                         _e244103245012_
                         _hd244102245015_
                         _tl244101245017_
                         _e244106245020_
                         _hd244105245023_
                         _tl244104245025_
                         ___splice254718254719_
                         _target244107245028_
                         _tl244109245030_)
                        (___match255007255008_
                         _e244079244948_
                         _hd244078244951_
                         _tl244077244953_
                         _e244082244956_
                         _hd244081244959_
                         _tl244080244961_
                         _e244085244964_
                         _hd244084244967_
                         _tl244083244969_
                         _e244088244972_
                         _hd244087244975_
                         _tl244086244977_
                         _e244091244980_
                         _hd244090244983_
                         _tl244089244985_
                         _e244094244988_
                         _hd244093244991_
                         _tl244092244993_
                         _e244097244996_
                         _hd244096244999_
                         _tl244095245001_
                         _e244100245004_
                         _hd244099245007_
                         _tl244098245009_
                         _e244103245012_
                         _hd244102245015_
                         _tl244101245017_
                         _e244106245020_
                         _hd244105245023_
                         _tl244104245025_))))
                (___match255007255008_
                 _e244079244948_
                 _hd244078244951_
                 _tl244077244953_
                 _e244082244956_
                 _hd244081244959_
                 _tl244080244961_
                 _e244085244964_
                 _hd244084244967_
                 _tl244083244969_
                 _e244088244972_
                 _hd244087244975_
                 _tl244086244977_
                 _e244091244980_
                 _hd244090244983_
                 _tl244089244985_
                 _e244094244988_
                 _hd244093244991_
                 _tl244092244993_
                 _e244097244996_
                 _hd244096244999_
                 _tl244095245001_
                 _e244100245004_
                 _hd244099245007_
                 _tl244098245009_
                 _e244103245012_
                 _hd244102245015_
                 _tl244101245017_
                 _e244106245020_
                 _hd244105245023_
                 _tl244104245025_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match255211255212_
                                                     _e244079244948_
                                                     _hd244078244951_
                                                     _tl244077244953_
                                                     _e244082244956_
                                                     _hd244081244959_
                                                     _tl244080244961_
                                                     _e244085244964_
                                                     _hd244084244967_
                                                     _tl244083244969_
                                                     _e244088244972_
                                                     _hd244087244975_
                                                     _tl244086244977_
                                                     _e244091244980_
                                                     _hd244090244983_
                                                     _tl244089244985_
                                                     _e244094244988_
                                                     _hd244093244991_
                                                     _tl244092244993_
                                                     _e244097244996_
                                                     _hd244096244999_
                                                     _tl244095245001_
                                                     _e244100245004_
                                                     _hd244099245007_
                                                     _tl244098245009_))))
                                            (___match255211255212_
                                             _e244079244948_
                                             _hd244078244951_
                                             _tl244077244953_
                                             _e244082244956_
                                             _hd244081244959_
                                             _tl244080244961_
                                             _e244085244964_
                                             _hd244084244967_
                                             _tl244083244969_
                                             _e244088244972_
                                             _hd244087244975_
                                             _tl244086244977_
                                             _e244091244980_
                                             _hd244090244983_
                                             _tl244089244985_
                                             _e244094244988_
                                             _hd244093244991_
                                             _tl244092244993_
                                             _e244097244996_
                                             _hd244096244999_
                                             _tl244095245001_
                                             _e244100245004_
                                             _hd244099245007_
                                             _tl244098245009_))
                                        (___match254887254888_
                                         _e244079244948_
                                         _hd244078244951_
                                         _tl244077244953_
                                         _e244082244956_
                                         _hd244081244959_
                                         _tl244080244961_
                                         _e244085244964_
                                         _hd244084244967_
                                         _tl244083244969_
                                         _e244088244972_
                                         _hd244087244975_
                                         _tl244086244977_
                                         _e244091244980_
                                         _hd244090244983_
                                         _tl244089244985_
                                         _e244094244988_
                                         _hd244093244991_
                                         _tl244092244993_
                                         _e244097244996_
                                         _hd244096244999_
                                         _tl244095245001_
                                         _e244100245004_
                                         _hd244099245007_
                                         _tl244098245009_
                                         _e244103245012_
                                         _hd244102245015_
                                         _tl244101245017_))
                                    (___match255211255212_
                                     _e244079244948_
                                     _hd244078244951_
                                     _tl244077244953_
                                     _e244082244956_
                                     _hd244081244959_
                                     _tl244080244961_
                                     _e244085244964_
                                     _hd244084244967_
                                     _tl244083244969_
                                     _e244088244972_
                                     _hd244087244975_
                                     _tl244086244977_
                                     _e244091244980_
                                     _hd244090244983_
                                     _tl244089244985_
                                     _e244094244988_
                                     _hd244093244991_
                                     _tl244092244993_
                                     _e244097244996_
                                     _hd244096244999_
                                     _tl244095245001_
                                     _e244100245004_
                                     _hd244099245007_
                                     _tl244098245009_))))
                            (___match255211255212_
                             _e244079244948_
                             _hd244078244951_
                             _tl244077244953_
                             _e244082244956_
                             _hd244081244959_
                             _tl244080244961_
                             _e244085244964_
                             _hd244084244967_
                             _tl244083244969_
                             _e244088244972_
                             _hd244087244975_
                             _tl244086244977_
                             _e244091244980_
                             _hd244090244983_
                             _tl244089244985_
                             _e244094244988_
                             _hd244093244991_
                             _tl244092244993_
                             _e244097244996_
                             _hd244096244999_
                             _tl244095245001_
                             _e244100245004_
                             _hd244099245007_
                             _tl244098245009_))))
                    (___match255149255150_
                     _e244079244948_
                     _hd244078244951_
                     _tl244077244953_
                     _e244082244956_
                     _hd244081244959_
                     _tl244080244961_
                     _e244085244964_
                     _hd244084244967_
                     _tl244083244969_
                     _e244088244972_
                     _hd244087244975_
                     _tl244086244977_
                     _e244091244980_
                     _hd244090244983_
                     _tl244089244985_
                     _e244094244988_
                     _hd244093244991_
                     _tl244092244993_
                     _e244097244996_
                     _hd244096244999_
                     _tl244095245001_))
                (___kont254732254733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont254732254733_))
                                            (___kont254732254733_))
                                        (___kont254732254733_))))
                                (___kont254732254733_))))
                        (___kont254732254733_))
                    (___kont254732254733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254732254733_))
                                                (___kont254732254733_))
                                            (___kont254732254733_))))
                                    (___kont254732254733_))))
                            (___kont254732254733_))))
                    (___kont254732254733_))))))))))
