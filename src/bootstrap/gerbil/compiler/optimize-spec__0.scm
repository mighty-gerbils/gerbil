(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707735860)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl249520_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255216 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl249520_ __tmp255216))
           (let ()
             (declare (not safe))
             (table-set! _tbl249520_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249520_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249520_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249520_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl249520_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx249503_ . _args249505_)
        (let ((__tmp255218
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249505_)
                     (gxc#compile-e__0 _stx249503_)
                     (let ((_arg1249510_ (car _args249505_))
                           (_rest249512_ (cdr _args249505_)))
                       (if (null? _rest249512_)
                           (gxc#compile-e__1 _stx249503_ _arg1249510_)
                           (let ((_arg2249515_ (car _rest249512_))
                                 (_rest249517_ (cdr _rest249512_)))
                             (if (null? _rest249517_)
                                 (gxc#compile-e__2
                                  _stx249503_
                                  _arg1249510_
                                  _arg2249515_)
                                 (apply gxc#compile-e
                                        _stx249503_
                                        _arg1249510_
                                        _arg2249515_
                                        _rest249517_))))))))
              (__tmp255217 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp255218
           gxc#current-compile-methods
           __tmp255217))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249500_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255219 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl249500_ __tmp255219))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249500_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249500_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl249500_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx249483_ . _args249485_)
        (let ((__tmp255221
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249485_)
                     (gxc#compile-e__0 _stx249483_)
                     (let ((_arg1249490_ (car _args249485_))
                           (_rest249492_ (cdr _args249485_)))
                       (if (null? _rest249492_)
                           (gxc#compile-e__1 _stx249483_ _arg1249490_)
                           (let ((_arg2249495_ (car _rest249492_))
                                 (_rest249497_ (cdr _rest249492_)))
                             (if (null? _rest249497_)
                                 (gxc#compile-e__2
                                  _stx249483_
                                  _arg1249490_
                                  _arg2249495_)
                                 (apply gxc#compile-e
                                        _stx249483_
                                        _arg1249490_
                                        _arg2249495_
                                        _rest249497_))))))))
              (__tmp255220 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255221
           gxc#current-compile-methods
           __tmp255220))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249480_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255222 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl249480_ __tmp255222))
           (let ()
             (declare (not safe))
             (table-set! _tbl249480_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249480_ '%#call gxc#subst-object-refs-call%))
           _tbl249480_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx249463_ . _args249465_)
        (let ((__tmp255224
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249465_)
                     (gxc#compile-e__0 _stx249463_)
                     (let ((_arg1249470_ (car _args249465_))
                           (_rest249472_ (cdr _args249465_)))
                       (if (null? _rest249472_)
                           (gxc#compile-e__1 _stx249463_ _arg1249470_)
                           (let ((_arg2249475_ (car _rest249472_))
                                 (_rest249477_ (cdr _rest249472_)))
                             (if (null? _rest249477_)
                                 (gxc#compile-e__2
                                  _stx249463_
                                  _arg1249470_
                                  _arg2249475_)
                                 (apply gxc#compile-e
                                        _stx249463_
                                        _arg1249470_
                                        _arg2249475_
                                        _rest249477_))))))))
              (__tmp255223 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255224
           gxc#current-compile-methods
           __tmp255223))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx246133_)
        (letrec ((_generate-method-bind246135_
                  (lambda (_$t249457_ _id249458_ _$id249459_)
                    (let ((_$tmp249461_
                           (let ((__tmp255225 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255225))))
                      (let ((__tmp255270
                             (let ()
                               (declare (not safe))
                               (cons _$id249459_ '())))
                            (__tmp255226
                             (let ((__tmp255227
                                    (let ((__tmp255228
                                           (let ((__tmp255268
                                                  (let ((__tmp255269
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255269)))
                                                 (__tmp255229
                                                  (let ((__tmp255230
                                                         (let ((__tmp255231
                                                                (let ((__tmp255232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255233
                                      (let ((__tmp255234
                                             (let ((__tmp255254
                                                    (let ((__tmp255255
                                                           (let ((__tmp255267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp249461_ '())))
                         (__tmp255256
                          (let ((__tmp255257
                                 (let ((__tmp255258
                                        (let ((__tmp255265
                                               (let ((__tmp255266
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp255266)))
                                              (__tmp255259
                                               (let ((__tmp255263
                                                      (let ((__tmp255264
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t249457_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp255264)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255260
                                                      (let ((__tmp255261
                                                             (let ((__tmp255262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id249458_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp255262))))
                (declare (not safe))
                (cons __tmp255261 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp255263
                                                       __tmp255260))))
                                          (declare (not safe))
                                          (cons __tmp255265 __tmp255259))))
                                   (declare (not safe))
                                   (cons '%#call __tmp255258))))
                            (declare (not safe))
                            (cons __tmp255257 '()))))
                     (declare (not safe))
                     (cons __tmp255267 __tmp255256))))
              (declare (not safe))
              (cons __tmp255255 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255235
                                                    (let ((__tmp255236
                                                           (let ((__tmp255237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255252
                                 (let ((__tmp255253
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp249461_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp255253)))
                                (__tmp255238
                                 (let ((__tmp255250
                                        (let ((__tmp255251
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp249461_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp255251)))
                                       (__tmp255239
                                        (let ((__tmp255240
                                               (let ((__tmp255241
                                                      (let ((__tmp255248
                                                             (let ((__tmp255249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp255249)))
                    (__tmp255242
                     (let ((__tmp255246
                            (let ((__tmp255247
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp255247)))
                           (__tmp255243
                            (let ((__tmp255244
                                   (let ((__tmp255245
                                          (let ()
                                            (declare (not safe))
                                            (cons _id249458_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp255245))))
                              (declare (not safe))
                              (cons __tmp255244 '()))))
                       (declare (not safe))
                       (cons __tmp255246 __tmp255243))))
                (declare (not safe))
                (cons __tmp255248 __tmp255242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp255241))))
                                          (declare (not safe))
                                          (cons __tmp255240 '()))))
                                   (declare (not safe))
                                   (cons __tmp255250 __tmp255239))))
                            (declare (not safe))
                            (cons __tmp255252 __tmp255238))))
                     (declare (not safe))
                     (cons '%#if __tmp255237))))
              (declare (not safe))
              (cons __tmp255236 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255254
                                                     __tmp255235))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp255234))))
                                 (declare (not safe))
                                 (cons __tmp255233 '()))))
                          (declare (not safe))
                          (cons '() __tmp255232))))
                   (declare (not safe))
                   (cons '%#lambda __tmp255231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255230 '()))))
                                             (declare (not safe))
                                             (cons __tmp255268 __tmp255229))))
                                      (declare (not safe))
                                      (cons '%#call __tmp255228))))
                               (declare (not safe))
                               (cons __tmp255227 '()))))
                        (declare (not safe))
                        (cons __tmp255270 __tmp255226)))))
                 (_generate-slot-bind246136_
                  (lambda (_$t249451_ _id249452_ _$id249453_)
                    (let ((_$tmp249455_
                           (let ((__tmp255271 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255271))))
                      (let ((__tmp255308
                             (let ()
                               (declare (not safe))
                               (cons _$id249453_ '())))
                            (__tmp255272
                             (let ((__tmp255273
                                    (let ((__tmp255274
                                           (let ((__tmp255294
                                                  (let ((__tmp255295
                                                         (let ((__tmp255307
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp249455_ '())))
                       (__tmp255296
                        (let ((__tmp255297
                               (let ((__tmp255298
                                      (let ((__tmp255305
                                             (let ((__tmp255306
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp255306)))
                                            (__tmp255299
                                             (let ((__tmp255303
                                                    (let ((__tmp255304
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t249451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp255304)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255300
                                                    (let ((__tmp255301
                                                           (let ((__tmp255302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id249452_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp255302))))
              (declare (not safe))
              (cons __tmp255301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255303
                                                     __tmp255300))))
                                        (declare (not safe))
                                        (cons __tmp255305 __tmp255299))))
                                 (declare (not safe))
                                 (cons '%#call __tmp255298))))
                          (declare (not safe))
                          (cons __tmp255297 '()))))
                   (declare (not safe))
                   (cons __tmp255307 __tmp255296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255295 '())))
                                                 (__tmp255275
                                                  (let ((__tmp255276
                                                         (let ((__tmp255277
                                                                (let ((__tmp255292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255293
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp249455_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255293)))
                              (__tmp255278
                               (let ((__tmp255290
                                      (let ((__tmp255291
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp249455_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp255291)))
                                     (__tmp255279
                                      (let ((__tmp255280
                                             (let ((__tmp255281
                                                    (let ((__tmp255288
                                                           (let ((__tmp255289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp255289)))
                  (__tmp255282
                   (let ((__tmp255286
                          (let ((__tmp255287
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp255287)))
                         (__tmp255283
                          (let ((__tmp255284
                                 (let ((__tmp255285
                                        (let ()
                                          (declare (not safe))
                                          (cons _id249452_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp255285))))
                            (declare (not safe))
                            (cons __tmp255284 '()))))
                     (declare (not safe))
                     (cons __tmp255286 __tmp255283))))
              (declare (not safe))
              (cons __tmp255288 __tmp255282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp255281))))
                                        (declare (not safe))
                                        (cons __tmp255280 '()))))
                                 (declare (not safe))
                                 (cons __tmp255290 __tmp255279))))
                          (declare (not safe))
                          (cons __tmp255292 __tmp255278))))
                   (declare (not safe))
                   (cons '%#if __tmp255277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255276 '()))))
                                             (declare (not safe))
                                             (cons __tmp255294 __tmp255275))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp255274))))
                               (declare (not safe))
                               (cons __tmp255273 '()))))
                        (declare (not safe))
                        (cons __tmp255308 __tmp255272)))))
                 (_generate-class-check-bind246137_
                  (lambda (_$t249447_ _class-type249448_ _$class-type249449_)
                    (let ((__tmp255320
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249449_ '())))
                          (__tmp255309
                           (let ((__tmp255310
                                  (let ((__tmp255311
                                         (let ((__tmp255318
                                                (let ((__tmp255319
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255319)))
                                               (__tmp255312
                                                (let ((__tmp255316
                                                       (let ((__tmp255317
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249447_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255317)))
              (__tmp255313
               (let ((__tmp255314
                      (let ((__tmp255315
                             (let ()
                               (declare (not safe))
                               (cons _class-type249448_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255315))))
                 (declare (not safe))
                 (cons __tmp255314 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255316
                                                        __tmp255313))))
                                           (declare (not safe))
                                           (cons __tmp255318 __tmp255312))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255311))))
                             (declare (not safe))
                             (cons __tmp255310 '()))))
                      (declare (not safe))
                      (cons __tmp255320 __tmp255309))))
                 (_generate-struct-check-bind246138_
                  (lambda (_$t249443_ _class-type249444_ _$class-type249445_)
                    (let ((__tmp255332
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249445_ '())))
                          (__tmp255321
                           (let ((__tmp255322
                                  (let ((__tmp255323
                                         (let ((__tmp255330
                                                (let ((__tmp255331
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255331)))
                                               (__tmp255324
                                                (let ((__tmp255328
                                                       (let ((__tmp255329
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249443_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255329)))
              (__tmp255325
               (let ((__tmp255326
                      (let ((__tmp255327
                             (let ()
                               (declare (not safe))
                               (cons _class-type249444_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255327))))
                 (declare (not safe))
                 (cons __tmp255326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255328
                                                        __tmp255325))))
                                           (declare (not safe))
                                           (cons __tmp255330 __tmp255324))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255323))))
                             (declare (not safe))
                             (cons __tmp255322 '()))))
                      (declare (not safe))
                      (cons __tmp255332 __tmp255321))))
                 (_generate-specializer-impl246139_
                  (lambda (_$t249392_
                           _methods-bind249393_
                           _slots-bind249394_
                           _class-check-bind249395_
                           _struct-check-bind249396_
                           _specializer-impl249397_
                           _lifted-specializer-id249398_
                           _unchecked-specializer-impl249399_)
                    (let ((__tmp255333
                           (let ((__tmp255334
                                  (let ((__tmp255360
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t249392_ '())))
                                        (__tmp255335
                                         (let ((__tmp255336
                                                (let ((__tmp255337
                                                       (let ((__tmp255357
                                                              (let ((__tmp255358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255359
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind249396_
                                              _class-check-bind249395_))))
                               (declare (not safe))
                               (foldr1 cons __tmp255359 _slots-bind249394_))))
                        (declare (not safe))
                        (foldr1 cons __tmp255358 _methods-bind249393_)))
                     (__tmp255338
                      (let ((__tmp255339
                             (if (or _lifted-specializer-id249398_
                                     _unchecked-specializer-impl249399_)
                                 (let* ((_$specializer249404_
                                         (let ((__tmp255340
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp255340)))
                                        (__tmp255341
                                         (let ((__tmp255353
                                                (let ((__tmp255354
                                                       (let ((__tmp255356
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249404_ '())))
                     (__tmp255355
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl249397_ '()))))
                 (declare (not safe))
                 (cons __tmp255356 __tmp255355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255354 '())))
                                               (__tmp255342
                                                (let ((__tmp255343
                                                       (let _recur249406_ ((_rest249408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind249396_)))
                 (let* ((_rest249409249417_ _rest249408_)
                        (_else249411249425_
                         (lambda ()
                           (if _lifted-specializer-id249398_
                               (let ((__tmp255344
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id249398_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255344))
                               _unchecked-specializer-impl249399_)))
                        (_K249413249431_
                         (lambda (_rest249428_ _checkq249429_)
                           (let ((__tmp255345
                                  (let ((__tmp255351
                                         (let ((__tmp255352
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq249429_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255352)))
                                        (__tmp255346
                                         (let ((__tmp255350
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur249406_
                                                   _rest249428_)))
                                               (__tmp255347
                                                (let ((__tmp255348
                                                       (let ((__tmp255349
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249404_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255348 '()))))
                                           (declare (not safe))
                                           (cons __tmp255350 __tmp255347))))
                                    (declare (not safe))
                                    (cons __tmp255351 __tmp255346))))
                             (declare (not safe))
                             (cons '%#if __tmp255345)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest249409249417_))
                       (let ((_hd249414249434_
                              (let ()
                                (declare (not safe))
                                (##car _rest249409249417_)))
                             (_tl249415249436_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest249409249417_))))
                         (let* ((_checkq249439_ _hd249414249434_)
                                (_rest249441_ _tl249415249436_))
                           (declare (not safe))
                           (_K249413249431_ _rest249441_ _checkq249439_)))
                       (let () (declare (not safe)) (_else249411249425_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255343 '()))))
                                           (declare (not safe))
                                           (cons __tmp255353 __tmp255342))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp255341))
                                 _specializer-impl249397_)))
                        (declare (not safe))
                        (cons __tmp255339 '()))))
                 (declare (not safe))
                 (cons __tmp255357 __tmp255338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp255337))))
                                           (declare (not safe))
                                           (cons __tmp255336 '()))))
                                    (declare (not safe))
                                    (cons __tmp255360 __tmp255335))))
                             (declare (not safe))
                             (cons '%#lambda __tmp255334))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255333 _stx246133_))))
                 (_generate-specializer-def246140_
                  (lambda (_id249386_
                           _specializer-id249387_
                           _specializer-impl249388_
                           _lifted-specializer-id249389_
                           _unchecked-specializer-impl249390_)
                    (let ((__tmp255361
                           (let ((__tmp255362
                                  (let ((__tmp255363
                                         (let ((__tmp255383
                                                (let ((__tmp255384
                                                       (let ((__tmp255385
                                                              (let ((__tmp255387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id249387_ '())))
                            (__tmp255386
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl249388_ '()))))
                        (declare (not safe))
                        (cons __tmp255387 __tmp255386))))
                 (declare (not safe))
                 (cons '%#define-values __tmp255385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255384
                                                   _stx246133_)))
                                               (__tmp255364
                                                (let ((__tmp255371
                                                       (let ((__tmp255372
                                                              (let ((__tmp255373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255374
                                    (let ((__tmp255381
                                           (let ((__tmp255382
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255382)))
                                          (__tmp255375
                                           (let ((__tmp255379
                                                  (let ((__tmp255380
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id249386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255380)))
                                                 (__tmp255376
                                                  (let ((__tmp255377
                                                         (let ((__tmp255378
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id249387_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255377 '()))))
                                             (declare (not safe))
                                             (cons __tmp255379 __tmp255376))))
                                      (declare (not safe))
                                      (cons __tmp255381 __tmp255375))))
                               (declare (not safe))
                               (cons '%#call __tmp255374))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp255373 _stx246133_))))
                 (declare (not safe))
                 (cons __tmp255372 '())))
              (__tmp255365
               (if _lifted-specializer-id249389_
                   (let ((__tmp255366
                          (let ((__tmp255367
                                 (let ((__tmp255368
                                        (let ((__tmp255370
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id249389_
                                                       '())))
                                              (__tmp255369
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl249390_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp255370 __tmp255369))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp255368))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp255367 _stx246133_))))
                     (declare (not safe))
                     (cons __tmp255366 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp255371
                                                          __tmp255365))))
                                           (declare (not safe))
                                           (cons __tmp255383 __tmp255364))))
                                    (declare (not safe))
                                    (cons _stx246133_ __tmp255363))))
                             (declare (not safe))
                             (cons '%#begin __tmp255362))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255361 _stx246133_)))))
          (let* ((___stx254177254178_ _stx246133_)
                 (_g246143246163_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254177254178_)))))
            (let ((___kont254179254180_
                   (lambda (_L246207_ _L246208_)
                     (let ((_method-calls246227_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs246228_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check246229_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check246230_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert246231_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty246232_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?246234_
                                 (lambda ()
                                   (if (let ((__tmp255392
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246227_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255392))
                                       (if (let ((__tmp255391
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246228_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255391))
                                           (if (let ((__tmp255390
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check246229_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp255390))
                                               (if (let ((__tmp255389
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check246230_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255389))
                                                   (let ((__tmp255388
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert246231_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255388))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?246235_
                                 (lambda ()
                                   (let ((_$e249379_
                                          (let ((__tmp255393
                                                 (let ((__tmp255394
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check246230_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp255394))))
                                            (declare (not safe))
                                            (not __tmp255393))))
                                     (if _$e249379_
                                         _$e249379_
                                         (let ((__tmp255395
                                                (let ((__tmp255396
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert246231_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp255396))))
                                           (declare (not safe))
                                           (not __tmp255395))))))
                                (_lift-unchecked-specializer?246236_
                                 (lambda ()
                                   (if (let ((__tmp255399
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246227_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255399))
                                       (if (let ((__tmp255398
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246228_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255398))
                                           (let ((__tmp255397
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check246229_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255397))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L246207_))
                             (let* ((___stx254091254092_ _L246207_)
                                    (_g246749246767_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx254091254092_)))))
                               (let ((___kont254093254094_
                                      (lambda (_L246803_ _L246804_ _L246805_)
                                        (for-each
                                         (lambda (_g246820246822_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g246820246822_
                                              _L246805_
                                              _method-calls246227_
                                              _slot-refs246228_
                                              _class-type-check246229_
                                              _struct-type-check246230_
                                              _struct-type-assert246231_)))
                                         _L246803_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?246234_))
                                            _stx246133_
                                            (let* ((_specializer-id246831_
                                                    (let* ((_id246825_
                                                            (let ((__tmp255549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L246208_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp255549 '"::specialize")))
                   (_specializer-id246828_
                    (let ((__tmp255550
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx246133_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id246825_ __tmp255550))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id246828_))
              _specializer-id246828_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id246838_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?246236_))
                                                        (let* ((_id246833_
                                                                (let ((__tmp255551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L246208_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp255551
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id246835_
                        (let ((__tmp255552
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx246133_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id246833_ __tmp255552))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id246835_))
                  _lifted-specializer-id246835_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t246840_
                                                    (let ((__tmp255553
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255553)))
                                                   (_methods246842_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls246227_)))
                                                   (_$methods246846_
                                                    (map (lambda (_id246844_)
                                                           (let ((__tmp255554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246844_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255554)))
                 _methods246842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255555_
                                                    (for-each
                                                     (lambda (_g246847246850_
                                                              _g246848246852_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls246227_
                                                          _g246847246850_
                                                          _g246848246852_)))
                                                     _methods246842_
                                                     _$methods246846_))
                                                   (_methods-bind246863_
                                                    (map (lambda (_g246855246858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246856246860_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind246135_
                      _$t246840_
                      _g246855246858_
                      _g246856246860_)))
                 _methods246842_
                 _$methods246846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots246865_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs246228_)))
                                                   (_$slots246869_
                                                    (map (lambda (_id246867_)
                                                           (let ((__tmp255556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246867_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255556)))
                 _slots246865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255557_
                                                    (for-each
                                                     (lambda (_g246870246873_
                                                              _g246871246875_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs246228_
                                                          _g246870246873_
                                                          _g246871246875_)))
                                                     _slots246865_
                                                     _$slots246869_))
                                                   (_slots-bind246886_
                                                    (map (lambda (_g246878246881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246879246883_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind246136_
                      _$t246840_
                      _g246878246881_
                      _g246879246883_)))
                 _slots246865_
                 _$slots246869_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check246888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check246229_)))
                                                   (_$class-check246891_
                                                    (map (lambda (_g255558_)
                                                           (let ((__tmp255559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255559)))
                 _class-check246888_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255560_
                                                    (for-each
                                                     (lambda (_g246892246895_
                                                              _g246893246897_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check246229_
                                                          _g246892246895_
                                                          _g246893246897_)))
                                                     _class-check246888_
                                                     _$class-check246891_))
                                                   (_class-check-bind246908_
                                                    (map (lambda (_g246900246903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246901246905_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind246137_
                      _$t246840_
                      _g246900246903_
                      _g246901246905_)))
                 _class-check246888_
                 _$class-check246891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all246910_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check246230_
                                                       _struct-type-assert246231_)))
                                                   (_struct-check246912_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all246910_)))
                                                   (_$struct-check246915_
                                                    (map (lambda (_g255561_)
                                                           (let ((__tmp255562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255562)))
                 _struct-check246912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255563_
                                                    (for-each
                                                     (lambda (_g246916246919_
                                                              _g246917246921_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all246910_
                                                          _g246916246919_
                                                          _g246917246921_)))
                                                     _struct-check246912_
                                                     _$struct-check246915_))
                                                   (_struct-check-bind246932_
                                                    (map (lambda (_g246924246927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246925246929_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind246138_
                      _$t246840_
                      _g246924246927_
                      _g246925246929_)))
                 _struct-check246912_
                 _$struct-check246915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl246943_
                                                    (lambda (_struct-type-check1246934_
                                                             _struct-type-check2246935_)
                                                      (let* ((_specializer-body246941_
                                                              (map (lambda (_g246936246938_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g246936246938_
                                _L246805_
                                _$t246840_
                                _method-calls246227_
                                _slot-refs246228_
                                _class-type-check246229_
                                _struct-type-check1246934_
                                _struct-type-check2246935_)))
                           _L246803_))
                     (__tmp255564
                      (let ((__tmp255565
                             (let ((__tmp255566
                                    (let ()
                                      (declare (not safe))
                                      (cons _L246805_ _L246804_))))
                               (declare (not safe))
                               (cons __tmp255566 _specializer-body246941_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp255565))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp255564 _stx246133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl246945_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl246943_
                                                       _struct-check-all246910_
                                                       _empty246232_)))
                                                   (_unchecked-specializer-impl246947_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?246235_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl246943_
                                                           _empty246232_
                                                           _struct-check-all246910_))
                                                        '#f))
                                                   (_specializer-impl246949_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl246139_
                                                       _$t246840_
                                                       _methods-bind246863_
                                                       _slots-bind246886_
                                                       _class-check-bind246908_
                                                       _struct-check-bind246932_
                                                       _specializer-impl246945_
                                                       _lifted-specializer-id246838_
                                                       _unchecked-specializer-impl246947_))))
                                              (let ((__tmp255568
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L246208_)))
                                                    (__tmp255567
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id246831_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp255568
                                                 '" => "
                                                 __tmp255567))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def246140_
                                                 _L246208_
                                                 _specializer-id246831_
                                                 _specializer-impl246949_
                                                 _lifted-specializer-id246838_
                                                 _unchecked-specializer-impl246947_))))))
                                     (___kont254095254096_
                                      (lambda () _stx246133_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx254091254092_))
                                     (let ((_e246756246779_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx254091254092_))))
                                       (let ((_tl246754246784_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e246756246779_)))
                                             (_hd246755246782_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e246756246779_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl246754246784_))
                                             (let ((_e246759246787_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl246754246784_))))
                                               (let ((_tl246757246792_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e246759246787_)))
                                                     (_hd246758246790_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e246759246787_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd246758246790_))
                                                     (let ((_e246762246795_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd246758246790_))))
                                                       (let ((_tl246760246800_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e246762246795_)))
                     (_hd246761246798_
                      (let () (declare (not safe)) (##car _e246762246795_))))
                 (___kont254093254094_
                  _tl246757246792_
                  _tl246760246800_
                  _hd246761246798_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont254095254096_))))
                                             (___kont254095254096_))))
                                     (___kont254095254096_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L246207_))
                                 (let* ((_g246955246974_
                                         (lambda (_g246956246971_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g246956246971_))))
                                        (_g246954247325_
                                         (lambda (_g246956246977_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g246956246977_))
                                               (let ((_e246960246979_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g246956246977_))))
                                                 (let ((_hd246959246982_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246960246979_)))
                                                       (_tl246958246984_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246960246979_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl246958246984_))
                                                       (let ((_g255525_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl246958246984_ '0))))
                 (begin
                   (let ((_g255526_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g255525_)
                                (##vector-length _g255525_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g255526_ 2)))
                         (error "Context expects 2 values" _g255526_)))
                   (let ((_target246961246987_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255525_ 0)))
                         (_tl246963246989_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255525_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl246963246989_))
                         (letrec ((_loop246964246992_
                                   (lambda (_hd246962246995_
                                            _clause246968246997_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd246962246995_))
                                         (let ((_e246965247000_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd246962246995_))))
                                           (let ((_lp-hd246966247003_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e246965247000_)))
                                                 (_lp-tl246967247005_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e246965247000_))))
                                             (let ((__tmp255548
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd246966247003_
                                                            _clause246968246997_))))
                                               (declare (not safe))
                                               (_loop246964246992_
                                                _lp-tl246967247005_
                                                __tmp255548))))
                                         (let ((_clause246969247008_
                                                (reverse _clause246968246997_)))
                                           ((lambda (_L247011_)
                                              (for-each
                                               (lambda (_clause247024_)
                                                 (let* ((___stx254117254118_
                                                         _clause247024_)
                                                        (_g247027247042_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx254117254118_)))))
                                                   (let ((___kont254119254120_
                                                          (lambda (_L247070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L247071_
                           _L247072_)
                    (for-each
                     (lambda (_g247087247089_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g247087247089_
                          _L247072_
                          _method-calls246227_
                          _slot-refs246228_
                          _class-type-check246229_
                          _struct-type-check246230_
                          _struct-type-assert246231_)))
                     _L247070_)))
                 (___kont254121254122_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx254117254118_))
                                                         (let ((_e247034247054_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx254117254118_))))
                   (let ((_tl247032247059_
                          (let ()
                            (declare (not safe))
                            (##cdr _e247034247054_)))
                         (_hd247033247057_
                          (let ()
                            (declare (not safe))
                            (##car _e247034247054_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd247033247057_))
                         (let ((_e247037247062_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd247033247057_))))
                           (let ((_tl247035247067_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e247037247062_)))
                                 (_hd247036247065_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e247037247062_))))
                             (___kont254119254120_
                              _tl247032247059_
                              _tl247035247067_
                              _hd247036247065_)))
                         (___kont254121254122_))))
                 (___kont254121254122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp255527
                                                      (lambda (_g247094247097_
                                                               _g247095247099_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247094247097_
                                                                _g247095247099_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255527
                                                         '()
                                                         _L247011_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246234_))
                                                  _stx246133_
                                                  (let* ((_specializer-id247108_
                                                          (let* ((_id247102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255528
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246208_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255528 '"::specialize")))
                         (_specializer-id247105_
                          (let ((__tmp255529
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246133_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247102_ __tmp255529))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247105_))
                    _specializer-id247105_))
                 (_lifted-specializer-id247115_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246236_))
                      (let* ((_id247110_
                              (let ((__tmp255530
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246208_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255530
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247112_
                              (let ((__tmp255531
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246133_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247110_
                                 __tmp255531))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247112_))
                        _lifted-specializer-id247112_)
                      '#f))
                 (_$t247117_
                  (let ((__tmp255532 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255532)))
                 (_methods247119_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246227_)))
                 (_$methods247123_
                  (map (lambda (_id247121_)
                         (let ((__tmp255533 (gensym _id247121_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255533)))
                       _methods247119_))
                 (_g255534_
                  (for-each
                   (lambda (_g247124247127_ _g247125247129_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246227_
                        _g247124247127_
                        _g247125247129_)))
                   _methods247119_
                   _$methods247123_))
                 (_methods-bind247140_
                  (map (lambda (_g247132247135_ _g247133247137_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246135_
                            _$t247117_
                            _g247132247135_
                            _g247133247137_)))
                       _methods247119_
                       _$methods247123_))
                 (_slots247142_
                  (let () (declare (not safe)) (hash-keys _slot-refs246228_)))
                 (_$slots247146_
                  (map (lambda (_id247144_)
                         (let ((__tmp255535 (gensym _id247144_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255535)))
                       _slots247142_))
                 (_g255536_
                  (for-each
                   (lambda (_g247147247150_ _g247148247152_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246228_
                        _g247147247150_
                        _g247148247152_)))
                   _slots247142_
                   _$slots247146_))
                 (_slots-bind247163_
                  (map (lambda (_g247155247158_ _g247156247160_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246136_
                            _$t247117_
                            _g247155247158_
                            _g247156247160_)))
                       _slots247142_
                       _$slots247146_))
                 (_class-check247165_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246229_)))
                 (_$class-check247168_
                  (map (lambda (_g255537_)
                         (let ((__tmp255538 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255538)))
                       _class-check247165_))
                 (_g255539_
                  (for-each
                   (lambda (_g247169247172_ _g247170247174_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246229_
                        _g247169247172_
                        _g247170247174_)))
                   _class-check247165_
                   _$class-check247168_))
                 (_class-check-bind247185_
                  (map (lambda (_g247177247180_ _g247178247182_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246137_
                            _$t247117_
                            _g247177247180_
                            _g247178247182_)))
                       _class-check247165_
                       _$class-check247168_))
                 (_struct-check-all247187_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246230_
                     _struct-type-assert246231_)))
                 (_struct-check247189_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247187_)))
                 (_$struct-check247192_
                  (map (lambda (_g255540_)
                         (let ((__tmp255541 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255541)))
                       _struct-check247189_))
                 (_g255542_
                  (for-each
                   (lambda (_g247193247196_ _g247194247198_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247187_
                        _g247193247196_
                        _g247194247198_)))
                   _struct-check247189_
                   _$struct-check247192_))
                 (_struct-check-bind247209_
                  (map (lambda (_g247201247204_ _g247202247206_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246138_
                            _$t247117_
                            _g247201247204_
                            _g247202247206_)))
                       _struct-check247189_
                       _$struct-check247192_))
                 (_make-specializer-impl247316_
                  (lambda (_struct-type-check1247211_
                           _struct-type-check2247212_)
                    (let* ((_specializer-clauses247314_
                            (map (lambda (_clause247214_)
                                   (let* ((___stx254137254138_ _clause247214_)
                                          (_g247217247232_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx254137254138_)))))
                                     (let ((___kont254139254140_
                                            (lambda (_L247260_
                                                     _L247261_
                                                     _L247262_)
                                              (let* ((_body247302_
                                                      (map (lambda (_g247297247299_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g247297247299_
                        _L247262_
                        _$t247117_
                        _method-calls246227_
                        _slot-refs246228_
                        _class-type-check246229_
                        _struct-type-check1247211_
                        _struct-type-check2247212_)))
                   _L247260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255543
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L247262_
                                                              _L247261_))))
                                                (declare (not safe))
                                                (cons __tmp255543
                                                      _body247302_))))
                                           (___kont254141254142_
                                            (lambda () _clause247214_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx254137254138_))
                                           (let ((_e247224247244_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx254137254138_))))
                                             (let ((_tl247222247249_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247224247244_)))
                                                   (_hd247223247247_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247224247244_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd247223247247_))
                                                   (let ((_e247227247252_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd247223247247_))))
                                                     (let ((_tl247225247257_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247227247252_)))
                                                           (_hd247226247255_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247227247252_))))
                                                       (___kont254139254140_
                                                        _tl247222247249_
                                                        _tl247225247257_
                                                        _hd247226247255_)))
                                                   (___kont254141254142_))))
                                           (___kont254141254142_)))))
                                 (let ((__tmp255544
                                        (lambda (_g247306247309_
                                                 _g247307247311_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g247306247309_
                                                  _g247307247311_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255544 '() _L247011_))))
                           (__tmp255545
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses247314_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255545 _stx246133_))))
                 (_specializer-impl247318_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl247316_
                     _struct-check-all247187_
                     _empty246232_)))
                 (_unchecked-specializer-impl247320_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246235_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl247316_
                         _empty246232_
                         _struct-check-all247187_))
                      '#f))
                 (_specializer-impl247322_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246139_
                     _$t247117_
                     _methods-bind247140_
                     _slots-bind247163_
                     _class-check-bind247185_
                     _struct-check-bind247209_
                     _specializer-impl247318_
                     _lifted-specializer-id247115_
                     _unchecked-specializer-impl247320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255547
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246208_)))
                                                          (__tmp255546
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247108_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255547
                                                       '" => "
                                                       __tmp255546))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246140_
                                                       _L246208_
                                                       _specializer-id247108_
                                                       _specializer-impl247322_
                                                       _lifted-specializer-id247115_
                                                       _unchecked-specializer-impl247320_)))))
                                            _clause246969247008_))))))
                           (let ()
                             (declare (not safe))
                             (_loop246964246992_ _target246961246987_ '())))
                         (let ()
                           (declare (not safe))
                           (_g246955246974_ _g246956246977_))))))
               (let ()
                 (declare (not safe))
                 (_g246955246974_ _g246956246977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246955246974_
                                                  _g246956246977_))))))
                                   (declare (not safe))
                                   (_g246954247325_ _L246207_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L246207_))
                                     (let* ((_g247328247358_
                                             (lambda (_g247329247355_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g247329247355_))))
                                            (_g247327248046_
                                             (lambda (_g247329247361_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g247329247361_))
                                                   (let ((_e247335247363_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g247329247361_))))
                                                     (let ((_hd247334247366_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247335247363_)))
                                                           (_tl247333247368_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247335247363_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247333247368_))
                                                           (let ((_e247338247371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247333247368_))))
                     (let ((_hd247337247374_
                            (let ()
                              (declare (not safe))
                              (##car _e247338247371_)))
                           (_tl247336247376_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247338247371_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd247337247374_))
                           (let ((_e247341247379_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd247337247374_))))
                             (let ((_hd247340247382_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e247341247379_)))
                                   (_tl247339247384_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e247341247379_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd247340247382_))
                                   (let ((_e247344247387_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd247340247382_))))
                                     (let ((_hd247343247390_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e247344247387_)))
                                           (_tl247342247392_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e247344247387_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd247343247390_))
                                           (let ((_e247347247395_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd247343247390_))))
                                             (let ((_hd247346247398_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247347247395_)))
                                                   (_tl247345247400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247347247395_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl247345247400_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl247342247392_))
                                                       (let ((_e247350247403_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl247342247392_))))
                 (let ((_hd247349247406_
                        (let () (declare (not safe)) (##car _e247350247403_)))
                       (_tl247348247408_
                        (let () (declare (not safe)) (##cdr _e247350247403_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl247348247408_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl247339247384_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl247336247376_))
                               (let ((_e247353247411_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl247336247376_))))
                                 (let ((_hd247352247414_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e247353247411_)))
                                       (_tl247351247416_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e247353247411_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl247351247416_))
                                       ((lambda (_L247419_ _L247420_ _L247421_)
                                          (let* ((_g247444247462_
                                                  (lambda (_g247445247459_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247445247459_))))
                                                 (_g247443247513_
                                                  (lambda (_g247445247465_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247445247465_))
                                                        (let ((_e247451247467_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247445247465_))))
                  (let ((_hd247450247470_
                         (let () (declare (not safe)) (##car _e247451247467_)))
                        (_tl247449247472_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247451247467_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl247449247472_))
                        (let ((_e247454247475_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl247449247472_))))
                          (let ((_hd247453247478_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247454247475_)))
                                (_tl247452247480_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247454247475_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd247453247478_))
                                (let ((_e247457247483_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd247453247478_))))
                                  (let ((_hd247456247486_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247457247483_)))
                                        (_tl247455247488_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247457247483_))))
                                    ((lambda (_L247491_ _L247492_ _L247493_)
                                       (for-each
                                        (lambda (_g247508247510_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g247508247510_
                                             _L247493_
                                             _method-calls246227_
                                             _slot-refs246228_
                                             _class-type-check246229_
                                             _struct-type-check246230_
                                             _struct-type-assert246231_)))
                                        _L247491_))
                                     _tl247452247480_
                                     _tl247455247488_
                                     _hd247456247486_)))
                                (let ()
                                  (declare (not safe))
                                  (_g247444247462_ _g247445247465_)))))
                        (let ()
                          (declare (not safe))
                          (_g247444247462_ _g247445247465_)))))
                (let ()
                  (declare (not safe))
                  (_g247444247462_ _g247445247465_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247443247513_ _L247420_))
                                          (let* ((_g247516247535_
                                                  (lambda (_g247517247532_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247517247532_))))
                                                 (_g247515247654_
                                                  (lambda (_g247517247538_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247517247538_))
                                                        (let ((_e247521247540_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247517247538_))))
                  (let ((_hd247520247543_
                         (let () (declare (not safe)) (##car _e247521247540_)))
                        (_tl247519247545_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247521247540_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl247519247545_))
                        (let ((_g255488_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl247519247545_
                                  '0))))
                          (begin
                            (let ((_g255489_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g255488_)
                                         (##vector-length _g255488_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g255489_ 2)))
                                  (error "Context expects 2 values"
                                         _g255489_)))
                            (let ((_target247522247548_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255488_ 0)))
                                  (_tl247524247550_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255488_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl247524247550_))
                                  (letrec ((_loop247525247553_
                                            (lambda (_hd247523247556_
                                                     _clause247529247558_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd247523247556_))
                                                  (let ((_e247526247561_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd247523247556_))))
                                                    (let ((_lp-hd247527247564_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e247526247561_)))
                                                          (_lp-tl247528247566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e247526247561_))))
                                                      (let ((__tmp255491
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd247527247564_ _clause247529247558_))))
                (declare (not safe))
                (_loop247525247553_ _lp-tl247528247566_ __tmp255491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause247530247569_
                                                         (reverse _clause247529247558_)))
                                                    ((lambda (_L247572_)
                                                       (for-each
                                                        (lambda (_clause247585_)
                                                          (let* ((_g247587247602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g247588247599_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g247588247599_))))
                         (_g247586247644_
                          (lambda (_g247588247605_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g247588247605_))
                                (let ((_e247594247607_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g247588247605_))))
                                  (let ((_hd247593247610_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247594247607_)))
                                        (_tl247592247612_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247594247607_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd247593247610_))
                                        (let ((_e247597247615_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd247593247610_))))
                                          (let ((_hd247596247618_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e247597247615_)))
                                                (_tl247595247620_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e247597247615_))))
                                            ((lambda (_L247623_
                                                      _L247624_
                                                      _L247625_)
                                               (for-each
                                                (lambda (_g247639247641_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g247639247641_
                                                     _L247625_
                                                     _method-calls246227_
                                                     _slot-refs246228_
                                                     _class-type-check246229_
                                                     _struct-type-check246230_
                                                     _struct-type-assert246231_)))
                                                _L247623_))
                                             _tl247592247612_
                                             _tl247595247620_
                                             _hd247596247618_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g247587247602_ _g247588247605_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g247587247602_ _g247588247605_))))))
                    (declare (not safe))
                    (_g247586247644_ _clause247585_)))
                (let ((__tmp255490
                       (lambda (_g247646247649_ _g247647247651_)
                         (let ()
                           (declare (not safe))
                           (cons _g247646247649_ _g247647247651_)))))
                  (declare (not safe))
                  (foldr1 __tmp255490 '() _L247572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause247530247569_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop247525247553_
                                       _target247522247548_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g247516247535_ _g247517247538_))))))
                        (let ()
                          (declare (not safe))
                          (_g247516247535_ _g247517247538_)))))
                (let ()
                  (declare (not safe))
                  (_g247516247535_ _g247517247538_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247515247654_ _L247419_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?246234_))
                                              _stx246133_
                                              (let* ((_specializer-id247663_
                                                      (let* ((_id247657_
                                                              (let ((__tmp255492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L246208_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp255492 '"::specialize")))
                     (_specializer-id247660_
                      (let ((__tmp255493
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx246133_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id247657_ __tmp255493))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id247660_))
                _specializer-id247660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id247670_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?246236_))
                                                          (let* ((_id247665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255494
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246208_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp255494
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id247667_
                          (let ((__tmp255495
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246133_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247665_ __tmp255495))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id247667_))
                    _lifted-specializer-id247667_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t247672_
                                                      (let ((__tmp255496
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp255496)))
                                                     (_methods247674_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls246227_)))
                                                     (_$methods247678_
                                                      (map (lambda (_id247676_)
                                                             (let ((__tmp255497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247676_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255497)))
                   _methods247674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255498_
                                                      (for-each
                                                       (lambda (_g247679247682_
                                                                _g247680247684_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls246227_
                                                            _g247679247682_
                                                            _g247680247684_)))
                                                       _methods247674_
                                                       _$methods247678_))
                                                     (_methods-bind247695_
                                                      (map (lambda (_g247687247690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247688247692_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind246135_
                        _$t247672_
                        _g247687247690_
                        _g247688247692_)))
                   _methods247674_
                   _$methods247678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots247697_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs246228_)))
                                                     (_$slots247701_
                                                      (map (lambda (_id247699_)
                                                             (let ((__tmp255499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247699_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255499)))
                   _slots247697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255500_
                                                      (for-each
                                                       (lambda (_g247702247705_
                                                                _g247703247707_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs246228_
                                                            _g247702247705_
                                                            _g247703247707_)))
                                                       _slots247697_
                                                       _$slots247701_))
                                                     (_slots-bind247718_
                                                      (map (lambda (_g247710247713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247711247715_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind246136_
                        _$t247672_
                        _g247710247713_
                        _g247711247715_)))
                   _slots247697_
                   _$slots247701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check247720_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check246229_)))
                                                     (_$class-check247723_
                                                      (map (lambda (_g255501_)
                                                             (let ((__tmp255502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255502)))
                   _class-check247720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255503_
                                                      (for-each
                                                       (lambda (_g247724247727_
                                                                _g247725247729_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check246229_
                                                            _g247724247727_
                                                            _g247725247729_)))
                                                       _class-check247720_
                                                       _$class-check247723_))
                                                     (_class-check-bind247740_
                                                      (map (lambda (_g247732247735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247733247737_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind246137_
                        _$t247672_
                        _g247732247735_
                        _g247733247737_)))
                   _class-check247720_
                   _$class-check247723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all247742_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check246230_
                                                         _struct-type-assert246231_)))
                                                     (_struct-check247744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all247742_)))
                                                     (_$struct-check247747_
                                                      (map (lambda (_g255504_)
                                                             (let ((__tmp255505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255505)))
                   _struct-check247744_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255506_
                                                      (for-each
                                                       (lambda (_g247748247751_
                                                                _g247749247753_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all247742_
                                                            _g247748247751_
                                                            _g247749247753_)))
                                                       _struct-check247744_
                                                       _$struct-check247747_))
                                                     (_struct-check-bind247764_
                                                      (map (lambda (_g247756247759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247757247761_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind246138_
                        _$t247672_
                        _g247756247759_
                        _g247757247761_)))
                   _struct-check247744_
                   _$struct-check247747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr247863_
                                                      (lambda (_struct-type-check1247766_
                                                               _struct-type-check2247767_)
                                                        (let* ((_g247769247787_
                                                                (lambda (_g247770247784_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247770247784_))))
                       (_g247768247860_
                        (lambda (_g247770247790_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247770247790_))
                              (let ((_e247776247792_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247770247790_))))
                                (let ((_hd247775247795_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247776247792_)))
                                      (_tl247774247797_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247776247792_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl247774247797_))
                                      (let ((_e247779247800_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl247774247797_))))
                                        (let ((_hd247778247803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e247779247800_)))
                                              (_tl247777247805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e247779247800_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd247778247803_))
                                              (let ((_e247782247808_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd247778247803_))))
                                                (let ((_hd247781247811_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e247782247808_)))
                                                      (_tl247780247813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e247782247808_))))
                                                  ((lambda (_L247816_
                                                            _L247817_
                                                            _L247818_)
                                                     (let* ((_body247858_
                                                             (map (lambda (_g247853247855_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g247853247855_
                               _L247818_
                               _$t247672_
                               _method-calls246227_
                               _slot-refs246228_
                               _class-type-check246229_
                               _struct-type-check1247766_
                               _struct-type-check2247767_)))
                          _L247816_))
                    (__tmp255507
                     (let ((__tmp255508
                            (let ((__tmp255509
                                   (let ()
                                     (declare (not safe))
                                     (cons _L247818_ _L247817_))))
                              (declare (not safe))
                              (cons __tmp255509 _body247858_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp255508))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255507 _L247420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl247777247805_
                                                   _tl247780247813_
                                                   _hd247781247811_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g247769247787_
                                                 _g247770247790_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247769247787_ _g247770247790_)))))
                              (let ()
                                (declare (not safe))
                                (_g247769247787_ _g247770247790_))))))
                  (declare (not safe))
                  (_g247768247860_ _L247420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr248024_
                                                      (lambda (_struct-type-check1247865_
                                                               _struct-type-check2247866_)
                                                        (let* ((_g247868247887_
                                                                (lambda (_g247869247884_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247869247884_))))
                       (_g247867248021_
                        (lambda (_g247869247890_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247869247890_))
                              (let ((_e247873247892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247869247890_))))
                                (let ((_hd247872247895_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247873247892_)))
                                      (_tl247871247897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247873247892_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl247871247897_))
                                      (let ((_g255510_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl247871247897_
                                                '0))))
                                        (begin
                                          (let ((_g255511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255510_)
                                                       (##vector-length
                                                        _g255510_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255511_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255511_)))
                                          (let ((_target247874247900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g255510_ 0)))
                                                (_tl247876247902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g255510_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl247876247902_))
                                                (letrec ((_loop247877247905_
                                                          (lambda (_hd247875247908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause247881247910_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd247875247908_))
                        (let ((_e247878247913_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd247875247908_))))
                          (let ((_lp-hd247879247916_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247878247913_)))
                                (_lp-tl247880247918_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247878247913_))))
                            (let ((__tmp255515
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd247879247916_
                                           _clause247881247910_))))
                              (declare (not safe))
                              (_loop247877247905_
                               _lp-tl247880247918_
                               __tmp255515))))
                        (let ((_clause247882247921_
                               (reverse _clause247881247910_)))
                          ((lambda (_L247924_)
                             (let* ((_clauses248019_
                                     (map (lambda (_clause247939_)
                                            (let* ((___stx254157254158_
                                                    _clause247939_)
                                                   (_g247942247957_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx254157254158_)))))
                                              (let ((___kont254159254160_
                                                     (lambda (_L247985_
                                                              _L247986_
                                                              _L247987_)
                                                       (let* ((_body248007_
                                                               (map (lambda (_g248002248004_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g248002248004_
                                 _L247987_
                                 _$t247672_
                                 _method-calls246227_
                                 _slot-refs246228_
                                 _class-type-check246229_
                                 _struct-type-check1247865_
                                 _struct-type-check2247866_)))
                            _L247985_))
                      (__tmp255512
                       (let ()
                         (declare (not safe))
                         (cons _L247987_ _L247986_))))
                 (declare (not safe))
                 (cons __tmp255512 _body248007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254161254162_
                                                     (lambda ()
                                                       _clause247939_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx254157254158_))
                                                    (let ((_e247949247969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx254157254158_))))
                                                      (let ((_tl247947247974_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e247949247969_)))
                    (_hd247948247972_
                     (let () (declare (not safe)) (##car _e247949247969_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd247948247972_))
                    (let ((_e247952247977_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd247948247972_))))
                      (let ((_tl247950247982_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247952247977_)))
                            (_hd247951247980_
                             (let ()
                               (declare (not safe))
                               (##car _e247952247977_))))
                        (___kont254159254160_
                         _tl247947247974_
                         _tl247950247982_
                         _hd247951247980_)))
                    (___kont254161254162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254161254162_)))))
                                          (let ((__tmp255513
                                                 (lambda (_g248011248014_
                                                          _g248012248016_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g248011248014_
                                                           _g248012248016_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp255513
                                                    '()
                                                    _L247924_))))
                                    (__tmp255514
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses248019_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp255514 _L247419_)))
                           _clause247882247921_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop247877247905_
                                                     _target247874247900_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g247868247887_
                                                   _g247869247890_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247868247887_ _g247869247890_)))))
                              (let ()
                                (declare (not safe))
                                (_g247868247887_ _g247869247890_))))))
                  (declare (not safe))
                  (_g247867248021_ _L247419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl248029_
                                                      (lambda (_specializer-lambda-expr248026_
                                                               _specializer-case-lambda-expr248027_)
                                                        (let ((__tmp255516
                                                               (let ((__tmp255517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp255519
                                     (let ((__tmp255520
                                            (let ((__tmp255522
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L247421_ '())))
                                                  (__tmp255521
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr248026_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp255522 __tmp255521))))
                                       (declare (not safe))
                                       (cons __tmp255520 '())))
                                    (__tmp255518
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr248027_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp255519 __tmp255518))))
                         (declare (not safe))
                         (cons '%#let-values __tmp255517))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255516 _stx246133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr248031_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr247863_
                                                         _struct-check-all247742_
                                                         _empty246232_)))
                                                     (_specializer-case-lambda-expr248033_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr248024_
                                                         _struct-check-all247742_
                                                         _empty246232_)))
                                                     (_specializer-impl248035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl248029_
                                                         _specializer-lambda-expr248031_
                                                         _specializer-case-lambda-expr248033_)))
                                                     (_unchecked-specializer-lambda-expr248037_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246235_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr247863_
                                                             _empty246232_
                                                             _struct-check-all247742_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr248039_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246235_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr248024_
                                                             _empty246232_
                                                             _struct-check-all247742_))
                                                          '#f))
                                                     (_unchecked-specializer-impl248041_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246235_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl248029_
                                                             _unchecked-specializer-lambda-expr248037_
                                                             _unchecked-specializer-case-lambda-expr248039_))
                                                          '#f))
                                                     (_specializer-impl248043_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl246139_
                                                         _$t247672_
                                                         _methods-bind247695_
                                                         _slots-bind247718_
                                                         _class-check-bind247740_
                                                         _struct-check-bind247764_
                                                         _specializer-impl248035_
                                                         _lifted-specializer-id247670_
                                                         _unchecked-specializer-impl248041_))))
                                                (let ((__tmp255524
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L246208_)))
                                                      (__tmp255523
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id247663_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp255524
                                                   '" => "
                                                   __tmp255523))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def246140_
                                                   _L246208_
                                                   _specializer-id247663_
                                                   _specializer-impl248043_
                                                   _lifted-specializer-id247670_
                                                   _unchecked-specializer-impl248041_)))))
                                        _hd247352247414_
                                        _hd247349247406_
                                        _hd247346247398_)
                                       (let ()
                                         (declare (not safe))
                                         (_g247328247358_ _g247329247361_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g247328247358_ _g247329247361_)))
                           (let ()
                             (declare (not safe))
                             (_g247328247358_ _g247329247361_)))
                       (let ()
                         (declare (not safe))
                         (_g247328247358_ _g247329247361_)))))
               (let () (declare (not safe)) (_g247328247358_ _g247329247361_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247328247358_
                                                      _g247329247361_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g247328247358_
                                              _g247329247361_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g247328247358_ _g247329247361_)))))
                           (let ()
                             (declare (not safe))
                             (_g247328247358_ _g247329247361_)))))
                   (let ()
                     (declare (not safe))
                     (_g247328247358_ _g247329247361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247328247358_
                                                      _g247329247361_))))))
                                       (declare (not safe))
                                       (_g247327248046_ _L246207_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L246207_))
                                         (let* ((_g248049248102_
                                                 (lambda (_g248050248099_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248050248099_))))
                                                (_g248048249374_
                                                 (lambda (_g248050248105_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248050248105_))
                                                       (let ((_e248058248107_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248050248105_))))
                 (let ((_hd248057248110_
                        (let () (declare (not safe)) (##car _e248058248107_)))
                       (_tl248056248112_
                        (let () (declare (not safe)) (##cdr _e248058248107_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd248057248110_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd248057248110_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248056248112_))
                               (let ((_e248061248115_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248056248112_))))
                                 (let ((_hd248060248118_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248061248115_)))
                                       (_tl248059248120_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248061248115_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248060248118_))
                                       (let ((_e248064248123_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248060248118_))))
                                         (let ((_hd248063248126_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248064248123_)))
                                               (_tl248062248128_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248064248123_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248063248126_))
                                               (let ((_e248067248131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248063248126_))))
                                                 (let ((_hd248066248134_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248067248131_)))
                                                       (_tl248065248136_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248067248131_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd248066248134_))
                                                       (let ((_e248070248139_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd248066248134_))))
                 (let ((_hd248069248142_
                        (let () (declare (not safe)) (##car _e248070248139_)))
                       (_tl248068248144_
                        (let () (declare (not safe)) (##cdr _e248070248139_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248068248144_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl248065248136_))
                           (let ((_e248073248147_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl248065248136_))))
                             (let ((_hd248072248150_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248073248147_)))
                                   (_tl248071248152_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248073248147_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248072248150_))
                                   (let ((_e248076248155_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248072248150_))))
                                     (let ((_hd248075248158_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248076248155_)))
                                           (_tl248074248160_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248076248155_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd248075248158_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd248075248158_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl248074248160_))
                                                   (let ((_e248079248163_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl248074248160_))))
                                                     (let ((_hd248078248166_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248079248163_)))
                                                           (_tl248077248168_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248079248163_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd248078248166_))
                                                           (let ((_e248082248171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd248078248166_))))
                     (let ((_hd248081248174_
                            (let ()
                              (declare (not safe))
                              (##car _e248082248171_)))
                           (_tl248080248176_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248082248171_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248081248174_))
                           (let ((_e248085248179_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248081248174_))))
                             (let ((_hd248084248182_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248085248179_)))
                                   (_tl248083248184_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248085248179_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248084248182_))
                                   (let ((_e248088248187_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248084248182_))))
                                     (let ((_hd248087248190_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248088248187_)))
                                           (_tl248086248192_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248088248187_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248086248192_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl248083248184_))
                                               (let ((_e248091248195_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl248083248184_))))
                                                 (let ((_hd248090248198_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248091248195_)))
                                                       (_tl248089248200_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248091248195_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248089248200_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl248080248176_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl248077248168_))
                       (let ((_e248094248203_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248077248168_))))
                         (let ((_hd248093248206_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248094248203_)))
                               (_tl248092248208_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248094248203_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248092248208_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl248071248152_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248062248128_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl248059248120_))
                                           (let ((_e248097248211_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl248059248120_))))
                                             (let ((_hd248096248214_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248097248211_)))
                                                   (_tl248095248216_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248097248211_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248095248216_))
                                                   ((lambda (_L248219_
                                                             _L248220_
                                                             _L248221_
                                                             _L248222_
                                                             _L248223_)
                                                      (let* ((_g248262248324_
                                                              (lambda (_g248263248321_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g248263248321_))))
                     (_g248261249371_
                      (lambda (_g248263248327_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g248263248327_))
                            (let ((_e248271248329_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g248263248327_))))
                              (let ((_hd248270248332_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248271248329_)))
                                    (_tl248269248334_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248271248329_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd248270248332_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd248270248332_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl248269248334_))
                                            (let ((_e248274248337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl248269248334_))))
                                              (let ((_hd248273248340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248274248337_)))
                                                    (_tl248272248342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248274248337_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248272248342_))
                                                    (let ((_e248277248345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248272248342_))))
                                                      (let ((_hd248276248348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248277248345_)))
                    (_tl248275248350_
                     (let () (declare (not safe)) (##cdr _e248277248345_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248276248348_))
                    (let ((_e248280248353_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248276248348_))))
                      (let ((_hd248279248356_
                             (let ()
                               (declare (not safe))
                               (##car _e248280248353_)))
                            (_tl248278248358_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248280248353_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd248279248356_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd248279248356_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl248278248358_))
                                    (let ((_e248283248361_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl248278248358_))))
                                      (let ((_hd248282248364_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248283248361_)))
                                            (_tl248281248366_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248283248361_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd248282248364_))
                                            (let ((_e248286248369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd248282248364_))))
                                              (let ((_hd248285248372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248286248369_)))
                                                    (_tl248284248374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248286248369_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd248285248372_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd248285248372_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl248284248374_))
                                                            (let ((_e248289248377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl248284248374_))))
                      (let ((_hd248288248380_
                             (let ()
                               (declare (not safe))
                               (##car _e248289248377_)))
                            (_tl248287248382_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248289248377_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248287248382_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl248281248366_))
                                (let ((_e248292248385_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl248281248366_))))
                                  (let ((_hd248291248388_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248292248385_)))
                                        (_tl248290248390_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248292248385_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd248291248388_))
                                        (let ((_e248295248393_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd248291248388_))))
                                          (let ((_hd248294248396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e248295248393_)))
                                                (_tl248293248398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e248295248393_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd248294248396_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd248294248396_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl248293248398_))
                                                        (let ((_e248298248401_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl248293248398_))))
                  (let ((_hd248297248404_
                         (let () (declare (not safe)) (##car _e248298248401_)))
                        (_tl248296248406_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248298248401_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl248296248406_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248290248390_))
                            (let ((_e248301248409_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248290248390_))))
                              (let ((_hd248300248412_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248301248409_)))
                                    (_tl248299248414_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248301248409_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd248300248412_))
                                    (let ((_e248304248417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd248300248412_))))
                                      (let ((_hd248303248420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248304248417_)))
                                            (_tl248302248422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248304248417_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd248303248420_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd248303248420_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248302248422_))
                                                    (let ((_e248307248425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248302248422_))))
                                                      (let ((_hd248306248428_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248307248425_)))
                    (_tl248305248430_
                     (let () (declare (not safe)) (##cdr _e248307248425_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl248305248430_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248299248414_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl248299248414_))
                                  '1)
                            (let ((_g255400_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248299248414_
                                      '1))))
                              (begin
                                (let ((_g255401_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255400_)
                                             (##vector-length _g255400_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255401_ 2)))
                                      (error "Context expects 2 values"
                                             _g255401_)))
                                (let ((_target248308248433_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255400_ 0)))
                                      (_tl248310248435_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255400_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl248310248435_))
                                      (let ((_e248319248438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl248310248435_))))
                                        (let ((_hd248318248441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248319248438_)))
                                              (_tl248317248443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248319248438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl248317248443_))
                                              (letrec ((_loop248311248446_
                                                        (lambda (_hd248309248449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref248315248451_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd248309248449_))
                      (let ((_e248312248454_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd248309248449_))))
                        (let ((_lp-hd248313248457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e248312248454_)))
                              (_lp-tl248314248459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e248312248454_))))
                          (let ((__tmp255487
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd248313248457_
                                         _kw-ref248315248451_))))
                            (declare (not safe))
                            (_loop248311248446_
                             _lp-tl248314248459_
                             __tmp255487))))
                      (let ((_kw-ref248316248462_
                             (reverse _kw-ref248315248451_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248275248350_))
                            ((lambda (_L248465_
                                      _L248466_
                                      _L248467_
                                      _L248468_
                                      _L248469_)
                               (let* ((_kw-count248520_
                                       (length (let ((__tmp255402
                                                      (lambda (_g248512248515_
                                                               _g248513248517_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248512248515_
                                                                _g248513248517_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255402
                                                         '()
                                                         _L248466_))))
                                      (_self-index248522_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count248520_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L248221_))
                                     (let* ((_g248525248539_
                                             (lambda (_g248526248536_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248526248536_))))
                                            (_g248524248710_
                                             (lambda (_g248526248542_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248526248542_))
                                                   (let ((_e248531248544_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248526248542_))))
                                                     (let ((_hd248530248547_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248531248544_)))
                                                           (_tl248529248549_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248531248544_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248529248549_))
                                                           (let ((_e248534248552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248529248549_))))
                     (let ((_hd248533248555_
                            (let ()
                              (declare (not safe))
                              (##car _e248534248552_)))
                           (_tl248532248557_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248534248552_))))
                       ((lambda (_L248560_ _L248561_)
                          (let ((_self248577_
                                 (list-ref _L248561_ _self-index248522_)))
                            (for-each
                             (lambda (_g248578248580_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g248578248580_
                                  _self248577_
                                  _method-calls246227_
                                  _slot-refs246228_
                                  _class-type-check246229_
                                  _struct-type-check246230_
                                  _struct-type-assert246231_)))
                             _L248560_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?246234_))
                                _stx246133_
                                (let* ((_specializer-id248589_
                                        (let* ((_id248583_
                                                (let ((__tmp255453
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L246208_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp255453
                                                   '"::specialize")))
                                               (_specializer-id248586_
                                                (let ((__tmp255454
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx246133_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id248583_
                                                   __tmp255454))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id248586_))
                                          _specializer-id248586_))
                                       (_lifted-specializer-id248596_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?246236_))
                                            (let* ((_id248591_
                                                    (let ((__tmp255455
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246208_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp255455
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id248593_
                                                    (let ((__tmp255456
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx246133_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id248591_
                                                       __tmp255456))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id248593_))
                                              _lifted-specializer-id248593_)
                                            '#f))
                                       (_$t248598_
                                        (let ((__tmp255457 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp255457)))
                                       (_methods248600_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls246227_)))
                                       (_$methods248604_
                                        (map (lambda (_id248602_)
                                               (let ((__tmp255458
                                                      (gensym _id248602_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255458)))
                                             _methods248600_))
                                       (_g255459_
                                        (for-each
                                         (lambda (_g248605248608_
                                                  _g248606248610_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls246227_
                                              _g248605248608_
                                              _g248606248610_)))
                                         _methods248600_
                                         _$methods248604_))
                                       (_methods-bind248621_
                                        (map (lambda (_g248613248616_
                                                      _g248614248618_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind246135_
                                                  _$t248598_
                                                  _g248613248616_
                                                  _g248614248618_)))
                                             _methods248600_
                                             _$methods248604_))
                                       (_slots248623_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs246228_)))
                                       (_$slots248627_
                                        (map (lambda (_id248625_)
                                               (let ((__tmp255460
                                                      (gensym _id248625_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255460)))
                                             _slots248623_))
                                       (_g255461_
                                        (for-each
                                         (lambda (_g248628248631_
                                                  _g248629248633_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs246228_
                                              _g248628248631_
                                              _g248629248633_)))
                                         _slots248623_
                                         _$slots248627_))
                                       (_slots-bind248644_
                                        (map (lambda (_g248636248639_
                                                      _g248637248641_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind246136_
                                                  _$t248598_
                                                  _g248636248639_
                                                  _g248637248641_)))
                                             _slots248623_
                                             _$slots248627_))
                                       (_class-check248646_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check246229_)))
                                       (_$class-check248649_
                                        (map (lambda (_g255462_)
                                               (let ((__tmp255463
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255463)))
                                             _class-check248646_))
                                       (_g255464_
                                        (for-each
                                         (lambda (_g248650248653_
                                                  _g248651248655_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check246229_
                                              _g248650248653_
                                              _g248651248655_)))
                                         _class-check248646_
                                         _$class-check248649_))
                                       (_class-check-bind248666_
                                        (map (lambda (_g248658248661_
                                                      _g248659248663_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind246137_
                                                  _$t248598_
                                                  _g248658248661_
                                                  _g248659248663_)))
                                             _class-check248646_
                                             _$class-check248649_))
                                       (_struct-check-all248668_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check246230_
                                           _struct-type-assert246231_)))
                                       (_struct-check248670_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all248668_)))
                                       (_$struct-check248673_
                                        (map (lambda (_g255465_)
                                               (let ((__tmp255466
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255466)))
                                             _struct-check248670_))
                                       (_g255467_
                                        (for-each
                                         (lambda (_g248674248677_
                                                  _g248675248679_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all248668_
                                              _g248674248677_
                                              _g248675248679_)))
                                         _struct-check248670_
                                         _$struct-check248673_))
                                       (_struct-check-bind248690_
                                        (map (lambda (_g248682248685_
                                                      _g248683248687_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind246138_
                                                  _$t248598_
                                                  _g248682248685_
                                                  _g248683248687_)))
                                             _struct-check248670_
                                             _$struct-check248673_))
                                       (_make-specializer-impl248701_
                                        (lambda (_struct-type-check1248692_
                                                 _struct-type-check2248693_)
                                          (let* ((_specializer-body248699_
                                                  (map (lambda (_g248694248696_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g248694248696_
                                                            _self248577_
                                                            _$t248598_
                                                            _method-calls246227_
                                                            _slot-refs246228_
                                                            _class-type-check246229_
                                                            _struct-type-check1248692_
                                                            _struct-type-check2248693_)))
                                                       _L248560_))
                                                 (__tmp255468
                                                  (let ((__tmp255469
                                                         (let ((__tmp255471
                                                                (let ((__tmp255472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255484
                                      (let ()
                                        (declare (not safe))
                                        (cons _L248223_ '())))
                                     (__tmp255473
                                      (let ((__tmp255474
                                             (let ((__tmp255475
                                                    (let ((__tmp255477
                                                           (let ((__tmp255478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255483
                                 (let ()
                                   (declare (not safe))
                                   (cons _L248222_ '())))
                                (__tmp255479
                                 (let ((__tmp255480
                                        (let ((__tmp255481
                                               (let ((__tmp255482
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248561_
                                                              _specializer-body248699_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp255482))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp255481
                                           _L248221_))))
                                   (declare (not safe))
                                   (cons __tmp255480 '()))))
                            (declare (not safe))
                            (cons __tmp255483 __tmp255479))))
                     (declare (not safe))
                     (cons __tmp255478 '())))
                  (__tmp255476
                   (let () (declare (not safe)) (cons _L248220_ '()))))
              (declare (not safe))
              (cons __tmp255477 __tmp255476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp255475))))
                                        (declare (not safe))
                                        (cons __tmp255474 '()))))
                                 (declare (not safe))
                                 (cons __tmp255484 __tmp255473))))
                          (declare (not safe))
                          (cons __tmp255472 '())))
                       (__tmp255470
                        (let () (declare (not safe)) (cons _L248219_ '()))))
                   (declare (not safe))
                   (cons __tmp255471 __tmp255470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp255469))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp255468
                                             _stx246133_))))
                                       (_specializer-impl248703_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl248701_
                                           _struct-check-all248668_
                                           _empty246232_)))
                                       (_unchecked-specializer-impl248705_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?246235_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl248701_
                                               _empty246232_
                                               _struct-check-all248668_))
                                            '#f))
                                       (_specializer-impl248707_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl246139_
                                           _$t248598_
                                           _methods-bind248621_
                                           _slots-bind248644_
                                           _class-check-bind248666_
                                           _struct-check-bind248690_
                                           _specializer-impl248703_
                                           _lifted-specializer-id248596_
                                           _unchecked-specializer-impl248705_))))
                                  (let ((__tmp255486
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L246208_)))
                                        (__tmp255485
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id248589_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp255486
                                     '" => "
                                     __tmp255485))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def246140_
                                     _L246208_
                                     _specializer-id248589_
                                     _specializer-impl248707_
                                     _lifted-specializer-id248596_
                                     _unchecked-specializer-impl248705_))))))
                        _tl248532248557_
                        _hd248533248555_)))
                   (let ()
                     (declare (not safe))
                     (_g248525248539_ _g248526248542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248525248539_
                                                      _g248526248542_))))))
                                       (declare (not safe))
                                       (_g248524248710_ _L248221_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L248221_))
                                         (let* ((_g248713248743_
                                                 (lambda (_g248714248740_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248714248740_))))
                                                (_g248712249368_
                                                 (lambda (_g248714248746_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248714248746_))
                                                       (let ((_e248720248748_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248714248746_))))
                 (let ((_hd248719248751_
                        (let () (declare (not safe)) (##car _e248720248748_)))
                       (_tl248718248753_
                        (let () (declare (not safe)) (##cdr _e248720248748_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl248718248753_))
                       (let ((_e248723248756_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248718248753_))))
                         (let ((_hd248722248759_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248723248756_)))
                               (_tl248721248761_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248723248756_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd248722248759_))
                               (let ((_e248726248764_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd248722248759_))))
                                 (let ((_hd248725248767_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248726248764_)))
                                       (_tl248724248769_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248726248764_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248725248767_))
                                       (let ((_e248729248772_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248725248767_))))
                                         (let ((_hd248728248775_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248729248772_)))
                                               (_tl248727248777_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248729248772_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248728248775_))
                                               (let ((_e248732248780_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248728248775_))))
                                                 (let ((_hd248731248783_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248732248780_)))
                                                       (_tl248730248785_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248732248780_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248730248785_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248727248777_))
                                                           (let ((_e248735248788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248727248777_))))
                     (let ((_hd248734248791_
                            (let ()
                              (declare (not safe))
                              (##car _e248735248788_)))
                           (_tl248733248793_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248735248788_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248733248793_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248724248769_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl248721248761_))
                                   (let ((_e248738248796_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl248721248761_))))
                                     (let ((_hd248737248799_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248738248796_)))
                                           (_tl248736248801_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248738248796_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248736248801_))
                                           ((lambda (_L248804_
                                                     _L248805_
                                                     _L248806_)
                                              (let* ((_g248829248843_
                                                      (lambda (_g248830248840_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248830248840_))))
                                                     (_g248828248884_
                                                      (lambda (_g248830248846_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248830248846_))
                                                            (let ((_e248835248848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248830248846_))))
                      (let ((_hd248834248851_
                             (let ()
                               (declare (not safe))
                               (##car _e248835248848_)))
                            (_tl248833248853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248835248848_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248833248853_))
                            (let ((_e248838248856_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248833248853_))))
                              (let ((_hd248837248859_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248838248856_)))
                                    (_tl248836248861_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248838248856_))))
                                ((lambda (_L248864_ _L248865_)
                                   (let ((_self248878_
                                          (list-ref
                                           _L248865_
                                           _self-index248522_)))
                                     (for-each
                                      (lambda (_g248879248881_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g248879248881_
                                           _self248878_
                                           _method-calls246227_
                                           _slot-refs246228_
                                           _class-type-check246229_
                                           _struct-type-check246230_
                                           _struct-type-assert246231_)))
                                      _L248864_)))
                                 _tl248836248861_
                                 _hd248837248859_)))
                            (let ()
                              (declare (not safe))
                              (_g248829248843_ _g248830248846_)))))
                    (let ()
                      (declare (not safe))
                      (_g248829248843_ _g248830248846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248828248884_ _L248805_))
                                              (let* ((_g248887248906_
                                                      (lambda (_g248888248903_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248888248903_))))
                                                     (_g248886249011_
                                                      (lambda (_g248888248909_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248888248909_))
                                                            (let ((_e248892248911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248888248909_))))
                      (let ((_hd248891248914_
                             (let ()
                               (declare (not safe))
                               (##car _e248892248911_)))
                            (_tl248890248916_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248892248911_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl248890248916_))
                            (let ((_g255403_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248890248916_
                                      '0))))
                              (begin
                                (let ((_g255404_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255403_)
                                             (##vector-length _g255403_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255404_ 2)))
                                      (error "Context expects 2 values"
                                             _g255404_)))
                                (let ((_target248893248919_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255403_ 0)))
                                      (_tl248895248921_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255403_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl248895248921_))
                                      (letrec ((_loop248896248924_
                                                (lambda (_hd248894248927_
                                                         _clause248900248929_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd248894248927_))
                                                      (let ((_e248897248932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd248894248927_))))
                (let ((_lp-hd248898248935_
                       (let () (declare (not safe)) (##car _e248897248932_)))
                      (_lp-tl248899248937_
                       (let () (declare (not safe)) (##cdr _e248897248932_))))
                  (let ((__tmp255406
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd248898248935_ _clause248900248929_))))
                    (declare (not safe))
                    (_loop248896248924_ _lp-tl248899248937_ __tmp255406))))
              (let ((_clause248901248940_ (reverse _clause248900248929_)))
                ((lambda (_L248943_)
                   (for-each
                    (lambda (_clause248956_)
                      (let* ((_g248958248969_
                              (lambda (_g248959248966_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g248959248966_))))
                             (_g248957249001_
                              (lambda (_g248959248972_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g248959248972_))
                                    (let ((_e248964248974_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g248959248972_))))
                                      (let ((_hd248963248977_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248964248974_)))
                                            (_tl248962248979_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248964248974_))))
                                        ((lambda (_L248982_ _L248983_)
                                           (let ((_self248995_
                                                  (list-ref
                                                   _L248983_
                                                   _self-index248522_)))
                                             (for-each
                                              (lambda (_g248996248998_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g248996248998_
                                                   _self248995_
                                                   _method-calls246227_
                                                   _slot-refs246228_
                                                   _class-type-check246229_
                                                   _struct-type-check246230_
                                                   _struct-type-assert246231_)))
                                              _L248982_)))
                                         _tl248962248979_
                                         _hd248963248977_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248958248969_ _g248959248972_))))))
                        (declare (not safe))
                        (_g248957249001_ _clause248956_)))
                    (let ((__tmp255405
                           (lambda (_g249003249006_ _g249004249008_)
                             (let ()
                               (declare (not safe))
                               (cons _g249003249006_ _g249004249008_)))))
                      (declare (not safe))
                      (foldr1 __tmp255405 '() _L248943_))))
                 _clause248901248940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop248896248924_
                                           _target248893248919_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g248887248906_ _g248888248909_))))))
                            (let ()
                              (declare (not safe))
                              (_g248887248906_ _g248888248909_)))))
                    (let ()
                      (declare (not safe))
                      (_g248887248906_ _g248888248909_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248886249011_ _L248804_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246234_))
                                                  _stx246133_
                                                  (let* ((_specializer-id249020_
                                                          (let* ((_id249014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255407
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246208_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255407 '"::specialize")))
                         (_specializer-id249017_
                          (let ((__tmp255408
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246133_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249014_ __tmp255408))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id249017_))
                    _specializer-id249017_))
                 (_lifted-specializer-id249027_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246236_))
                      (let* ((_id249022_
                              (let ((__tmp255409
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246208_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255409
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id249024_
                              (let ((__tmp255410
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246133_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id249022_
                                 __tmp255410))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id249024_))
                        _lifted-specializer-id249024_)
                      '#f))
                 (_$t249029_
                  (let ((__tmp255411 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255411)))
                 (_methods249031_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246227_)))
                 (_$methods249035_
                  (map (lambda (_id249033_)
                         (let ((__tmp255412 (gensym _id249033_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255412)))
                       _methods249031_))
                 (_g255413_
                  (for-each
                   (lambda (_g249036249039_ _g249037249041_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246227_
                        _g249036249039_
                        _g249037249041_)))
                   _methods249031_
                   _$methods249035_))
                 (_methods-bind249052_
                  (map (lambda (_g249044249047_ _g249045249049_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246135_
                            _$t249029_
                            _g249044249047_
                            _g249045249049_)))
                       _methods249031_
                       _$methods249035_))
                 (_slots249054_
                  (let () (declare (not safe)) (hash-keys _slot-refs246228_)))
                 (_$slots249058_
                  (map (lambda (_id249056_)
                         (let ((__tmp255414 (gensym _id249056_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255414)))
                       _slots249054_))
                 (_g255415_
                  (for-each
                   (lambda (_g249059249062_ _g249060249064_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246228_
                        _g249059249062_
                        _g249060249064_)))
                   _slots249054_
                   _$slots249058_))
                 (_slots-bind249075_
                  (map (lambda (_g249067249070_ _g249068249072_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246136_
                            _$t249029_
                            _g249067249070_
                            _g249068249072_)))
                       _slots249054_
                       _$slots249058_))
                 (_class-check249077_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246229_)))
                 (_$class-check249080_
                  (map (lambda (_g255416_)
                         (let ((__tmp255417 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255417)))
                       _class-check249077_))
                 (_g255418_
                  (for-each
                   (lambda (_g249081249084_ _g249082249086_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246229_
                        _g249081249084_
                        _g249082249086_)))
                   _class-check249077_
                   _$class-check249080_))
                 (_class-check-bind249097_
                  (map (lambda (_g249089249092_ _g249090249094_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246137_
                            _$t249029_
                            _g249089249092_
                            _g249090249094_)))
                       _class-check249077_
                       _$class-check249080_))
                 (_struct-check-all249099_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246230_
                     _struct-type-assert246231_)))
                 (_struct-check249101_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all249099_)))
                 (_$struct-check249104_
                  (map (lambda (_g255419_)
                         (let ((__tmp255420 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255420)))
                       _struct-check249101_))
                 (_g255421_
                  (for-each
                   (lambda (_g249105249108_ _g249106249110_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all249099_
                        _g249105249108_
                        _g249106249110_)))
                   _struct-check249101_
                   _$struct-check249104_))
                 (_struct-check-bind249121_
                  (map (lambda (_g249113249116_ _g249114249118_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246138_
                            _$t249029_
                            _g249113249116_
                            _g249114249118_)))
                       _struct-check249101_
                       _$struct-check249104_))
                 (_make-specializer-lambda-expr249207_
                  (lambda (_struct-type-check1249123_
                           _struct-type-check2249124_)
                    (let* ((_g249126249140_
                            (lambda (_g249127249137_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249127249137_))))
                           (_g249125249204_
                            (lambda (_g249127249143_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249127249143_))
                                  (let ((_e249132249145_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249127249143_))))
                                    (let ((_hd249131249148_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249132249145_)))
                                          (_tl249130249150_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249132249145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl249130249150_))
                                          (let ((_e249135249153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl249130249150_))))
                                            (let ((_hd249134249156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e249135249153_)))
                                                  (_tl249133249158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e249135249153_))))
                                              ((lambda (_L249161_ _L249162_)
                                                 (let* ((_self249195_
                                                         (list-ref
                                                          _L249162_
                                                          _self-index248522_))
                                                        (_body249201_
                                                         (map (lambda (_g249196249198_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g249196249198_
                           _self249195_
                           _$t249029_
                           _method-calls246227_
                           _slot-refs246228_
                           _class-type-check246229_
                           _struct-type-check1249123_
                           _struct-type-check2249124_)))
                      _L249161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp255422
                                                          (let ((__tmp255423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L249162_ _body249201_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp255423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255422
                                                      _L248805_))))
                                               _tl249133249158_
                                               _hd249134249156_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g249126249140_
                                             _g249127249143_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249126249140_ _g249127249143_))))))
                      (declare (not safe))
                      (_g249125249204_ _L248805_))))
                 (_make-specializer-case-lambda-expr249346_
                  (lambda (_struct-type-check1249209_
                           _struct-type-check2249210_)
                    (let* ((_g249212249231_
                            (lambda (_g249213249228_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249213249228_))))
                           (_g249211249343_
                            (lambda (_g249213249234_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249213249234_))
                                  (let ((_e249217249236_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249213249234_))))
                                    (let ((_hd249216249239_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249217249236_)))
                                          (_tl249215249241_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249217249236_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl249215249241_))
                                          (let ((_g255424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl249215249241_
                                                    '0))))
                                            (begin
                                              (let ((_g255425_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g255424_)
                                                           (##vector-length
                                                            _g255424_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g255425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g255425_)))
                                              (let ((_target249218249244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255424_
                                                        0)))
                                                    (_tl249220249246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255424_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249220249246_))
                                                    (letrec ((_loop249221249249_
                                                              (lambda (_hd249219249252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause249225249254_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249219249252_))
                            (let ((_e249222249257_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249219249252_))))
                              (let ((_lp-hd249223249260_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249222249257_)))
                                    (_lp-tl249224249262_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249222249257_))))
                                (let ((__tmp255428
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd249223249260_
                                               _clause249225249254_))))
                                  (declare (not safe))
                                  (_loop249221249249_
                                   _lp-tl249224249262_
                                   __tmp255428))))
                            (let ((_clause249226249265_
                                   (reverse _clause249225249254_)))
                              ((lambda (_L249268_)
                                 (let* ((_clauses249341_
                                         (map (lambda (_clause249283_)
                                                (let* ((_g249285249296_
                                                        (lambda (_g249286249293_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g249286249293_))))
                                                       (_g249284249331_
                                                        (lambda (_g249286249299_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g249286249299_))
                      (let ((_e249291249301_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g249286249299_))))
                        (let ((_hd249290249304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249291249301_)))
                              (_tl249289249306_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249291249301_))))
                          ((lambda (_L249309_ _L249310_)
                             (let* ((_self249322_
                                     (list-ref _L249310_ _self-index248522_))
                                    (_body249328_
                                     (map (lambda (_g249323249325_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g249323249325_
                                               _self249322_
                                               _$t249029_
                                               _method-calls246227_
                                               _slot-refs246228_
                                               _class-type-check246229_
                                               _struct-type-check1249209_
                                               _struct-type-check2249210_)))
                                          _L249309_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L249310_ _body249328_))))
                           _tl249289249306_
                           _hd249290249304_)))
                      (let ()
                        (declare (not safe))
                        (_g249285249296_ _g249286249299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g249284249331_
                                                   _clause249283_)))
                                              (let ((__tmp255426
                                                     (lambda (_g249333249336_
                                                              _g249334249338_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g249333249336_
                                                               _g249334249338_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp255426
                                                        '()
                                                        _L249268_))))
                                        (__tmp255427
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses249341_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255427
                                    _L248804_)))
                               _clause249226249265_))))))
              (let ()
                (declare (not safe))
                (_loop249221249249_ _target249218249244_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249212249231_
                                                       _g249213249234_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g249212249231_
                                             _g249213249234_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249212249231_ _g249213249234_))))))
                      (declare (not safe))
                      (_g249211249343_ _L248804_))))
                 (_make-specializer-impl249351_
                  (lambda (_specializer-lambda-expr249348_
                           _specializer-case-lambda-expr249349_)
                    (let ((__tmp255429
                           (let ((__tmp255430
                                  (let ((__tmp255432
                                         (let ((__tmp255433
                                                (let ((__tmp255450
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L248223_ '())))
                                                      (__tmp255434
                                                       (let ((__tmp255435
                                                              (let ((__tmp255436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255438
                                    (let ((__tmp255439
                                           (let ((__tmp255449
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L248222_ '())))
                                                 (__tmp255440
                                                  (let ((__tmp255441
                                                         (let ((__tmp255442
                                                                (let ((__tmp255443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255445
                                      (let ((__tmp255446
                                             (let ((__tmp255448
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L248806_ '())))
                                                   (__tmp255447
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr249348_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp255448
                                                     __tmp255447))))
                                        (declare (not safe))
                                        (cons __tmp255446 '())))
                                     (__tmp255444
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr249349_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp255445 __tmp255444))))
                          (declare (not safe))
                          (cons '%#let-values __tmp255443))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255442 _stx246133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255441 '()))))
                                             (declare (not safe))
                                             (cons __tmp255449 __tmp255440))))
                                      (declare (not safe))
                                      (cons __tmp255439 '())))
                                   (__tmp255437
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248220_ '()))))
                               (declare (not safe))
                               (cons __tmp255438 __tmp255437))))
                        (declare (not safe))
                        (cons '%#let-values __tmp255436))))
                 (declare (not safe))
                 (cons __tmp255435 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255450
                                                        __tmp255434))))
                                           (declare (not safe))
                                           (cons __tmp255433 '())))
                                        (__tmp255431
                                         (let ()
                                           (declare (not safe))
                                           (cons _L248219_ '()))))
                                    (declare (not safe))
                                    (cons __tmp255432 __tmp255431))))
                             (declare (not safe))
                             (cons '%#let-values __tmp255430))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255429 _stx246133_))))
                 (_specializer-lambda-expr249353_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr249207_
                     _struct-check-all249099_
                     _empty246232_)))
                 (_specializer-case-lambda-expr249355_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr249346_
                     _struct-check-all249099_
                     _empty246232_)))
                 (_specializer-impl249357_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl249351_
                     _specializer-lambda-expr249353_
                     _specializer-case-lambda-expr249355_)))
                 (_unchecked-specializer-lambda-expr249359_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246235_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr249207_
                         _empty246232_
                         _struct-check-all249099_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr249361_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246235_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr249346_
                         _empty246232_
                         _struct-check-all249099_))
                      '#f))
                 (_unchecked-specializer-impl249363_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246235_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl249351_
                         _unchecked-specializer-lambda-expr249359_
                         _unchecked-specializer-case-lambda-expr249361_))
                      '#f))
                 (_specializer-impl249365_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246139_
                     _$t249029_
                     _methods-bind249052_
                     _slots-bind249075_
                     _class-check-bind249097_
                     _struct-check-bind249121_
                     _specializer-impl249357_
                     _lifted-specializer-id249027_
                     _unchecked-specializer-impl249363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255452
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246208_)))
                                                          (__tmp255451
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id249020_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255452
                                                       '" => "
                                                       __tmp255451))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246140_
                                                       _L246208_
                                                       _specializer-id249020_
                                                       _specializer-impl249365_
                                                       _lifted-specializer-id249027_
                                                       _unchecked-specializer-impl249363_)))))
                                            _hd248737248799_
                                            _hd248734248791_
                                            _hd248731248783_)
                                           (let ()
                                             (declare (not safe))
                                             (_g248713248743_
                                              _g248714248746_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248713248743_ _g248714248746_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248713248743_ _g248714248746_)))
                           (let ()
                             (declare (not safe))
                             (_g248713248743_ _g248714248746_)))))
                   (let ()
                     (declare (not safe))
                     (_g248713248743_ _g248714248746_)))
               (let ()
                 (declare (not safe))
                 (_g248713248743_ _g248714248746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248713248743_
                                                  _g248714248746_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248713248743_ _g248714248746_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248713248743_ _g248714248746_)))))
                       (let ()
                         (declare (not safe))
                         (_g248713248743_ _g248714248746_)))))
               (let ()
                 (declare (not safe))
                 (_g248713248743_ _g248714248746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248712249368_ _L248221_))
                                         _stx246133_))))
                             _hd248318248441_
                             _kw-ref248316248462_
                             _hd248306248428_
                             _hd248297248404_
                             _hd248288248380_)
                            (let ()
                              (declare (not safe))
                              (_g248262248324_ _g248263248327_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop248311248446_
                                                   _target248308248433_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g248262248324_
                                                 _g248263248327_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248262248324_ _g248263248327_))))))
                            (let ()
                              (declare (not safe))
                              (_g248262248324_ _g248263248327_)))
                        (let ()
                          (declare (not safe))
                          (_g248262248324_ _g248263248327_)))
                    (let ()
                      (declare (not safe))
                      (_g248262248324_ _g248263248327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248262248324_
                                                       _g248263248327_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248262248324_
                                                   _g248263248327_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g248262248324_
                                               _g248263248327_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248262248324_ _g248263248327_)))))
                            (let ()
                              (declare (not safe))
                              (_g248262248324_ _g248263248327_)))
                        (let ()
                          (declare (not safe))
                          (_g248262248324_ _g248263248327_)))))
                (let ()
                  (declare (not safe))
                  (_g248262248324_ _g248263248327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248262248324_
                                                       _g248263248327_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248262248324_
                                                   _g248263248327_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g248262248324_ _g248263248327_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g248262248324_ _g248263248327_)))
                            (let ()
                              (declare (not safe))
                              (_g248262248324_ _g248263248327_)))))
                    (let ()
                      (declare (not safe))
                      (_g248262248324_ _g248263248327_)))
                (let ()
                  (declare (not safe))
                  (_g248262248324_ _g248263248327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248262248324_
                                                       _g248263248327_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248262248324_
                                               _g248263248327_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248262248324_ _g248263248327_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248262248324_ _g248263248327_)))
                            (let ()
                              (declare (not safe))
                              (_g248262248324_ _g248263248327_)))))
                    (let ()
                      (declare (not safe))
                      (_g248262248324_ _g248263248327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248262248324_
                                                       _g248263248327_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248262248324_
                                               _g248263248327_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g248262248324_ _g248263248327_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248262248324_ _g248263248327_)))))
                            (let ()
                              (declare (not safe))
                              (_g248262248324_ _g248263248327_))))))
                (declare (not safe))
                (_g248261249371_ _L248220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd248096248214_
                                                    _hd248093248206_
                                                    _hd248090248198_
                                                    _hd248087248190_
                                                    _hd248069248142_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248049248102_
                                                      _g248050248105_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248049248102_
                                              _g248050248105_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g248049248102_ _g248050248105_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g248049248102_ _g248050248105_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248049248102_ _g248050248105_)))))
                       (let ()
                         (declare (not safe))
                         (_g248049248102_ _g248050248105_)))
                   (let ()
                     (declare (not safe))
                     (_g248049248102_ _g248050248105_)))
               (let ()
                 (declare (not safe))
                 (_g248049248102_ _g248050248105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248049248102_
                                                  _g248050248105_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248049248102_
                                              _g248050248105_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248049248102_ _g248050248105_)))))
                           (let ()
                             (declare (not safe))
                             (_g248049248102_ _g248050248105_)))))
                   (let ()
                     (declare (not safe))
                     (_g248049248102_ _g248050248105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248049248102_
                                                      _g248050248105_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248049248102_
                                                  _g248050248105_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248049248102_
                                              _g248050248105_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248049248102_ _g248050248105_)))))
                           (let ()
                             (declare (not safe))
                             (_g248049248102_ _g248050248105_)))
                       (let ()
                         (declare (not safe))
                         (_g248049248102_ _g248050248105_)))))
               (let ()
                 (declare (not safe))
                 (_g248049248102_ _g248050248105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248049248102_
                                                  _g248050248105_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248049248102_ _g248050248105_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248049248102_ _g248050248105_)))
                           (let ()
                             (declare (not safe))
                             (_g248049248102_ _g248050248105_)))
                       (let ()
                         (declare (not safe))
                         (_g248049248102_ _g248050248105_)))))
               (let ()
                 (declare (not safe))
                 (_g248049248102_ _g248050248105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248048249374_ _L246207_))
                                         _stx246133_))))))))
                  (___kont254181254182_ (lambda () _stx246133_)))
              (let ((___match254210254211_
                     (lambda (_e246149246175_
                              _hd246148246178_
                              _tl246147246180_
                              _e246152246183_
                              _hd246151246186_
                              _tl246150246188_
                              _e246155246191_
                              _hd246154246194_
                              _tl246153246196_
                              _e246158246199_
                              _hd246157246202_
                              _tl246156246204_)
                       (let ((_L246207_ _hd246157246202_)
                             (_L246208_ _hd246154246194_))
                         (if (let ((__tmp255569
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L246208_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp255569))
                             (___kont254179254180_ _L246207_ _L246208_)
                             (___kont254181254182_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254177254178_))
                    (let ((_e246149246175_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254177254178_))))
                      (let ((_tl246147246180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246149246175_)))
                            (_hd246148246178_
                             (let ()
                               (declare (not safe))
                               (##car _e246149246175_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246147246180_))
                            (let ((_e246152246183_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246147246180_))))
                              (let ((_tl246150246188_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246152246183_)))
                                    (_hd246151246186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246152246183_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd246151246186_))
                                    (let ((_e246155246191_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd246151246186_))))
                                      (let ((_tl246153246196_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246155246191_)))
                                            (_hd246154246194_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246155246191_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl246153246196_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl246150246188_))
                                                (let ((_e246158246199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl246150246188_))))
                                                  (let ((_tl246156246204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e246158246199_)))
                                                        (_hd246157246202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e246158246199_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl246156246204_))
                                                        (___match254210254211_
                                                         _e246149246175_
                                                         _hd246148246178_
                                                         _tl246147246180_
                                                         _e246152246183_
                                                         _hd246151246186_
                                                         _tl246150246188_
                                                         _e246155246191_
                                                         _hd246154246194_
                                                         _tl246153246196_
                                                         _e246158246199_
                                                         _hd246157246202_
                                                         _tl246156246204_)
                                                        (___kont254181254182_))))
                                                (___kont254181254182_))
                                            (___kont254181254182_))))
                                    (___kont254181254182_))))
                            (___kont254181254182_))))
                    (___kont254181254182_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx245109_
               _self245110_
               _methods245111_
               _slots245112_
               _class-check245113_
               _struct-check245114_
               _struct-assert245115_)
        (let* ((___stx254213254214_ _stx245109_)
               (_g245123245345_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx254213254214_)))))
          (let ((___kont254215254216_
                 (lambda (_L246082_ _L246083_ _L246084_ _L246085_)
                   (let ((__tmp255570
                          (let () (declare (not safe)) (gx#stx-e _L246083_))))
                     (declare (not safe))
                     (table-set! _methods245111_ __tmp255570 '#t))
                   (for-each
                    (lambda (_g246118246120_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246118246120_
                         _self245110_
                         _methods245111_
                         _slots245112_
                         _class-check245113_
                         _struct-check245114_
                         _struct-assert245115_)))
                    (let ((__tmp255571
                           (lambda (_g246122246125_ _g246123246127_)
                             (let ()
                               (declare (not safe))
                               (cons _g246122246125_ _g246123246127_)))))
                      (declare (not safe))
                      (foldr1 __tmp255571 '() _L246082_)))))
                (___kont254219254220_
                 (lambda (_L245917_ _L245918_ _L245919_ _L245920_ _L245921_)
                   (let ((__tmp255572
                          (let () (declare (not safe)) (gx#stx-e _L245918_))))
                     (declare (not safe))
                     (table-set! _methods245111_ __tmp255572 '#t))
                   (for-each
                    (lambda (_g245961245963_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g245961245963_
                         _self245110_
                         _methods245111_
                         _slots245112_
                         _class-check245113_
                         _struct-check245114_
                         _struct-assert245115_)))
                    (let ((__tmp255573
                           (lambda (_g245965245968_ _g245966245970_)
                             (let ()
                               (declare (not safe))
                               (cons _g245965245968_ _g245966245970_)))))
                      (declare (not safe))
                      (foldr1 __tmp255573 '() _L245917_)))))
                (___kont254223254224_
                 (lambda (_L245750_ _L245751_ _L245752_)
                   (let ((__tmp255574
                          (let () (declare (not safe)) (gx#stx-e _L245750_))))
                     (declare (not safe))
                     (table-set! _slots245112_ __tmp255574 '#t))))
                (___kont254225254226_
                 (lambda (_L245627_ _L245628_ _L245629_ _L245630_)
                   (let ((__tmp255575
                          (let () (declare (not safe)) (gx#stx-e _L245628_))))
                     (declare (not safe))
                     (table-set! _slots245112_ __tmp255575 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245627_
                      _self245110_
                      _methods245111_
                      _slots245112_
                      _class-check245113_
                      _struct-check245114_
                      _struct-assert245115_))))
                (___kont254227254228_
                 (lambda (_L245511_ _L245512_)
                   (let ((__tmp255576
                          (##structure-ref
                           (let ((__tmp255577
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245512_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255577))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245112_ __tmp255576 '#t))))
                (___kont254229254230_
                 (lambda (_L245421_ _L245422_ _L245423_)
                   (let ((__tmp255578
                          (##structure-ref
                           (let ((__tmp255579
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245423_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255579))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245112_ __tmp255578 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245421_
                      _self245110_
                      _methods245111_
                      _slots245112_
                      _class-check245113_
                      _struct-check245114_
                      _struct-assert245115_))))
                (___kont254231254232_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx245109_
                      _self245110_
                      _methods245111_
                      _slots245112_
                      _class-check245113_
                      _struct-check245114_
                      _struct-assert245115_)))))
            (let* ((___match254712254713_
                    (lambda (_e245319245357_
                             _hd245318245360_
                             _tl245317245362_
                             _e245322245365_
                             _hd245321245368_
                             _tl245320245370_
                             _e245325245373_
                             _hd245324245376_
                             _tl245323245378_
                             _e245328245381_
                             _hd245327245384_
                             _tl245326245386_
                             _e245331245389_
                             _hd245330245392_
                             _tl245329245394_
                             _e245334245397_
                             _hd245333245400_
                             _tl245332245402_
                             _e245337245405_
                             _hd245336245408_
                             _tl245335245410_
                             _e245340245413_
                             _hd245339245416_
                             _tl245338245418_)
                      (let ((_L245421_ _hd245339245416_)
                            (_L245422_ _hd245336245408_)
                            (_L245423_ _hd245327245384_))
                        (if (and (let ((__tmp255580
                                        (let ((__tmp255581
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245423_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255581))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255580
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245422_
                                    _self245110_)))
                            (___kont254229254230_
                             _L245421_
                             _L245422_
                             _L245423_)
                            (___kont254231254232_)))))
                   (___match254710254711_
                    (lambda (_e245319245357_
                             _hd245318245360_
                             _tl245317245362_
                             _e245322245365_
                             _hd245321245368_
                             _tl245320245370_
                             _e245325245373_
                             _hd245324245376_
                             _tl245323245378_
                             _e245328245381_
                             _hd245327245384_
                             _tl245326245386_
                             _e245331245389_
                             _hd245330245392_
                             _tl245329245394_
                             _e245334245397_
                             _hd245333245400_
                             _tl245332245402_
                             _e245337245405_
                             _hd245336245408_
                             _tl245335245410_
                             _e245340245413_
                             _hd245339245416_
                             _tl245338245418_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245338245418_))
                          (___match254712254713_
                           _e245319245357_
                           _hd245318245360_
                           _tl245317245362_
                           _e245322245365_
                           _hd245321245368_
                           _tl245320245370_
                           _e245325245373_
                           _hd245324245376_
                           _tl245323245378_
                           _e245328245381_
                           _hd245327245384_
                           _tl245326245386_
                           _e245331245389_
                           _hd245330245392_
                           _tl245329245394_
                           _e245334245397_
                           _hd245333245400_
                           _tl245332245402_
                           _e245337245405_
                           _hd245336245408_
                           _tl245335245410_
                           _e245340245413_
                           _hd245339245416_
                           _tl245338245418_)
                          (___kont254231254232_))))
                   (___match254704254705_
                    (lambda (_e245319245357_
                             _hd245318245360_
                             _tl245317245362_
                             _e245322245365_
                             _hd245321245368_
                             _tl245320245370_
                             _e245325245373_
                             _hd245324245376_
                             _tl245323245378_
                             _e245328245381_
                             _hd245327245384_
                             _tl245326245386_
                             _e245331245389_
                             _hd245330245392_
                             _tl245329245394_
                             _e245334245397_
                             _hd245333245400_
                             _tl245332245402_
                             _e245337245405_
                             _hd245336245408_
                             _tl245335245410_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245329245394_))
                          (let ((_e245340245413_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245329245394_))))
                            (let ((_tl245338245418_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245340245413_)))
                                  (_hd245339245416_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245340245413_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245338245418_))
                                  (___match254712254713_
                                   _e245319245357_
                                   _hd245318245360_
                                   _tl245317245362_
                                   _e245322245365_
                                   _hd245321245368_
                                   _tl245320245370_
                                   _e245325245373_
                                   _hd245324245376_
                                   _tl245323245378_
                                   _e245328245381_
                                   _hd245327245384_
                                   _tl245326245386_
                                   _e245331245389_
                                   _hd245330245392_
                                   _tl245329245394_
                                   _e245334245397_
                                   _hd245333245400_
                                   _tl245332245402_
                                   _e245337245405_
                                   _hd245336245408_
                                   _tl245335245410_
                                   _e245340245413_
                                   _hd245339245416_
                                   _tl245338245418_)
                                  (___kont254231254232_))))
                          (___kont254231254232_))))
                   (___match254650254651_
                    (lambda (_e245295245455_
                             _hd245294245458_
                             _tl245293245460_
                             _e245298245463_
                             _hd245297245466_
                             _tl245296245468_
                             _e245301245471_
                             _hd245300245474_
                             _tl245299245476_
                             _e245304245479_
                             _hd245303245482_
                             _tl245302245484_
                             _e245307245487_
                             _hd245306245490_
                             _tl245305245492_
                             _e245310245495_
                             _hd245309245498_
                             _tl245308245500_
                             _e245313245503_
                             _hd245312245506_
                             _tl245311245508_)
                      (let ((_L245511_ _hd245312245506_)
                            (_L245512_ _hd245303245482_))
                        (if (and (let ((__tmp255582
                                        (let ((__tmp255583
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245512_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255583))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255582
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245511_
                                    _self245110_)))
                            (___kont254227254228_ _L245511_ _L245512_)
                            (___kont254231254232_)))))
                   (___match254648254649_
                    (lambda (_e245295245455_
                             _hd245294245458_
                             _tl245293245460_
                             _e245298245463_
                             _hd245297245466_
                             _tl245296245468_
                             _e245301245471_
                             _hd245300245474_
                             _tl245299245476_
                             _e245304245479_
                             _hd245303245482_
                             _tl245302245484_
                             _e245307245487_
                             _hd245306245490_
                             _tl245305245492_
                             _e245310245495_
                             _hd245309245498_
                             _tl245308245500_
                             _e245313245503_
                             _hd245312245506_
                             _tl245311245508_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245305245492_))
                          (___match254650254651_
                           _e245295245455_
                           _hd245294245458_
                           _tl245293245460_
                           _e245298245463_
                           _hd245297245466_
                           _tl245296245468_
                           _e245301245471_
                           _hd245300245474_
                           _tl245299245476_
                           _e245304245479_
                           _hd245303245482_
                           _tl245302245484_
                           _e245307245487_
                           _hd245306245490_
                           _tl245305245492_
                           _e245310245495_
                           _hd245309245498_
                           _tl245308245500_
                           _e245313245503_
                           _hd245312245506_
                           _tl245311245508_)
                          (___match254704254705_
                           _e245295245455_
                           _hd245294245458_
                           _tl245293245460_
                           _e245298245463_
                           _hd245297245466_
                           _tl245296245468_
                           _e245301245471_
                           _hd245300245474_
                           _tl245299245476_
                           _e245304245479_
                           _hd245303245482_
                           _tl245302245484_
                           _e245307245487_
                           _hd245306245490_
                           _tl245305245492_
                           _e245310245495_
                           _hd245309245498_
                           _tl245308245500_
                           _e245313245503_
                           _hd245312245506_
                           _tl245311245508_))))
                   (___match254594254595_
                    (lambda (_e245260245539_
                             _hd245259245542_
                             _tl245258245544_
                             _e245263245547_
                             _hd245262245550_
                             _tl245261245552_
                             _e245266245555_
                             _hd245265245558_
                             _tl245264245560_
                             _e245269245563_
                             _hd245268245566_
                             _tl245267245568_
                             _e245272245571_
                             _hd245271245574_
                             _tl245270245576_
                             _e245275245579_
                             _hd245274245582_
                             _tl245273245584_
                             _e245278245587_
                             _hd245277245590_
                             _tl245276245592_
                             _e245281245595_
                             _hd245280245598_
                             _tl245279245600_
                             _e245284245603_
                             _hd245283245606_
                             _tl245282245608_
                             _e245287245611_
                             _hd245286245614_
                             _tl245285245616_
                             _e245290245619_
                             _hd245289245622_
                             _tl245288245624_)
                      (let ((_L245627_ _hd245289245622_)
                            (_L245628_ _hd245286245614_)
                            (_L245629_ _hd245277245590_)
                            (_L245630_ _hd245268245566_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245630_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245630_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245629_
                                    _self245110_)))
                            (___kont254225254226_
                             _L245627_
                             _L245628_
                             _L245629_
                             _L245630_)
                            (___kont254231254232_)))))
                   (___match254586254587_
                    (lambda (_e245260245539_
                             _hd245259245542_
                             _tl245258245544_
                             _e245263245547_
                             _hd245262245550_
                             _tl245261245552_
                             _e245266245555_
                             _hd245265245558_
                             _tl245264245560_
                             _e245269245563_
                             _hd245268245566_
                             _tl245267245568_
                             _e245272245571_
                             _hd245271245574_
                             _tl245270245576_
                             _e245275245579_
                             _hd245274245582_
                             _tl245273245584_
                             _e245278245587_
                             _hd245277245590_
                             _tl245276245592_
                             _e245281245595_
                             _hd245280245598_
                             _tl245279245600_
                             _e245284245603_
                             _hd245283245606_
                             _tl245282245608_
                             _e245287245611_
                             _hd245286245614_
                             _tl245285245616_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245279245600_))
                          (let ((_e245290245619_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245279245600_))))
                            (let ((_tl245288245624_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245290245619_)))
                                  (_hd245289245622_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245290245619_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245288245624_))
                                  (___match254594254595_
                                   _e245260245539_
                                   _hd245259245542_
                                   _tl245258245544_
                                   _e245263245547_
                                   _hd245262245550_
                                   _tl245261245552_
                                   _e245266245555_
                                   _hd245265245558_
                                   _tl245264245560_
                                   _e245269245563_
                                   _hd245268245566_
                                   _tl245267245568_
                                   _e245272245571_
                                   _hd245271245574_
                                   _tl245270245576_
                                   _e245275245579_
                                   _hd245274245582_
                                   _tl245273245584_
                                   _e245278245587_
                                   _hd245277245590_
                                   _tl245276245592_
                                   _e245281245595_
                                   _hd245280245598_
                                   _tl245279245600_
                                   _e245284245603_
                                   _hd245283245606_
                                   _tl245282245608_
                                   _e245287245611_
                                   _hd245286245614_
                                   _tl245285245616_
                                   _e245290245619_
                                   _hd245289245622_
                                   _tl245288245624_)
                                  (___kont254231254232_))))
                          (___match254710254711_
                           _e245260245539_
                           _hd245259245542_
                           _tl245258245544_
                           _e245263245547_
                           _hd245262245550_
                           _tl245261245552_
                           _e245266245555_
                           _hd245265245558_
                           _tl245264245560_
                           _e245269245563_
                           _hd245268245566_
                           _tl245267245568_
                           _e245272245571_
                           _hd245271245574_
                           _tl245270245576_
                           _e245275245579_
                           _hd245274245582_
                           _tl245273245584_
                           _e245278245587_
                           _hd245277245590_
                           _tl245276245592_
                           _e245281245595_
                           _hd245280245598_
                           _tl245279245600_))))
                   (___match254508254509_
                    (lambda (_e245226245670_
                             _hd245225245673_
                             _tl245224245675_
                             _e245229245678_
                             _hd245228245681_
                             _tl245227245683_
                             _e245232245686_
                             _hd245231245689_
                             _tl245230245691_
                             _e245235245694_
                             _hd245234245697_
                             _tl245233245699_
                             _e245238245702_
                             _hd245237245705_
                             _tl245236245707_
                             _e245241245710_
                             _hd245240245713_
                             _tl245239245715_
                             _e245244245718_
                             _hd245243245721_
                             _tl245242245723_
                             _e245247245726_
                             _hd245246245729_
                             _tl245245245731_
                             _e245250245734_
                             _hd245249245737_
                             _tl245248245739_
                             _e245253245742_
                             _hd245252245745_
                             _tl245251245747_)
                      (let ((_L245750_ _hd245252245745_)
                            (_L245751_ _hd245243245721_)
                            (_L245752_ _hd245234245697_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245752_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245752_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245751_
                                    _self245110_)))
                            (___kont254223254224_
                             _L245750_
                             _L245751_
                             _L245752_)
                            (___match254712254713_
                             _e245226245670_
                             _hd245225245673_
                             _tl245224245675_
                             _e245229245678_
                             _hd245228245681_
                             _tl245227245683_
                             _e245232245686_
                             _hd245231245689_
                             _tl245230245691_
                             _e245235245694_
                             _hd245234245697_
                             _tl245233245699_
                             _e245238245702_
                             _hd245237245705_
                             _tl245236245707_
                             _e245241245710_
                             _hd245240245713_
                             _tl245239245715_
                             _e245244245718_
                             _hd245243245721_
                             _tl245242245723_
                             _e245247245726_
                             _hd245246245729_
                             _tl245245245731_)))))
                   (___match254506254507_
                    (lambda (_e245226245670_
                             _hd245225245673_
                             _tl245224245675_
                             _e245229245678_
                             _hd245228245681_
                             _tl245227245683_
                             _e245232245686_
                             _hd245231245689_
                             _tl245230245691_
                             _e245235245694_
                             _hd245234245697_
                             _tl245233245699_
                             _e245238245702_
                             _hd245237245705_
                             _tl245236245707_
                             _e245241245710_
                             _hd245240245713_
                             _tl245239245715_
                             _e245244245718_
                             _hd245243245721_
                             _tl245242245723_
                             _e245247245726_
                             _hd245246245729_
                             _tl245245245731_
                             _e245250245734_
                             _hd245249245737_
                             _tl245248245739_
                             _e245253245742_
                             _hd245252245745_
                             _tl245251245747_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245245245731_))
                          (___match254508254509_
                           _e245226245670_
                           _hd245225245673_
                           _tl245224245675_
                           _e245229245678_
                           _hd245228245681_
                           _tl245227245683_
                           _e245232245686_
                           _hd245231245689_
                           _tl245230245691_
                           _e245235245694_
                           _hd245234245697_
                           _tl245233245699_
                           _e245238245702_
                           _hd245237245705_
                           _tl245236245707_
                           _e245241245710_
                           _hd245240245713_
                           _tl245239245715_
                           _e245244245718_
                           _hd245243245721_
                           _tl245242245723_
                           _e245247245726_
                           _hd245246245729_
                           _tl245245245731_
                           _e245250245734_
                           _hd245249245737_
                           _tl245248245739_
                           _e245253245742_
                           _hd245252245745_
                           _tl245251245747_)
                          (___match254586254587_
                           _e245226245670_
                           _hd245225245673_
                           _tl245224245675_
                           _e245229245678_
                           _hd245228245681_
                           _tl245227245683_
                           _e245232245686_
                           _hd245231245689_
                           _tl245230245691_
                           _e245235245694_
                           _hd245234245697_
                           _tl245233245699_
                           _e245238245702_
                           _hd245237245705_
                           _tl245236245707_
                           _e245241245710_
                           _hd245240245713_
                           _tl245239245715_
                           _e245244245718_
                           _hd245243245721_
                           _tl245242245723_
                           _e245247245726_
                           _hd245246245729_
                           _tl245245245731_
                           _e245250245734_
                           _hd245249245737_
                           _tl245248245739_
                           _e245253245742_
                           _hd245252245745_
                           _tl245251245747_))))
                   (___match254496254497_
                    (lambda (_e245226245670_
                             _hd245225245673_
                             _tl245224245675_
                             _e245229245678_
                             _hd245228245681_
                             _tl245227245683_
                             _e245232245686_
                             _hd245231245689_
                             _tl245230245691_
                             _e245235245694_
                             _hd245234245697_
                             _tl245233245699_
                             _e245238245702_
                             _hd245237245705_
                             _tl245236245707_
                             _e245241245710_
                             _hd245240245713_
                             _tl245239245715_
                             _e245244245718_
                             _hd245243245721_
                             _tl245242245723_
                             _e245247245726_
                             _hd245246245729_
                             _tl245245245731_
                             _e245250245734_
                             _hd245249245737_
                             _tl245248245739_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd245249245737_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245248245739_))
                              (let ((_e245253245742_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245248245739_))))
                                (let ((_tl245251245747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245253245742_)))
                                      (_hd245252245745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245253245742_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245251245747_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl245245245731_))
                                          (___match254508254509_
                                           _e245226245670_
                                           _hd245225245673_
                                           _tl245224245675_
                                           _e245229245678_
                                           _hd245228245681_
                                           _tl245227245683_
                                           _e245232245686_
                                           _hd245231245689_
                                           _tl245230245691_
                                           _e245235245694_
                                           _hd245234245697_
                                           _tl245233245699_
                                           _e245238245702_
                                           _hd245237245705_
                                           _tl245236245707_
                                           _e245241245710_
                                           _hd245240245713_
                                           _tl245239245715_
                                           _e245244245718_
                                           _hd245243245721_
                                           _tl245242245723_
                                           _e245247245726_
                                           _hd245246245729_
                                           _tl245245245731_
                                           _e245250245734_
                                           _hd245249245737_
                                           _tl245248245739_
                                           _e245253245742_
                                           _hd245252245745_
                                           _tl245251245747_)
                                          (___match254586254587_
                                           _e245226245670_
                                           _hd245225245673_
                                           _tl245224245675_
                                           _e245229245678_
                                           _hd245228245681_
                                           _tl245227245683_
                                           _e245232245686_
                                           _hd245231245689_
                                           _tl245230245691_
                                           _e245235245694_
                                           _hd245234245697_
                                           _tl245233245699_
                                           _e245238245702_
                                           _hd245237245705_
                                           _tl245236245707_
                                           _e245241245710_
                                           _hd245240245713_
                                           _tl245239245715_
                                           _e245244245718_
                                           _hd245243245721_
                                           _tl245242245723_
                                           _e245247245726_
                                           _hd245246245729_
                                           _tl245245245731_
                                           _e245250245734_
                                           _hd245249245737_
                                           _tl245248245739_
                                           _e245253245742_
                                           _hd245252245745_
                                           _tl245251245747_))
                                      (___match254710254711_
                                       _e245226245670_
                                       _hd245225245673_
                                       _tl245224245675_
                                       _e245229245678_
                                       _hd245228245681_
                                       _tl245227245683_
                                       _e245232245686_
                                       _hd245231245689_
                                       _tl245230245691_
                                       _e245235245694_
                                       _hd245234245697_
                                       _tl245233245699_
                                       _e245238245702_
                                       _hd245237245705_
                                       _tl245236245707_
                                       _e245241245710_
                                       _hd245240245713_
                                       _tl245239245715_
                                       _e245244245718_
                                       _hd245243245721_
                                       _tl245242245723_
                                       _e245247245726_
                                       _hd245246245729_
                                       _tl245245245731_))))
                              (___match254710254711_
                               _e245226245670_
                               _hd245225245673_
                               _tl245224245675_
                               _e245229245678_
                               _hd245228245681_
                               _tl245227245683_
                               _e245232245686_
                               _hd245231245689_
                               _tl245230245691_
                               _e245235245694_
                               _hd245234245697_
                               _tl245233245699_
                               _e245238245702_
                               _hd245237245705_
                               _tl245236245707_
                               _e245241245710_
                               _hd245240245713_
                               _tl245239245715_
                               _e245244245718_
                               _hd245243245721_
                               _tl245242245723_
                               _e245247245726_
                               _hd245246245729_
                               _tl245245245731_))
                          (___match254710254711_
                           _e245226245670_
                           _hd245225245673_
                           _tl245224245675_
                           _e245229245678_
                           _hd245228245681_
                           _tl245227245683_
                           _e245232245686_
                           _hd245231245689_
                           _tl245230245691_
                           _e245235245694_
                           _hd245234245697_
                           _tl245233245699_
                           _e245238245702_
                           _hd245237245705_
                           _tl245236245707_
                           _e245241245710_
                           _hd245240245713_
                           _tl245239245715_
                           _e245244245718_
                           _hd245243245721_
                           _tl245242245723_
                           _e245247245726_
                           _hd245246245729_
                           _tl245245245731_))))
                   (___match254428254429_
                    (lambda (_e245175245789_
                             _hd245174245792_
                             _tl245173245794_
                             _e245178245797_
                             _hd245177245800_
                             _tl245176245802_
                             _e245181245805_
                             _hd245180245808_
                             _tl245179245810_
                             _e245184245813_
                             _hd245183245816_
                             _tl245182245818_
                             _e245187245821_
                             _hd245186245824_
                             _tl245185245826_
                             _e245190245829_
                             _hd245189245832_
                             _tl245188245834_
                             _e245193245837_
                             _hd245192245840_
                             _tl245191245842_
                             _e245196245845_
                             _hd245195245848_
                             _tl245194245850_
                             _e245199245853_
                             _hd245198245856_
                             _tl245197245858_
                             _e245202245861_
                             _hd245201245864_
                             _tl245200245866_
                             _e245205245869_
                             _hd245204245872_
                             _tl245203245874_
                             _e245208245877_
                             _hd245207245880_
                             _tl245206245882_
                             _e245211245885_
                             _hd245210245888_
                             _tl245209245890_
                             ___splice254221254222_
                             _target245212245893_
                             _tl245214245895_)
                      (letrec ((_loop245215245898_
                                (lambda (_hd245213245901_ _args245219245903_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245213245901_))
                                      (let ((_e245216245906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245213245901_))))
                                        (let ((_lp-tl245218245911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245216245906_)))
                                              (_lp-hd245217245909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245216245906_))))
                                          (let ((__tmp255584
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245217245909_
                                                         _args245219245903_))))
                                            (declare (not safe))
                                            (_loop245215245898_
                                             _lp-tl245218245911_
                                             __tmp255584))))
                                      (let ((_args245220245914_
                                             (reverse _args245219245903_)))
                                        (let ((_L245917_ _args245220245914_)
                                              (_L245918_ _hd245210245888_)
                                              (_L245919_ _hd245201245864_)
                                              (_L245920_ _hd245192245840_)
                                              (_L245921_ _hd245183245816_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245921_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245920_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L245919_
                                                      _self245110_)))
                                              (___kont254219254220_
                                               _L245917_
                                               _L245918_
                                               _L245919_
                                               _L245920_
                                               _L245921_)
                                              (___kont254231254232_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245215245898_ _target245212245893_ '())))))
                   (___match254386254387_
                    (lambda (_e245175245789_
                             _hd245174245792_
                             _tl245173245794_
                             _e245178245797_
                             _hd245177245800_
                             _tl245176245802_
                             _e245181245805_
                             _hd245180245808_
                             _tl245179245810_
                             _e245184245813_
                             _hd245183245816_
                             _tl245182245818_
                             _e245187245821_
                             _hd245186245824_
                             _tl245185245826_
                             _e245190245829_
                             _hd245189245832_
                             _tl245188245834_
                             _e245193245837_
                             _hd245192245840_
                             _tl245191245842_
                             _e245196245845_
                             _hd245195245848_
                             _tl245194245850_
                             _e245199245853_
                             _hd245198245856_
                             _tl245197245858_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd245198245856_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245197245858_))
                              (let ((_e245202245861_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245197245858_))))
                                (let ((_tl245200245866_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245202245861_)))
                                      (_hd245201245864_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245202245861_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245200245866_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245194245850_))
                                          (let ((_e245205245869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245194245850_))))
                                            (let ((_tl245203245874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245205245869_)))
                                                  (_hd245204245872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245205245869_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245204245872_))
                                                  (let ((_e245208245877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245204245872_))))
                                                    (let ((_tl245206245882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245208245877_)))
                                                          (_hd245207245880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245208245877_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd245207245880_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd245207245880_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245206245882_))
                          (let ((_e245211245885_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245206245882_))))
                            (let ((_tl245209245890_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245211245885_)))
                                  (_hd245210245888_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245211245885_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245209245890_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245203245874_))
                                      (let ((___splice254221254222_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245203245874_
                                                '0))))
                                        (let ((_tl245214245895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254221254222_
                                                  '1)))
                                              (_target245212245893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254221254222_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245214245895_))
                                              (___match254428254429_
                                               _e245175245789_
                                               _hd245174245792_
                                               _tl245173245794_
                                               _e245178245797_
                                               _hd245177245800_
                                               _tl245176245802_
                                               _e245181245805_
                                               _hd245180245808_
                                               _tl245179245810_
                                               _e245184245813_
                                               _hd245183245816_
                                               _tl245182245818_
                                               _e245187245821_
                                               _hd245186245824_
                                               _tl245185245826_
                                               _e245190245829_
                                               _hd245189245832_
                                               _tl245188245834_
                                               _e245193245837_
                                               _hd245192245840_
                                               _tl245191245842_
                                               _e245196245845_
                                               _hd245195245848_
                                               _tl245194245850_
                                               _e245199245853_
                                               _hd245198245856_
                                               _tl245197245858_
                                               _e245202245861_
                                               _hd245201245864_
                                               _tl245200245866_
                                               _e245205245869_
                                               _hd245204245872_
                                               _tl245203245874_
                                               _e245208245877_
                                               _hd245207245880_
                                               _tl245206245882_
                                               _e245211245885_
                                               _hd245210245888_
                                               _tl245209245890_
                                               ___splice254221254222_
                                               _target245212245893_
                                               _tl245214245895_)
                                              (___kont254231254232_))))
                                      (___kont254231254232_))
                                  (___kont254231254232_))))
                          (___kont254231254232_))
                      (___kont254231254232_))
                  (___kont254231254232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254231254232_))))
                                          (___match254710254711_
                                           _e245175245789_
                                           _hd245174245792_
                                           _tl245173245794_
                                           _e245178245797_
                                           _hd245177245800_
                                           _tl245176245802_
                                           _e245181245805_
                                           _hd245180245808_
                                           _tl245179245810_
                                           _e245184245813_
                                           _hd245183245816_
                                           _tl245182245818_
                                           _e245187245821_
                                           _hd245186245824_
                                           _tl245185245826_
                                           _e245190245829_
                                           _hd245189245832_
                                           _tl245188245834_
                                           _e245193245837_
                                           _hd245192245840_
                                           _tl245191245842_
                                           _e245196245845_
                                           _hd245195245848_
                                           _tl245194245850_))
                                      (___match254710254711_
                                       _e245175245789_
                                       _hd245174245792_
                                       _tl245173245794_
                                       _e245178245797_
                                       _hd245177245800_
                                       _tl245176245802_
                                       _e245181245805_
                                       _hd245180245808_
                                       _tl245179245810_
                                       _e245184245813_
                                       _hd245183245816_
                                       _tl245182245818_
                                       _e245187245821_
                                       _hd245186245824_
                                       _tl245185245826_
                                       _e245190245829_
                                       _hd245189245832_
                                       _tl245188245834_
                                       _e245193245837_
                                       _hd245192245840_
                                       _tl245191245842_
                                       _e245196245845_
                                       _hd245195245848_
                                       _tl245194245850_))))
                              (___match254710254711_
                               _e245175245789_
                               _hd245174245792_
                               _tl245173245794_
                               _e245178245797_
                               _hd245177245800_
                               _tl245176245802_
                               _e245181245805_
                               _hd245180245808_
                               _tl245179245810_
                               _e245184245813_
                               _hd245183245816_
                               _tl245182245818_
                               _e245187245821_
                               _hd245186245824_
                               _tl245185245826_
                               _e245190245829_
                               _hd245189245832_
                               _tl245188245834_
                               _e245193245837_
                               _hd245192245840_
                               _tl245191245842_
                               _e245196245845_
                               _hd245195245848_
                               _tl245194245850_))
                          (___match254496254497_
                           _e245175245789_
                           _hd245174245792_
                           _tl245173245794_
                           _e245178245797_
                           _hd245177245800_
                           _tl245176245802_
                           _e245181245805_
                           _hd245180245808_
                           _tl245179245810_
                           _e245184245813_
                           _hd245183245816_
                           _tl245182245818_
                           _e245187245821_
                           _hd245186245824_
                           _tl245185245826_
                           _e245190245829_
                           _hd245189245832_
                           _tl245188245834_
                           _e245193245837_
                           _hd245192245840_
                           _tl245191245842_
                           _e245196245845_
                           _hd245195245848_
                           _tl245194245850_
                           _e245199245853_
                           _hd245198245856_
                           _tl245197245858_))))
                   (___match254318254319_
                    (lambda (_e245131245978_
                             _hd245130245981_
                             _tl245129245983_
                             _e245134245986_
                             _hd245133245989_
                             _tl245132245991_
                             _e245137245994_
                             _hd245136245997_
                             _tl245135245999_
                             _e245140246002_
                             _hd245139246005_
                             _tl245138246007_
                             _e245143246010_
                             _hd245142246013_
                             _tl245141246015_
                             _e245146246018_
                             _hd245145246021_
                             _tl245144246023_
                             _e245149246026_
                             _hd245148246029_
                             _tl245147246031_
                             _e245152246034_
                             _hd245151246037_
                             _tl245150246039_
                             _e245155246042_
                             _hd245154246045_
                             _tl245153246047_
                             _e245158246050_
                             _hd245157246053_
                             _tl245156246055_
                             ___splice254217254218_
                             _target245159246058_
                             _tl245161246060_)
                      (letrec ((_loop245162246063_
                                (lambda (_hd245160246066_ _args245166246068_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245160246066_))
                                      (let ((_e245163246071_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245160246066_))))
                                        (let ((_lp-tl245165246076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245163246071_)))
                                              (_lp-hd245164246074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245163246071_))))
                                          (let ((__tmp255585
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245164246074_
                                                         _args245166246068_))))
                                            (declare (not safe))
                                            (_loop245162246063_
                                             _lp-tl245165246076_
                                             __tmp255585))))
                                      (let ((_args245167246079_
                                             (reverse _args245166246068_)))
                                        (let ((_L246082_ _args245167246079_)
                                              (_L246083_ _hd245157246053_)
                                              (_L246084_ _hd245148246029_)
                                              (_L246085_ _hd245139246005_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246085_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246084_
                                                      _self245110_)))
                                              (___kont254215254216_
                                               _L246082_
                                               _L246083_
                                               _L246084_
                                               _L246085_)
                                              (___match254506254507_
                                               _e245131245978_
                                               _hd245130245981_
                                               _tl245129245983_
                                               _e245134245986_
                                               _hd245133245989_
                                               _tl245132245991_
                                               _e245137245994_
                                               _hd245136245997_
                                               _tl245135245999_
                                               _e245140246002_
                                               _hd245139246005_
                                               _tl245138246007_
                                               _e245143246010_
                                               _hd245142246013_
                                               _tl245141246015_
                                               _e245146246018_
                                               _hd245145246021_
                                               _tl245144246023_
                                               _e245149246026_
                                               _hd245148246029_
                                               _tl245147246031_
                                               _e245152246034_
                                               _hd245151246037_
                                               _tl245150246039_
                                               _e245155246042_
                                               _hd245154246045_
                                               _tl245153246047_
                                               _e245158246050_
                                               _hd245157246053_
                                               _tl245156246055_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245162246063_ _target245159246058_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx254213254214_))
                  (let ((_e245131245978_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx254213254214_))))
                    (let ((_tl245129245983_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245131245978_)))
                          (_hd245130245981_
                           (let ()
                             (declare (not safe))
                             (##car _e245131245978_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245129245983_))
                          (let ((_e245134245986_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245129245983_))))
                            (let ((_tl245132245991_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245134245986_)))
                                  (_hd245133245989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245134245986_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd245133245989_))
                                  (let ((_e245137245994_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd245133245989_))))
                                    (let ((_tl245135245999_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245137245994_)))
                                          (_hd245136245997_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245137245994_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd245136245997_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd245136245997_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl245135245999_))
                                                  (let ((_e245140246002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl245135245999_))))
                                                    (let ((_tl245138246007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245140246002_)))
                                                          (_hd245139246005_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245140246002_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl245138246007_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl245132245991_))
                      (let ((_e245143246010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl245132245991_))))
                        (let ((_tl245141246015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245143246010_)))
                              (_hd245142246013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245143246010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd245142246013_))
                              (let ((_e245146246018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd245142246013_))))
                                (let ((_tl245144246023_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245146246018_)))
                                      (_hd245145246021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245146246018_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd245145246021_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd245145246021_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl245144246023_))
                                              (let ((_e245149246026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl245144246023_))))
                                                (let ((_tl245147246031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245149246026_)))
                                                      (_hd245148246029_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245149246026_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl245147246031_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl245141246015_))
                                                          (let ((_e245152246034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl245141246015_))))
                    (let ((_tl245150246039_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245152246034_)))
                          (_hd245151246037_
                           (let ()
                             (declare (not safe))
                             (##car _e245152246034_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd245151246037_))
                          (let ((_e245155246042_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd245151246037_))))
                            (let ((_tl245153246047_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245155246042_)))
                                  (_hd245154246045_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245155246042_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd245154246045_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd245154246045_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245153246047_))
                                          (let ((_e245158246050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245153246047_))))
                                            (let ((_tl245156246055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245158246050_)))
                                                  (_hd245157246053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245158246050_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl245156246055_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl245150246039_))
                                                      (let ((___splice254217254218_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl245150246039_ '0))))
                (let ((_tl245161246060_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254217254218_ '1)))
                      (_target245159246058_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254217254218_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl245161246060_))
                      (___match254318254319_
                       _e245131245978_
                       _hd245130245981_
                       _tl245129245983_
                       _e245134245986_
                       _hd245133245989_
                       _tl245132245991_
                       _e245137245994_
                       _hd245136245997_
                       _tl245135245999_
                       _e245140246002_
                       _hd245139246005_
                       _tl245138246007_
                       _e245143246010_
                       _hd245142246013_
                       _tl245141246015_
                       _e245146246018_
                       _hd245145246021_
                       _tl245144246023_
                       _e245149246026_
                       _hd245148246029_
                       _tl245147246031_
                       _e245152246034_
                       _hd245151246037_
                       _tl245150246039_
                       _e245155246042_
                       _hd245154246045_
                       _tl245153246047_
                       _e245158246050_
                       _hd245157246053_
                       _tl245156246055_
                       ___splice254217254218_
                       _target245159246058_
                       _tl245161246060_)
                      (___match254506254507_
                       _e245131245978_
                       _hd245130245981_
                       _tl245129245983_
                       _e245134245986_
                       _hd245133245989_
                       _tl245132245991_
                       _e245137245994_
                       _hd245136245997_
                       _tl245135245999_
                       _e245140246002_
                       _hd245139246005_
                       _tl245138246007_
                       _e245143246010_
                       _hd245142246013_
                       _tl245141246015_
                       _e245146246018_
                       _hd245145246021_
                       _tl245144246023_
                       _e245149246026_
                       _hd245148246029_
                       _tl245147246031_
                       _e245152246034_
                       _hd245151246037_
                       _tl245150246039_
                       _e245155246042_
                       _hd245154246045_
                       _tl245153246047_
                       _e245158246050_
                       _hd245157246053_
                       _tl245156246055_))))
              (___match254506254507_
               _e245131245978_
               _hd245130245981_
               _tl245129245983_
               _e245134245986_
               _hd245133245989_
               _tl245132245991_
               _e245137245994_
               _hd245136245997_
               _tl245135245999_
               _e245140246002_
               _hd245139246005_
               _tl245138246007_
               _e245143246010_
               _hd245142246013_
               _tl245141246015_
               _e245146246018_
               _hd245145246021_
               _tl245144246023_
               _e245149246026_
               _hd245148246029_
               _tl245147246031_
               _e245152246034_
               _hd245151246037_
               _tl245150246039_
               _e245155246042_
               _hd245154246045_
               _tl245153246047_
               _e245158246050_
               _hd245157246053_
               _tl245156246055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match254710254711_
                                                   _e245131245978_
                                                   _hd245130245981_
                                                   _tl245129245983_
                                                   _e245134245986_
                                                   _hd245133245989_
                                                   _tl245132245991_
                                                   _e245137245994_
                                                   _hd245136245997_
                                                   _tl245135245999_
                                                   _e245140246002_
                                                   _hd245139246005_
                                                   _tl245138246007_
                                                   _e245143246010_
                                                   _hd245142246013_
                                                   _tl245141246015_
                                                   _e245146246018_
                                                   _hd245145246021_
                                                   _tl245144246023_
                                                   _e245149246026_
                                                   _hd245148246029_
                                                   _tl245147246031_
                                                   _e245152246034_
                                                   _hd245151246037_
                                                   _tl245150246039_))))
                                          (___match254710254711_
                                           _e245131245978_
                                           _hd245130245981_
                                           _tl245129245983_
                                           _e245134245986_
                                           _hd245133245989_
                                           _tl245132245991_
                                           _e245137245994_
                                           _hd245136245997_
                                           _tl245135245999_
                                           _e245140246002_
                                           _hd245139246005_
                                           _tl245138246007_
                                           _e245143246010_
                                           _hd245142246013_
                                           _tl245141246015_
                                           _e245146246018_
                                           _hd245145246021_
                                           _tl245144246023_
                                           _e245149246026_
                                           _hd245148246029_
                                           _tl245147246031_
                                           _e245152246034_
                                           _hd245151246037_
                                           _tl245150246039_))
                                      (___match254386254387_
                                       _e245131245978_
                                       _hd245130245981_
                                       _tl245129245983_
                                       _e245134245986_
                                       _hd245133245989_
                                       _tl245132245991_
                                       _e245137245994_
                                       _hd245136245997_
                                       _tl245135245999_
                                       _e245140246002_
                                       _hd245139246005_
                                       _tl245138246007_
                                       _e245143246010_
                                       _hd245142246013_
                                       _tl245141246015_
                                       _e245146246018_
                                       _hd245145246021_
                                       _tl245144246023_
                                       _e245149246026_
                                       _hd245148246029_
                                       _tl245147246031_
                                       _e245152246034_
                                       _hd245151246037_
                                       _tl245150246039_
                                       _e245155246042_
                                       _hd245154246045_
                                       _tl245153246047_))
                                  (___match254710254711_
                                   _e245131245978_
                                   _hd245130245981_
                                   _tl245129245983_
                                   _e245134245986_
                                   _hd245133245989_
                                   _tl245132245991_
                                   _e245137245994_
                                   _hd245136245997_
                                   _tl245135245999_
                                   _e245140246002_
                                   _hd245139246005_
                                   _tl245138246007_
                                   _e245143246010_
                                   _hd245142246013_
                                   _tl245141246015_
                                   _e245146246018_
                                   _hd245145246021_
                                   _tl245144246023_
                                   _e245149246026_
                                   _hd245148246029_
                                   _tl245147246031_
                                   _e245152246034_
                                   _hd245151246037_
                                   _tl245150246039_))))
                          (___match254710254711_
                           _e245131245978_
                           _hd245130245981_
                           _tl245129245983_
                           _e245134245986_
                           _hd245133245989_
                           _tl245132245991_
                           _e245137245994_
                           _hd245136245997_
                           _tl245135245999_
                           _e245140246002_
                           _hd245139246005_
                           _tl245138246007_
                           _e245143246010_
                           _hd245142246013_
                           _tl245141246015_
                           _e245146246018_
                           _hd245145246021_
                           _tl245144246023_
                           _e245149246026_
                           _hd245148246029_
                           _tl245147246031_
                           _e245152246034_
                           _hd245151246037_
                           _tl245150246039_))))
                  (___match254648254649_
                   _e245131245978_
                   _hd245130245981_
                   _tl245129245983_
                   _e245134245986_
                   _hd245133245989_
                   _tl245132245991_
                   _e245137245994_
                   _hd245136245997_
                   _tl245135245999_
                   _e245140246002_
                   _hd245139246005_
                   _tl245138246007_
                   _e245143246010_
                   _hd245142246013_
                   _tl245141246015_
                   _e245146246018_
                   _hd245145246021_
                   _tl245144246023_
                   _e245149246026_
                   _hd245148246029_
                   _tl245147246031_))
              (___kont254231254232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont254231254232_))
                                          (___kont254231254232_))
                                      (___kont254231254232_))))
                              (___kont254231254232_))))
                      (___kont254231254232_))
                  (___kont254231254232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254231254232_))
                                              (___kont254231254232_))
                                          (___kont254231254232_))))
                                  (___kont254231254232_))))
                          (___kont254231254232_))))
                  (___kont254231254232_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx244055_
               _self244056_
               _$t244057_
               _methods244058_
               _slots244059_
               _class-check244060_
               _struct-check244061_
               _struct-assert244062_)
        (letrec ((_force-e244064_
                  (lambda (_what245107_)
                    (let ((__tmp255586
                           (let ((__tmp255590
                                  (let ((__tmp255591
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp255591)))
                                 (__tmp255587
                                  (let ((__tmp255588
                                         (let ((__tmp255589
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what245107_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255589))))
                                    (declare (not safe))
                                    (cons __tmp255588 '()))))
                             (declare (not safe))
                             (cons __tmp255590 __tmp255587))))
                      (declare (not safe))
                      (cons '%#call __tmp255586)))))
          (let* ((___stx254715254716_ _stx244055_)
                 (_g244072244294_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254715254716_)))))
            (let ((___kont254717254718_
                   (lambda (_L245053_ _L245054_ _L245055_ _L245056_)
                     (let ((_$method245101_
                            (let ((__tmp255592
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245054_))))
                              (declare (not safe))
                              (table-ref _methods244058_ __tmp255592)))
                           (_args245102_
                            (map (lambda (_g245089245091_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245089245091_
                                      _self244056_
                                      _$t244057_
                                      _methods244058_
                                      _slots244059_
                                      _class-check244060_
                                      _struct-check244061_
                                      _struct-assert244062_)))
                                 (let ((__tmp255593
                                        (lambda (_g245093245096_
                                                 _g245094245098_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245093245096_
                                                  _g245094245098_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255593 '() _L245053_)))))
                       (let ((__tmp255594
                              (let ((__tmp255595
                                     (let ((__tmp255599
                                            (let ()
                                              (declare (not safe))
                                              (_force-e244064_
                                               _$method245101_)))
                                           (__tmp255596
                                            (let ((__tmp255597
                                                   (let ((__tmp255598
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self244056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255598))))
                                              (declare (not safe))
                                              (cons __tmp255597
                                                    _args245102_))))
                                       (declare (not safe))
                                       (cons __tmp255599 __tmp255596))))
                                (declare (not safe))
                                (cons '%#call __tmp255595))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255594 _stx244055_)))))
                  (___kont254721254722_
                   (lambda (_L244885_ _L244886_ _L244887_ _L244888_ _L244889_)
                     (let ((_$method244941_
                            (let ((__tmp255600
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244886_))))
                              (declare (not safe))
                              (table-ref _methods244058_ __tmp255600)))
                           (_args244942_
                            (map (lambda (_g244929244931_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g244929244931_
                                      _self244056_
                                      _$t244057_
                                      _methods244058_
                                      _slots244059_
                                      _class-check244060_
                                      _struct-check244061_
                                      _struct-assert244062_)))
                                 (let ((__tmp255601
                                        (lambda (_g244933244936_
                                                 _g244934244938_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244933244936_
                                                  _g244934244938_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255601 '() _L244885_)))))
                       (let ((__tmp255602
                              (let ((__tmp255603
                                     (let ((__tmp255609
                                            (let ((__tmp255610
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255610)))
                                           (__tmp255604
                                            (let ((__tmp255608
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e244064_
                                                      _$method244941_)))
                                                  (__tmp255605
                                                   (let ((__tmp255606
                                                          (let ((__tmp255607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244056_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255606
                                                           _args244942_))))
                                              (declare (not safe))
                                              (cons __tmp255608 __tmp255605))))
                                       (declare (not safe))
                                       (cons __tmp255609 __tmp255604))))
                                (declare (not safe))
                                (cons '%#call __tmp255603))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255602 _stx244055_)))))
                  (___kont254725254726_
                   (lambda (_L244716_ _L244717_ _L244718_)
                     (let* ((_$field244750_
                             (let ((__tmp255611
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L244716_))))
                               (declare (not safe))
                               (table-ref _slots244059_ __tmp255611)))
                            (__tmp255612
                             (let ((__tmp255613
                                    (let ((__tmp255620
                                           (let ((__tmp255621
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t244057_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255621)))
                                          (__tmp255614
                                           (let ((__tmp255618
                                                  (let ((__tmp255619
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field244750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255619)))
                                                 (__tmp255615
                                                  (let ((__tmp255616
                                                         (let ((__tmp255617
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self244056_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255616 '()))))
                                             (declare (not safe))
                                             (cons __tmp255618 __tmp255615))))
                                      (declare (not safe))
                                      (cons __tmp255620 __tmp255614))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp255613))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255612 _stx244055_))))
                  (___kont254727254728_
                   (lambda (_L244590_ _L244591_ _L244592_ _L244593_)
                     (let ((_$field244628_
                            (let ((__tmp255622
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244591_))))
                              (declare (not safe))
                              (table-ref _slots244059_ __tmp255622)))
                           (_expr244629_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L244590_
                               _self244056_
                               _$t244057_
                               _methods244058_
                               _slots244059_
                               _class-check244060_
                               _struct-check244061_
                               _struct-assert244062_))))
                       (let ((__tmp255623
                              (let ((__tmp255624
                                     (let ((__tmp255632
                                            (let ((__tmp255633
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244057_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255633)))
                                           (__tmp255625
                                            (let ((__tmp255630
                                                   (let ((__tmp255631
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255631)))
                                                  (__tmp255626
                                                   (let ((__tmp255628
                                                          (let ((__tmp255629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244056_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255629)))
                 (__tmp255627
                  (let () (declare (not safe)) (cons _expr244629_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255628
                                                           __tmp255627))))
                                              (declare (not safe))
                                              (cons __tmp255630 __tmp255626))))
                                       (declare (not safe))
                                       (cons __tmp255632 __tmp255625))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255624))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255623 _stx244055_)))))
                  (___kont254729254730_
                   (lambda (_L244469_ _L244470_)
                     (let* ((_slot244492_
                             (##structure-ref
                              (let ((__tmp255634
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244470_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255634))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field244494_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244059_ _slot244492_))))
                       (let ((__tmp255635
                              (let ((__tmp255636
                                     (let ((__tmp255643
                                            (let ((__tmp255644
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244057_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255644)))
                                           (__tmp255637
                                            (let ((__tmp255641
                                                   (let ((__tmp255642
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255642)))
                                                  (__tmp255638
                                                   (let ((__tmp255639
                                                          (let ((__tmp255640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244056_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255639 '()))))
                                              (declare (not safe))
                                              (cons __tmp255641 __tmp255638))))
                                       (declare (not safe))
                                       (cons __tmp255643 __tmp255637))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp255636))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255635 _stx244055_)))))
                  (___kont254731254732_
                   (lambda (_L244370_ _L244371_ _L244372_)
                     (let* ((_slot244401_
                             (##structure-ref
                              (let ((__tmp255645
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244372_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255645))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field244403_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244059_ _slot244401_)))
                            (_expr244405_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L244370_
                                _self244056_
                                _$t244057_
                                _methods244058_
                                _slots244059_
                                _class-check244060_
                                _struct-check244061_
                                _struct-assert244062_))))
                       (let ((__tmp255646
                              (let ((__tmp255647
                                     (let ((__tmp255655
                                            (let ((__tmp255656
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244057_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255656)))
                                           (__tmp255648
                                            (let ((__tmp255653
                                                   (let ((__tmp255654
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255654)))
                                                  (__tmp255649
                                                   (let ((__tmp255651
                                                          (let ((__tmp255652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244056_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255652)))
                 (__tmp255650
                  (let () (declare (not safe)) (cons _expr244405_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255651
                                                           __tmp255650))))
                                              (declare (not safe))
                                              (cons __tmp255653 __tmp255649))))
                                       (declare (not safe))
                                       (cons __tmp255655 __tmp255648))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255647))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255646 _stx244055_)))))
                  (___kont254733254734_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx244055_
                        _self244056_
                        _$t244057_
                        _methods244058_
                        _slots244059_
                        _class-check244060_
                        _struct-check244061_
                        _struct-assert244062_)))))
              (let* ((___match255214255215_
                      (lambda (_e244268244306_
                               _hd244267244309_
                               _tl244266244311_
                               _e244271244314_
                               _hd244270244317_
                               _tl244269244319_
                               _e244274244322_
                               _hd244273244325_
                               _tl244272244327_
                               _e244277244330_
                               _hd244276244333_
                               _tl244275244335_
                               _e244280244338_
                               _hd244279244341_
                               _tl244278244343_
                               _e244283244346_
                               _hd244282244349_
                               _tl244281244351_
                               _e244286244354_
                               _hd244285244357_
                               _tl244284244359_
                               _e244289244362_
                               _hd244288244365_
                               _tl244287244367_)
                        (let ((_L244370_ _hd244288244365_)
                              (_L244371_ _hd244285244357_)
                              (_L244372_ _hd244276244333_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244371_
                                      _self244056_))
                                   (let ((__tmp255657
                                          (let ((__tmp255658
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244372_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255658))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255657
                                      'gxc#!mutator::t)))
                              (___kont254731254732_
                               _L244370_
                               _L244371_
                               _L244372_)
                              (___kont254733254734_)))))
                     (___match255212255213_
                      (lambda (_e244268244306_
                               _hd244267244309_
                               _tl244266244311_
                               _e244271244314_
                               _hd244270244317_
                               _tl244269244319_
                               _e244274244322_
                               _hd244273244325_
                               _tl244272244327_
                               _e244277244330_
                               _hd244276244333_
                               _tl244275244335_
                               _e244280244338_
                               _hd244279244341_
                               _tl244278244343_
                               _e244283244346_
                               _hd244282244349_
                               _tl244281244351_
                               _e244286244354_
                               _hd244285244357_
                               _tl244284244359_
                               _e244289244362_
                               _hd244288244365_
                               _tl244287244367_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244287244367_))
                            (___match255214255215_
                             _e244268244306_
                             _hd244267244309_
                             _tl244266244311_
                             _e244271244314_
                             _hd244270244317_
                             _tl244269244319_
                             _e244274244322_
                             _hd244273244325_
                             _tl244272244327_
                             _e244277244330_
                             _hd244276244333_
                             _tl244275244335_
                             _e244280244338_
                             _hd244279244341_
                             _tl244278244343_
                             _e244283244346_
                             _hd244282244349_
                             _tl244281244351_
                             _e244286244354_
                             _hd244285244357_
                             _tl244284244359_
                             _e244289244362_
                             _hd244288244365_
                             _tl244287244367_)
                            (___kont254733254734_))))
                     (___match255206255207_
                      (lambda (_e244268244306_
                               _hd244267244309_
                               _tl244266244311_
                               _e244271244314_
                               _hd244270244317_
                               _tl244269244319_
                               _e244274244322_
                               _hd244273244325_
                               _tl244272244327_
                               _e244277244330_
                               _hd244276244333_
                               _tl244275244335_
                               _e244280244338_
                               _hd244279244341_
                               _tl244278244343_
                               _e244283244346_
                               _hd244282244349_
                               _tl244281244351_
                               _e244286244354_
                               _hd244285244357_
                               _tl244284244359_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244278244343_))
                            (let ((_e244289244362_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244278244343_))))
                              (let ((_tl244287244367_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244289244362_)))
                                    (_hd244288244365_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244289244362_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244287244367_))
                                    (___match255214255215_
                                     _e244268244306_
                                     _hd244267244309_
                                     _tl244266244311_
                                     _e244271244314_
                                     _hd244270244317_
                                     _tl244269244319_
                                     _e244274244322_
                                     _hd244273244325_
                                     _tl244272244327_
                                     _e244277244330_
                                     _hd244276244333_
                                     _tl244275244335_
                                     _e244280244338_
                                     _hd244279244341_
                                     _tl244278244343_
                                     _e244283244346_
                                     _hd244282244349_
                                     _tl244281244351_
                                     _e244286244354_
                                     _hd244285244357_
                                     _tl244284244359_
                                     _e244289244362_
                                     _hd244288244365_
                                     _tl244287244367_)
                                    (___kont254733254734_))))
                            (___kont254733254734_))))
                     (___match255152255153_
                      (lambda (_e244244244413_
                               _hd244243244416_
                               _tl244242244418_
                               _e244247244421_
                               _hd244246244424_
                               _tl244245244426_
                               _e244250244429_
                               _hd244249244432_
                               _tl244248244434_
                               _e244253244437_
                               _hd244252244440_
                               _tl244251244442_
                               _e244256244445_
                               _hd244255244448_
                               _tl244254244450_
                               _e244259244453_
                               _hd244258244456_
                               _tl244257244458_
                               _e244262244461_
                               _hd244261244464_
                               _tl244260244466_)
                        (let ((_L244469_ _hd244261244464_)
                              (_L244470_ _hd244252244440_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244469_
                                      _self244056_))
                                   (let ((__tmp255659
                                          (let ((__tmp255660
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244470_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255660))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255659
                                      'gxc#!accessor::t)))
                              (___kont254729254730_ _L244469_ _L244470_)
                              (___kont254733254734_)))))
                     (___match255150255151_
                      (lambda (_e244244244413_
                               _hd244243244416_
                               _tl244242244418_
                               _e244247244421_
                               _hd244246244424_
                               _tl244245244426_
                               _e244250244429_
                               _hd244249244432_
                               _tl244248244434_
                               _e244253244437_
                               _hd244252244440_
                               _tl244251244442_
                               _e244256244445_
                               _hd244255244448_
                               _tl244254244450_
                               _e244259244453_
                               _hd244258244456_
                               _tl244257244458_
                               _e244262244461_
                               _hd244261244464_
                               _tl244260244466_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244254244450_))
                            (___match255152255153_
                             _e244244244413_
                             _hd244243244416_
                             _tl244242244418_
                             _e244247244421_
                             _hd244246244424_
                             _tl244245244426_
                             _e244250244429_
                             _hd244249244432_
                             _tl244248244434_
                             _e244253244437_
                             _hd244252244440_
                             _tl244251244442_
                             _e244256244445_
                             _hd244255244448_
                             _tl244254244450_
                             _e244259244453_
                             _hd244258244456_
                             _tl244257244458_
                             _e244262244461_
                             _hd244261244464_
                             _tl244260244466_)
                            (___match255206255207_
                             _e244244244413_
                             _hd244243244416_
                             _tl244242244418_
                             _e244247244421_
                             _hd244246244424_
                             _tl244245244426_
                             _e244250244429_
                             _hd244249244432_
                             _tl244248244434_
                             _e244253244437_
                             _hd244252244440_
                             _tl244251244442_
                             _e244256244445_
                             _hd244255244448_
                             _tl244254244450_
                             _e244259244453_
                             _hd244258244456_
                             _tl244257244458_
                             _e244262244461_
                             _hd244261244464_
                             _tl244260244466_))))
                     (___match255096255097_
                      (lambda (_e244209244502_
                               _hd244208244505_
                               _tl244207244507_
                               _e244212244510_
                               _hd244211244513_
                               _tl244210244515_
                               _e244215244518_
                               _hd244214244521_
                               _tl244213244523_
                               _e244218244526_
                               _hd244217244529_
                               _tl244216244531_
                               _e244221244534_
                               _hd244220244537_
                               _tl244219244539_
                               _e244224244542_
                               _hd244223244545_
                               _tl244222244547_
                               _e244227244550_
                               _hd244226244553_
                               _tl244225244555_
                               _e244230244558_
                               _hd244229244561_
                               _tl244228244563_
                               _e244233244566_
                               _hd244232244569_
                               _tl244231244571_
                               _e244236244574_
                               _hd244235244577_
                               _tl244234244579_
                               _e244239244582_
                               _hd244238244585_
                               _tl244237244587_)
                        (let ((_L244590_ _hd244238244585_)
                              (_L244591_ _hd244235244577_)
                              (_L244592_ _hd244226244553_)
                              (_L244593_ _hd244217244529_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244593_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244593_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244592_
                                      _self244056_)))
                              (___kont254727254728_
                               _L244590_
                               _L244591_
                               _L244592_
                               _L244593_)
                              (___kont254733254734_)))))
                     (___match255088255089_
                      (lambda (_e244209244502_
                               _hd244208244505_
                               _tl244207244507_
                               _e244212244510_
                               _hd244211244513_
                               _tl244210244515_
                               _e244215244518_
                               _hd244214244521_
                               _tl244213244523_
                               _e244218244526_
                               _hd244217244529_
                               _tl244216244531_
                               _e244221244534_
                               _hd244220244537_
                               _tl244219244539_
                               _e244224244542_
                               _hd244223244545_
                               _tl244222244547_
                               _e244227244550_
                               _hd244226244553_
                               _tl244225244555_
                               _e244230244558_
                               _hd244229244561_
                               _tl244228244563_
                               _e244233244566_
                               _hd244232244569_
                               _tl244231244571_
                               _e244236244574_
                               _hd244235244577_
                               _tl244234244579_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244228244563_))
                            (let ((_e244239244582_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244228244563_))))
                              (let ((_tl244237244587_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244239244582_)))
                                    (_hd244238244585_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244239244582_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244237244587_))
                                    (___match255096255097_
                                     _e244209244502_
                                     _hd244208244505_
                                     _tl244207244507_
                                     _e244212244510_
                                     _hd244211244513_
                                     _tl244210244515_
                                     _e244215244518_
                                     _hd244214244521_
                                     _tl244213244523_
                                     _e244218244526_
                                     _hd244217244529_
                                     _tl244216244531_
                                     _e244221244534_
                                     _hd244220244537_
                                     _tl244219244539_
                                     _e244224244542_
                                     _hd244223244545_
                                     _tl244222244547_
                                     _e244227244550_
                                     _hd244226244553_
                                     _tl244225244555_
                                     _e244230244558_
                                     _hd244229244561_
                                     _tl244228244563_
                                     _e244233244566_
                                     _hd244232244569_
                                     _tl244231244571_
                                     _e244236244574_
                                     _hd244235244577_
                                     _tl244234244579_
                                     _e244239244582_
                                     _hd244238244585_
                                     _tl244237244587_)
                                    (___kont254733254734_))))
                            (___match255212255213_
                             _e244209244502_
                             _hd244208244505_
                             _tl244207244507_
                             _e244212244510_
                             _hd244211244513_
                             _tl244210244515_
                             _e244215244518_
                             _hd244214244521_
                             _tl244213244523_
                             _e244218244526_
                             _hd244217244529_
                             _tl244216244531_
                             _e244221244534_
                             _hd244220244537_
                             _tl244219244539_
                             _e244224244542_
                             _hd244223244545_
                             _tl244222244547_
                             _e244227244550_
                             _hd244226244553_
                             _tl244225244555_
                             _e244230244558_
                             _hd244229244561_
                             _tl244228244563_))))
                     (___match255010255011_
                      (lambda (_e244175244636_
                               _hd244174244639_
                               _tl244173244641_
                               _e244178244644_
                               _hd244177244647_
                               _tl244176244649_
                               _e244181244652_
                               _hd244180244655_
                               _tl244179244657_
                               _e244184244660_
                               _hd244183244663_
                               _tl244182244665_
                               _e244187244668_
                               _hd244186244671_
                               _tl244185244673_
                               _e244190244676_
                               _hd244189244679_
                               _tl244188244681_
                               _e244193244684_
                               _hd244192244687_
                               _tl244191244689_
                               _e244196244692_
                               _hd244195244695_
                               _tl244194244697_
                               _e244199244700_
                               _hd244198244703_
                               _tl244197244705_
                               _e244202244708_
                               _hd244201244711_
                               _tl244200244713_)
                        (let ((_L244716_ _hd244201244711_)
                              (_L244717_ _hd244192244687_)
                              (_L244718_ _hd244183244663_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244718_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244718_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244717_
                                      _self244056_)))
                              (___kont254725254726_
                               _L244716_
                               _L244717_
                               _L244718_)
                              (___match255214255215_
                               _e244175244636_
                               _hd244174244639_
                               _tl244173244641_
                               _e244178244644_
                               _hd244177244647_
                               _tl244176244649_
                               _e244181244652_
                               _hd244180244655_
                               _tl244179244657_
                               _e244184244660_
                               _hd244183244663_
                               _tl244182244665_
                               _e244187244668_
                               _hd244186244671_
                               _tl244185244673_
                               _e244190244676_
                               _hd244189244679_
                               _tl244188244681_
                               _e244193244684_
                               _hd244192244687_
                               _tl244191244689_
                               _e244196244692_
                               _hd244195244695_
                               _tl244194244697_)))))
                     (___match255008255009_
                      (lambda (_e244175244636_
                               _hd244174244639_
                               _tl244173244641_
                               _e244178244644_
                               _hd244177244647_
                               _tl244176244649_
                               _e244181244652_
                               _hd244180244655_
                               _tl244179244657_
                               _e244184244660_
                               _hd244183244663_
                               _tl244182244665_
                               _e244187244668_
                               _hd244186244671_
                               _tl244185244673_
                               _e244190244676_
                               _hd244189244679_
                               _tl244188244681_
                               _e244193244684_
                               _hd244192244687_
                               _tl244191244689_
                               _e244196244692_
                               _hd244195244695_
                               _tl244194244697_
                               _e244199244700_
                               _hd244198244703_
                               _tl244197244705_
                               _e244202244708_
                               _hd244201244711_
                               _tl244200244713_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244194244697_))
                            (___match255010255011_
                             _e244175244636_
                             _hd244174244639_
                             _tl244173244641_
                             _e244178244644_
                             _hd244177244647_
                             _tl244176244649_
                             _e244181244652_
                             _hd244180244655_
                             _tl244179244657_
                             _e244184244660_
                             _hd244183244663_
                             _tl244182244665_
                             _e244187244668_
                             _hd244186244671_
                             _tl244185244673_
                             _e244190244676_
                             _hd244189244679_
                             _tl244188244681_
                             _e244193244684_
                             _hd244192244687_
                             _tl244191244689_
                             _e244196244692_
                             _hd244195244695_
                             _tl244194244697_
                             _e244199244700_
                             _hd244198244703_
                             _tl244197244705_
                             _e244202244708_
                             _hd244201244711_
                             _tl244200244713_)
                            (___match255088255089_
                             _e244175244636_
                             _hd244174244639_
                             _tl244173244641_
                             _e244178244644_
                             _hd244177244647_
                             _tl244176244649_
                             _e244181244652_
                             _hd244180244655_
                             _tl244179244657_
                             _e244184244660_
                             _hd244183244663_
                             _tl244182244665_
                             _e244187244668_
                             _hd244186244671_
                             _tl244185244673_
                             _e244190244676_
                             _hd244189244679_
                             _tl244188244681_
                             _e244193244684_
                             _hd244192244687_
                             _tl244191244689_
                             _e244196244692_
                             _hd244195244695_
                             _tl244194244697_
                             _e244199244700_
                             _hd244198244703_
                             _tl244197244705_
                             _e244202244708_
                             _hd244201244711_
                             _tl244200244713_))))
                     (___match254998254999_
                      (lambda (_e244175244636_
                               _hd244174244639_
                               _tl244173244641_
                               _e244178244644_
                               _hd244177244647_
                               _tl244176244649_
                               _e244181244652_
                               _hd244180244655_
                               _tl244179244657_
                               _e244184244660_
                               _hd244183244663_
                               _tl244182244665_
                               _e244187244668_
                               _hd244186244671_
                               _tl244185244673_
                               _e244190244676_
                               _hd244189244679_
                               _tl244188244681_
                               _e244193244684_
                               _hd244192244687_
                               _tl244191244689_
                               _e244196244692_
                               _hd244195244695_
                               _tl244194244697_
                               _e244199244700_
                               _hd244198244703_
                               _tl244197244705_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd244198244703_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244197244705_))
                                (let ((_e244202244708_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244197244705_))))
                                  (let ((_tl244200244713_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244202244708_)))
                                        (_hd244201244711_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244202244708_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244200244713_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244194244697_))
                                            (___match255010255011_
                                             _e244175244636_
                                             _hd244174244639_
                                             _tl244173244641_
                                             _e244178244644_
                                             _hd244177244647_
                                             _tl244176244649_
                                             _e244181244652_
                                             _hd244180244655_
                                             _tl244179244657_
                                             _e244184244660_
                                             _hd244183244663_
                                             _tl244182244665_
                                             _e244187244668_
                                             _hd244186244671_
                                             _tl244185244673_
                                             _e244190244676_
                                             _hd244189244679_
                                             _tl244188244681_
                                             _e244193244684_
                                             _hd244192244687_
                                             _tl244191244689_
                                             _e244196244692_
                                             _hd244195244695_
                                             _tl244194244697_
                                             _e244199244700_
                                             _hd244198244703_
                                             _tl244197244705_
                                             _e244202244708_
                                             _hd244201244711_
                                             _tl244200244713_)
                                            (___match255088255089_
                                             _e244175244636_
                                             _hd244174244639_
                                             _tl244173244641_
                                             _e244178244644_
                                             _hd244177244647_
                                             _tl244176244649_
                                             _e244181244652_
                                             _hd244180244655_
                                             _tl244179244657_
                                             _e244184244660_
                                             _hd244183244663_
                                             _tl244182244665_
                                             _e244187244668_
                                             _hd244186244671_
                                             _tl244185244673_
                                             _e244190244676_
                                             _hd244189244679_
                                             _tl244188244681_
                                             _e244193244684_
                                             _hd244192244687_
                                             _tl244191244689_
                                             _e244196244692_
                                             _hd244195244695_
                                             _tl244194244697_
                                             _e244199244700_
                                             _hd244198244703_
                                             _tl244197244705_
                                             _e244202244708_
                                             _hd244201244711_
                                             _tl244200244713_))
                                        (___match255212255213_
                                         _e244175244636_
                                         _hd244174244639_
                                         _tl244173244641_
                                         _e244178244644_
                                         _hd244177244647_
                                         _tl244176244649_
                                         _e244181244652_
                                         _hd244180244655_
                                         _tl244179244657_
                                         _e244184244660_
                                         _hd244183244663_
                                         _tl244182244665_
                                         _e244187244668_
                                         _hd244186244671_
                                         _tl244185244673_
                                         _e244190244676_
                                         _hd244189244679_
                                         _tl244188244681_
                                         _e244193244684_
                                         _hd244192244687_
                                         _tl244191244689_
                                         _e244196244692_
                                         _hd244195244695_
                                         _tl244194244697_))))
                                (___match255212255213_
                                 _e244175244636_
                                 _hd244174244639_
                                 _tl244173244641_
                                 _e244178244644_
                                 _hd244177244647_
                                 _tl244176244649_
                                 _e244181244652_
                                 _hd244180244655_
                                 _tl244179244657_
                                 _e244184244660_
                                 _hd244183244663_
                                 _tl244182244665_
                                 _e244187244668_
                                 _hd244186244671_
                                 _tl244185244673_
                                 _e244190244676_
                                 _hd244189244679_
                                 _tl244188244681_
                                 _e244193244684_
                                 _hd244192244687_
                                 _tl244191244689_
                                 _e244196244692_
                                 _hd244195244695_
                                 _tl244194244697_))
                            (___match255212255213_
                             _e244175244636_
                             _hd244174244639_
                             _tl244173244641_
                             _e244178244644_
                             _hd244177244647_
                             _tl244176244649_
                             _e244181244652_
                             _hd244180244655_
                             _tl244179244657_
                             _e244184244660_
                             _hd244183244663_
                             _tl244182244665_
                             _e244187244668_
                             _hd244186244671_
                             _tl244185244673_
                             _e244190244676_
                             _hd244189244679_
                             _tl244188244681_
                             _e244193244684_
                             _hd244192244687_
                             _tl244191244689_
                             _e244196244692_
                             _hd244195244695_
                             _tl244194244697_))))
                     (___match254930254931_
                      (lambda (_e244124244757_
                               _hd244123244760_
                               _tl244122244762_
                               _e244127244765_
                               _hd244126244768_
                               _tl244125244770_
                               _e244130244773_
                               _hd244129244776_
                               _tl244128244778_
                               _e244133244781_
                               _hd244132244784_
                               _tl244131244786_
                               _e244136244789_
                               _hd244135244792_
                               _tl244134244794_
                               _e244139244797_
                               _hd244138244800_
                               _tl244137244802_
                               _e244142244805_
                               _hd244141244808_
                               _tl244140244810_
                               _e244145244813_
                               _hd244144244816_
                               _tl244143244818_
                               _e244148244821_
                               _hd244147244824_
                               _tl244146244826_
                               _e244151244829_
                               _hd244150244832_
                               _tl244149244834_
                               _e244154244837_
                               _hd244153244840_
                               _tl244152244842_
                               _e244157244845_
                               _hd244156244848_
                               _tl244155244850_
                               _e244160244853_
                               _hd244159244856_
                               _tl244158244858_
                               ___splice254723254724_
                               _target244161244861_
                               _tl244163244863_)
                        (letrec ((_loop244164244866_
                                  (lambda (_hd244162244869_ _args244168244871_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244162244869_))
                                        (let ((_e244165244874_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244162244869_))))
                                          (let ((_lp-tl244167244879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244165244874_)))
                                                (_lp-hd244166244877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244165244874_))))
                                            (let ((__tmp255661
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244166244877_
                                                           _args244168244871_))))
                                              (declare (not safe))
                                              (_loop244164244866_
                                               _lp-tl244167244879_
                                               __tmp255661))))
                                        (let ((_args244169244882_
                                               (reverse _args244168244871_)))
                                          (let ((_L244885_ _args244169244882_)
                                                (_L244886_ _hd244159244856_)
                                                (_L244887_ _hd244150244832_)
                                                (_L244888_ _hd244141244808_)
                                                (_L244889_ _hd244132244784_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244889_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244888_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L244887_
                                                        _self244056_)))
                                                (___kont254721254722_
                                                 _L244885_
                                                 _L244886_
                                                 _L244887_
                                                 _L244888_
                                                 _L244889_)
                                                (___kont254733254734_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244164244866_ _target244161244861_ '())))))
                     (___match254888254889_
                      (lambda (_e244124244757_
                               _hd244123244760_
                               _tl244122244762_
                               _e244127244765_
                               _hd244126244768_
                               _tl244125244770_
                               _e244130244773_
                               _hd244129244776_
                               _tl244128244778_
                               _e244133244781_
                               _hd244132244784_
                               _tl244131244786_
                               _e244136244789_
                               _hd244135244792_
                               _tl244134244794_
                               _e244139244797_
                               _hd244138244800_
                               _tl244137244802_
                               _e244142244805_
                               _hd244141244808_
                               _tl244140244810_
                               _e244145244813_
                               _hd244144244816_
                               _tl244143244818_
                               _e244148244821_
                               _hd244147244824_
                               _tl244146244826_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd244147244824_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244146244826_))
                                (let ((_e244151244829_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244146244826_))))
                                  (let ((_tl244149244834_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244151244829_)))
                                        (_hd244150244832_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244151244829_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244149244834_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244143244818_))
                                            (let ((_e244154244837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244143244818_))))
                                              (let ((_tl244152244842_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244154244837_)))
                                                    (_hd244153244840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244154244837_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd244153244840_))
                                                    (let ((_e244157244845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd244153244840_))))
                                                      (let ((_tl244155244850_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244157244845_)))
                    (_hd244156244848_
                     (let () (declare (not safe)) (##car _e244157244845_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd244156244848_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd244156244848_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244155244850_))
                            (let ((_e244160244853_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244155244850_))))
                              (let ((_tl244158244858_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244160244853_)))
                                    (_hd244159244856_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244160244853_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244158244858_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl244152244842_))
                                        (let ((___splice254723254724_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl244152244842_
                                                  '0))))
                                          (let ((_tl244163244863_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254723254724_
                                                    '1)))
                                                (_target244161244861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254723254724_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244163244863_))
                                                (___match254930254931_
                                                 _e244124244757_
                                                 _hd244123244760_
                                                 _tl244122244762_
                                                 _e244127244765_
                                                 _hd244126244768_
                                                 _tl244125244770_
                                                 _e244130244773_
                                                 _hd244129244776_
                                                 _tl244128244778_
                                                 _e244133244781_
                                                 _hd244132244784_
                                                 _tl244131244786_
                                                 _e244136244789_
                                                 _hd244135244792_
                                                 _tl244134244794_
                                                 _e244139244797_
                                                 _hd244138244800_
                                                 _tl244137244802_
                                                 _e244142244805_
                                                 _hd244141244808_
                                                 _tl244140244810_
                                                 _e244145244813_
                                                 _hd244144244816_
                                                 _tl244143244818_
                                                 _e244148244821_
                                                 _hd244147244824_
                                                 _tl244146244826_
                                                 _e244151244829_
                                                 _hd244150244832_
                                                 _tl244149244834_
                                                 _e244154244837_
                                                 _hd244153244840_
                                                 _tl244152244842_
                                                 _e244157244845_
                                                 _hd244156244848_
                                                 _tl244155244850_
                                                 _e244160244853_
                                                 _hd244159244856_
                                                 _tl244158244858_
                                                 ___splice254723254724_
                                                 _target244161244861_
                                                 _tl244163244863_)
                                                (___kont254733254734_))))
                                        (___kont254733254734_))
                                    (___kont254733254734_))))
                            (___kont254733254734_))
                        (___kont254733254734_))
                    (___kont254733254734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254733254734_))))
                                            (___match255212255213_
                                             _e244124244757_
                                             _hd244123244760_
                                             _tl244122244762_
                                             _e244127244765_
                                             _hd244126244768_
                                             _tl244125244770_
                                             _e244130244773_
                                             _hd244129244776_
                                             _tl244128244778_
                                             _e244133244781_
                                             _hd244132244784_
                                             _tl244131244786_
                                             _e244136244789_
                                             _hd244135244792_
                                             _tl244134244794_
                                             _e244139244797_
                                             _hd244138244800_
                                             _tl244137244802_
                                             _e244142244805_
                                             _hd244141244808_
                                             _tl244140244810_
                                             _e244145244813_
                                             _hd244144244816_
                                             _tl244143244818_))
                                        (___match255212255213_
                                         _e244124244757_
                                         _hd244123244760_
                                         _tl244122244762_
                                         _e244127244765_
                                         _hd244126244768_
                                         _tl244125244770_
                                         _e244130244773_
                                         _hd244129244776_
                                         _tl244128244778_
                                         _e244133244781_
                                         _hd244132244784_
                                         _tl244131244786_
                                         _e244136244789_
                                         _hd244135244792_
                                         _tl244134244794_
                                         _e244139244797_
                                         _hd244138244800_
                                         _tl244137244802_
                                         _e244142244805_
                                         _hd244141244808_
                                         _tl244140244810_
                                         _e244145244813_
                                         _hd244144244816_
                                         _tl244143244818_))))
                                (___match255212255213_
                                 _e244124244757_
                                 _hd244123244760_
                                 _tl244122244762_
                                 _e244127244765_
                                 _hd244126244768_
                                 _tl244125244770_
                                 _e244130244773_
                                 _hd244129244776_
                                 _tl244128244778_
                                 _e244133244781_
                                 _hd244132244784_
                                 _tl244131244786_
                                 _e244136244789_
                                 _hd244135244792_
                                 _tl244134244794_
                                 _e244139244797_
                                 _hd244138244800_
                                 _tl244137244802_
                                 _e244142244805_
                                 _hd244141244808_
                                 _tl244140244810_
                                 _e244145244813_
                                 _hd244144244816_
                                 _tl244143244818_))
                            (___match254998254999_
                             _e244124244757_
                             _hd244123244760_
                             _tl244122244762_
                             _e244127244765_
                             _hd244126244768_
                             _tl244125244770_
                             _e244130244773_
                             _hd244129244776_
                             _tl244128244778_
                             _e244133244781_
                             _hd244132244784_
                             _tl244131244786_
                             _e244136244789_
                             _hd244135244792_
                             _tl244134244794_
                             _e244139244797_
                             _hd244138244800_
                             _tl244137244802_
                             _e244142244805_
                             _hd244141244808_
                             _tl244140244810_
                             _e244145244813_
                             _hd244144244816_
                             _tl244143244818_
                             _e244148244821_
                             _hd244147244824_
                             _tl244146244826_))))
                     (___match254820254821_
                      (lambda (_e244080244949_
                               _hd244079244952_
                               _tl244078244954_
                               _e244083244957_
                               _hd244082244960_
                               _tl244081244962_
                               _e244086244965_
                               _hd244085244968_
                               _tl244084244970_
                               _e244089244973_
                               _hd244088244976_
                               _tl244087244978_
                               _e244092244981_
                               _hd244091244984_
                               _tl244090244986_
                               _e244095244989_
                               _hd244094244992_
                               _tl244093244994_
                               _e244098244997_
                               _hd244097245000_
                               _tl244096245002_
                               _e244101245005_
                               _hd244100245008_
                               _tl244099245010_
                               _e244104245013_
                               _hd244103245016_
                               _tl244102245018_
                               _e244107245021_
                               _hd244106245024_
                               _tl244105245026_
                               ___splice254719254720_
                               _target244108245029_
                               _tl244110245031_)
                        (letrec ((_loop244111245034_
                                  (lambda (_hd244109245037_ _args244115245039_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244109245037_))
                                        (let ((_e244112245042_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244109245037_))))
                                          (let ((_lp-tl244114245047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244112245042_)))
                                                (_lp-hd244113245045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244112245042_))))
                                            (let ((__tmp255662
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244113245045_
                                                           _args244115245039_))))
                                              (declare (not safe))
                                              (_loop244111245034_
                                               _lp-tl244114245047_
                                               __tmp255662))))
                                        (let ((_args244116245050_
                                               (reverse _args244115245039_)))
                                          (let ((_L245053_ _args244116245050_)
                                                (_L245054_ _hd244106245024_)
                                                (_L245055_ _hd244097245000_)
                                                (_L245056_ _hd244088244976_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245056_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245055_
                                                        _self244056_)))
                                                (___kont254717254718_
                                                 _L245053_
                                                 _L245054_
                                                 _L245055_
                                                 _L245056_)
                                                (___match255008255009_
                                                 _e244080244949_
                                                 _hd244079244952_
                                                 _tl244078244954_
                                                 _e244083244957_
                                                 _hd244082244960_
                                                 _tl244081244962_
                                                 _e244086244965_
                                                 _hd244085244968_
                                                 _tl244084244970_
                                                 _e244089244973_
                                                 _hd244088244976_
                                                 _tl244087244978_
                                                 _e244092244981_
                                                 _hd244091244984_
                                                 _tl244090244986_
                                                 _e244095244989_
                                                 _hd244094244992_
                                                 _tl244093244994_
                                                 _e244098244997_
                                                 _hd244097245000_
                                                 _tl244096245002_
                                                 _e244101245005_
                                                 _hd244100245008_
                                                 _tl244099245010_
                                                 _e244104245013_
                                                 _hd244103245016_
                                                 _tl244102245018_
                                                 _e244107245021_
                                                 _hd244106245024_
                                                 _tl244105245026_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244111245034_ _target244108245029_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254715254716_))
                    (let ((_e244080244949_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254715254716_))))
                      (let ((_tl244078244954_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244080244949_)))
                            (_hd244079244952_
                             (let ()
                               (declare (not safe))
                               (##car _e244080244949_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244078244954_))
                            (let ((_e244083244957_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244078244954_))))
                              (let ((_tl244081244962_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244083244957_)))
                                    (_hd244082244960_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244083244957_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244082244960_))
                                    (let ((_e244086244965_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244082244960_))))
                                      (let ((_tl244084244970_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244086244965_)))
                                            (_hd244085244968_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244086244965_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244085244968_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244085244968_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244084244970_))
                                                    (let ((_e244089244973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244084244970_))))
                                                      (let ((_tl244087244978_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244089244973_)))
                    (_hd244088244976_
                     (let () (declare (not safe)) (##car _e244089244973_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244087244978_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244081244962_))
                        (let ((_e244092244981_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244081244962_))))
                          (let ((_tl244090244986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244092244981_)))
                                (_hd244091244984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244092244981_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244091244984_))
                                (let ((_e244095244989_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244091244984_))))
                                  (let ((_tl244093244994_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244095244989_)))
                                        (_hd244094244992_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244095244989_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd244094244992_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd244094244992_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244093244994_))
                                                (let ((_e244098244997_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244093244994_))))
                                                  (let ((_tl244096245002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244098244997_)))
                                                        (_hd244097245000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244098244997_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244096245002_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244090244986_))
                                                            (let ((_e244101245005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244090244986_))))
                      (let ((_tl244099245010_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244101245005_)))
                            (_hd244100245008_
                             (let ()
                               (declare (not safe))
                               (##car _e244101245005_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd244100245008_))
                            (let ((_e244104245013_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd244100245008_))))
                              (let ((_tl244102245018_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244104245013_)))
                                    (_hd244103245016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244104245013_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244103245016_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd244103245016_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244102245018_))
                                            (let ((_e244107245021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244102245018_))))
                                              (let ((_tl244105245026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244107245021_)))
                                                    (_hd244106245024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244107245021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl244105245026_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl244099245010_))
                                                        (let ((___splice254719254720_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl244099245010_ '0))))
                  (let ((_tl244110245031_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254719254720_ '1)))
                        (_target244108245029_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254719254720_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244110245031_))
                        (___match254820254821_
                         _e244080244949_
                         _hd244079244952_
                         _tl244078244954_
                         _e244083244957_
                         _hd244082244960_
                         _tl244081244962_
                         _e244086244965_
                         _hd244085244968_
                         _tl244084244970_
                         _e244089244973_
                         _hd244088244976_
                         _tl244087244978_
                         _e244092244981_
                         _hd244091244984_
                         _tl244090244986_
                         _e244095244989_
                         _hd244094244992_
                         _tl244093244994_
                         _e244098244997_
                         _hd244097245000_
                         _tl244096245002_
                         _e244101245005_
                         _hd244100245008_
                         _tl244099245010_
                         _e244104245013_
                         _hd244103245016_
                         _tl244102245018_
                         _e244107245021_
                         _hd244106245024_
                         _tl244105245026_
                         ___splice254719254720_
                         _target244108245029_
                         _tl244110245031_)
                        (___match255008255009_
                         _e244080244949_
                         _hd244079244952_
                         _tl244078244954_
                         _e244083244957_
                         _hd244082244960_
                         _tl244081244962_
                         _e244086244965_
                         _hd244085244968_
                         _tl244084244970_
                         _e244089244973_
                         _hd244088244976_
                         _tl244087244978_
                         _e244092244981_
                         _hd244091244984_
                         _tl244090244986_
                         _e244095244989_
                         _hd244094244992_
                         _tl244093244994_
                         _e244098244997_
                         _hd244097245000_
                         _tl244096245002_
                         _e244101245005_
                         _hd244100245008_
                         _tl244099245010_
                         _e244104245013_
                         _hd244103245016_
                         _tl244102245018_
                         _e244107245021_
                         _hd244106245024_
                         _tl244105245026_))))
                (___match255008255009_
                 _e244080244949_
                 _hd244079244952_
                 _tl244078244954_
                 _e244083244957_
                 _hd244082244960_
                 _tl244081244962_
                 _e244086244965_
                 _hd244085244968_
                 _tl244084244970_
                 _e244089244973_
                 _hd244088244976_
                 _tl244087244978_
                 _e244092244981_
                 _hd244091244984_
                 _tl244090244986_
                 _e244095244989_
                 _hd244094244992_
                 _tl244093244994_
                 _e244098244997_
                 _hd244097245000_
                 _tl244096245002_
                 _e244101245005_
                 _hd244100245008_
                 _tl244099245010_
                 _e244104245013_
                 _hd244103245016_
                 _tl244102245018_
                 _e244107245021_
                 _hd244106245024_
                 _tl244105245026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match255212255213_
                                                     _e244080244949_
                                                     _hd244079244952_
                                                     _tl244078244954_
                                                     _e244083244957_
                                                     _hd244082244960_
                                                     _tl244081244962_
                                                     _e244086244965_
                                                     _hd244085244968_
                                                     _tl244084244970_
                                                     _e244089244973_
                                                     _hd244088244976_
                                                     _tl244087244978_
                                                     _e244092244981_
                                                     _hd244091244984_
                                                     _tl244090244986_
                                                     _e244095244989_
                                                     _hd244094244992_
                                                     _tl244093244994_
                                                     _e244098244997_
                                                     _hd244097245000_
                                                     _tl244096245002_
                                                     _e244101245005_
                                                     _hd244100245008_
                                                     _tl244099245010_))))
                                            (___match255212255213_
                                             _e244080244949_
                                             _hd244079244952_
                                             _tl244078244954_
                                             _e244083244957_
                                             _hd244082244960_
                                             _tl244081244962_
                                             _e244086244965_
                                             _hd244085244968_
                                             _tl244084244970_
                                             _e244089244973_
                                             _hd244088244976_
                                             _tl244087244978_
                                             _e244092244981_
                                             _hd244091244984_
                                             _tl244090244986_
                                             _e244095244989_
                                             _hd244094244992_
                                             _tl244093244994_
                                             _e244098244997_
                                             _hd244097245000_
                                             _tl244096245002_
                                             _e244101245005_
                                             _hd244100245008_
                                             _tl244099245010_))
                                        (___match254888254889_
                                         _e244080244949_
                                         _hd244079244952_
                                         _tl244078244954_
                                         _e244083244957_
                                         _hd244082244960_
                                         _tl244081244962_
                                         _e244086244965_
                                         _hd244085244968_
                                         _tl244084244970_
                                         _e244089244973_
                                         _hd244088244976_
                                         _tl244087244978_
                                         _e244092244981_
                                         _hd244091244984_
                                         _tl244090244986_
                                         _e244095244989_
                                         _hd244094244992_
                                         _tl244093244994_
                                         _e244098244997_
                                         _hd244097245000_
                                         _tl244096245002_
                                         _e244101245005_
                                         _hd244100245008_
                                         _tl244099245010_
                                         _e244104245013_
                                         _hd244103245016_
                                         _tl244102245018_))
                                    (___match255212255213_
                                     _e244080244949_
                                     _hd244079244952_
                                     _tl244078244954_
                                     _e244083244957_
                                     _hd244082244960_
                                     _tl244081244962_
                                     _e244086244965_
                                     _hd244085244968_
                                     _tl244084244970_
                                     _e244089244973_
                                     _hd244088244976_
                                     _tl244087244978_
                                     _e244092244981_
                                     _hd244091244984_
                                     _tl244090244986_
                                     _e244095244989_
                                     _hd244094244992_
                                     _tl244093244994_
                                     _e244098244997_
                                     _hd244097245000_
                                     _tl244096245002_
                                     _e244101245005_
                                     _hd244100245008_
                                     _tl244099245010_))))
                            (___match255212255213_
                             _e244080244949_
                             _hd244079244952_
                             _tl244078244954_
                             _e244083244957_
                             _hd244082244960_
                             _tl244081244962_
                             _e244086244965_
                             _hd244085244968_
                             _tl244084244970_
                             _e244089244973_
                             _hd244088244976_
                             _tl244087244978_
                             _e244092244981_
                             _hd244091244984_
                             _tl244090244986_
                             _e244095244989_
                             _hd244094244992_
                             _tl244093244994_
                             _e244098244997_
                             _hd244097245000_
                             _tl244096245002_
                             _e244101245005_
                             _hd244100245008_
                             _tl244099245010_))))
                    (___match255150255151_
                     _e244080244949_
                     _hd244079244952_
                     _tl244078244954_
                     _e244083244957_
                     _hd244082244960_
                     _tl244081244962_
                     _e244086244965_
                     _hd244085244968_
                     _tl244084244970_
                     _e244089244973_
                     _hd244088244976_
                     _tl244087244978_
                     _e244092244981_
                     _hd244091244984_
                     _tl244090244986_
                     _e244095244989_
                     _hd244094244992_
                     _tl244093244994_
                     _e244098244997_
                     _hd244097245000_
                     _tl244096245002_))
                (___kont254733254734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont254733254734_))
                                            (___kont254733254734_))
                                        (___kont254733254734_))))
                                (___kont254733254734_))))
                        (___kont254733254734_))
                    (___kont254733254734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254733254734_))
                                                (___kont254733254734_))
                                            (___kont254733254734_))))
                                    (___kont254733254734_))))
                            (___kont254733254734_))))
                    (___kont254733254734_))))))))))
