(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707659882)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl246616_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252212 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl246616_ __tmp252212))
           (let ()
             (declare (not safe))
             (table-set! _tbl246616_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246616_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246616_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246616_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl246616_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx246599_ . _args246601_)
        (let ((__tmp252214
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246601_)
                     (gxc#compile-e__0 _stx246599_)
                     (let ((_arg1246606_ (car _args246601_))
                           (_rest246608_ (cdr _args246601_)))
                       (if (null? _rest246608_)
                           (gxc#compile-e__1 _stx246599_ _arg1246606_)
                           (let ((_arg2246611_ (car _rest246608_))
                                 (_rest246613_ (cdr _rest246608_)))
                             (if (null? _rest246613_)
                                 (gxc#compile-e__2
                                  _stx246599_
                                  _arg1246606_
                                  _arg2246611_)
                                 (apply gxc#compile-e
                                        _stx246599_
                                        _arg1246606_
                                        _arg2246611_
                                        _rest246613_))))))))
              (__tmp252213 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252214
           gxc#current-compile-methods
           __tmp252213))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246596_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252215 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl246596_ __tmp252215))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl246596_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl246596_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl246596_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx246579_ . _args246581_)
        (let ((__tmp252217
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246581_)
                     (gxc#compile-e__0 _stx246579_)
                     (let ((_arg1246586_ (car _args246581_))
                           (_rest246588_ (cdr _args246581_)))
                       (if (null? _rest246588_)
                           (gxc#compile-e__1 _stx246579_ _arg1246586_)
                           (let ((_arg2246591_ (car _rest246588_))
                                 (_rest246593_ (cdr _rest246588_)))
                             (if (null? _rest246593_)
                                 (gxc#compile-e__2
                                  _stx246579_
                                  _arg1246586_
                                  _arg2246591_)
                                 (apply gxc#compile-e
                                        _stx246579_
                                        _arg1246586_
                                        _arg2246591_
                                        _rest246593_))))))))
              (__tmp252216 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252217
           gxc#current-compile-methods
           __tmp252216))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl246576_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252218 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl246576_ __tmp252218))
           (let ()
             (declare (not safe))
             (table-set! _tbl246576_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl246576_ '%#call gxc#subst-object-refs-call%))
           _tbl246576_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx246559_ . _args246561_)
        (let ((__tmp252220
               (lambda ()
                 (declare (not safe))
                 (if (null? _args246561_)
                     (gxc#compile-e__0 _stx246559_)
                     (let ((_arg1246566_ (car _args246561_))
                           (_rest246568_ (cdr _args246561_)))
                       (if (null? _rest246568_)
                           (gxc#compile-e__1 _stx246559_ _arg1246566_)
                           (let ((_arg2246571_ (car _rest246568_))
                                 (_rest246573_ (cdr _rest246568_)))
                             (if (null? _rest246573_)
                                 (gxc#compile-e__2
                                  _stx246559_
                                  _arg1246566_
                                  _arg2246571_)
                                 (apply gxc#compile-e
                                        _stx246559_
                                        _arg1246566_
                                        _arg2246571_
                                        _rest246573_))))))))
              (__tmp252219 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252220
           gxc#current-compile-methods
           __tmp252219))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243229_)
        (letrec ((_generate-method-bind243231_
                  (lambda (_$t246553_ _id246554_ _$id246555_)
                    (let ((_$tmp246557_
                           (let ((__tmp252221 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252221))))
                      (let ((__tmp252266
                             (let ()
                               (declare (not safe))
                               (cons _$id246555_ '())))
                            (__tmp252222
                             (let ((__tmp252223
                                    (let ((__tmp252224
                                           (let ((__tmp252264
                                                  (let ((__tmp252265
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252265)))
                                                 (__tmp252225
                                                  (let ((__tmp252226
                                                         (let ((__tmp252227
                                                                (let ((__tmp252228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252229
                                      (let ((__tmp252230
                                             (let ((__tmp252250
                                                    (let ((__tmp252251
                                                           (let ((__tmp252263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp246557_ '())))
                         (__tmp252252
                          (let ((__tmp252253
                                 (let ((__tmp252254
                                        (let ((__tmp252261
                                               (let ((__tmp252262
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252262)))
                                              (__tmp252255
                                               (let ((__tmp252259
                                                      (let ((__tmp252260
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t246553_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252260)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252256
                                                      (let ((__tmp252257
                                                             (let ((__tmp252258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id246554_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252258))))
                (declare (not safe))
                (cons __tmp252257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252259
                                                       __tmp252256))))
                                          (declare (not safe))
                                          (cons __tmp252261 __tmp252255))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252254))))
                            (declare (not safe))
                            (cons __tmp252253 '()))))
                     (declare (not safe))
                     (cons __tmp252263 __tmp252252))))
              (declare (not safe))
              (cons __tmp252251 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252231
                                                    (let ((__tmp252232
                                                           (let ((__tmp252233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252248
                                 (let ((__tmp252249
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp246557_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252249)))
                                (__tmp252234
                                 (let ((__tmp252246
                                        (let ((__tmp252247
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp246557_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252247)))
                                       (__tmp252235
                                        (let ((__tmp252236
                                               (let ((__tmp252237
                                                      (let ((__tmp252244
                                                             (let ((__tmp252245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252245)))
                    (__tmp252238
                     (let ((__tmp252242
                            (let ((__tmp252243
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252243)))
                           (__tmp252239
                            (let ((__tmp252240
                                   (let ((__tmp252241
                                          (let ()
                                            (declare (not safe))
                                            (cons _id246554_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252241))))
                              (declare (not safe))
                              (cons __tmp252240 '()))))
                       (declare (not safe))
                       (cons __tmp252242 __tmp252239))))
                (declare (not safe))
                (cons __tmp252244 __tmp252238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252237))))
                                          (declare (not safe))
                                          (cons __tmp252236 '()))))
                                   (declare (not safe))
                                   (cons __tmp252246 __tmp252235))))
                            (declare (not safe))
                            (cons __tmp252248 __tmp252234))))
                     (declare (not safe))
                     (cons '%#if __tmp252233))))
              (declare (not safe))
              (cons __tmp252232 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252250
                                                     __tmp252231))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252230))))
                                 (declare (not safe))
                                 (cons __tmp252229 '()))))
                          (declare (not safe))
                          (cons '() __tmp252228))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252226 '()))))
                                             (declare (not safe))
                                             (cons __tmp252264 __tmp252225))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252224))))
                               (declare (not safe))
                               (cons __tmp252223 '()))))
                        (declare (not safe))
                        (cons __tmp252266 __tmp252222)))))
                 (_generate-slot-bind243232_
                  (lambda (_$t246547_ _id246548_ _$id246549_)
                    (let ((_$tmp246551_
                           (let ((__tmp252267 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252267))))
                      (let ((__tmp252304
                             (let ()
                               (declare (not safe))
                               (cons _$id246549_ '())))
                            (__tmp252268
                             (let ((__tmp252269
                                    (let ((__tmp252270
                                           (let ((__tmp252290
                                                  (let ((__tmp252291
                                                         (let ((__tmp252303
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp246551_ '())))
                       (__tmp252292
                        (let ((__tmp252293
                               (let ((__tmp252294
                                      (let ((__tmp252301
                                             (let ((__tmp252302
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252302)))
                                            (__tmp252295
                                             (let ((__tmp252299
                                                    (let ((__tmp252300
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t246547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252300)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252296
                                                    (let ((__tmp252297
                                                           (let ((__tmp252298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id246548_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252298))))
              (declare (not safe))
              (cons __tmp252297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252299
                                                     __tmp252296))))
                                        (declare (not safe))
                                        (cons __tmp252301 __tmp252295))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252294))))
                          (declare (not safe))
                          (cons __tmp252293 '()))))
                   (declare (not safe))
                   (cons __tmp252303 __tmp252292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252291 '())))
                                                 (__tmp252271
                                                  (let ((__tmp252272
                                                         (let ((__tmp252273
                                                                (let ((__tmp252288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252289
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp246551_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252289)))
                              (__tmp252274
                               (let ((__tmp252286
                                      (let ((__tmp252287
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp246551_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252287)))
                                     (__tmp252275
                                      (let ((__tmp252276
                                             (let ((__tmp252277
                                                    (let ((__tmp252284
                                                           (let ((__tmp252285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252285)))
                  (__tmp252278
                   (let ((__tmp252282
                          (let ((__tmp252283
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252283)))
                         (__tmp252279
                          (let ((__tmp252280
                                 (let ((__tmp252281
                                        (let ()
                                          (declare (not safe))
                                          (cons _id246548_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252281))))
                            (declare (not safe))
                            (cons __tmp252280 '()))))
                     (declare (not safe))
                     (cons __tmp252282 __tmp252279))))
              (declare (not safe))
              (cons __tmp252284 __tmp252278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252277))))
                                        (declare (not safe))
                                        (cons __tmp252276 '()))))
                                 (declare (not safe))
                                 (cons __tmp252286 __tmp252275))))
                          (declare (not safe))
                          (cons __tmp252288 __tmp252274))))
                   (declare (not safe))
                   (cons '%#if __tmp252273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252272 '()))))
                                             (declare (not safe))
                                             (cons __tmp252290 __tmp252271))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252270))))
                               (declare (not safe))
                               (cons __tmp252269 '()))))
                        (declare (not safe))
                        (cons __tmp252304 __tmp252268)))))
                 (_generate-class-check-bind243233_
                  (lambda (_$t246543_ _class-type246544_ _$class-type246545_)
                    (let ((__tmp252316
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246545_ '())))
                          (__tmp252305
                           (let ((__tmp252306
                                  (let ((__tmp252307
                                         (let ((__tmp252314
                                                (let ((__tmp252315
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252315)))
                                               (__tmp252308
                                                (let ((__tmp252312
                                                       (let ((__tmp252313
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246543_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252313)))
              (__tmp252309
               (let ((__tmp252310
                      (let ((__tmp252311
                             (let ()
                               (declare (not safe))
                               (cons _class-type246544_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252311))))
                 (declare (not safe))
                 (cons __tmp252310 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252312
                                                        __tmp252309))))
                                           (declare (not safe))
                                           (cons __tmp252314 __tmp252308))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252307))))
                             (declare (not safe))
                             (cons __tmp252306 '()))))
                      (declare (not safe))
                      (cons __tmp252316 __tmp252305))))
                 (_generate-struct-check-bind243234_
                  (lambda (_$t246539_ _class-type246540_ _$class-type246541_)
                    (let ((__tmp252328
                           (let ()
                             (declare (not safe))
                             (cons _$class-type246541_ '())))
                          (__tmp252317
                           (let ((__tmp252318
                                  (let ((__tmp252319
                                         (let ((__tmp252326
                                                (let ((__tmp252327
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252327)))
                                               (__tmp252320
                                                (let ((__tmp252324
                                                       (let ((__tmp252325
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t246539_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252325)))
              (__tmp252321
               (let ((__tmp252322
                      (let ((__tmp252323
                             (let ()
                               (declare (not safe))
                               (cons _class-type246540_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252323))))
                 (declare (not safe))
                 (cons __tmp252322 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252324
                                                        __tmp252321))))
                                           (declare (not safe))
                                           (cons __tmp252326 __tmp252320))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252319))))
                             (declare (not safe))
                             (cons __tmp252318 '()))))
                      (declare (not safe))
                      (cons __tmp252328 __tmp252317))))
                 (_generate-specializer-impl243235_
                  (lambda (_$t246488_
                           _methods-bind246489_
                           _slots-bind246490_
                           _class-check-bind246491_
                           _struct-check-bind246492_
                           _specializer-impl246493_
                           _lifted-specializer-id246494_
                           _unchecked-specializer-impl246495_)
                    (let ((__tmp252329
                           (let ((__tmp252330
                                  (let ((__tmp252356
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t246488_ '())))
                                        (__tmp252331
                                         (let ((__tmp252332
                                                (let ((__tmp252333
                                                       (let ((__tmp252353
                                                              (let ((__tmp252354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252355
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind246492_
                                              _class-check-bind246491_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252355 _slots-bind246490_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252354 _methods-bind246489_)))
                     (__tmp252334
                      (let ((__tmp252335
                             (if (or _lifted-specializer-id246494_
                                     _unchecked-specializer-impl246495_)
                                 (let* ((_$specializer246500_
                                         (let ((__tmp252336
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252336)))
                                        (__tmp252337
                                         (let ((__tmp252349
                                                (let ((__tmp252350
                                                       (let ((__tmp252352
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246500_ '())))
                     (__tmp252351
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl246493_ '()))))
                 (declare (not safe))
                 (cons __tmp252352 __tmp252351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252350 '())))
                                               (__tmp252338
                                                (let ((__tmp252339
                                                       (let _recur246502_ ((_rest246504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind246492_)))
                 (let* ((_rest246505246513_ _rest246504_)
                        (_else246507246521_
                         (lambda ()
                           (if _lifted-specializer-id246494_
                               (let ((__tmp252340
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id246494_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252340))
                               _unchecked-specializer-impl246495_)))
                        (_K246509246527_
                         (lambda (_rest246524_ _checkq246525_)
                           (let ((__tmp252341
                                  (let ((__tmp252347
                                         (let ((__tmp252348
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq246525_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252348)))
                                        (__tmp252342
                                         (let ((__tmp252346
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur246502_
                                                   _rest246524_)))
                                               (__tmp252343
                                                (let ((__tmp252344
                                                       (let ((__tmp252345
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246500_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252344 '()))))
                                           (declare (not safe))
                                           (cons __tmp252346 __tmp252343))))
                                    (declare (not safe))
                                    (cons __tmp252347 __tmp252342))))
                             (declare (not safe))
                             (cons '%#if __tmp252341)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest246505246513_))
                       (let ((_hd246510246530_
                              (let ()
                                (declare (not safe))
                                (##car _rest246505246513_)))
                             (_tl246511246532_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest246505246513_))))
                         (let* ((_checkq246535_ _hd246510246530_)
                                (_rest246537_ _tl246511246532_))
                           (declare (not safe))
                           (_K246509246527_ _rest246537_ _checkq246535_)))
                       (let () (declare (not safe)) (_else246507246521_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252339 '()))))
                                           (declare (not safe))
                                           (cons __tmp252349 __tmp252338))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252337))
                                 _specializer-impl246493_)))
                        (declare (not safe))
                        (cons __tmp252335 '()))))
                 (declare (not safe))
                 (cons __tmp252353 __tmp252334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252333))))
                                           (declare (not safe))
                                           (cons __tmp252332 '()))))
                                    (declare (not safe))
                                    (cons __tmp252356 __tmp252331))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252330))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252329 _stx243229_))))
                 (_generate-specializer-def243236_
                  (lambda (_id246482_
                           _specializer-id246483_
                           _specializer-impl246484_
                           _lifted-specializer-id246485_
                           _unchecked-specializer-impl246486_)
                    (let ((__tmp252357
                           (let ((__tmp252358
                                  (let ((__tmp252359
                                         (let ((__tmp252379
                                                (let ((__tmp252380
                                                       (let ((__tmp252381
                                                              (let ((__tmp252383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id246483_ '())))
                            (__tmp252382
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl246484_ '()))))
                        (declare (not safe))
                        (cons __tmp252383 __tmp252382))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252380
                                                   _stx243229_)))
                                               (__tmp252360
                                                (let ((__tmp252367
                                                       (let ((__tmp252368
                                                              (let ((__tmp252369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252370
                                    (let ((__tmp252377
                                           (let ((__tmp252378
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252378)))
                                          (__tmp252371
                                           (let ((__tmp252375
                                                  (let ((__tmp252376
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id246482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252376)))
                                                 (__tmp252372
                                                  (let ((__tmp252373
                                                         (let ((__tmp252374
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id246483_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252373 '()))))
                                             (declare (not safe))
                                             (cons __tmp252375 __tmp252372))))
                                      (declare (not safe))
                                      (cons __tmp252377 __tmp252371))))
                               (declare (not safe))
                               (cons '%#call __tmp252370))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252369 _stx243229_))))
                 (declare (not safe))
                 (cons __tmp252368 '())))
              (__tmp252361
               (if _lifted-specializer-id246485_
                   (let ((__tmp252362
                          (let ((__tmp252363
                                 (let ((__tmp252364
                                        (let ((__tmp252366
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id246485_
                                                       '())))
                                              (__tmp252365
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl246486_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252366 __tmp252365))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252364))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252363 _stx243229_))))
                     (declare (not safe))
                     (cons __tmp252362 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252367
                                                          __tmp252361))))
                                           (declare (not safe))
                                           (cons __tmp252379 __tmp252360))))
                                    (declare (not safe))
                                    (cons _stx243229_ __tmp252359))))
                             (declare (not safe))
                             (cons '%#begin __tmp252358))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252357 _stx243229_)))))
          (let* ((___stx251173251174_ _stx243229_)
                 (_g243239243259_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251173251174_)))))
            (let ((___kont251175251176_
                   (lambda (_L243303_ _L243304_)
                     (let ((_method-calls243323_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243324_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243325_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243326_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243327_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243328_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243330_
                                 (lambda ()
                                   (if (let ((__tmp252388
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243323_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252388))
                                       (if (let ((__tmp252387
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243324_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252387))
                                           (if (let ((__tmp252386
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243325_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252386))
                                               (if (let ((__tmp252385
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243326_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252385))
                                                   (let ((__tmp252384
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243327_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252384))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243331_
                                 (lambda ()
                                   (let ((_$e246475_
                                          (let ((__tmp252389
                                                 (let ((__tmp252390
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243326_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252390))))
                                            (declare (not safe))
                                            (not __tmp252389))))
                                     (if _$e246475_
                                         _$e246475_
                                         (let ((__tmp252391
                                                (let ((__tmp252392
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243327_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252392))))
                                           (declare (not safe))
                                           (not __tmp252391))))))
                                (_lift-unchecked-specializer?243332_
                                 (lambda ()
                                   (if (let ((__tmp252395
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243323_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252395))
                                       (if (let ((__tmp252394
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243324_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252394))
                                           (let ((__tmp252393
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243325_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252393))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243303_))
                             (let* ((___stx251087251088_ _L243303_)
                                    (_g243845243863_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251087251088_)))))
                               (let ((___kont251089251090_
                                      (lambda (_L243899_ _L243900_ _L243901_)
                                        (for-each
                                         (lambda (_g243916243918_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g243916243918_
                                              _L243901_
                                              _method-calls243323_
                                              _slot-refs243324_
                                              _class-type-check243325_
                                              _struct-type-check243326_
                                              _struct-type-assert243327_)))
                                         _L243899_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243330_))
                                            _stx243229_
                                            (let* ((_specializer-id243927_
                                                    (let* ((_id243921_
                                                            (let ((__tmp252545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243304_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp252545 '"::specialize")))
                   (_specializer-id243924_
                    (let ((__tmp252546
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243229_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id243921_ __tmp252546))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id243924_))
              _specializer-id243924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id243934_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243332_))
                                                        (let* ((_id243929_
                                                                (let ((__tmp252547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243304_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp252547
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id243931_
                        (let ((__tmp252548
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243229_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id243929_ __tmp252548))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id243931_))
                  _lifted-specializer-id243931_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t243936_
                                                    (let ((__tmp252549
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252549)))
                                                   (_methods243938_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243323_)))
                                                   (_$methods243942_
                                                    (map (lambda (_id243940_)
                                                           (let ((__tmp252550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id243940_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252550)))
                 _methods243938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252551_
                                                    (for-each
                                                     (lambda (_g243943243946_
                                                              _g243944243948_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243323_
                                                          _g243943243946_
                                                          _g243944243948_)))
                                                     _methods243938_
                                                     _$methods243942_))
                                                   (_methods-bind243959_
                                                    (map (lambda (_g243951243954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243952243956_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243231_
                      _$t243936_
                      _g243951243954_
                      _g243952243956_)))
                 _methods243938_
                 _$methods243942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots243961_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243324_)))
                                                   (_$slots243965_
                                                    (map (lambda (_id243963_)
                                                           (let ((__tmp252552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id243963_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252552)))
                 _slots243961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252553_
                                                    (for-each
                                                     (lambda (_g243966243969_
                                                              _g243967243971_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243324_
                                                          _g243966243969_
                                                          _g243967243971_)))
                                                     _slots243961_
                                                     _$slots243965_))
                                                   (_slots-bind243982_
                                                    (map (lambda (_g243974243977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243975243979_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243232_
                      _$t243936_
                      _g243974243977_
                      _g243975243979_)))
                 _slots243961_
                 _$slots243965_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check243984_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243325_)))
                                                   (_$class-check243987_
                                                    (map (lambda (_g252554_)
                                                           (let ((__tmp252555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252555)))
                 _class-check243984_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252556_
                                                    (for-each
                                                     (lambda (_g243988243991_
                                                              _g243989243993_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243325_
                                                          _g243988243991_
                                                          _g243989243993_)))
                                                     _class-check243984_
                                                     _$class-check243987_))
                                                   (_class-check-bind244004_
                                                    (map (lambda (_g243996243999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243997244001_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243233_
                      _$t243936_
                      _g243996243999_
                      _g243997244001_)))
                 _class-check243984_
                 _$class-check243987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243326_
                                                       _struct-type-assert243327_)))
                                                   (_struct-check244008_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244006_)))
                                                   (_$struct-check244011_
                                                    (map (lambda (_g252557_)
                                                           (let ((__tmp252558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252558)))
                 _struct-check244008_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252559_
                                                    (for-each
                                                     (lambda (_g244012244015_
                                                              _g244013244017_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244006_
                                                          _g244012244015_
                                                          _g244013244017_)))
                                                     _struct-check244008_
                                                     _$struct-check244011_))
                                                   (_struct-check-bind244028_
                                                    (map (lambda (_g244020244023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244021244025_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243234_
                      _$t243936_
                      _g244020244023_
                      _g244021244025_)))
                 _struct-check244008_
                 _$struct-check244011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244039_
                                                    (lambda (_struct-type-check1244030_
                                                             _struct-type-check2244031_)
                                                      (let* ((_specializer-body244037_
                                                              (map (lambda (_g244032244034_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244032244034_
                                _L243901_
                                _$t243936_
                                _method-calls243323_
                                _slot-refs243324_
                                _class-type-check243325_
                                _struct-type-check1244030_
                                _struct-type-check2244031_)))
                           _L243899_))
                     (__tmp252560
                      (let ((__tmp252561
                             (let ((__tmp252562
                                    (let ()
                                      (declare (not safe))
                                      (cons _L243901_ _L243900_))))
                               (declare (not safe))
                               (cons __tmp252562 _specializer-body244037_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp252561))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp252560 _stx243229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244041_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244039_
                                                       _struct-check-all244006_
                                                       _empty243328_)))
                                                   (_unchecked-specializer-impl244043_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243331_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244039_
                                                           _empty243328_
                                                           _struct-check-all244006_))
                                                        '#f))
                                                   (_specializer-impl244045_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243235_
                                                       _$t243936_
                                                       _methods-bind243959_
                                                       _slots-bind243982_
                                                       _class-check-bind244004_
                                                       _struct-check-bind244028_
                                                       _specializer-impl244041_
                                                       _lifted-specializer-id243934_
                                                       _unchecked-specializer-impl244043_))))
                                              (let ((__tmp252564
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243304_)))
                                                    (__tmp252563
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id243927_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp252564
                                                 '" => "
                                                 __tmp252563))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243236_
                                                 _L243304_
                                                 _specializer-id243927_
                                                 _specializer-impl244045_
                                                 _lifted-specializer-id243934_
                                                 _unchecked-specializer-impl244043_))))))
                                     (___kont251091251092_
                                      (lambda () _stx243229_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251087251088_))
                                     (let ((_e243852243875_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251087251088_))))
                                       (let ((_tl243850243880_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e243852243875_)))
                                             (_hd243851243878_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e243852243875_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl243850243880_))
                                             (let ((_e243855243883_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl243850243880_))))
                                               (let ((_tl243853243888_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e243855243883_)))
                                                     (_hd243854243886_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e243855243883_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd243854243886_))
                                                     (let ((_e243858243891_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd243854243886_))))
                                                       (let ((_tl243856243896_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e243858243891_)))
                     (_hd243857243894_
                      (let () (declare (not safe)) (##car _e243858243891_))))
                 (___kont251089251090_
                  _tl243853243888_
                  _tl243856243896_
                  _hd243857243894_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251091251092_))))
                                             (___kont251091251092_))))
                                     (___kont251091251092_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243303_))
                                 (let* ((_g244051244070_
                                         (lambda (_g244052244067_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244052244067_))))
                                        (_g244050244421_
                                         (lambda (_g244052244073_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244052244073_))
                                               (let ((_e244056244075_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244052244073_))))
                                                 (let ((_hd244055244078_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244056244075_)))
                                                       (_tl244054244080_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244056244075_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244054244080_))
                                                       (let ((_g252521_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244054244080_ '0))))
                 (begin
                   (let ((_g252522_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252521_)
                                (##vector-length _g252521_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252522_ 2)))
                         (error "Context expects 2 values" _g252522_)))
                   (let ((_target244057244083_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252521_ 0)))
                         (_tl244059244085_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252521_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244059244085_))
                         (letrec ((_loop244060244088_
                                   (lambda (_hd244058244091_
                                            _clause244064244093_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244058244091_))
                                         (let ((_e244061244096_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244058244091_))))
                                           (let ((_lp-hd244062244099_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244061244096_)))
                                                 (_lp-tl244063244101_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244061244096_))))
                                             (let ((__tmp252544
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244062244099_
                                                            _clause244064244093_))))
                                               (declare (not safe))
                                               (_loop244060244088_
                                                _lp-tl244063244101_
                                                __tmp252544))))
                                         (let ((_clause244065244104_
                                                (reverse _clause244064244093_)))
                                           ((lambda (_L244107_)
                                              (for-each
                                               (lambda (_clause244120_)
                                                 (let* ((___stx251113251114_
                                                         _clause244120_)
                                                        (_g244123244138_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251113251114_)))))
                                                   (let ((___kont251115251116_
                                                          (lambda (_L244166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244167_
                           _L244168_)
                    (for-each
                     (lambda (_g244183244185_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244183244185_
                          _L244168_
                          _method-calls243323_
                          _slot-refs243324_
                          _class-type-check243325_
                          _struct-type-check243326_
                          _struct-type-assert243327_)))
                     _L244166_)))
                 (___kont251117251118_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251113251114_))
                                                         (let ((_e244130244150_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251113251114_))))
                   (let ((_tl244128244155_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244130244150_)))
                         (_hd244129244153_
                          (let ()
                            (declare (not safe))
                            (##car _e244130244150_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244129244153_))
                         (let ((_e244133244158_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244129244153_))))
                           (let ((_tl244131244163_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244133244158_)))
                                 (_hd244132244161_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244133244158_))))
                             (___kont251115251116_
                              _tl244128244155_
                              _tl244131244163_
                              _hd244132244161_)))
                         (___kont251117251118_))))
                 (___kont251117251118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp252523
                                                      (lambda (_g244190244193_
                                                               _g244191244195_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244190244193_
                                                                _g244191244195_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252523
                                                         '()
                                                         _L244107_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243330_))
                                                  _stx243229_
                                                  (let* ((_specializer-id244204_
                                                          (let* ((_id244198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252524
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243304_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252524 '"::specialize")))
                         (_specializer-id244201_
                          (let ((__tmp252525
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243229_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244198_ __tmp252525))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244201_))
                    _specializer-id244201_))
                 (_lifted-specializer-id244211_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243332_))
                      (let* ((_id244206_
                              (let ((__tmp252526
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243304_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252526
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244208_
                              (let ((__tmp252527
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243229_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244206_
                                 __tmp252527))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244208_))
                        _lifted-specializer-id244208_)
                      '#f))
                 (_$t244213_
                  (let ((__tmp252528 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252528)))
                 (_methods244215_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243323_)))
                 (_$methods244219_
                  (map (lambda (_id244217_)
                         (let ((__tmp252529 (gensym _id244217_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252529)))
                       _methods244215_))
                 (_g252530_
                  (for-each
                   (lambda (_g244220244223_ _g244221244225_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243323_
                        _g244220244223_
                        _g244221244225_)))
                   _methods244215_
                   _$methods244219_))
                 (_methods-bind244236_
                  (map (lambda (_g244228244231_ _g244229244233_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243231_
                            _$t244213_
                            _g244228244231_
                            _g244229244233_)))
                       _methods244215_
                       _$methods244219_))
                 (_slots244238_
                  (let () (declare (not safe)) (hash-keys _slot-refs243324_)))
                 (_$slots244242_
                  (map (lambda (_id244240_)
                         (let ((__tmp252531 (gensym _id244240_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252531)))
                       _slots244238_))
                 (_g252532_
                  (for-each
                   (lambda (_g244243244246_ _g244244244248_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243324_
                        _g244243244246_
                        _g244244244248_)))
                   _slots244238_
                   _$slots244242_))
                 (_slots-bind244259_
                  (map (lambda (_g244251244254_ _g244252244256_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243232_
                            _$t244213_
                            _g244251244254_
                            _g244252244256_)))
                       _slots244238_
                       _$slots244242_))
                 (_class-check244261_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243325_)))
                 (_$class-check244264_
                  (map (lambda (_g252533_)
                         (let ((__tmp252534 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252534)))
                       _class-check244261_))
                 (_g252535_
                  (for-each
                   (lambda (_g244265244268_ _g244266244270_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243325_
                        _g244265244268_
                        _g244266244270_)))
                   _class-check244261_
                   _$class-check244264_))
                 (_class-check-bind244281_
                  (map (lambda (_g244273244276_ _g244274244278_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243233_
                            _$t244213_
                            _g244273244276_
                            _g244274244278_)))
                       _class-check244261_
                       _$class-check244264_))
                 (_struct-check-all244283_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243326_
                     _struct-type-assert243327_)))
                 (_struct-check244285_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244283_)))
                 (_$struct-check244288_
                  (map (lambda (_g252536_)
                         (let ((__tmp252537 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252537)))
                       _struct-check244285_))
                 (_g252538_
                  (for-each
                   (lambda (_g244289244292_ _g244290244294_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244283_
                        _g244289244292_
                        _g244290244294_)))
                   _struct-check244285_
                   _$struct-check244288_))
                 (_struct-check-bind244305_
                  (map (lambda (_g244297244300_ _g244298244302_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243234_
                            _$t244213_
                            _g244297244300_
                            _g244298244302_)))
                       _struct-check244285_
                       _$struct-check244288_))
                 (_make-specializer-impl244412_
                  (lambda (_struct-type-check1244307_
                           _struct-type-check2244308_)
                    (let* ((_specializer-clauses244410_
                            (map (lambda (_clause244310_)
                                   (let* ((___stx251133251134_ _clause244310_)
                                          (_g244313244328_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251133251134_)))))
                                     (let ((___kont251135251136_
                                            (lambda (_L244356_
                                                     _L244357_
                                                     _L244358_)
                                              (let* ((_body244398_
                                                      (map (lambda (_g244393244395_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244393244395_
                        _L244358_
                        _$t244213_
                        _method-calls243323_
                        _slot-refs243324_
                        _class-type-check243325_
                        _struct-type-check1244307_
                        _struct-type-check2244308_)))
                   _L244356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252539
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244358_
                                                              _L244357_))))
                                                (declare (not safe))
                                                (cons __tmp252539
                                                      _body244398_))))
                                           (___kont251137251138_
                                            (lambda () _clause244310_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251133251134_))
                                           (let ((_e244320244340_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251133251134_))))
                                             (let ((_tl244318244345_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244320244340_)))
                                                   (_hd244319244343_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244320244340_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244319244343_))
                                                   (let ((_e244323244348_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244319244343_))))
                                                     (let ((_tl244321244353_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244323244348_)))
                                                           (_hd244322244351_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244323244348_))))
                                                       (___kont251135251136_
                                                        _tl244318244345_
                                                        _tl244321244353_
                                                        _hd244322244351_)))
                                                   (___kont251137251138_))))
                                           (___kont251137251138_)))))
                                 (let ((__tmp252540
                                        (lambda (_g244402244405_
                                                 _g244403244407_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244402244405_
                                                  _g244403244407_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252540 '() _L244107_))))
                           (__tmp252541
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244410_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252541 _stx243229_))))
                 (_specializer-impl244414_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244412_
                     _struct-check-all244283_
                     _empty243328_)))
                 (_unchecked-specializer-impl244416_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244412_
                         _empty243328_
                         _struct-check-all244283_))
                      '#f))
                 (_specializer-impl244418_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243235_
                     _$t244213_
                     _methods-bind244236_
                     _slots-bind244259_
                     _class-check-bind244281_
                     _struct-check-bind244305_
                     _specializer-impl244414_
                     _lifted-specializer-id244211_
                     _unchecked-specializer-impl244416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252543
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243304_)))
                                                          (__tmp252542
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244204_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252543
                                                       '" => "
                                                       __tmp252542))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243236_
                                                       _L243304_
                                                       _specializer-id244204_
                                                       _specializer-impl244418_
                                                       _lifted-specializer-id244211_
                                                       _unchecked-specializer-impl244416_)))))
                                            _clause244065244104_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244060244088_ _target244057244083_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244051244070_ _g244052244073_))))))
               (let ()
                 (declare (not safe))
                 (_g244051244070_ _g244052244073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244051244070_
                                                  _g244052244073_))))))
                                   (declare (not safe))
                                   (_g244050244421_ _L243303_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243303_))
                                     (let* ((_g244424244454_
                                             (lambda (_g244425244451_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244425244451_))))
                                            (_g244423245142_
                                             (lambda (_g244425244457_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244425244457_))
                                                   (let ((_e244431244459_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244425244457_))))
                                                     (let ((_hd244430244462_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244431244459_)))
                                                           (_tl244429244464_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244431244459_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244429244464_))
                                                           (let ((_e244434244467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244429244464_))))
                     (let ((_hd244433244470_
                            (let ()
                              (declare (not safe))
                              (##car _e244434244467_)))
                           (_tl244432244472_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244434244467_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244433244470_))
                           (let ((_e244437244475_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244433244470_))))
                             (let ((_hd244436244478_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244437244475_)))
                                   (_tl244435244480_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244437244475_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244436244478_))
                                   (let ((_e244440244483_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244436244478_))))
                                     (let ((_hd244439244486_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244440244483_)))
                                           (_tl244438244488_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244440244483_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244439244486_))
                                           (let ((_e244443244491_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244439244486_))))
                                             (let ((_hd244442244494_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244443244491_)))
                                                   (_tl244441244496_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244443244491_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244441244496_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244438244488_))
                                                       (let ((_e244446244499_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244438244488_))))
                 (let ((_hd244445244502_
                        (let () (declare (not safe)) (##car _e244446244499_)))
                       (_tl244444244504_
                        (let () (declare (not safe)) (##cdr _e244446244499_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244444244504_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244435244480_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244432244472_))
                               (let ((_e244449244507_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244432244472_))))
                                 (let ((_hd244448244510_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244449244507_)))
                                       (_tl244447244512_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244449244507_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244447244512_))
                                       ((lambda (_L244515_ _L244516_ _L244517_)
                                          (let* ((_g244540244558_
                                                  (lambda (_g244541244555_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244541244555_))))
                                                 (_g244539244609_
                                                  (lambda (_g244541244561_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244541244561_))
                                                        (let ((_e244547244563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244541244561_))))
                  (let ((_hd244546244566_
                         (let () (declare (not safe)) (##car _e244547244563_)))
                        (_tl244545244568_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244547244563_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244545244568_))
                        (let ((_e244550244571_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244545244568_))))
                          (let ((_hd244549244574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244550244571_)))
                                (_tl244548244576_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244550244571_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244549244574_))
                                (let ((_e244553244579_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244549244574_))))
                                  (let ((_hd244552244582_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244553244579_)))
                                        (_tl244551244584_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244553244579_))))
                                    ((lambda (_L244587_ _L244588_ _L244589_)
                                       (for-each
                                        (lambda (_g244604244606_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g244604244606_
                                             _L244589_
                                             _method-calls243323_
                                             _slot-refs243324_
                                             _class-type-check243325_
                                             _struct-type-check243326_
                                             _struct-type-assert243327_)))
                                        _L244587_))
                                     _tl244548244576_
                                     _tl244551244584_
                                     _hd244552244582_)))
                                (let ()
                                  (declare (not safe))
                                  (_g244540244558_ _g244541244561_)))))
                        (let ()
                          (declare (not safe))
                          (_g244540244558_ _g244541244561_)))))
                (let ()
                  (declare (not safe))
                  (_g244540244558_ _g244541244561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244539244609_ _L244516_))
                                          (let* ((_g244612244631_
                                                  (lambda (_g244613244628_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g244613244628_))))
                                                 (_g244611244750_
                                                  (lambda (_g244613244634_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g244613244634_))
                                                        (let ((_e244617244636_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g244613244634_))))
                  (let ((_hd244616244639_
                         (let () (declare (not safe)) (##car _e244617244636_)))
                        (_tl244615244641_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244617244636_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl244615244641_))
                        (let ((_g252484_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl244615244641_
                                  '0))))
                          (begin
                            (let ((_g252485_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g252484_)
                                         (##vector-length _g252484_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g252485_ 2)))
                                  (error "Context expects 2 values"
                                         _g252485_)))
                            (let ((_target244618244644_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252484_ 0)))
                                  (_tl244620244646_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252484_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244620244646_))
                                  (letrec ((_loop244621244649_
                                            (lambda (_hd244619244652_
                                                     _clause244625244654_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd244619244652_))
                                                  (let ((_e244622244657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd244619244652_))))
                                                    (let ((_lp-hd244623244660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244622244657_)))
                                                          (_lp-tl244624244662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244622244657_))))
                                                      (let ((__tmp252487
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd244623244660_ _clause244625244654_))))
                (declare (not safe))
                (_loop244621244649_ _lp-tl244624244662_ __tmp252487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause244626244665_
                                                         (reverse _clause244625244654_)))
                                                    ((lambda (_L244668_)
                                                       (for-each
                                                        (lambda (_clause244681_)
                                                          (let* ((_g244683244698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g244684244695_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g244684244695_))))
                         (_g244682244740_
                          (lambda (_g244684244701_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g244684244701_))
                                (let ((_e244690244703_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g244684244701_))))
                                  (let ((_hd244689244706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244690244703_)))
                                        (_tl244688244708_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244690244703_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244689244706_))
                                        (let ((_e244693244711_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244689244706_))))
                                          (let ((_hd244692244714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244693244711_)))
                                                (_tl244691244716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244693244711_))))
                                            ((lambda (_L244719_
                                                      _L244720_
                                                      _L244721_)
                                               (for-each
                                                (lambda (_g244735244737_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g244735244737_
                                                     _L244721_
                                                     _method-calls243323_
                                                     _slot-refs243324_
                                                     _class-type-check243325_
                                                     _struct-type-check243326_
                                                     _struct-type-assert243327_)))
                                                _L244719_))
                                             _tl244688244708_
                                             _tl244691244716_
                                             _hd244692244714_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g244683244698_ _g244684244701_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244683244698_ _g244684244701_))))))
                    (declare (not safe))
                    (_g244682244740_ _clause244681_)))
                (let ((__tmp252486
                       (lambda (_g244742244745_ _g244743244747_)
                         (let ()
                           (declare (not safe))
                           (cons _g244742244745_ _g244743244747_)))))
                  (declare (not safe))
                  (foldr1 __tmp252486 '() _L244668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause244626244665_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop244621244649_
                                       _target244618244644_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g244612244631_ _g244613244634_))))))
                        (let ()
                          (declare (not safe))
                          (_g244612244631_ _g244613244634_)))))
                (let ()
                  (declare (not safe))
                  (_g244612244631_ _g244613244634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g244611244750_ _L244515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243330_))
                                              _stx243229_
                                              (let* ((_specializer-id244759_
                                                      (let* ((_id244753_
                                                              (let ((__tmp252488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243304_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp252488 '"::specialize")))
                     (_specializer-id244756_
                      (let ((__tmp252489
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243229_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id244753_ __tmp252489))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id244756_))
                _specializer-id244756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id244766_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243332_))
                                                          (let* ((_id244761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252490
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243304_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp252490
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id244763_
                          (let ((__tmp252491
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243229_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244761_ __tmp252491))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id244763_))
                    _lifted-specializer-id244763_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t244768_
                                                      (let ((__tmp252492
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp252492)))
                                                     (_methods244770_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243323_)))
                                                     (_$methods244774_
                                                      (map (lambda (_id244772_)
                                                             (let ((__tmp252493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id244772_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252493)))
                   _methods244770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252494_
                                                      (for-each
                                                       (lambda (_g244775244778_
                                                                _g244776244780_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243323_
                                                            _g244775244778_
                                                            _g244776244780_)))
                                                       _methods244770_
                                                       _$methods244774_))
                                                     (_methods-bind244791_
                                                      (map (lambda (_g244783244786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244784244788_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243231_
                        _$t244768_
                        _g244783244786_
                        _g244784244788_)))
                   _methods244770_
                   _$methods244774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots244793_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243324_)))
                                                     (_$slots244797_
                                                      (map (lambda (_id244795_)
                                                             (let ((__tmp252495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id244795_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252495)))
                   _slots244793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252496_
                                                      (for-each
                                                       (lambda (_g244798244801_
                                                                _g244799244803_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243324_
                                                            _g244798244801_
                                                            _g244799244803_)))
                                                       _slots244793_
                                                       _$slots244797_))
                                                     (_slots-bind244814_
                                                      (map (lambda (_g244806244809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244807244811_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243232_
                        _$t244768_
                        _g244806244809_
                        _g244807244811_)))
                   _slots244793_
                   _$slots244797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check244816_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243325_)))
                                                     (_$class-check244819_
                                                      (map (lambda (_g252497_)
                                                             (let ((__tmp252498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252498)))
                   _class-check244816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252499_
                                                      (for-each
                                                       (lambda (_g244820244823_
                                                                _g244821244825_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243325_
                                                            _g244820244823_
                                                            _g244821244825_)))
                                                       _class-check244816_
                                                       _$class-check244819_))
                                                     (_class-check-bind244836_
                                                      (map (lambda (_g244828244831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244829244833_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243233_
                        _$t244768_
                        _g244828244831_
                        _g244829244833_)))
                   _class-check244816_
                   _$class-check244819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all244838_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243326_
                                                         _struct-type-assert243327_)))
                                                     (_struct-check244840_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all244838_)))
                                                     (_$struct-check244843_
                                                      (map (lambda (_g252500_)
                                                             (let ((__tmp252501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252501)))
                   _struct-check244840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252502_
                                                      (for-each
                                                       (lambda (_g244844244847_
                                                                _g244845244849_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all244838_
                                                            _g244844244847_
                                                            _g244845244849_)))
                                                       _struct-check244840_
                                                       _$struct-check244843_))
                                                     (_struct-check-bind244860_
                                                      (map (lambda (_g244852244855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g244853244857_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243234_
                        _$t244768_
                        _g244852244855_
                        _g244853244857_)))
                   _struct-check244840_
                   _$struct-check244843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr244959_
                                                      (lambda (_struct-type-check1244862_
                                                               _struct-type-check2244863_)
                                                        (let* ((_g244865244883_
                                                                (lambda (_g244866244880_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g244866244880_))))
                       (_g244864244956_
                        (lambda (_g244866244886_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g244866244886_))
                              (let ((_e244872244888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g244866244886_))))
                                (let ((_hd244871244891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244872244888_)))
                                      (_tl244870244893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244872244888_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244870244893_))
                                      (let ((_e244875244896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244870244893_))))
                                        (let ((_hd244874244899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244875244896_)))
                                              (_tl244873244901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244875244896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd244874244899_))
                                              (let ((_e244878244904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd244874244899_))))
                                                (let ((_hd244877244907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244878244904_)))
                                                      (_tl244876244909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244878244904_))))
                                                  ((lambda (_L244912_
                                                            _L244913_
                                                            _L244914_)
                                                     (let* ((_body244954_
                                                             (map (lambda (_g244949244951_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g244949244951_
                               _L244914_
                               _$t244768_
                               _method-calls243323_
                               _slot-refs243324_
                               _class-type-check243325_
                               _struct-type-check1244862_
                               _struct-type-check2244863_)))
                          _L244912_))
                    (__tmp252503
                     (let ((__tmp252504
                            (let ((__tmp252505
                                   (let ()
                                     (declare (not safe))
                                     (cons _L244914_ _L244913_))))
                              (declare (not safe))
                              (cons __tmp252505 _body244954_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp252504))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252503 _L244516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl244873244901_
                                                   _tl244876244909_
                                                   _hd244877244907_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g244865244883_
                                                 _g244866244886_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244865244883_ _g244866244886_)))))
                              (let ()
                                (declare (not safe))
                                (_g244865244883_ _g244866244886_))))))
                  (declare (not safe))
                  (_g244864244956_ _L244516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245120_
                                                      (lambda (_struct-type-check1244961_
                                                               _struct-type-check2244962_)
                                                        (let* ((_g244964244983_
                                                                (lambda (_g244965244980_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g244965244980_))))
                       (_g244963245117_
                        (lambda (_g244965244986_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g244965244986_))
                              (let ((_e244969244988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g244965244986_))))
                                (let ((_hd244968244991_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244969244988_)))
                                      (_tl244967244993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244969244988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244967244993_))
                                      (let ((_g252506_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244967244993_
                                                '0))))
                                        (begin
                                          (let ((_g252507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g252506_)
                                                       (##vector-length
                                                        _g252506_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g252507_ 2)))
                                                (error "Context expects 2 values"
                                                       _g252507_)))
                                          (let ((_target244970244996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g252506_ 0)))
                                                (_tl244972244998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g252506_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244972244998_))
                                                (letrec ((_loop244973245001_
                                                          (lambda (_hd244971245004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause244977245006_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd244971245004_))
                        (let ((_e244974245009_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd244971245004_))))
                          (let ((_lp-hd244975245012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244974245009_)))
                                (_lp-tl244976245014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244974245009_))))
                            (let ((__tmp252511
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd244975245012_
                                           _clause244977245006_))))
                              (declare (not safe))
                              (_loop244973245001_
                               _lp-tl244976245014_
                               __tmp252511))))
                        (let ((_clause244978245017_
                               (reverse _clause244977245006_)))
                          ((lambda (_L245020_)
                             (let* ((_clauses245115_
                                     (map (lambda (_clause245035_)
                                            (let* ((___stx251153251154_
                                                    _clause245035_)
                                                   (_g245038245053_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251153251154_)))))
                                              (let ((___kont251155251156_
                                                     (lambda (_L245081_
                                                              _L245082_
                                                              _L245083_)
                                                       (let* ((_body245103_
                                                               (map (lambda (_g245098245100_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245098245100_
                                 _L245083_
                                 _$t244768_
                                 _method-calls243323_
                                 _slot-refs243324_
                                 _class-type-check243325_
                                 _struct-type-check1244961_
                                 _struct-type-check2244962_)))
                            _L245081_))
                      (__tmp252508
                       (let ()
                         (declare (not safe))
                         (cons _L245083_ _L245082_))))
                 (declare (not safe))
                 (cons __tmp252508 _body245103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251157251158_
                                                     (lambda ()
                                                       _clause245035_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251153251154_))
                                                    (let ((_e245045245065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251153251154_))))
                                                      (let ((_tl245043245070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245045245065_)))
                    (_hd245044245068_
                     (let () (declare (not safe)) (##car _e245045245065_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245044245068_))
                    (let ((_e245048245073_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245044245068_))))
                      (let ((_tl245046245078_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245048245073_)))
                            (_hd245047245076_
                             (let ()
                               (declare (not safe))
                               (##car _e245048245073_))))
                        (___kont251155251156_
                         _tl245043245070_
                         _tl245046245078_
                         _hd245047245076_)))
                    (___kont251157251158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251157251158_)))))
                                          (let ((__tmp252509
                                                 (lambda (_g245107245110_
                                                          _g245108245112_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245107245110_
                                                           _g245108245112_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp252509
                                                    '()
                                                    _L245020_))))
                                    (__tmp252510
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245115_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp252510 _L244515_)))
                           _clause244978245017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop244973245001_
                                                     _target244970244996_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g244964244983_
                                                   _g244965244986_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244964244983_ _g244965244986_)))))
                              (let ()
                                (declare (not safe))
                                (_g244964244983_ _g244965244986_))))))
                  (declare (not safe))
                  (_g244963245117_ _L244515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245125_
                                                      (lambda (_specializer-lambda-expr245122_
                                                               _specializer-case-lambda-expr245123_)
                                                        (let ((__tmp252512
                                                               (let ((__tmp252513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp252515
                                     (let ((__tmp252516
                                            (let ((__tmp252518
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L244517_ '())))
                                                  (__tmp252517
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245122_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp252518 __tmp252517))))
                                       (declare (not safe))
                                       (cons __tmp252516 '())))
                                    (__tmp252514
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245123_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp252515 __tmp252514))))
                         (declare (not safe))
                         (cons '%#let-values __tmp252513))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252512 _stx243229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245127_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr244959_
                                                         _struct-check-all244838_
                                                         _empty243328_)))
                                                     (_specializer-case-lambda-expr245129_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245120_
                                                         _struct-check-all244838_
                                                         _empty243328_)))
                                                     (_specializer-impl245131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245125_
                                                         _specializer-lambda-expr245127_
                                                         _specializer-case-lambda-expr245129_)))
                                                     (_unchecked-specializer-lambda-expr245133_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243331_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr244959_
                                                             _empty243328_
                                                             _struct-check-all244838_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245135_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243331_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245120_
                                                             _empty243328_
                                                             _struct-check-all244838_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245137_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243331_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245125_
                                                             _unchecked-specializer-lambda-expr245133_
                                                             _unchecked-specializer-case-lambda-expr245135_))
                                                          '#f))
                                                     (_specializer-impl245139_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243235_
                                                         _$t244768_
                                                         _methods-bind244791_
                                                         _slots-bind244814_
                                                         _class-check-bind244836_
                                                         _struct-check-bind244860_
                                                         _specializer-impl245131_
                                                         _lifted-specializer-id244766_
                                                         _unchecked-specializer-impl245137_))))
                                                (let ((__tmp252520
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243304_)))
                                                      (__tmp252519
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id244759_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp252520
                                                   '" => "
                                                   __tmp252519))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243236_
                                                   _L243304_
                                                   _specializer-id244759_
                                                   _specializer-impl245139_
                                                   _lifted-specializer-id244766_
                                                   _unchecked-specializer-impl245137_)))))
                                        _hd244448244510_
                                        _hd244445244502_
                                        _hd244442244494_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244424244454_ _g244425244457_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244424244454_ _g244425244457_)))
                           (let ()
                             (declare (not safe))
                             (_g244424244454_ _g244425244457_)))
                       (let ()
                         (declare (not safe))
                         (_g244424244454_ _g244425244457_)))))
               (let () (declare (not safe)) (_g244424244454_ _g244425244457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244424244454_
                                                      _g244425244457_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244424244454_
                                              _g244425244457_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244424244454_ _g244425244457_)))))
                           (let ()
                             (declare (not safe))
                             (_g244424244454_ _g244425244457_)))))
                   (let ()
                     (declare (not safe))
                     (_g244424244454_ _g244425244457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244424244454_
                                                      _g244425244457_))))))
                                       (declare (not safe))
                                       (_g244423245142_ _L243303_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243303_))
                                         (let* ((_g245145245198_
                                                 (lambda (_g245146245195_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245146245195_))))
                                                (_g245144246470_
                                                 (lambda (_g245146245201_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245146245201_))
                                                       (let ((_e245154245203_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245146245201_))))
                 (let ((_hd245153245206_
                        (let () (declare (not safe)) (##car _e245154245203_)))
                       (_tl245152245208_
                        (let () (declare (not safe)) (##cdr _e245154245203_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245153245206_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245153245206_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245152245208_))
                               (let ((_e245157245211_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245152245208_))))
                                 (let ((_hd245156245214_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245157245211_)))
                                       (_tl245155245216_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245157245211_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245156245214_))
                                       (let ((_e245160245219_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245156245214_))))
                                         (let ((_hd245159245222_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245160245219_)))
                                               (_tl245158245224_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245160245219_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245159245222_))
                                               (let ((_e245163245227_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245159245222_))))
                                                 (let ((_hd245162245230_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245163245227_)))
                                                       (_tl245161245232_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245163245227_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245162245230_))
                                                       (let ((_e245166245235_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245162245230_))))
                 (let ((_hd245165245238_
                        (let () (declare (not safe)) (##car _e245166245235_)))
                       (_tl245164245240_
                        (let () (declare (not safe)) (##cdr _e245166245235_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245164245240_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245161245232_))
                           (let ((_e245169245243_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245161245232_))))
                             (let ((_hd245168245246_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245169245243_)))
                                   (_tl245167245248_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245169245243_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245168245246_))
                                   (let ((_e245172245251_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245168245246_))))
                                     (let ((_hd245171245254_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245172245251_)))
                                           (_tl245170245256_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245172245251_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245171245254_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245171245254_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245170245256_))
                                                   (let ((_e245175245259_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245170245256_))))
                                                     (let ((_hd245174245262_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245175245259_)))
                                                           (_tl245173245264_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245175245259_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245174245262_))
                                                           (let ((_e245178245267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245174245262_))))
                     (let ((_hd245177245270_
                            (let ()
                              (declare (not safe))
                              (##car _e245178245267_)))
                           (_tl245176245272_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245178245267_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245177245270_))
                           (let ((_e245181245275_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245177245270_))))
                             (let ((_hd245180245278_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245181245275_)))
                                   (_tl245179245280_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245181245275_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245180245278_))
                                   (let ((_e245184245283_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245180245278_))))
                                     (let ((_hd245183245286_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245184245283_)))
                                           (_tl245182245288_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245184245283_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245182245288_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245179245280_))
                                               (let ((_e245187245291_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245179245280_))))
                                                 (let ((_hd245186245294_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245187245291_)))
                                                       (_tl245185245296_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245187245291_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245185245296_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245176245272_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245173245264_))
                       (let ((_e245190245299_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245173245264_))))
                         (let ((_hd245189245302_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245190245299_)))
                               (_tl245188245304_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245190245299_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245188245304_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245167245248_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245158245224_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245155245216_))
                                           (let ((_e245193245307_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245155245216_))))
                                             (let ((_hd245192245310_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245193245307_)))
                                                   (_tl245191245312_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245193245307_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245191245312_))
                                                   ((lambda (_L245315_
                                                             _L245316_
                                                             _L245317_
                                                             _L245318_
                                                             _L245319_)
                                                      (let* ((_g245358245420_
                                                              (lambda (_g245359245417_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245359245417_))))
                     (_g245357246467_
                      (lambda (_g245359245423_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245359245423_))
                            (let ((_e245367245425_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245359245423_))))
                              (let ((_hd245366245428_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245367245425_)))
                                    (_tl245365245430_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245367245425_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245366245428_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245366245428_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245365245430_))
                                            (let ((_e245370245433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245365245430_))))
                                              (let ((_hd245369245436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245370245433_)))
                                                    (_tl245368245438_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245370245433_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245368245438_))
                                                    (let ((_e245373245441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245368245438_))))
                                                      (let ((_hd245372245444_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245373245441_)))
                    (_tl245371245446_
                     (let () (declare (not safe)) (##cdr _e245373245441_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245372245444_))
                    (let ((_e245376245449_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245372245444_))))
                      (let ((_hd245375245452_
                             (let ()
                               (declare (not safe))
                               (##car _e245376245449_)))
                            (_tl245374245454_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245376245449_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245375245452_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245375245452_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245374245454_))
                                    (let ((_e245379245457_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245374245454_))))
                                      (let ((_hd245378245460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245379245457_)))
                                            (_tl245377245462_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245379245457_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245378245460_))
                                            (let ((_e245382245465_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245378245460_))))
                                              (let ((_hd245381245468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245382245465_)))
                                                    (_tl245380245470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245382245465_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245381245468_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245381245468_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245380245470_))
                                                            (let ((_e245385245473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245380245470_))))
                      (let ((_hd245384245476_
                             (let ()
                               (declare (not safe))
                               (##car _e245385245473_)))
                            (_tl245383245478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245385245473_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245383245478_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245377245462_))
                                (let ((_e245388245481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245377245462_))))
                                  (let ((_hd245387245484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245388245481_)))
                                        (_tl245386245486_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245388245481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245387245484_))
                                        (let ((_e245391245489_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245387245484_))))
                                          (let ((_hd245390245492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245391245489_)))
                                                (_tl245389245494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245391245489_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245390245492_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245390245492_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245389245494_))
                                                        (let ((_e245394245497_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245389245494_))))
                  (let ((_hd245393245500_
                         (let () (declare (not safe)) (##car _e245394245497_)))
                        (_tl245392245502_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245394245497_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245392245502_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245386245486_))
                            (let ((_e245397245505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245386245486_))))
                              (let ((_hd245396245508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245397245505_)))
                                    (_tl245395245510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245397245505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245396245508_))
                                    (let ((_e245400245513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245396245508_))))
                                      (let ((_hd245399245516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245400245513_)))
                                            (_tl245398245518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245400245513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245399245516_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245399245516_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245398245518_))
                                                    (let ((_e245403245521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245398245518_))))
                                                      (let ((_hd245402245524_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245403245521_)))
                    (_tl245401245526_
                     (let () (declare (not safe)) (##cdr _e245403245521_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245401245526_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245395245510_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245395245510_))
                                  '1)
                            (let ((_g252396_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245395245510_
                                      '1))))
                              (begin
                                (let ((_g252397_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252396_)
                                             (##vector-length _g252396_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252397_ 2)))
                                      (error "Context expects 2 values"
                                             _g252397_)))
                                (let ((_target245404245529_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252396_ 0)))
                                      (_tl245406245531_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252396_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245406245531_))
                                      (let ((_e245415245534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245406245531_))))
                                        (let ((_hd245414245537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245415245534_)))
                                              (_tl245413245539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245415245534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245413245539_))
                                              (letrec ((_loop245407245542_
                                                        (lambda (_hd245405245545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245411245547_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245405245545_))
                      (let ((_e245408245550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245405245545_))))
                        (let ((_lp-hd245409245553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245408245550_)))
                              (_lp-tl245410245555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245408245550_))))
                          (let ((__tmp252483
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245409245553_
                                         _kw-ref245411245547_))))
                            (declare (not safe))
                            (_loop245407245542_
                             _lp-tl245410245555_
                             __tmp252483))))
                      (let ((_kw-ref245412245558_
                             (reverse _kw-ref245411245547_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245371245446_))
                            ((lambda (_L245561_
                                      _L245562_
                                      _L245563_
                                      _L245564_
                                      _L245565_)
                               (let* ((_kw-count245616_
                                       (length (let ((__tmp252398
                                                      (lambda (_g245608245611_
                                                               _g245609245613_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g245608245611_
                                                                _g245609245613_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252398
                                                         '()
                                                         _L245562_))))
                                      (_self-index245618_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count245616_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245317_))
                                     (let* ((_g245621245635_
                                             (lambda (_g245622245632_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g245622245632_))))
                                            (_g245620245806_
                                             (lambda (_g245622245638_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g245622245638_))
                                                   (let ((_e245627245640_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g245622245638_))))
                                                     (let ((_hd245626245643_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245627245640_)))
                                                           (_tl245625245645_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245627245640_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl245625245645_))
                                                           (let ((_e245630245648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl245625245645_))))
                     (let ((_hd245629245651_
                            (let ()
                              (declare (not safe))
                              (##car _e245630245648_)))
                           (_tl245628245653_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245630245648_))))
                       ((lambda (_L245656_ _L245657_)
                          (let ((_self245673_
                                 (list-ref _L245657_ _self-index245618_)))
                            (for-each
                             (lambda (_g245674245676_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g245674245676_
                                  _self245673_
                                  _method-calls243323_
                                  _slot-refs243324_
                                  _class-type-check243325_
                                  _struct-type-check243326_
                                  _struct-type-assert243327_)))
                             _L245656_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243330_))
                                _stx243229_
                                (let* ((_specializer-id245685_
                                        (let* ((_id245679_
                                                (let ((__tmp252449
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243304_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252449
                                                   '"::specialize")))
                                               (_specializer-id245682_
                                                (let ((__tmp252450
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243229_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id245679_
                                                   __tmp252450))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id245682_))
                                          _specializer-id245682_))
                                       (_lifted-specializer-id245692_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243332_))
                                            (let* ((_id245687_
                                                    (let ((__tmp252451
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243304_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252451
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id245689_
                                                    (let ((__tmp252452
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243229_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id245687_
                                                       __tmp252452))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id245689_))
                                              _lifted-specializer-id245689_)
                                            '#f))
                                       (_$t245694_
                                        (let ((__tmp252453 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252453)))
                                       (_methods245696_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243323_)))
                                       (_$methods245700_
                                        (map (lambda (_id245698_)
                                               (let ((__tmp252454
                                                      (gensym _id245698_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252454)))
                                             _methods245696_))
                                       (_g252455_
                                        (for-each
                                         (lambda (_g245701245704_
                                                  _g245702245706_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243323_
                                              _g245701245704_
                                              _g245702245706_)))
                                         _methods245696_
                                         _$methods245700_))
                                       (_methods-bind245717_
                                        (map (lambda (_g245709245712_
                                                      _g245710245714_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243231_
                                                  _$t245694_
                                                  _g245709245712_
                                                  _g245710245714_)))
                                             _methods245696_
                                             _$methods245700_))
                                       (_slots245719_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243324_)))
                                       (_$slots245723_
                                        (map (lambda (_id245721_)
                                               (let ((__tmp252456
                                                      (gensym _id245721_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252456)))
                                             _slots245719_))
                                       (_g252457_
                                        (for-each
                                         (lambda (_g245724245727_
                                                  _g245725245729_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243324_
                                              _g245724245727_
                                              _g245725245729_)))
                                         _slots245719_
                                         _$slots245723_))
                                       (_slots-bind245740_
                                        (map (lambda (_g245732245735_
                                                      _g245733245737_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243232_
                                                  _$t245694_
                                                  _g245732245735_
                                                  _g245733245737_)))
                                             _slots245719_
                                             _$slots245723_))
                                       (_class-check245742_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243325_)))
                                       (_$class-check245745_
                                        (map (lambda (_g252458_)
                                               (let ((__tmp252459
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252459)))
                                             _class-check245742_))
                                       (_g252460_
                                        (for-each
                                         (lambda (_g245746245749_
                                                  _g245747245751_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243325_
                                              _g245746245749_
                                              _g245747245751_)))
                                         _class-check245742_
                                         _$class-check245745_))
                                       (_class-check-bind245762_
                                        (map (lambda (_g245754245757_
                                                      _g245755245759_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243233_
                                                  _$t245694_
                                                  _g245754245757_
                                                  _g245755245759_)))
                                             _class-check245742_
                                             _$class-check245745_))
                                       (_struct-check-all245764_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243326_
                                           _struct-type-assert243327_)))
                                       (_struct-check245766_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all245764_)))
                                       (_$struct-check245769_
                                        (map (lambda (_g252461_)
                                               (let ((__tmp252462
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252462)))
                                             _struct-check245766_))
                                       (_g252463_
                                        (for-each
                                         (lambda (_g245770245773_
                                                  _g245771245775_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all245764_
                                              _g245770245773_
                                              _g245771245775_)))
                                         _struct-check245766_
                                         _$struct-check245769_))
                                       (_struct-check-bind245786_
                                        (map (lambda (_g245778245781_
                                                      _g245779245783_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243234_
                                                  _$t245694_
                                                  _g245778245781_
                                                  _g245779245783_)))
                                             _struct-check245766_
                                             _$struct-check245769_))
                                       (_make-specializer-impl245797_
                                        (lambda (_struct-type-check1245788_
                                                 _struct-type-check2245789_)
                                          (let* ((_specializer-body245795_
                                                  (map (lambda (_g245790245792_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g245790245792_
                                                            _self245673_
                                                            _$t245694_
                                                            _method-calls243323_
                                                            _slot-refs243324_
                                                            _class-type-check243325_
                                                            _struct-type-check1245788_
                                                            _struct-type-check2245789_)))
                                                       _L245656_))
                                                 (__tmp252464
                                                  (let ((__tmp252465
                                                         (let ((__tmp252467
                                                                (let ((__tmp252468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252480
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245319_ '())))
                                     (__tmp252469
                                      (let ((__tmp252470
                                             (let ((__tmp252471
                                                    (let ((__tmp252473
                                                           (let ((__tmp252474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252479
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245318_ '())))
                                (__tmp252475
                                 (let ((__tmp252476
                                        (let ((__tmp252477
                                               (let ((__tmp252478
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L245657_
                                                              _specializer-body245795_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252478))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252477
                                           _L245317_))))
                                   (declare (not safe))
                                   (cons __tmp252476 '()))))
                            (declare (not safe))
                            (cons __tmp252479 __tmp252475))))
                     (declare (not safe))
                     (cons __tmp252474 '())))
                  (__tmp252472
                   (let () (declare (not safe)) (cons _L245316_ '()))))
              (declare (not safe))
              (cons __tmp252473 __tmp252472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252471))))
                                        (declare (not safe))
                                        (cons __tmp252470 '()))))
                                 (declare (not safe))
                                 (cons __tmp252480 __tmp252469))))
                          (declare (not safe))
                          (cons __tmp252468 '())))
                       (__tmp252466
                        (let () (declare (not safe)) (cons _L245315_ '()))))
                   (declare (not safe))
                   (cons __tmp252467 __tmp252466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252465))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252464
                                             _stx243229_))))
                                       (_specializer-impl245799_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl245797_
                                           _struct-check-all245764_
                                           _empty243328_)))
                                       (_unchecked-specializer-impl245801_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243331_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl245797_
                                               _empty243328_
                                               _struct-check-all245764_))
                                            '#f))
                                       (_specializer-impl245803_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243235_
                                           _$t245694_
                                           _methods-bind245717_
                                           _slots-bind245740_
                                           _class-check-bind245762_
                                           _struct-check-bind245786_
                                           _specializer-impl245799_
                                           _lifted-specializer-id245692_
                                           _unchecked-specializer-impl245801_))))
                                  (let ((__tmp252482
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243304_)))
                                        (__tmp252481
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id245685_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp252482
                                     '" => "
                                     __tmp252481))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243236_
                                     _L243304_
                                     _specializer-id245685_
                                     _specializer-impl245803_
                                     _lifted-specializer-id245692_
                                     _unchecked-specializer-impl245801_))))))
                        _tl245628245653_
                        _hd245629245651_)))
                   (let ()
                     (declare (not safe))
                     (_g245621245635_ _g245622245638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245621245635_
                                                      _g245622245638_))))))
                                       (declare (not safe))
                                       (_g245620245806_ _L245317_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245317_))
                                         (let* ((_g245809245839_
                                                 (lambda (_g245810245836_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245810245836_))))
                                                (_g245808246464_
                                                 (lambda (_g245810245842_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245810245842_))
                                                       (let ((_e245816245844_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245810245842_))))
                 (let ((_hd245815245847_
                        (let () (declare (not safe)) (##car _e245816245844_)))
                       (_tl245814245849_
                        (let () (declare (not safe)) (##cdr _e245816245844_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl245814245849_))
                       (let ((_e245819245852_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245814245849_))))
                         (let ((_hd245818245855_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245819245852_)))
                               (_tl245817245857_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245819245852_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd245818245855_))
                               (let ((_e245822245860_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd245818245855_))))
                                 (let ((_hd245821245863_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245822245860_)))
                                       (_tl245820245865_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245822245860_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245821245863_))
                                       (let ((_e245825245868_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245821245863_))))
                                         (let ((_hd245824245871_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245825245868_)))
                                               (_tl245823245873_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245825245868_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245824245871_))
                                               (let ((_e245828245876_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245824245871_))))
                                                 (let ((_hd245827245879_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245828245876_)))
                                                       (_tl245826245881_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245828245876_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245826245881_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl245823245873_))
                                                           (let ((_e245831245884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl245823245873_))))
                     (let ((_hd245830245887_
                            (let ()
                              (declare (not safe))
                              (##car _e245831245884_)))
                           (_tl245829245889_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245831245884_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl245829245889_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245820245865_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl245817245857_))
                                   (let ((_e245834245892_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl245817245857_))))
                                     (let ((_hd245833245895_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245834245892_)))
                                           (_tl245832245897_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245834245892_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245832245897_))
                                           ((lambda (_L245900_
                                                     _L245901_
                                                     _L245902_)
                                              (let* ((_g245925245939_
                                                      (lambda (_g245926245936_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g245926245936_))))
                                                     (_g245924245980_
                                                      (lambda (_g245926245942_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g245926245942_))
                                                            (let ((_e245931245944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g245926245942_))))
                      (let ((_hd245930245947_
                             (let ()
                               (declare (not safe))
                               (##car _e245931245944_)))
                            (_tl245929245949_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245931245944_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245929245949_))
                            (let ((_e245934245952_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245929245949_))))
                              (let ((_hd245933245955_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245934245952_)))
                                    (_tl245932245957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245934245952_))))
                                ((lambda (_L245960_ _L245961_)
                                   (let ((_self245974_
                                          (list-ref
                                           _L245961_
                                           _self-index245618_)))
                                     (for-each
                                      (lambda (_g245975245977_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g245975245977_
                                           _self245974_
                                           _method-calls243323_
                                           _slot-refs243324_
                                           _class-type-check243325_
                                           _struct-type-check243326_
                                           _struct-type-assert243327_)))
                                      _L245960_)))
                                 _tl245932245957_
                                 _hd245933245955_)))
                            (let ()
                              (declare (not safe))
                              (_g245925245939_ _g245926245942_)))))
                    (let ()
                      (declare (not safe))
                      (_g245925245939_ _g245926245942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g245924245980_ _L245901_))
                                              (let* ((_g245983246002_
                                                      (lambda (_g245984245999_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g245984245999_))))
                                                     (_g245982246107_
                                                      (lambda (_g245984246005_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g245984246005_))
                                                            (let ((_e245988246007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g245984246005_))))
                      (let ((_hd245987246010_
                             (let ()
                               (declare (not safe))
                               (##car _e245988246007_)))
                            (_tl245986246012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245988246007_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl245986246012_))
                            (let ((_g252399_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245986246012_
                                      '0))))
                              (begin
                                (let ((_g252400_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252399_)
                                             (##vector-length _g252399_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252400_ 2)))
                                      (error "Context expects 2 values"
                                             _g252400_)))
                                (let ((_target245989246015_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252399_ 0)))
                                      (_tl245991246017_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252399_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245991246017_))
                                      (letrec ((_loop245992246020_
                                                (lambda (_hd245990246023_
                                                         _clause245996246025_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd245990246023_))
                                                      (let ((_e245993246028_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd245990246023_))))
                (let ((_lp-hd245994246031_
                       (let () (declare (not safe)) (##car _e245993246028_)))
                      (_lp-tl245995246033_
                       (let () (declare (not safe)) (##cdr _e245993246028_))))
                  (let ((__tmp252402
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd245994246031_ _clause245996246025_))))
                    (declare (not safe))
                    (_loop245992246020_ _lp-tl245995246033_ __tmp252402))))
              (let ((_clause245997246036_ (reverse _clause245996246025_)))
                ((lambda (_L246039_)
                   (for-each
                    (lambda (_clause246052_)
                      (let* ((_g246054246065_
                              (lambda (_g246055246062_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246055246062_))))
                             (_g246053246097_
                              (lambda (_g246055246068_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246055246068_))
                                    (let ((_e246060246070_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246055246068_))))
                                      (let ((_hd246059246073_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246060246070_)))
                                            (_tl246058246075_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246060246070_))))
                                        ((lambda (_L246078_ _L246079_)
                                           (let ((_self246091_
                                                  (list-ref
                                                   _L246079_
                                                   _self-index245618_)))
                                             (for-each
                                              (lambda (_g246092246094_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246092246094_
                                                   _self246091_
                                                   _method-calls243323_
                                                   _slot-refs243324_
                                                   _class-type-check243325_
                                                   _struct-type-check243326_
                                                   _struct-type-assert243327_)))
                                              _L246078_)))
                                         _tl246058246075_
                                         _hd246059246073_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246054246065_ _g246055246068_))))))
                        (declare (not safe))
                        (_g246053246097_ _clause246052_)))
                    (let ((__tmp252401
                           (lambda (_g246099246102_ _g246100246104_)
                             (let ()
                               (declare (not safe))
                               (cons _g246099246102_ _g246100246104_)))))
                      (declare (not safe))
                      (foldr1 __tmp252401 '() _L246039_))))
                 _clause245997246036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop245992246020_
                                           _target245989246015_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g245983246002_ _g245984246005_))))))
                            (let ()
                              (declare (not safe))
                              (_g245983246002_ _g245984246005_)))))
                    (let ()
                      (declare (not safe))
                      (_g245983246002_ _g245984246005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g245982246107_ _L245900_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243330_))
                                                  _stx243229_
                                                  (let* ((_specializer-id246116_
                                                          (let* ((_id246110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252403
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243304_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252403 '"::specialize")))
                         (_specializer-id246113_
                          (let ((__tmp252404
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243229_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246110_ __tmp252404))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246113_))
                    _specializer-id246113_))
                 (_lifted-specializer-id246123_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243332_))
                      (let* ((_id246118_
                              (let ((__tmp252405
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243304_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252405
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246120_
                              (let ((__tmp252406
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243229_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246118_
                                 __tmp252406))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246120_))
                        _lifted-specializer-id246120_)
                      '#f))
                 (_$t246125_
                  (let ((__tmp252407 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252407)))
                 (_methods246127_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243323_)))
                 (_$methods246131_
                  (map (lambda (_id246129_)
                         (let ((__tmp252408 (gensym _id246129_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252408)))
                       _methods246127_))
                 (_g252409_
                  (for-each
                   (lambda (_g246132246135_ _g246133246137_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243323_
                        _g246132246135_
                        _g246133246137_)))
                   _methods246127_
                   _$methods246131_))
                 (_methods-bind246148_
                  (map (lambda (_g246140246143_ _g246141246145_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243231_
                            _$t246125_
                            _g246140246143_
                            _g246141246145_)))
                       _methods246127_
                       _$methods246131_))
                 (_slots246150_
                  (let () (declare (not safe)) (hash-keys _slot-refs243324_)))
                 (_$slots246154_
                  (map (lambda (_id246152_)
                         (let ((__tmp252410 (gensym _id246152_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252410)))
                       _slots246150_))
                 (_g252411_
                  (for-each
                   (lambda (_g246155246158_ _g246156246160_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243324_
                        _g246155246158_
                        _g246156246160_)))
                   _slots246150_
                   _$slots246154_))
                 (_slots-bind246171_
                  (map (lambda (_g246163246166_ _g246164246168_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243232_
                            _$t246125_
                            _g246163246166_
                            _g246164246168_)))
                       _slots246150_
                       _$slots246154_))
                 (_class-check246173_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243325_)))
                 (_$class-check246176_
                  (map (lambda (_g252412_)
                         (let ((__tmp252413 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252413)))
                       _class-check246173_))
                 (_g252414_
                  (for-each
                   (lambda (_g246177246180_ _g246178246182_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243325_
                        _g246177246180_
                        _g246178246182_)))
                   _class-check246173_
                   _$class-check246176_))
                 (_class-check-bind246193_
                  (map (lambda (_g246185246188_ _g246186246190_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243233_
                            _$t246125_
                            _g246185246188_
                            _g246186246190_)))
                       _class-check246173_
                       _$class-check246176_))
                 (_struct-check-all246195_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243326_
                     _struct-type-assert243327_)))
                 (_struct-check246197_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246195_)))
                 (_$struct-check246200_
                  (map (lambda (_g252415_)
                         (let ((__tmp252416 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252416)))
                       _struct-check246197_))
                 (_g252417_
                  (for-each
                   (lambda (_g246201246204_ _g246202246206_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246195_
                        _g246201246204_
                        _g246202246206_)))
                   _struct-check246197_
                   _$struct-check246200_))
                 (_struct-check-bind246217_
                  (map (lambda (_g246209246212_ _g246210246214_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243234_
                            _$t246125_
                            _g246209246212_
                            _g246210246214_)))
                       _struct-check246197_
                       _$struct-check246200_))
                 (_make-specializer-lambda-expr246303_
                  (lambda (_struct-type-check1246219_
                           _struct-type-check2246220_)
                    (let* ((_g246222246236_
                            (lambda (_g246223246233_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246223246233_))))
                           (_g246221246300_
                            (lambda (_g246223246239_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246223246239_))
                                  (let ((_e246228246241_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246223246239_))))
                                    (let ((_hd246227246244_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246228246241_)))
                                          (_tl246226246246_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246228246241_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246226246246_))
                                          (let ((_e246231246249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246226246246_))))
                                            (let ((_hd246230246252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246231246249_)))
                                                  (_tl246229246254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246231246249_))))
                                              ((lambda (_L246257_ _L246258_)
                                                 (let* ((_self246291_
                                                         (list-ref
                                                          _L246258_
                                                          _self-index245618_))
                                                        (_body246297_
                                                         (map (lambda (_g246292246294_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246292246294_
                           _self246291_
                           _$t246125_
                           _method-calls243323_
                           _slot-refs243324_
                           _class-type-check243325_
                           _struct-type-check1246219_
                           _struct-type-check2246220_)))
                      _L246257_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252418
                                                          (let ((__tmp252419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246258_ _body246297_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252418
                                                      _L245901_))))
                                               _tl246229246254_
                                               _hd246230246252_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246222246236_
                                             _g246223246239_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246222246236_ _g246223246239_))))))
                      (declare (not safe))
                      (_g246221246300_ _L245901_))))
                 (_make-specializer-case-lambda-expr246442_
                  (lambda (_struct-type-check1246305_
                           _struct-type-check2246306_)
                    (let* ((_g246308246327_
                            (lambda (_g246309246324_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246309246324_))))
                           (_g246307246439_
                            (lambda (_g246309246330_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246309246330_))
                                  (let ((_e246313246332_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246309246330_))))
                                    (let ((_hd246312246335_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246313246332_)))
                                          (_tl246311246337_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246313246332_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246311246337_))
                                          (let ((_g252420_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246311246337_
                                                    '0))))
                                            (begin
                                              (let ((_g252421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252420_)
                                                           (##vector-length
                                                            _g252420_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252421_)))
                                              (let ((_target246314246340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252420_
                                                        0)))
                                                    (_tl246316246342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252420_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246316246342_))
                                                    (letrec ((_loop246317246345_
                                                              (lambda (_hd246315246348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246321246350_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246315246348_))
                            (let ((_e246318246353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246315246348_))))
                              (let ((_lp-hd246319246356_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246318246353_)))
                                    (_lp-tl246320246358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246318246353_))))
                                (let ((__tmp252424
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246319246356_
                                               _clause246321246350_))))
                                  (declare (not safe))
                                  (_loop246317246345_
                                   _lp-tl246320246358_
                                   __tmp252424))))
                            (let ((_clause246322246361_
                                   (reverse _clause246321246350_)))
                              ((lambda (_L246364_)
                                 (let* ((_clauses246437_
                                         (map (lambda (_clause246379_)
                                                (let* ((_g246381246392_
                                                        (lambda (_g246382246389_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246382246389_))))
                                                       (_g246380246427_
                                                        (lambda (_g246382246395_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246382246395_))
                      (let ((_e246387246397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246382246395_))))
                        (let ((_hd246386246400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246387246397_)))
                              (_tl246385246402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246387246397_))))
                          ((lambda (_L246405_ _L246406_)
                             (let* ((_self246418_
                                     (list-ref _L246406_ _self-index245618_))
                                    (_body246424_
                                     (map (lambda (_g246419246421_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246419246421_
                                               _self246418_
                                               _$t246125_
                                               _method-calls243323_
                                               _slot-refs243324_
                                               _class-type-check243325_
                                               _struct-type-check1246305_
                                               _struct-type-check2246306_)))
                                          _L246405_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246406_ _body246424_))))
                           _tl246385246402_
                           _hd246386246400_)))
                      (let ()
                        (declare (not safe))
                        (_g246381246392_ _g246382246395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246380246427_
                                                   _clause246379_)))
                                              (let ((__tmp252422
                                                     (lambda (_g246429246432_
                                                              _g246430246434_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246429246432_
                                                               _g246430246434_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252422
                                                        '()
                                                        _L246364_))))
                                        (__tmp252423
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246437_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252423
                                    _L245900_)))
                               _clause246322246361_))))))
              (let ()
                (declare (not safe))
                (_loop246317246345_ _target246314246340_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246308246327_
                                                       _g246309246330_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246308246327_
                                             _g246309246330_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246308246327_ _g246309246330_))))))
                      (declare (not safe))
                      (_g246307246439_ _L245900_))))
                 (_make-specializer-impl246447_
                  (lambda (_specializer-lambda-expr246444_
                           _specializer-case-lambda-expr246445_)
                    (let ((__tmp252425
                           (let ((__tmp252426
                                  (let ((__tmp252428
                                         (let ((__tmp252429
                                                (let ((__tmp252446
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245319_ '())))
                                                      (__tmp252430
                                                       (let ((__tmp252431
                                                              (let ((__tmp252432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252434
                                    (let ((__tmp252435
                                           (let ((__tmp252445
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245318_ '())))
                                                 (__tmp252436
                                                  (let ((__tmp252437
                                                         (let ((__tmp252438
                                                                (let ((__tmp252439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252441
                                      (let ((__tmp252442
                                             (let ((__tmp252444
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L245902_ '())))
                                                   (__tmp252443
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246444_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252444
                                                     __tmp252443))))
                                        (declare (not safe))
                                        (cons __tmp252442 '())))
                                     (__tmp252440
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246445_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252441 __tmp252440))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252439))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252438 _stx243229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252437 '()))))
                                             (declare (not safe))
                                             (cons __tmp252445 __tmp252436))))
                                      (declare (not safe))
                                      (cons __tmp252435 '())))
                                   (__tmp252433
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245316_ '()))))
                               (declare (not safe))
                               (cons __tmp252434 __tmp252433))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252432))))
                 (declare (not safe))
                 (cons __tmp252431 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252446
                                                        __tmp252430))))
                                           (declare (not safe))
                                           (cons __tmp252429 '())))
                                        (__tmp252427
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245315_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252428 __tmp252427))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252426))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252425 _stx243229_))))
                 (_specializer-lambda-expr246449_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246303_
                     _struct-check-all246195_
                     _empty243328_)))
                 (_specializer-case-lambda-expr246451_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246442_
                     _struct-check-all246195_
                     _empty243328_)))
                 (_specializer-impl246453_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246447_
                     _specializer-lambda-expr246449_
                     _specializer-case-lambda-expr246451_)))
                 (_unchecked-specializer-lambda-expr246455_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246303_
                         _empty243328_
                         _struct-check-all246195_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246457_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246442_
                         _empty243328_
                         _struct-check-all246195_))
                      '#f))
                 (_unchecked-specializer-impl246459_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243331_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246447_
                         _unchecked-specializer-lambda-expr246455_
                         _unchecked-specializer-case-lambda-expr246457_))
                      '#f))
                 (_specializer-impl246461_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243235_
                     _$t246125_
                     _methods-bind246148_
                     _slots-bind246171_
                     _class-check-bind246193_
                     _struct-check-bind246217_
                     _specializer-impl246453_
                     _lifted-specializer-id246123_
                     _unchecked-specializer-impl246459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252448
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243304_)))
                                                          (__tmp252447
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246116_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252448
                                                       '" => "
                                                       __tmp252447))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243236_
                                                       _L243304_
                                                       _specializer-id246116_
                                                       _specializer-impl246461_
                                                       _lifted-specializer-id246123_
                                                       _unchecked-specializer-impl246459_)))))
                                            _hd245833245895_
                                            _hd245830245887_
                                            _hd245827245879_)
                                           (let ()
                                             (declare (not safe))
                                             (_g245809245839_
                                              _g245810245842_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245809245839_ _g245810245842_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245809245839_ _g245810245842_)))
                           (let ()
                             (declare (not safe))
                             (_g245809245839_ _g245810245842_)))))
                   (let ()
                     (declare (not safe))
                     (_g245809245839_ _g245810245842_)))
               (let ()
                 (declare (not safe))
                 (_g245809245839_ _g245810245842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245809245839_
                                                  _g245810245842_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245809245839_ _g245810245842_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245809245839_ _g245810245842_)))))
                       (let ()
                         (declare (not safe))
                         (_g245809245839_ _g245810245842_)))))
               (let ()
                 (declare (not safe))
                 (_g245809245839_ _g245810245842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245808246464_ _L245317_))
                                         _stx243229_))))
                             _hd245414245537_
                             _kw-ref245412245558_
                             _hd245402245524_
                             _hd245393245500_
                             _hd245384245476_)
                            (let ()
                              (declare (not safe))
                              (_g245358245420_ _g245359245423_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245407245542_
                                                   _target245404245529_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245358245420_
                                                 _g245359245423_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245358245420_ _g245359245423_))))))
                            (let ()
                              (declare (not safe))
                              (_g245358245420_ _g245359245423_)))
                        (let ()
                          (declare (not safe))
                          (_g245358245420_ _g245359245423_)))
                    (let ()
                      (declare (not safe))
                      (_g245358245420_ _g245359245423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245358245420_
                                                       _g245359245423_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245358245420_
                                                   _g245359245423_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245358245420_
                                               _g245359245423_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245358245420_ _g245359245423_)))))
                            (let ()
                              (declare (not safe))
                              (_g245358245420_ _g245359245423_)))
                        (let ()
                          (declare (not safe))
                          (_g245358245420_ _g245359245423_)))))
                (let ()
                  (declare (not safe))
                  (_g245358245420_ _g245359245423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245358245420_
                                                       _g245359245423_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245358245420_
                                                   _g245359245423_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245358245420_ _g245359245423_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245358245420_ _g245359245423_)))
                            (let ()
                              (declare (not safe))
                              (_g245358245420_ _g245359245423_)))))
                    (let ()
                      (declare (not safe))
                      (_g245358245420_ _g245359245423_)))
                (let ()
                  (declare (not safe))
                  (_g245358245420_ _g245359245423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245358245420_
                                                       _g245359245423_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245358245420_
                                               _g245359245423_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245358245420_ _g245359245423_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245358245420_ _g245359245423_)))
                            (let ()
                              (declare (not safe))
                              (_g245358245420_ _g245359245423_)))))
                    (let ()
                      (declare (not safe))
                      (_g245358245420_ _g245359245423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245358245420_
                                                       _g245359245423_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245358245420_
                                               _g245359245423_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245358245420_ _g245359245423_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245358245420_ _g245359245423_)))))
                            (let ()
                              (declare (not safe))
                              (_g245358245420_ _g245359245423_))))))
                (declare (not safe))
                (_g245357246467_ _L245316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245192245310_
                                                    _hd245189245302_
                                                    _hd245186245294_
                                                    _hd245183245286_
                                                    _hd245165245238_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245145245198_
                                                      _g245146245201_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245145245198_
                                              _g245146245201_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245145245198_ _g245146245201_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245145245198_ _g245146245201_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245145245198_ _g245146245201_)))))
                       (let ()
                         (declare (not safe))
                         (_g245145245198_ _g245146245201_)))
                   (let ()
                     (declare (not safe))
                     (_g245145245198_ _g245146245201_)))
               (let ()
                 (declare (not safe))
                 (_g245145245198_ _g245146245201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245145245198_
                                                  _g245146245201_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245145245198_
                                              _g245146245201_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245145245198_ _g245146245201_)))))
                           (let ()
                             (declare (not safe))
                             (_g245145245198_ _g245146245201_)))))
                   (let ()
                     (declare (not safe))
                     (_g245145245198_ _g245146245201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245145245198_
                                                      _g245146245201_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245145245198_
                                                  _g245146245201_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245145245198_
                                              _g245146245201_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245145245198_ _g245146245201_)))))
                           (let ()
                             (declare (not safe))
                             (_g245145245198_ _g245146245201_)))
                       (let ()
                         (declare (not safe))
                         (_g245145245198_ _g245146245201_)))))
               (let ()
                 (declare (not safe))
                 (_g245145245198_ _g245146245201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245145245198_
                                                  _g245146245201_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245145245198_ _g245146245201_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245145245198_ _g245146245201_)))
                           (let ()
                             (declare (not safe))
                             (_g245145245198_ _g245146245201_)))
                       (let ()
                         (declare (not safe))
                         (_g245145245198_ _g245146245201_)))))
               (let ()
                 (declare (not safe))
                 (_g245145245198_ _g245146245201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245144246470_ _L243303_))
                                         _stx243229_))))))))
                  (___kont251177251178_ (lambda () _stx243229_)))
              (let ((___match251206251207_
                     (lambda (_e243245243271_
                              _hd243244243274_
                              _tl243243243276_
                              _e243248243279_
                              _hd243247243282_
                              _tl243246243284_
                              _e243251243287_
                              _hd243250243290_
                              _tl243249243292_
                              _e243254243295_
                              _hd243253243298_
                              _tl243252243300_)
                       (let ((_L243303_ _hd243253243298_)
                             (_L243304_ _hd243250243290_))
                         (if (let ((__tmp252565
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243304_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp252565))
                             (___kont251175251176_ _L243303_ _L243304_)
                             (___kont251177251178_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251173251174_))
                    (let ((_e243245243271_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251173251174_))))
                      (let ((_tl243243243276_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243245243271_)))
                            (_hd243244243274_
                             (let ()
                               (declare (not safe))
                               (##car _e243245243271_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243243243276_))
                            (let ((_e243248243279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243243243276_))))
                              (let ((_tl243246243284_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243248243279_)))
                                    (_hd243247243282_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243248243279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243247243282_))
                                    (let ((_e243251243287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243247243282_))))
                                      (let ((_tl243249243292_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243251243287_)))
                                            (_hd243250243290_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243251243287_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243249243292_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243246243284_))
                                                (let ((_e243254243295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243246243284_))))
                                                  (let ((_tl243252243300_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243254243295_)))
                                                        (_hd243253243298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243254243295_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243252243300_))
                                                        (___match251206251207_
                                                         _e243245243271_
                                                         _hd243244243274_
                                                         _tl243243243276_
                                                         _e243248243279_
                                                         _hd243247243282_
                                                         _tl243246243284_
                                                         _e243251243287_
                                                         _hd243250243290_
                                                         _tl243249243292_
                                                         _e243254243295_
                                                         _hd243253243298_
                                                         _tl243252243300_)
                                                        (___kont251177251178_))))
                                                (___kont251177251178_))
                                            (___kont251177251178_))))
                                    (___kont251177251178_))))
                            (___kont251177251178_))))
                    (___kont251177251178_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242205_
               _self242206_
               _methods242207_
               _slots242208_
               _class-check242209_
               _struct-check242210_
               _struct-assert242211_)
        (let* ((___stx251209251210_ _stx242205_)
               (_g242219242441_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251209251210_)))))
          (let ((___kont251211251212_
                 (lambda (_L243178_ _L243179_ _L243180_ _L243181_)
                   (let ((__tmp252566
                          (let () (declare (not safe)) (gx#stx-e _L243179_))))
                     (declare (not safe))
                     (table-set! _methods242207_ __tmp252566 '#t))
                   (for-each
                    (lambda (_g243214243216_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243214243216_
                         _self242206_
                         _methods242207_
                         _slots242208_
                         _class-check242209_
                         _struct-check242210_
                         _struct-assert242211_)))
                    (let ((__tmp252567
                           (lambda (_g243218243221_ _g243219243223_)
                             (let ()
                               (declare (not safe))
                               (cons _g243218243221_ _g243219243223_)))))
                      (declare (not safe))
                      (foldr1 __tmp252567 '() _L243178_)))))
                (___kont251215251216_
                 (lambda (_L243013_ _L243014_ _L243015_ _L243016_ _L243017_)
                   (let ((__tmp252568
                          (let () (declare (not safe)) (gx#stx-e _L243014_))))
                     (declare (not safe))
                     (table-set! _methods242207_ __tmp252568 '#t))
                   (for-each
                    (lambda (_g243057243059_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243057243059_
                         _self242206_
                         _methods242207_
                         _slots242208_
                         _class-check242209_
                         _struct-check242210_
                         _struct-assert242211_)))
                    (let ((__tmp252569
                           (lambda (_g243061243064_ _g243062243066_)
                             (let ()
                               (declare (not safe))
                               (cons _g243061243064_ _g243062243066_)))))
                      (declare (not safe))
                      (foldr1 __tmp252569 '() _L243013_)))))
                (___kont251219251220_
                 (lambda (_L242846_ _L242847_ _L242848_)
                   (let ((__tmp252570
                          (let () (declare (not safe)) (gx#stx-e _L242846_))))
                     (declare (not safe))
                     (table-set! _slots242208_ __tmp252570 '#t))))
                (___kont251221251222_
                 (lambda (_L242723_ _L242724_ _L242725_ _L242726_)
                   (let ((__tmp252571
                          (let () (declare (not safe)) (gx#stx-e _L242724_))))
                     (declare (not safe))
                     (table-set! _slots242208_ __tmp252571 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242723_
                      _self242206_
                      _methods242207_
                      _slots242208_
                      _class-check242209_
                      _struct-check242210_
                      _struct-assert242211_))))
                (___kont251223251224_
                 (lambda (_L242607_ _L242608_)
                   (let ((__tmp252572
                          (##structure-ref
                           (let ((__tmp252573
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L242608_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252573))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242208_ __tmp252572 '#t))))
                (___kont251225251226_
                 (lambda (_L242517_ _L242518_ _L242519_)
                   (let ((__tmp252574
                          (##structure-ref
                           (let ((__tmp252575
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L242519_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252575))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242208_ __tmp252574 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L242517_
                      _self242206_
                      _methods242207_
                      _slots242208_
                      _class-check242209_
                      _struct-check242210_
                      _struct-assert242211_))))
                (___kont251227251228_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242205_
                      _self242206_
                      _methods242207_
                      _slots242208_
                      _class-check242209_
                      _struct-check242210_
                      _struct-assert242211_)))))
            (let* ((___match251708251709_
                    (lambda (_e242415242453_
                             _hd242414242456_
                             _tl242413242458_
                             _e242418242461_
                             _hd242417242464_
                             _tl242416242466_
                             _e242421242469_
                             _hd242420242472_
                             _tl242419242474_
                             _e242424242477_
                             _hd242423242480_
                             _tl242422242482_
                             _e242427242485_
                             _hd242426242488_
                             _tl242425242490_
                             _e242430242493_
                             _hd242429242496_
                             _tl242428242498_
                             _e242433242501_
                             _hd242432242504_
                             _tl242431242506_
                             _e242436242509_
                             _hd242435242512_
                             _tl242434242514_)
                      (let ((_L242517_ _hd242435242512_)
                            (_L242518_ _hd242432242504_)
                            (_L242519_ _hd242423242480_))
                        (if (and (let ((__tmp252576
                                        (let ((__tmp252577
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242519_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252577))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252576
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242518_
                                    _self242206_)))
                            (___kont251225251226_
                             _L242517_
                             _L242518_
                             _L242519_)
                            (___kont251227251228_)))))
                   (___match251706251707_
                    (lambda (_e242415242453_
                             _hd242414242456_
                             _tl242413242458_
                             _e242418242461_
                             _hd242417242464_
                             _tl242416242466_
                             _e242421242469_
                             _hd242420242472_
                             _tl242419242474_
                             _e242424242477_
                             _hd242423242480_
                             _tl242422242482_
                             _e242427242485_
                             _hd242426242488_
                             _tl242425242490_
                             _e242430242493_
                             _hd242429242496_
                             _tl242428242498_
                             _e242433242501_
                             _hd242432242504_
                             _tl242431242506_
                             _e242436242509_
                             _hd242435242512_
                             _tl242434242514_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242434242514_))
                          (___match251708251709_
                           _e242415242453_
                           _hd242414242456_
                           _tl242413242458_
                           _e242418242461_
                           _hd242417242464_
                           _tl242416242466_
                           _e242421242469_
                           _hd242420242472_
                           _tl242419242474_
                           _e242424242477_
                           _hd242423242480_
                           _tl242422242482_
                           _e242427242485_
                           _hd242426242488_
                           _tl242425242490_
                           _e242430242493_
                           _hd242429242496_
                           _tl242428242498_
                           _e242433242501_
                           _hd242432242504_
                           _tl242431242506_
                           _e242436242509_
                           _hd242435242512_
                           _tl242434242514_)
                          (___kont251227251228_))))
                   (___match251700251701_
                    (lambda (_e242415242453_
                             _hd242414242456_
                             _tl242413242458_
                             _e242418242461_
                             _hd242417242464_
                             _tl242416242466_
                             _e242421242469_
                             _hd242420242472_
                             _tl242419242474_
                             _e242424242477_
                             _hd242423242480_
                             _tl242422242482_
                             _e242427242485_
                             _hd242426242488_
                             _tl242425242490_
                             _e242430242493_
                             _hd242429242496_
                             _tl242428242498_
                             _e242433242501_
                             _hd242432242504_
                             _tl242431242506_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242425242490_))
                          (let ((_e242436242509_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242425242490_))))
                            (let ((_tl242434242514_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242436242509_)))
                                  (_hd242435242512_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242436242509_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242434242514_))
                                  (___match251708251709_
                                   _e242415242453_
                                   _hd242414242456_
                                   _tl242413242458_
                                   _e242418242461_
                                   _hd242417242464_
                                   _tl242416242466_
                                   _e242421242469_
                                   _hd242420242472_
                                   _tl242419242474_
                                   _e242424242477_
                                   _hd242423242480_
                                   _tl242422242482_
                                   _e242427242485_
                                   _hd242426242488_
                                   _tl242425242490_
                                   _e242430242493_
                                   _hd242429242496_
                                   _tl242428242498_
                                   _e242433242501_
                                   _hd242432242504_
                                   _tl242431242506_
                                   _e242436242509_
                                   _hd242435242512_
                                   _tl242434242514_)
                                  (___kont251227251228_))))
                          (___kont251227251228_))))
                   (___match251646251647_
                    (lambda (_e242391242551_
                             _hd242390242554_
                             _tl242389242556_
                             _e242394242559_
                             _hd242393242562_
                             _tl242392242564_
                             _e242397242567_
                             _hd242396242570_
                             _tl242395242572_
                             _e242400242575_
                             _hd242399242578_
                             _tl242398242580_
                             _e242403242583_
                             _hd242402242586_
                             _tl242401242588_
                             _e242406242591_
                             _hd242405242594_
                             _tl242404242596_
                             _e242409242599_
                             _hd242408242602_
                             _tl242407242604_)
                      (let ((_L242607_ _hd242408242602_)
                            (_L242608_ _hd242399242578_))
                        (if (and (let ((__tmp252578
                                        (let ((__tmp252579
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L242608_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252579))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252578
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242607_
                                    _self242206_)))
                            (___kont251223251224_ _L242607_ _L242608_)
                            (___kont251227251228_)))))
                   (___match251644251645_
                    (lambda (_e242391242551_
                             _hd242390242554_
                             _tl242389242556_
                             _e242394242559_
                             _hd242393242562_
                             _tl242392242564_
                             _e242397242567_
                             _hd242396242570_
                             _tl242395242572_
                             _e242400242575_
                             _hd242399242578_
                             _tl242398242580_
                             _e242403242583_
                             _hd242402242586_
                             _tl242401242588_
                             _e242406242591_
                             _hd242405242594_
                             _tl242404242596_
                             _e242409242599_
                             _hd242408242602_
                             _tl242407242604_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242401242588_))
                          (___match251646251647_
                           _e242391242551_
                           _hd242390242554_
                           _tl242389242556_
                           _e242394242559_
                           _hd242393242562_
                           _tl242392242564_
                           _e242397242567_
                           _hd242396242570_
                           _tl242395242572_
                           _e242400242575_
                           _hd242399242578_
                           _tl242398242580_
                           _e242403242583_
                           _hd242402242586_
                           _tl242401242588_
                           _e242406242591_
                           _hd242405242594_
                           _tl242404242596_
                           _e242409242599_
                           _hd242408242602_
                           _tl242407242604_)
                          (___match251700251701_
                           _e242391242551_
                           _hd242390242554_
                           _tl242389242556_
                           _e242394242559_
                           _hd242393242562_
                           _tl242392242564_
                           _e242397242567_
                           _hd242396242570_
                           _tl242395242572_
                           _e242400242575_
                           _hd242399242578_
                           _tl242398242580_
                           _e242403242583_
                           _hd242402242586_
                           _tl242401242588_
                           _e242406242591_
                           _hd242405242594_
                           _tl242404242596_
                           _e242409242599_
                           _hd242408242602_
                           _tl242407242604_))))
                   (___match251590251591_
                    (lambda (_e242356242635_
                             _hd242355242638_
                             _tl242354242640_
                             _e242359242643_
                             _hd242358242646_
                             _tl242357242648_
                             _e242362242651_
                             _hd242361242654_
                             _tl242360242656_
                             _e242365242659_
                             _hd242364242662_
                             _tl242363242664_
                             _e242368242667_
                             _hd242367242670_
                             _tl242366242672_
                             _e242371242675_
                             _hd242370242678_
                             _tl242369242680_
                             _e242374242683_
                             _hd242373242686_
                             _tl242372242688_
                             _e242377242691_
                             _hd242376242694_
                             _tl242375242696_
                             _e242380242699_
                             _hd242379242702_
                             _tl242378242704_
                             _e242383242707_
                             _hd242382242710_
                             _tl242381242712_
                             _e242386242715_
                             _hd242385242718_
                             _tl242384242720_)
                      (let ((_L242723_ _hd242385242718_)
                            (_L242724_ _hd242382242710_)
                            (_L242725_ _hd242373242686_)
                            (_L242726_ _hd242364242662_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242726_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242726_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242725_
                                    _self242206_)))
                            (___kont251221251222_
                             _L242723_
                             _L242724_
                             _L242725_
                             _L242726_)
                            (___kont251227251228_)))))
                   (___match251582251583_
                    (lambda (_e242356242635_
                             _hd242355242638_
                             _tl242354242640_
                             _e242359242643_
                             _hd242358242646_
                             _tl242357242648_
                             _e242362242651_
                             _hd242361242654_
                             _tl242360242656_
                             _e242365242659_
                             _hd242364242662_
                             _tl242363242664_
                             _e242368242667_
                             _hd242367242670_
                             _tl242366242672_
                             _e242371242675_
                             _hd242370242678_
                             _tl242369242680_
                             _e242374242683_
                             _hd242373242686_
                             _tl242372242688_
                             _e242377242691_
                             _hd242376242694_
                             _tl242375242696_
                             _e242380242699_
                             _hd242379242702_
                             _tl242378242704_
                             _e242383242707_
                             _hd242382242710_
                             _tl242381242712_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242375242696_))
                          (let ((_e242386242715_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242375242696_))))
                            (let ((_tl242384242720_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242386242715_)))
                                  (_hd242385242718_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242386242715_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242384242720_))
                                  (___match251590251591_
                                   _e242356242635_
                                   _hd242355242638_
                                   _tl242354242640_
                                   _e242359242643_
                                   _hd242358242646_
                                   _tl242357242648_
                                   _e242362242651_
                                   _hd242361242654_
                                   _tl242360242656_
                                   _e242365242659_
                                   _hd242364242662_
                                   _tl242363242664_
                                   _e242368242667_
                                   _hd242367242670_
                                   _tl242366242672_
                                   _e242371242675_
                                   _hd242370242678_
                                   _tl242369242680_
                                   _e242374242683_
                                   _hd242373242686_
                                   _tl242372242688_
                                   _e242377242691_
                                   _hd242376242694_
                                   _tl242375242696_
                                   _e242380242699_
                                   _hd242379242702_
                                   _tl242378242704_
                                   _e242383242707_
                                   _hd242382242710_
                                   _tl242381242712_
                                   _e242386242715_
                                   _hd242385242718_
                                   _tl242384242720_)
                                  (___kont251227251228_))))
                          (___match251706251707_
                           _e242356242635_
                           _hd242355242638_
                           _tl242354242640_
                           _e242359242643_
                           _hd242358242646_
                           _tl242357242648_
                           _e242362242651_
                           _hd242361242654_
                           _tl242360242656_
                           _e242365242659_
                           _hd242364242662_
                           _tl242363242664_
                           _e242368242667_
                           _hd242367242670_
                           _tl242366242672_
                           _e242371242675_
                           _hd242370242678_
                           _tl242369242680_
                           _e242374242683_
                           _hd242373242686_
                           _tl242372242688_
                           _e242377242691_
                           _hd242376242694_
                           _tl242375242696_))))
                   (___match251504251505_
                    (lambda (_e242322242766_
                             _hd242321242769_
                             _tl242320242771_
                             _e242325242774_
                             _hd242324242777_
                             _tl242323242779_
                             _e242328242782_
                             _hd242327242785_
                             _tl242326242787_
                             _e242331242790_
                             _hd242330242793_
                             _tl242329242795_
                             _e242334242798_
                             _hd242333242801_
                             _tl242332242803_
                             _e242337242806_
                             _hd242336242809_
                             _tl242335242811_
                             _e242340242814_
                             _hd242339242817_
                             _tl242338242819_
                             _e242343242822_
                             _hd242342242825_
                             _tl242341242827_
                             _e242346242830_
                             _hd242345242833_
                             _tl242344242835_
                             _e242349242838_
                             _hd242348242841_
                             _tl242347242843_)
                      (let ((_L242846_ _hd242348242841_)
                            (_L242847_ _hd242339242817_)
                            (_L242848_ _hd242330242793_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242848_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L242848_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L242847_
                                    _self242206_)))
                            (___kont251219251220_
                             _L242846_
                             _L242847_
                             _L242848_)
                            (___match251708251709_
                             _e242322242766_
                             _hd242321242769_
                             _tl242320242771_
                             _e242325242774_
                             _hd242324242777_
                             _tl242323242779_
                             _e242328242782_
                             _hd242327242785_
                             _tl242326242787_
                             _e242331242790_
                             _hd242330242793_
                             _tl242329242795_
                             _e242334242798_
                             _hd242333242801_
                             _tl242332242803_
                             _e242337242806_
                             _hd242336242809_
                             _tl242335242811_
                             _e242340242814_
                             _hd242339242817_
                             _tl242338242819_
                             _e242343242822_
                             _hd242342242825_
                             _tl242341242827_)))))
                   (___match251502251503_
                    (lambda (_e242322242766_
                             _hd242321242769_
                             _tl242320242771_
                             _e242325242774_
                             _hd242324242777_
                             _tl242323242779_
                             _e242328242782_
                             _hd242327242785_
                             _tl242326242787_
                             _e242331242790_
                             _hd242330242793_
                             _tl242329242795_
                             _e242334242798_
                             _hd242333242801_
                             _tl242332242803_
                             _e242337242806_
                             _hd242336242809_
                             _tl242335242811_
                             _e242340242814_
                             _hd242339242817_
                             _tl242338242819_
                             _e242343242822_
                             _hd242342242825_
                             _tl242341242827_
                             _e242346242830_
                             _hd242345242833_
                             _tl242344242835_
                             _e242349242838_
                             _hd242348242841_
                             _tl242347242843_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242341242827_))
                          (___match251504251505_
                           _e242322242766_
                           _hd242321242769_
                           _tl242320242771_
                           _e242325242774_
                           _hd242324242777_
                           _tl242323242779_
                           _e242328242782_
                           _hd242327242785_
                           _tl242326242787_
                           _e242331242790_
                           _hd242330242793_
                           _tl242329242795_
                           _e242334242798_
                           _hd242333242801_
                           _tl242332242803_
                           _e242337242806_
                           _hd242336242809_
                           _tl242335242811_
                           _e242340242814_
                           _hd242339242817_
                           _tl242338242819_
                           _e242343242822_
                           _hd242342242825_
                           _tl242341242827_
                           _e242346242830_
                           _hd242345242833_
                           _tl242344242835_
                           _e242349242838_
                           _hd242348242841_
                           _tl242347242843_)
                          (___match251582251583_
                           _e242322242766_
                           _hd242321242769_
                           _tl242320242771_
                           _e242325242774_
                           _hd242324242777_
                           _tl242323242779_
                           _e242328242782_
                           _hd242327242785_
                           _tl242326242787_
                           _e242331242790_
                           _hd242330242793_
                           _tl242329242795_
                           _e242334242798_
                           _hd242333242801_
                           _tl242332242803_
                           _e242337242806_
                           _hd242336242809_
                           _tl242335242811_
                           _e242340242814_
                           _hd242339242817_
                           _tl242338242819_
                           _e242343242822_
                           _hd242342242825_
                           _tl242341242827_
                           _e242346242830_
                           _hd242345242833_
                           _tl242344242835_
                           _e242349242838_
                           _hd242348242841_
                           _tl242347242843_))))
                   (___match251492251493_
                    (lambda (_e242322242766_
                             _hd242321242769_
                             _tl242320242771_
                             _e242325242774_
                             _hd242324242777_
                             _tl242323242779_
                             _e242328242782_
                             _hd242327242785_
                             _tl242326242787_
                             _e242331242790_
                             _hd242330242793_
                             _tl242329242795_
                             _e242334242798_
                             _hd242333242801_
                             _tl242332242803_
                             _e242337242806_
                             _hd242336242809_
                             _tl242335242811_
                             _e242340242814_
                             _hd242339242817_
                             _tl242338242819_
                             _e242343242822_
                             _hd242342242825_
                             _tl242341242827_
                             _e242346242830_
                             _hd242345242833_
                             _tl242344242835_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242345242833_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242344242835_))
                              (let ((_e242349242838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242344242835_))))
                                (let ((_tl242347242843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242349242838_)))
                                      (_hd242348242841_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242349242838_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242347242843_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242341242827_))
                                          (___match251504251505_
                                           _e242322242766_
                                           _hd242321242769_
                                           _tl242320242771_
                                           _e242325242774_
                                           _hd242324242777_
                                           _tl242323242779_
                                           _e242328242782_
                                           _hd242327242785_
                                           _tl242326242787_
                                           _e242331242790_
                                           _hd242330242793_
                                           _tl242329242795_
                                           _e242334242798_
                                           _hd242333242801_
                                           _tl242332242803_
                                           _e242337242806_
                                           _hd242336242809_
                                           _tl242335242811_
                                           _e242340242814_
                                           _hd242339242817_
                                           _tl242338242819_
                                           _e242343242822_
                                           _hd242342242825_
                                           _tl242341242827_
                                           _e242346242830_
                                           _hd242345242833_
                                           _tl242344242835_
                                           _e242349242838_
                                           _hd242348242841_
                                           _tl242347242843_)
                                          (___match251582251583_
                                           _e242322242766_
                                           _hd242321242769_
                                           _tl242320242771_
                                           _e242325242774_
                                           _hd242324242777_
                                           _tl242323242779_
                                           _e242328242782_
                                           _hd242327242785_
                                           _tl242326242787_
                                           _e242331242790_
                                           _hd242330242793_
                                           _tl242329242795_
                                           _e242334242798_
                                           _hd242333242801_
                                           _tl242332242803_
                                           _e242337242806_
                                           _hd242336242809_
                                           _tl242335242811_
                                           _e242340242814_
                                           _hd242339242817_
                                           _tl242338242819_
                                           _e242343242822_
                                           _hd242342242825_
                                           _tl242341242827_
                                           _e242346242830_
                                           _hd242345242833_
                                           _tl242344242835_
                                           _e242349242838_
                                           _hd242348242841_
                                           _tl242347242843_))
                                      (___match251706251707_
                                       _e242322242766_
                                       _hd242321242769_
                                       _tl242320242771_
                                       _e242325242774_
                                       _hd242324242777_
                                       _tl242323242779_
                                       _e242328242782_
                                       _hd242327242785_
                                       _tl242326242787_
                                       _e242331242790_
                                       _hd242330242793_
                                       _tl242329242795_
                                       _e242334242798_
                                       _hd242333242801_
                                       _tl242332242803_
                                       _e242337242806_
                                       _hd242336242809_
                                       _tl242335242811_
                                       _e242340242814_
                                       _hd242339242817_
                                       _tl242338242819_
                                       _e242343242822_
                                       _hd242342242825_
                                       _tl242341242827_))))
                              (___match251706251707_
                               _e242322242766_
                               _hd242321242769_
                               _tl242320242771_
                               _e242325242774_
                               _hd242324242777_
                               _tl242323242779_
                               _e242328242782_
                               _hd242327242785_
                               _tl242326242787_
                               _e242331242790_
                               _hd242330242793_
                               _tl242329242795_
                               _e242334242798_
                               _hd242333242801_
                               _tl242332242803_
                               _e242337242806_
                               _hd242336242809_
                               _tl242335242811_
                               _e242340242814_
                               _hd242339242817_
                               _tl242338242819_
                               _e242343242822_
                               _hd242342242825_
                               _tl242341242827_))
                          (___match251706251707_
                           _e242322242766_
                           _hd242321242769_
                           _tl242320242771_
                           _e242325242774_
                           _hd242324242777_
                           _tl242323242779_
                           _e242328242782_
                           _hd242327242785_
                           _tl242326242787_
                           _e242331242790_
                           _hd242330242793_
                           _tl242329242795_
                           _e242334242798_
                           _hd242333242801_
                           _tl242332242803_
                           _e242337242806_
                           _hd242336242809_
                           _tl242335242811_
                           _e242340242814_
                           _hd242339242817_
                           _tl242338242819_
                           _e242343242822_
                           _hd242342242825_
                           _tl242341242827_))))
                   (___match251424251425_
                    (lambda (_e242271242885_
                             _hd242270242888_
                             _tl242269242890_
                             _e242274242893_
                             _hd242273242896_
                             _tl242272242898_
                             _e242277242901_
                             _hd242276242904_
                             _tl242275242906_
                             _e242280242909_
                             _hd242279242912_
                             _tl242278242914_
                             _e242283242917_
                             _hd242282242920_
                             _tl242281242922_
                             _e242286242925_
                             _hd242285242928_
                             _tl242284242930_
                             _e242289242933_
                             _hd242288242936_
                             _tl242287242938_
                             _e242292242941_
                             _hd242291242944_
                             _tl242290242946_
                             _e242295242949_
                             _hd242294242952_
                             _tl242293242954_
                             _e242298242957_
                             _hd242297242960_
                             _tl242296242962_
                             _e242301242965_
                             _hd242300242968_
                             _tl242299242970_
                             _e242304242973_
                             _hd242303242976_
                             _tl242302242978_
                             _e242307242981_
                             _hd242306242984_
                             _tl242305242986_
                             ___splice251217251218_
                             _target242308242989_
                             _tl242310242991_)
                      (letrec ((_loop242311242994_
                                (lambda (_hd242309242997_ _args242315242999_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242309242997_))
                                      (let ((_e242312243002_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242309242997_))))
                                        (let ((_lp-tl242314243007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242312243002_)))
                                              (_lp-hd242313243005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242312243002_))))
                                          (let ((__tmp252580
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242313243005_
                                                         _args242315242999_))))
                                            (declare (not safe))
                                            (_loop242311242994_
                                             _lp-tl242314243007_
                                             __tmp252580))))
                                      (let ((_args242316243010_
                                             (reverse _args242315242999_)))
                                        (let ((_L243013_ _args242316243010_)
                                              (_L243014_ _hd242306242984_)
                                              (_L243015_ _hd242297242960_)
                                              (_L243016_ _hd242288242936_)
                                              (_L243017_ _hd242279242912_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243017_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243016_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243015_
                                                      _self242206_)))
                                              (___kont251215251216_
                                               _L243013_
                                               _L243014_
                                               _L243015_
                                               _L243016_
                                               _L243017_)
                                              (___kont251227251228_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242311242994_ _target242308242989_ '())))))
                   (___match251382251383_
                    (lambda (_e242271242885_
                             _hd242270242888_
                             _tl242269242890_
                             _e242274242893_
                             _hd242273242896_
                             _tl242272242898_
                             _e242277242901_
                             _hd242276242904_
                             _tl242275242906_
                             _e242280242909_
                             _hd242279242912_
                             _tl242278242914_
                             _e242283242917_
                             _hd242282242920_
                             _tl242281242922_
                             _e242286242925_
                             _hd242285242928_
                             _tl242284242930_
                             _e242289242933_
                             _hd242288242936_
                             _tl242287242938_
                             _e242292242941_
                             _hd242291242944_
                             _tl242290242946_
                             _e242295242949_
                             _hd242294242952_
                             _tl242293242954_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242294242952_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242293242954_))
                              (let ((_e242298242957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242293242954_))))
                                (let ((_tl242296242962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242298242957_)))
                                      (_hd242297242960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242298242957_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242296242962_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242290242946_))
                                          (let ((_e242301242965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242290242946_))))
                                            (let ((_tl242299242970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242301242965_)))
                                                  (_hd242300242968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242301242965_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242300242968_))
                                                  (let ((_e242304242973_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242300242968_))))
                                                    (let ((_tl242302242978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242304242973_)))
                                                          (_hd242303242976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242304242973_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242303242976_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242303242976_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242302242978_))
                          (let ((_e242307242981_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242302242978_))))
                            (let ((_tl242305242986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242307242981_)))
                                  (_hd242306242984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242307242981_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242305242986_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242299242970_))
                                      (let ((___splice251217251218_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242299242970_
                                                '0))))
                                        (let ((_tl242310242991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251217251218_
                                                  '1)))
                                              (_target242308242989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251217251218_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242310242991_))
                                              (___match251424251425_
                                               _e242271242885_
                                               _hd242270242888_
                                               _tl242269242890_
                                               _e242274242893_
                                               _hd242273242896_
                                               _tl242272242898_
                                               _e242277242901_
                                               _hd242276242904_
                                               _tl242275242906_
                                               _e242280242909_
                                               _hd242279242912_
                                               _tl242278242914_
                                               _e242283242917_
                                               _hd242282242920_
                                               _tl242281242922_
                                               _e242286242925_
                                               _hd242285242928_
                                               _tl242284242930_
                                               _e242289242933_
                                               _hd242288242936_
                                               _tl242287242938_
                                               _e242292242941_
                                               _hd242291242944_
                                               _tl242290242946_
                                               _e242295242949_
                                               _hd242294242952_
                                               _tl242293242954_
                                               _e242298242957_
                                               _hd242297242960_
                                               _tl242296242962_
                                               _e242301242965_
                                               _hd242300242968_
                                               _tl242299242970_
                                               _e242304242973_
                                               _hd242303242976_
                                               _tl242302242978_
                                               _e242307242981_
                                               _hd242306242984_
                                               _tl242305242986_
                                               ___splice251217251218_
                                               _target242308242989_
                                               _tl242310242991_)
                                              (___kont251227251228_))))
                                      (___kont251227251228_))
                                  (___kont251227251228_))))
                          (___kont251227251228_))
                      (___kont251227251228_))
                  (___kont251227251228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251227251228_))))
                                          (___match251706251707_
                                           _e242271242885_
                                           _hd242270242888_
                                           _tl242269242890_
                                           _e242274242893_
                                           _hd242273242896_
                                           _tl242272242898_
                                           _e242277242901_
                                           _hd242276242904_
                                           _tl242275242906_
                                           _e242280242909_
                                           _hd242279242912_
                                           _tl242278242914_
                                           _e242283242917_
                                           _hd242282242920_
                                           _tl242281242922_
                                           _e242286242925_
                                           _hd242285242928_
                                           _tl242284242930_
                                           _e242289242933_
                                           _hd242288242936_
                                           _tl242287242938_
                                           _e242292242941_
                                           _hd242291242944_
                                           _tl242290242946_))
                                      (___match251706251707_
                                       _e242271242885_
                                       _hd242270242888_
                                       _tl242269242890_
                                       _e242274242893_
                                       _hd242273242896_
                                       _tl242272242898_
                                       _e242277242901_
                                       _hd242276242904_
                                       _tl242275242906_
                                       _e242280242909_
                                       _hd242279242912_
                                       _tl242278242914_
                                       _e242283242917_
                                       _hd242282242920_
                                       _tl242281242922_
                                       _e242286242925_
                                       _hd242285242928_
                                       _tl242284242930_
                                       _e242289242933_
                                       _hd242288242936_
                                       _tl242287242938_
                                       _e242292242941_
                                       _hd242291242944_
                                       _tl242290242946_))))
                              (___match251706251707_
                               _e242271242885_
                               _hd242270242888_
                               _tl242269242890_
                               _e242274242893_
                               _hd242273242896_
                               _tl242272242898_
                               _e242277242901_
                               _hd242276242904_
                               _tl242275242906_
                               _e242280242909_
                               _hd242279242912_
                               _tl242278242914_
                               _e242283242917_
                               _hd242282242920_
                               _tl242281242922_
                               _e242286242925_
                               _hd242285242928_
                               _tl242284242930_
                               _e242289242933_
                               _hd242288242936_
                               _tl242287242938_
                               _e242292242941_
                               _hd242291242944_
                               _tl242290242946_))
                          (___match251492251493_
                           _e242271242885_
                           _hd242270242888_
                           _tl242269242890_
                           _e242274242893_
                           _hd242273242896_
                           _tl242272242898_
                           _e242277242901_
                           _hd242276242904_
                           _tl242275242906_
                           _e242280242909_
                           _hd242279242912_
                           _tl242278242914_
                           _e242283242917_
                           _hd242282242920_
                           _tl242281242922_
                           _e242286242925_
                           _hd242285242928_
                           _tl242284242930_
                           _e242289242933_
                           _hd242288242936_
                           _tl242287242938_
                           _e242292242941_
                           _hd242291242944_
                           _tl242290242946_
                           _e242295242949_
                           _hd242294242952_
                           _tl242293242954_))))
                   (___match251314251315_
                    (lambda (_e242227243074_
                             _hd242226243077_
                             _tl242225243079_
                             _e242230243082_
                             _hd242229243085_
                             _tl242228243087_
                             _e242233243090_
                             _hd242232243093_
                             _tl242231243095_
                             _e242236243098_
                             _hd242235243101_
                             _tl242234243103_
                             _e242239243106_
                             _hd242238243109_
                             _tl242237243111_
                             _e242242243114_
                             _hd242241243117_
                             _tl242240243119_
                             _e242245243122_
                             _hd242244243125_
                             _tl242243243127_
                             _e242248243130_
                             _hd242247243133_
                             _tl242246243135_
                             _e242251243138_
                             _hd242250243141_
                             _tl242249243143_
                             _e242254243146_
                             _hd242253243149_
                             _tl242252243151_
                             ___splice251213251214_
                             _target242255243154_
                             _tl242257243156_)
                      (letrec ((_loop242258243159_
                                (lambda (_hd242256243162_ _args242262243164_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242256243162_))
                                      (let ((_e242259243167_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242256243162_))))
                                        (let ((_lp-tl242261243172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242259243167_)))
                                              (_lp-hd242260243170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242259243167_))))
                                          (let ((__tmp252581
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242260243170_
                                                         _args242262243164_))))
                                            (declare (not safe))
                                            (_loop242258243159_
                                             _lp-tl242261243172_
                                             __tmp252581))))
                                      (let ((_args242263243175_
                                             (reverse _args242262243164_)))
                                        (let ((_L243178_ _args242263243175_)
                                              (_L243179_ _hd242253243149_)
                                              (_L243180_ _hd242244243125_)
                                              (_L243181_ _hd242235243101_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243181_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243180_
                                                      _self242206_)))
                                              (___kont251211251212_
                                               _L243178_
                                               _L243179_
                                               _L243180_
                                               _L243181_)
                                              (___match251502251503_
                                               _e242227243074_
                                               _hd242226243077_
                                               _tl242225243079_
                                               _e242230243082_
                                               _hd242229243085_
                                               _tl242228243087_
                                               _e242233243090_
                                               _hd242232243093_
                                               _tl242231243095_
                                               _e242236243098_
                                               _hd242235243101_
                                               _tl242234243103_
                                               _e242239243106_
                                               _hd242238243109_
                                               _tl242237243111_
                                               _e242242243114_
                                               _hd242241243117_
                                               _tl242240243119_
                                               _e242245243122_
                                               _hd242244243125_
                                               _tl242243243127_
                                               _e242248243130_
                                               _hd242247243133_
                                               _tl242246243135_
                                               _e242251243138_
                                               _hd242250243141_
                                               _tl242249243143_
                                               _e242254243146_
                                               _hd242253243149_
                                               _tl242252243151_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242258243159_ _target242255243154_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251209251210_))
                  (let ((_e242227243074_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251209251210_))))
                    (let ((_tl242225243079_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242227243074_)))
                          (_hd242226243077_
                           (let ()
                             (declare (not safe))
                             (##car _e242227243074_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242225243079_))
                          (let ((_e242230243082_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242225243079_))))
                            (let ((_tl242228243087_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242230243082_)))
                                  (_hd242229243085_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242230243082_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242229243085_))
                                  (let ((_e242233243090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242229243085_))))
                                    (let ((_tl242231243095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242233243090_)))
                                          (_hd242232243093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242233243090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242232243093_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242232243093_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242231243095_))
                                                  (let ((_e242236243098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242231243095_))))
                                                    (let ((_tl242234243103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242236243098_)))
                                                          (_hd242235243101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242236243098_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242234243103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242228243087_))
                      (let ((_e242239243106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242228243087_))))
                        (let ((_tl242237243111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242239243106_)))
                              (_hd242238243109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242239243106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242238243109_))
                              (let ((_e242242243114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242238243109_))))
                                (let ((_tl242240243119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242242243114_)))
                                      (_hd242241243117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242242243114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242241243117_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242241243117_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242240243119_))
                                              (let ((_e242245243122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242240243119_))))
                                                (let ((_tl242243243127_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242245243122_)))
                                                      (_hd242244243125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242245243122_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242243243127_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242237243111_))
                                                          (let ((_e242248243130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242237243111_))))
                    (let ((_tl242246243135_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242248243130_)))
                          (_hd242247243133_
                           (let ()
                             (declare (not safe))
                             (##car _e242248243130_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242247243133_))
                          (let ((_e242251243138_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242247243133_))))
                            (let ((_tl242249243143_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242251243138_)))
                                  (_hd242250243141_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242251243138_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242250243141_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242250243141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242249243143_))
                                          (let ((_e242254243146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242249243143_))))
                                            (let ((_tl242252243151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242254243146_)))
                                                  (_hd242253243149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242254243146_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242252243151_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242246243135_))
                                                      (let ((___splice251213251214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242246243135_ '0))))
                (let ((_tl242257243156_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251213251214_ '1)))
                      (_target242255243154_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251213251214_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242257243156_))
                      (___match251314251315_
                       _e242227243074_
                       _hd242226243077_
                       _tl242225243079_
                       _e242230243082_
                       _hd242229243085_
                       _tl242228243087_
                       _e242233243090_
                       _hd242232243093_
                       _tl242231243095_
                       _e242236243098_
                       _hd242235243101_
                       _tl242234243103_
                       _e242239243106_
                       _hd242238243109_
                       _tl242237243111_
                       _e242242243114_
                       _hd242241243117_
                       _tl242240243119_
                       _e242245243122_
                       _hd242244243125_
                       _tl242243243127_
                       _e242248243130_
                       _hd242247243133_
                       _tl242246243135_
                       _e242251243138_
                       _hd242250243141_
                       _tl242249243143_
                       _e242254243146_
                       _hd242253243149_
                       _tl242252243151_
                       ___splice251213251214_
                       _target242255243154_
                       _tl242257243156_)
                      (___match251502251503_
                       _e242227243074_
                       _hd242226243077_
                       _tl242225243079_
                       _e242230243082_
                       _hd242229243085_
                       _tl242228243087_
                       _e242233243090_
                       _hd242232243093_
                       _tl242231243095_
                       _e242236243098_
                       _hd242235243101_
                       _tl242234243103_
                       _e242239243106_
                       _hd242238243109_
                       _tl242237243111_
                       _e242242243114_
                       _hd242241243117_
                       _tl242240243119_
                       _e242245243122_
                       _hd242244243125_
                       _tl242243243127_
                       _e242248243130_
                       _hd242247243133_
                       _tl242246243135_
                       _e242251243138_
                       _hd242250243141_
                       _tl242249243143_
                       _e242254243146_
                       _hd242253243149_
                       _tl242252243151_))))
              (___match251502251503_
               _e242227243074_
               _hd242226243077_
               _tl242225243079_
               _e242230243082_
               _hd242229243085_
               _tl242228243087_
               _e242233243090_
               _hd242232243093_
               _tl242231243095_
               _e242236243098_
               _hd242235243101_
               _tl242234243103_
               _e242239243106_
               _hd242238243109_
               _tl242237243111_
               _e242242243114_
               _hd242241243117_
               _tl242240243119_
               _e242245243122_
               _hd242244243125_
               _tl242243243127_
               _e242248243130_
               _hd242247243133_
               _tl242246243135_
               _e242251243138_
               _hd242250243141_
               _tl242249243143_
               _e242254243146_
               _hd242253243149_
               _tl242252243151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match251706251707_
                                                   _e242227243074_
                                                   _hd242226243077_
                                                   _tl242225243079_
                                                   _e242230243082_
                                                   _hd242229243085_
                                                   _tl242228243087_
                                                   _e242233243090_
                                                   _hd242232243093_
                                                   _tl242231243095_
                                                   _e242236243098_
                                                   _hd242235243101_
                                                   _tl242234243103_
                                                   _e242239243106_
                                                   _hd242238243109_
                                                   _tl242237243111_
                                                   _e242242243114_
                                                   _hd242241243117_
                                                   _tl242240243119_
                                                   _e242245243122_
                                                   _hd242244243125_
                                                   _tl242243243127_
                                                   _e242248243130_
                                                   _hd242247243133_
                                                   _tl242246243135_))))
                                          (___match251706251707_
                                           _e242227243074_
                                           _hd242226243077_
                                           _tl242225243079_
                                           _e242230243082_
                                           _hd242229243085_
                                           _tl242228243087_
                                           _e242233243090_
                                           _hd242232243093_
                                           _tl242231243095_
                                           _e242236243098_
                                           _hd242235243101_
                                           _tl242234243103_
                                           _e242239243106_
                                           _hd242238243109_
                                           _tl242237243111_
                                           _e242242243114_
                                           _hd242241243117_
                                           _tl242240243119_
                                           _e242245243122_
                                           _hd242244243125_
                                           _tl242243243127_
                                           _e242248243130_
                                           _hd242247243133_
                                           _tl242246243135_))
                                      (___match251382251383_
                                       _e242227243074_
                                       _hd242226243077_
                                       _tl242225243079_
                                       _e242230243082_
                                       _hd242229243085_
                                       _tl242228243087_
                                       _e242233243090_
                                       _hd242232243093_
                                       _tl242231243095_
                                       _e242236243098_
                                       _hd242235243101_
                                       _tl242234243103_
                                       _e242239243106_
                                       _hd242238243109_
                                       _tl242237243111_
                                       _e242242243114_
                                       _hd242241243117_
                                       _tl242240243119_
                                       _e242245243122_
                                       _hd242244243125_
                                       _tl242243243127_
                                       _e242248243130_
                                       _hd242247243133_
                                       _tl242246243135_
                                       _e242251243138_
                                       _hd242250243141_
                                       _tl242249243143_))
                                  (___match251706251707_
                                   _e242227243074_
                                   _hd242226243077_
                                   _tl242225243079_
                                   _e242230243082_
                                   _hd242229243085_
                                   _tl242228243087_
                                   _e242233243090_
                                   _hd242232243093_
                                   _tl242231243095_
                                   _e242236243098_
                                   _hd242235243101_
                                   _tl242234243103_
                                   _e242239243106_
                                   _hd242238243109_
                                   _tl242237243111_
                                   _e242242243114_
                                   _hd242241243117_
                                   _tl242240243119_
                                   _e242245243122_
                                   _hd242244243125_
                                   _tl242243243127_
                                   _e242248243130_
                                   _hd242247243133_
                                   _tl242246243135_))))
                          (___match251706251707_
                           _e242227243074_
                           _hd242226243077_
                           _tl242225243079_
                           _e242230243082_
                           _hd242229243085_
                           _tl242228243087_
                           _e242233243090_
                           _hd242232243093_
                           _tl242231243095_
                           _e242236243098_
                           _hd242235243101_
                           _tl242234243103_
                           _e242239243106_
                           _hd242238243109_
                           _tl242237243111_
                           _e242242243114_
                           _hd242241243117_
                           _tl242240243119_
                           _e242245243122_
                           _hd242244243125_
                           _tl242243243127_
                           _e242248243130_
                           _hd242247243133_
                           _tl242246243135_))))
                  (___match251644251645_
                   _e242227243074_
                   _hd242226243077_
                   _tl242225243079_
                   _e242230243082_
                   _hd242229243085_
                   _tl242228243087_
                   _e242233243090_
                   _hd242232243093_
                   _tl242231243095_
                   _e242236243098_
                   _hd242235243101_
                   _tl242234243103_
                   _e242239243106_
                   _hd242238243109_
                   _tl242237243111_
                   _e242242243114_
                   _hd242241243117_
                   _tl242240243119_
                   _e242245243122_
                   _hd242244243125_
                   _tl242243243127_))
              (___kont251227251228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251227251228_))
                                          (___kont251227251228_))
                                      (___kont251227251228_))))
                              (___kont251227251228_))))
                      (___kont251227251228_))
                  (___kont251227251228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251227251228_))
                                              (___kont251227251228_))
                                          (___kont251227251228_))))
                                  (___kont251227251228_))))
                          (___kont251227251228_))))
                  (___kont251227251228_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241151_
               _self241152_
               _$t241153_
               _methods241154_
               _slots241155_
               _class-check241156_
               _struct-check241157_
               _struct-assert241158_)
        (letrec ((_force-e241160_
                  (lambda (_what242203_)
                    (let ((__tmp252582
                           (let ((__tmp252586
                                  (let ((__tmp252587
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp252587)))
                                 (__tmp252583
                                  (let ((__tmp252584
                                         (let ((__tmp252585
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242203_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252585))))
                                    (declare (not safe))
                                    (cons __tmp252584 '()))))
                             (declare (not safe))
                             (cons __tmp252586 __tmp252583))))
                      (declare (not safe))
                      (cons '%#call __tmp252582)))))
          (let* ((___stx251711251712_ _stx241151_)
                 (_g241168241390_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251711251712_)))))
            (let ((___kont251713251714_
                   (lambda (_L242149_ _L242150_ _L242151_ _L242152_)
                     (let ((_$method242197_
                            (let ((__tmp252588
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242150_))))
                              (declare (not safe))
                              (table-ref _methods241154_ __tmp252588)))
                           (_args242198_
                            (map (lambda (_g242185242187_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242185242187_
                                      _self241152_
                                      _$t241153_
                                      _methods241154_
                                      _slots241155_
                                      _class-check241156_
                                      _struct-check241157_
                                      _struct-assert241158_)))
                                 (let ((__tmp252589
                                        (lambda (_g242189242192_
                                                 _g242190242194_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242189242192_
                                                  _g242190242194_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252589 '() _L242149_)))))
                       (let ((__tmp252590
                              (let ((__tmp252591
                                     (let ((__tmp252595
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241160_
                                               _$method242197_)))
                                           (__tmp252592
                                            (let ((__tmp252593
                                                   (let ((__tmp252594
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252594))))
                                              (declare (not safe))
                                              (cons __tmp252593
                                                    _args242198_))))
                                       (declare (not safe))
                                       (cons __tmp252595 __tmp252592))))
                                (declare (not safe))
                                (cons '%#call __tmp252591))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252590 _stx241151_)))))
                  (___kont251717251718_
                   (lambda (_L241981_ _L241982_ _L241983_ _L241984_ _L241985_)
                     (let ((_$method242037_
                            (let ((__tmp252596
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L241982_))))
                              (declare (not safe))
                              (table-ref _methods241154_ __tmp252596)))
                           (_args242038_
                            (map (lambda (_g242025242027_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242025242027_
                                      _self241152_
                                      _$t241153_
                                      _methods241154_
                                      _slots241155_
                                      _class-check241156_
                                      _struct-check241157_
                                      _struct-assert241158_)))
                                 (let ((__tmp252597
                                        (lambda (_g242029242032_
                                                 _g242030242034_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242029242032_
                                                  _g242030242034_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252597 '() _L241981_)))))
                       (let ((__tmp252598
                              (let ((__tmp252599
                                     (let ((__tmp252605
                                            (let ((__tmp252606
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252606)))
                                           (__tmp252600
                                            (let ((__tmp252604
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241160_
                                                      _$method242037_)))
                                                  (__tmp252601
                                                   (let ((__tmp252602
                                                          (let ((__tmp252603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252602
                                                           _args242038_))))
                                              (declare (not safe))
                                              (cons __tmp252604 __tmp252601))))
                                       (declare (not safe))
                                       (cons __tmp252605 __tmp252600))))
                                (declare (not safe))
                                (cons '%#call __tmp252599))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252598 _stx241151_)))))
                  (___kont251721251722_
                   (lambda (_L241812_ _L241813_ _L241814_)
                     (let* ((_$field241846_
                             (let ((__tmp252607
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L241812_))))
                               (declare (not safe))
                               (table-ref _slots241155_ __tmp252607)))
                            (__tmp252608
                             (let ((__tmp252609
                                    (let ((__tmp252616
                                           (let ((__tmp252617
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241153_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252617)))
                                          (__tmp252610
                                           (let ((__tmp252614
                                                  (let ((__tmp252615
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field241846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252615)))
                                                 (__tmp252611
                                                  (let ((__tmp252612
                                                         (let ((__tmp252613
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241152_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252612 '()))))
                                             (declare (not safe))
                                             (cons __tmp252614 __tmp252611))))
                                      (declare (not safe))
                                      (cons __tmp252616 __tmp252610))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp252609))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252608 _stx241151_))))
                  (___kont251723251724_
                   (lambda (_L241686_ _L241687_ _L241688_ _L241689_)
                     (let ((_$field241724_
                            (let ((__tmp252618
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L241687_))))
                              (declare (not safe))
                              (table-ref _slots241155_ __tmp252618)))
                           (_expr241725_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L241686_
                               _self241152_
                               _$t241153_
                               _methods241154_
                               _slots241155_
                               _class-check241156_
                               _struct-check241157_
                               _struct-assert241158_))))
                       (let ((__tmp252619
                              (let ((__tmp252620
                                     (let ((__tmp252628
                                            (let ((__tmp252629
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241153_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252629)))
                                           (__tmp252621
                                            (let ((__tmp252626
                                                   (let ((__tmp252627
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252627)))
                                                  (__tmp252622
                                                   (let ((__tmp252624
                                                          (let ((__tmp252625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252625)))
                 (__tmp252623
                  (let () (declare (not safe)) (cons _expr241725_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252624
                                                           __tmp252623))))
                                              (declare (not safe))
                                              (cons __tmp252626 __tmp252622))))
                                       (declare (not safe))
                                       (cons __tmp252628 __tmp252621))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252620))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252619 _stx241151_)))))
                  (___kont251725251726_
                   (lambda (_L241565_ _L241566_)
                     (let* ((_slot241588_
                             (##structure-ref
                              (let ((__tmp252630
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241566_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252630))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field241590_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241155_ _slot241588_))))
                       (let ((__tmp252631
                              (let ((__tmp252632
                                     (let ((__tmp252639
                                            (let ((__tmp252640
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241153_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252640)))
                                           (__tmp252633
                                            (let ((__tmp252637
                                                   (let ((__tmp252638
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252638)))
                                                  (__tmp252634
                                                   (let ((__tmp252635
                                                          (let ((__tmp252636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252635 '()))))
                                              (declare (not safe))
                                              (cons __tmp252637 __tmp252634))))
                                       (declare (not safe))
                                       (cons __tmp252639 __tmp252633))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp252632))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252631 _stx241151_)))))
                  (___kont251727251728_
                   (lambda (_L241466_ _L241467_ _L241468_)
                     (let* ((_slot241497_
                             (##structure-ref
                              (let ((__tmp252641
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241468_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252641))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field241499_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241155_ _slot241497_)))
                            (_expr241501_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241466_
                                _self241152_
                                _$t241153_
                                _methods241154_
                                _slots241155_
                                _class-check241156_
                                _struct-check241157_
                                _struct-assert241158_))))
                       (let ((__tmp252642
                              (let ((__tmp252643
                                     (let ((__tmp252651
                                            (let ((__tmp252652
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241153_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252652)))
                                           (__tmp252644
                                            (let ((__tmp252649
                                                   (let ((__tmp252650
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252650)))
                                                  (__tmp252645
                                                   (let ((__tmp252647
                                                          (let ((__tmp252648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241152_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252648)))
                 (__tmp252646
                  (let () (declare (not safe)) (cons _expr241501_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252647
                                                           __tmp252646))))
                                              (declare (not safe))
                                              (cons __tmp252649 __tmp252645))))
                                       (declare (not safe))
                                       (cons __tmp252651 __tmp252644))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252643))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252642 _stx241151_)))))
                  (___kont251729251730_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241151_
                        _self241152_
                        _$t241153_
                        _methods241154_
                        _slots241155_
                        _class-check241156_
                        _struct-check241157_
                        _struct-assert241158_)))))
              (let* ((___match252210252211_
                      (lambda (_e241364241402_
                               _hd241363241405_
                               _tl241362241407_
                               _e241367241410_
                               _hd241366241413_
                               _tl241365241415_
                               _e241370241418_
                               _hd241369241421_
                               _tl241368241423_
                               _e241373241426_
                               _hd241372241429_
                               _tl241371241431_
                               _e241376241434_
                               _hd241375241437_
                               _tl241374241439_
                               _e241379241442_
                               _hd241378241445_
                               _tl241377241447_
                               _e241382241450_
                               _hd241381241453_
                               _tl241380241455_
                               _e241385241458_
                               _hd241384241461_
                               _tl241383241463_)
                        (let ((_L241466_ _hd241384241461_)
                              (_L241467_ _hd241381241453_)
                              (_L241468_ _hd241372241429_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241467_
                                      _self241152_))
                                   (let ((__tmp252653
                                          (let ((__tmp252654
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241468_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252654))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252653
                                      'gxc#!mutator::t)))
                              (___kont251727251728_
                               _L241466_
                               _L241467_
                               _L241468_)
                              (___kont251729251730_)))))
                     (___match252208252209_
                      (lambda (_e241364241402_
                               _hd241363241405_
                               _tl241362241407_
                               _e241367241410_
                               _hd241366241413_
                               _tl241365241415_
                               _e241370241418_
                               _hd241369241421_
                               _tl241368241423_
                               _e241373241426_
                               _hd241372241429_
                               _tl241371241431_
                               _e241376241434_
                               _hd241375241437_
                               _tl241374241439_
                               _e241379241442_
                               _hd241378241445_
                               _tl241377241447_
                               _e241382241450_
                               _hd241381241453_
                               _tl241380241455_
                               _e241385241458_
                               _hd241384241461_
                               _tl241383241463_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241383241463_))
                            (___match252210252211_
                             _e241364241402_
                             _hd241363241405_
                             _tl241362241407_
                             _e241367241410_
                             _hd241366241413_
                             _tl241365241415_
                             _e241370241418_
                             _hd241369241421_
                             _tl241368241423_
                             _e241373241426_
                             _hd241372241429_
                             _tl241371241431_
                             _e241376241434_
                             _hd241375241437_
                             _tl241374241439_
                             _e241379241442_
                             _hd241378241445_
                             _tl241377241447_
                             _e241382241450_
                             _hd241381241453_
                             _tl241380241455_
                             _e241385241458_
                             _hd241384241461_
                             _tl241383241463_)
                            (___kont251729251730_))))
                     (___match252202252203_
                      (lambda (_e241364241402_
                               _hd241363241405_
                               _tl241362241407_
                               _e241367241410_
                               _hd241366241413_
                               _tl241365241415_
                               _e241370241418_
                               _hd241369241421_
                               _tl241368241423_
                               _e241373241426_
                               _hd241372241429_
                               _tl241371241431_
                               _e241376241434_
                               _hd241375241437_
                               _tl241374241439_
                               _e241379241442_
                               _hd241378241445_
                               _tl241377241447_
                               _e241382241450_
                               _hd241381241453_
                               _tl241380241455_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241374241439_))
                            (let ((_e241385241458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241374241439_))))
                              (let ((_tl241383241463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241385241458_)))
                                    (_hd241384241461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241385241458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241383241463_))
                                    (___match252210252211_
                                     _e241364241402_
                                     _hd241363241405_
                                     _tl241362241407_
                                     _e241367241410_
                                     _hd241366241413_
                                     _tl241365241415_
                                     _e241370241418_
                                     _hd241369241421_
                                     _tl241368241423_
                                     _e241373241426_
                                     _hd241372241429_
                                     _tl241371241431_
                                     _e241376241434_
                                     _hd241375241437_
                                     _tl241374241439_
                                     _e241379241442_
                                     _hd241378241445_
                                     _tl241377241447_
                                     _e241382241450_
                                     _hd241381241453_
                                     _tl241380241455_
                                     _e241385241458_
                                     _hd241384241461_
                                     _tl241383241463_)
                                    (___kont251729251730_))))
                            (___kont251729251730_))))
                     (___match252148252149_
                      (lambda (_e241340241509_
                               _hd241339241512_
                               _tl241338241514_
                               _e241343241517_
                               _hd241342241520_
                               _tl241341241522_
                               _e241346241525_
                               _hd241345241528_
                               _tl241344241530_
                               _e241349241533_
                               _hd241348241536_
                               _tl241347241538_
                               _e241352241541_
                               _hd241351241544_
                               _tl241350241546_
                               _e241355241549_
                               _hd241354241552_
                               _tl241353241554_
                               _e241358241557_
                               _hd241357241560_
                               _tl241356241562_)
                        (let ((_L241565_ _hd241357241560_)
                              (_L241566_ _hd241348241536_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241565_
                                      _self241152_))
                                   (let ((__tmp252655
                                          (let ((__tmp252656
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241566_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252656))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252655
                                      'gxc#!accessor::t)))
                              (___kont251725251726_ _L241565_ _L241566_)
                              (___kont251729251730_)))))
                     (___match252146252147_
                      (lambda (_e241340241509_
                               _hd241339241512_
                               _tl241338241514_
                               _e241343241517_
                               _hd241342241520_
                               _tl241341241522_
                               _e241346241525_
                               _hd241345241528_
                               _tl241344241530_
                               _e241349241533_
                               _hd241348241536_
                               _tl241347241538_
                               _e241352241541_
                               _hd241351241544_
                               _tl241350241546_
                               _e241355241549_
                               _hd241354241552_
                               _tl241353241554_
                               _e241358241557_
                               _hd241357241560_
                               _tl241356241562_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241350241546_))
                            (___match252148252149_
                             _e241340241509_
                             _hd241339241512_
                             _tl241338241514_
                             _e241343241517_
                             _hd241342241520_
                             _tl241341241522_
                             _e241346241525_
                             _hd241345241528_
                             _tl241344241530_
                             _e241349241533_
                             _hd241348241536_
                             _tl241347241538_
                             _e241352241541_
                             _hd241351241544_
                             _tl241350241546_
                             _e241355241549_
                             _hd241354241552_
                             _tl241353241554_
                             _e241358241557_
                             _hd241357241560_
                             _tl241356241562_)
                            (___match252202252203_
                             _e241340241509_
                             _hd241339241512_
                             _tl241338241514_
                             _e241343241517_
                             _hd241342241520_
                             _tl241341241522_
                             _e241346241525_
                             _hd241345241528_
                             _tl241344241530_
                             _e241349241533_
                             _hd241348241536_
                             _tl241347241538_
                             _e241352241541_
                             _hd241351241544_
                             _tl241350241546_
                             _e241355241549_
                             _hd241354241552_
                             _tl241353241554_
                             _e241358241557_
                             _hd241357241560_
                             _tl241356241562_))))
                     (___match252092252093_
                      (lambda (_e241305241598_
                               _hd241304241601_
                               _tl241303241603_
                               _e241308241606_
                               _hd241307241609_
                               _tl241306241611_
                               _e241311241614_
                               _hd241310241617_
                               _tl241309241619_
                               _e241314241622_
                               _hd241313241625_
                               _tl241312241627_
                               _e241317241630_
                               _hd241316241633_
                               _tl241315241635_
                               _e241320241638_
                               _hd241319241641_
                               _tl241318241643_
                               _e241323241646_
                               _hd241322241649_
                               _tl241321241651_
                               _e241326241654_
                               _hd241325241657_
                               _tl241324241659_
                               _e241329241662_
                               _hd241328241665_
                               _tl241327241667_
                               _e241332241670_
                               _hd241331241673_
                               _tl241330241675_
                               _e241335241678_
                               _hd241334241681_
                               _tl241333241683_)
                        (let ((_L241686_ _hd241334241681_)
                              (_L241687_ _hd241331241673_)
                              (_L241688_ _hd241322241649_)
                              (_L241689_ _hd241313241625_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241689_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241689_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241688_
                                      _self241152_)))
                              (___kont251723251724_
                               _L241686_
                               _L241687_
                               _L241688_
                               _L241689_)
                              (___kont251729251730_)))))
                     (___match252084252085_
                      (lambda (_e241305241598_
                               _hd241304241601_
                               _tl241303241603_
                               _e241308241606_
                               _hd241307241609_
                               _tl241306241611_
                               _e241311241614_
                               _hd241310241617_
                               _tl241309241619_
                               _e241314241622_
                               _hd241313241625_
                               _tl241312241627_
                               _e241317241630_
                               _hd241316241633_
                               _tl241315241635_
                               _e241320241638_
                               _hd241319241641_
                               _tl241318241643_
                               _e241323241646_
                               _hd241322241649_
                               _tl241321241651_
                               _e241326241654_
                               _hd241325241657_
                               _tl241324241659_
                               _e241329241662_
                               _hd241328241665_
                               _tl241327241667_
                               _e241332241670_
                               _hd241331241673_
                               _tl241330241675_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241324241659_))
                            (let ((_e241335241678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241324241659_))))
                              (let ((_tl241333241683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241335241678_)))
                                    (_hd241334241681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241335241678_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241333241683_))
                                    (___match252092252093_
                                     _e241305241598_
                                     _hd241304241601_
                                     _tl241303241603_
                                     _e241308241606_
                                     _hd241307241609_
                                     _tl241306241611_
                                     _e241311241614_
                                     _hd241310241617_
                                     _tl241309241619_
                                     _e241314241622_
                                     _hd241313241625_
                                     _tl241312241627_
                                     _e241317241630_
                                     _hd241316241633_
                                     _tl241315241635_
                                     _e241320241638_
                                     _hd241319241641_
                                     _tl241318241643_
                                     _e241323241646_
                                     _hd241322241649_
                                     _tl241321241651_
                                     _e241326241654_
                                     _hd241325241657_
                                     _tl241324241659_
                                     _e241329241662_
                                     _hd241328241665_
                                     _tl241327241667_
                                     _e241332241670_
                                     _hd241331241673_
                                     _tl241330241675_
                                     _e241335241678_
                                     _hd241334241681_
                                     _tl241333241683_)
                                    (___kont251729251730_))))
                            (___match252208252209_
                             _e241305241598_
                             _hd241304241601_
                             _tl241303241603_
                             _e241308241606_
                             _hd241307241609_
                             _tl241306241611_
                             _e241311241614_
                             _hd241310241617_
                             _tl241309241619_
                             _e241314241622_
                             _hd241313241625_
                             _tl241312241627_
                             _e241317241630_
                             _hd241316241633_
                             _tl241315241635_
                             _e241320241638_
                             _hd241319241641_
                             _tl241318241643_
                             _e241323241646_
                             _hd241322241649_
                             _tl241321241651_
                             _e241326241654_
                             _hd241325241657_
                             _tl241324241659_))))
                     (___match252006252007_
                      (lambda (_e241271241732_
                               _hd241270241735_
                               _tl241269241737_
                               _e241274241740_
                               _hd241273241743_
                               _tl241272241745_
                               _e241277241748_
                               _hd241276241751_
                               _tl241275241753_
                               _e241280241756_
                               _hd241279241759_
                               _tl241278241761_
                               _e241283241764_
                               _hd241282241767_
                               _tl241281241769_
                               _e241286241772_
                               _hd241285241775_
                               _tl241284241777_
                               _e241289241780_
                               _hd241288241783_
                               _tl241287241785_
                               _e241292241788_
                               _hd241291241791_
                               _tl241290241793_
                               _e241295241796_
                               _hd241294241799_
                               _tl241293241801_
                               _e241298241804_
                               _hd241297241807_
                               _tl241296241809_)
                        (let ((_L241812_ _hd241297241807_)
                              (_L241813_ _hd241288241783_)
                              (_L241814_ _hd241279241759_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241814_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L241814_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241813_
                                      _self241152_)))
                              (___kont251721251722_
                               _L241812_
                               _L241813_
                               _L241814_)
                              (___match252210252211_
                               _e241271241732_
                               _hd241270241735_
                               _tl241269241737_
                               _e241274241740_
                               _hd241273241743_
                               _tl241272241745_
                               _e241277241748_
                               _hd241276241751_
                               _tl241275241753_
                               _e241280241756_
                               _hd241279241759_
                               _tl241278241761_
                               _e241283241764_
                               _hd241282241767_
                               _tl241281241769_
                               _e241286241772_
                               _hd241285241775_
                               _tl241284241777_
                               _e241289241780_
                               _hd241288241783_
                               _tl241287241785_
                               _e241292241788_
                               _hd241291241791_
                               _tl241290241793_)))))
                     (___match252004252005_
                      (lambda (_e241271241732_
                               _hd241270241735_
                               _tl241269241737_
                               _e241274241740_
                               _hd241273241743_
                               _tl241272241745_
                               _e241277241748_
                               _hd241276241751_
                               _tl241275241753_
                               _e241280241756_
                               _hd241279241759_
                               _tl241278241761_
                               _e241283241764_
                               _hd241282241767_
                               _tl241281241769_
                               _e241286241772_
                               _hd241285241775_
                               _tl241284241777_
                               _e241289241780_
                               _hd241288241783_
                               _tl241287241785_
                               _e241292241788_
                               _hd241291241791_
                               _tl241290241793_
                               _e241295241796_
                               _hd241294241799_
                               _tl241293241801_
                               _e241298241804_
                               _hd241297241807_
                               _tl241296241809_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241290241793_))
                            (___match252006252007_
                             _e241271241732_
                             _hd241270241735_
                             _tl241269241737_
                             _e241274241740_
                             _hd241273241743_
                             _tl241272241745_
                             _e241277241748_
                             _hd241276241751_
                             _tl241275241753_
                             _e241280241756_
                             _hd241279241759_
                             _tl241278241761_
                             _e241283241764_
                             _hd241282241767_
                             _tl241281241769_
                             _e241286241772_
                             _hd241285241775_
                             _tl241284241777_
                             _e241289241780_
                             _hd241288241783_
                             _tl241287241785_
                             _e241292241788_
                             _hd241291241791_
                             _tl241290241793_
                             _e241295241796_
                             _hd241294241799_
                             _tl241293241801_
                             _e241298241804_
                             _hd241297241807_
                             _tl241296241809_)
                            (___match252084252085_
                             _e241271241732_
                             _hd241270241735_
                             _tl241269241737_
                             _e241274241740_
                             _hd241273241743_
                             _tl241272241745_
                             _e241277241748_
                             _hd241276241751_
                             _tl241275241753_
                             _e241280241756_
                             _hd241279241759_
                             _tl241278241761_
                             _e241283241764_
                             _hd241282241767_
                             _tl241281241769_
                             _e241286241772_
                             _hd241285241775_
                             _tl241284241777_
                             _e241289241780_
                             _hd241288241783_
                             _tl241287241785_
                             _e241292241788_
                             _hd241291241791_
                             _tl241290241793_
                             _e241295241796_
                             _hd241294241799_
                             _tl241293241801_
                             _e241298241804_
                             _hd241297241807_
                             _tl241296241809_))))
                     (___match251994251995_
                      (lambda (_e241271241732_
                               _hd241270241735_
                               _tl241269241737_
                               _e241274241740_
                               _hd241273241743_
                               _tl241272241745_
                               _e241277241748_
                               _hd241276241751_
                               _tl241275241753_
                               _e241280241756_
                               _hd241279241759_
                               _tl241278241761_
                               _e241283241764_
                               _hd241282241767_
                               _tl241281241769_
                               _e241286241772_
                               _hd241285241775_
                               _tl241284241777_
                               _e241289241780_
                               _hd241288241783_
                               _tl241287241785_
                               _e241292241788_
                               _hd241291241791_
                               _tl241290241793_
                               _e241295241796_
                               _hd241294241799_
                               _tl241293241801_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241294241799_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241293241801_))
                                (let ((_e241298241804_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241293241801_))))
                                  (let ((_tl241296241809_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241298241804_)))
                                        (_hd241297241807_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241298241804_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241296241809_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241290241793_))
                                            (___match252006252007_
                                             _e241271241732_
                                             _hd241270241735_
                                             _tl241269241737_
                                             _e241274241740_
                                             _hd241273241743_
                                             _tl241272241745_
                                             _e241277241748_
                                             _hd241276241751_
                                             _tl241275241753_
                                             _e241280241756_
                                             _hd241279241759_
                                             _tl241278241761_
                                             _e241283241764_
                                             _hd241282241767_
                                             _tl241281241769_
                                             _e241286241772_
                                             _hd241285241775_
                                             _tl241284241777_
                                             _e241289241780_
                                             _hd241288241783_
                                             _tl241287241785_
                                             _e241292241788_
                                             _hd241291241791_
                                             _tl241290241793_
                                             _e241295241796_
                                             _hd241294241799_
                                             _tl241293241801_
                                             _e241298241804_
                                             _hd241297241807_
                                             _tl241296241809_)
                                            (___match252084252085_
                                             _e241271241732_
                                             _hd241270241735_
                                             _tl241269241737_
                                             _e241274241740_
                                             _hd241273241743_
                                             _tl241272241745_
                                             _e241277241748_
                                             _hd241276241751_
                                             _tl241275241753_
                                             _e241280241756_
                                             _hd241279241759_
                                             _tl241278241761_
                                             _e241283241764_
                                             _hd241282241767_
                                             _tl241281241769_
                                             _e241286241772_
                                             _hd241285241775_
                                             _tl241284241777_
                                             _e241289241780_
                                             _hd241288241783_
                                             _tl241287241785_
                                             _e241292241788_
                                             _hd241291241791_
                                             _tl241290241793_
                                             _e241295241796_
                                             _hd241294241799_
                                             _tl241293241801_
                                             _e241298241804_
                                             _hd241297241807_
                                             _tl241296241809_))
                                        (___match252208252209_
                                         _e241271241732_
                                         _hd241270241735_
                                         _tl241269241737_
                                         _e241274241740_
                                         _hd241273241743_
                                         _tl241272241745_
                                         _e241277241748_
                                         _hd241276241751_
                                         _tl241275241753_
                                         _e241280241756_
                                         _hd241279241759_
                                         _tl241278241761_
                                         _e241283241764_
                                         _hd241282241767_
                                         _tl241281241769_
                                         _e241286241772_
                                         _hd241285241775_
                                         _tl241284241777_
                                         _e241289241780_
                                         _hd241288241783_
                                         _tl241287241785_
                                         _e241292241788_
                                         _hd241291241791_
                                         _tl241290241793_))))
                                (___match252208252209_
                                 _e241271241732_
                                 _hd241270241735_
                                 _tl241269241737_
                                 _e241274241740_
                                 _hd241273241743_
                                 _tl241272241745_
                                 _e241277241748_
                                 _hd241276241751_
                                 _tl241275241753_
                                 _e241280241756_
                                 _hd241279241759_
                                 _tl241278241761_
                                 _e241283241764_
                                 _hd241282241767_
                                 _tl241281241769_
                                 _e241286241772_
                                 _hd241285241775_
                                 _tl241284241777_
                                 _e241289241780_
                                 _hd241288241783_
                                 _tl241287241785_
                                 _e241292241788_
                                 _hd241291241791_
                                 _tl241290241793_))
                            (___match252208252209_
                             _e241271241732_
                             _hd241270241735_
                             _tl241269241737_
                             _e241274241740_
                             _hd241273241743_
                             _tl241272241745_
                             _e241277241748_
                             _hd241276241751_
                             _tl241275241753_
                             _e241280241756_
                             _hd241279241759_
                             _tl241278241761_
                             _e241283241764_
                             _hd241282241767_
                             _tl241281241769_
                             _e241286241772_
                             _hd241285241775_
                             _tl241284241777_
                             _e241289241780_
                             _hd241288241783_
                             _tl241287241785_
                             _e241292241788_
                             _hd241291241791_
                             _tl241290241793_))))
                     (___match251926251927_
                      (lambda (_e241220241853_
                               _hd241219241856_
                               _tl241218241858_
                               _e241223241861_
                               _hd241222241864_
                               _tl241221241866_
                               _e241226241869_
                               _hd241225241872_
                               _tl241224241874_
                               _e241229241877_
                               _hd241228241880_
                               _tl241227241882_
                               _e241232241885_
                               _hd241231241888_
                               _tl241230241890_
                               _e241235241893_
                               _hd241234241896_
                               _tl241233241898_
                               _e241238241901_
                               _hd241237241904_
                               _tl241236241906_
                               _e241241241909_
                               _hd241240241912_
                               _tl241239241914_
                               _e241244241917_
                               _hd241243241920_
                               _tl241242241922_
                               _e241247241925_
                               _hd241246241928_
                               _tl241245241930_
                               _e241250241933_
                               _hd241249241936_
                               _tl241248241938_
                               _e241253241941_
                               _hd241252241944_
                               _tl241251241946_
                               _e241256241949_
                               _hd241255241952_
                               _tl241254241954_
                               ___splice251719251720_
                               _target241257241957_
                               _tl241259241959_)
                        (letrec ((_loop241260241962_
                                  (lambda (_hd241258241965_ _args241264241967_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241258241965_))
                                        (let ((_e241261241970_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241258241965_))))
                                          (let ((_lp-tl241263241975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241261241970_)))
                                                (_lp-hd241262241973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241261241970_))))
                                            (let ((__tmp252657
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241262241973_
                                                           _args241264241967_))))
                                              (declare (not safe))
                                              (_loop241260241962_
                                               _lp-tl241263241975_
                                               __tmp252657))))
                                        (let ((_args241265241978_
                                               (reverse _args241264241967_)))
                                          (let ((_L241981_ _args241265241978_)
                                                (_L241982_ _hd241255241952_)
                                                (_L241983_ _hd241246241928_)
                                                (_L241984_ _hd241237241904_)
                                                (_L241985_ _hd241228241880_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L241985_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L241984_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L241983_
                                                        _self241152_)))
                                                (___kont251717251718_
                                                 _L241981_
                                                 _L241982_
                                                 _L241983_
                                                 _L241984_
                                                 _L241985_)
                                                (___kont251729251730_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241260241962_ _target241257241957_ '())))))
                     (___match251884251885_
                      (lambda (_e241220241853_
                               _hd241219241856_
                               _tl241218241858_
                               _e241223241861_
                               _hd241222241864_
                               _tl241221241866_
                               _e241226241869_
                               _hd241225241872_
                               _tl241224241874_
                               _e241229241877_
                               _hd241228241880_
                               _tl241227241882_
                               _e241232241885_
                               _hd241231241888_
                               _tl241230241890_
                               _e241235241893_
                               _hd241234241896_
                               _tl241233241898_
                               _e241238241901_
                               _hd241237241904_
                               _tl241236241906_
                               _e241241241909_
                               _hd241240241912_
                               _tl241239241914_
                               _e241244241917_
                               _hd241243241920_
                               _tl241242241922_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241243241920_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241242241922_))
                                (let ((_e241247241925_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241242241922_))))
                                  (let ((_tl241245241930_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241247241925_)))
                                        (_hd241246241928_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241247241925_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241245241930_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241239241914_))
                                            (let ((_e241250241933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241239241914_))))
                                              (let ((_tl241248241938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241250241933_)))
                                                    (_hd241249241936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241250241933_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241249241936_))
                                                    (let ((_e241253241941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241249241936_))))
                                                      (let ((_tl241251241946_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241253241941_)))
                    (_hd241252241944_
                     (let () (declare (not safe)) (##car _e241253241941_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241252241944_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241252241944_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241251241946_))
                            (let ((_e241256241949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241251241946_))))
                              (let ((_tl241254241954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241256241949_)))
                                    (_hd241255241952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241256241949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241254241954_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241248241938_))
                                        (let ((___splice251719251720_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241248241938_
                                                  '0))))
                                          (let ((_tl241259241959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice251719251720_
                                                    '1)))
                                                (_target241257241957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice251719251720_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241259241959_))
                                                (___match251926251927_
                                                 _e241220241853_
                                                 _hd241219241856_
                                                 _tl241218241858_
                                                 _e241223241861_
                                                 _hd241222241864_
                                                 _tl241221241866_
                                                 _e241226241869_
                                                 _hd241225241872_
                                                 _tl241224241874_
                                                 _e241229241877_
                                                 _hd241228241880_
                                                 _tl241227241882_
                                                 _e241232241885_
                                                 _hd241231241888_
                                                 _tl241230241890_
                                                 _e241235241893_
                                                 _hd241234241896_
                                                 _tl241233241898_
                                                 _e241238241901_
                                                 _hd241237241904_
                                                 _tl241236241906_
                                                 _e241241241909_
                                                 _hd241240241912_
                                                 _tl241239241914_
                                                 _e241244241917_
                                                 _hd241243241920_
                                                 _tl241242241922_
                                                 _e241247241925_
                                                 _hd241246241928_
                                                 _tl241245241930_
                                                 _e241250241933_
                                                 _hd241249241936_
                                                 _tl241248241938_
                                                 _e241253241941_
                                                 _hd241252241944_
                                                 _tl241251241946_
                                                 _e241256241949_
                                                 _hd241255241952_
                                                 _tl241254241954_
                                                 ___splice251719251720_
                                                 _target241257241957_
                                                 _tl241259241959_)
                                                (___kont251729251730_))))
                                        (___kont251729251730_))
                                    (___kont251729251730_))))
                            (___kont251729251730_))
                        (___kont251729251730_))
                    (___kont251729251730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251729251730_))))
                                            (___match252208252209_
                                             _e241220241853_
                                             _hd241219241856_
                                             _tl241218241858_
                                             _e241223241861_
                                             _hd241222241864_
                                             _tl241221241866_
                                             _e241226241869_
                                             _hd241225241872_
                                             _tl241224241874_
                                             _e241229241877_
                                             _hd241228241880_
                                             _tl241227241882_
                                             _e241232241885_
                                             _hd241231241888_
                                             _tl241230241890_
                                             _e241235241893_
                                             _hd241234241896_
                                             _tl241233241898_
                                             _e241238241901_
                                             _hd241237241904_
                                             _tl241236241906_
                                             _e241241241909_
                                             _hd241240241912_
                                             _tl241239241914_))
                                        (___match252208252209_
                                         _e241220241853_
                                         _hd241219241856_
                                         _tl241218241858_
                                         _e241223241861_
                                         _hd241222241864_
                                         _tl241221241866_
                                         _e241226241869_
                                         _hd241225241872_
                                         _tl241224241874_
                                         _e241229241877_
                                         _hd241228241880_
                                         _tl241227241882_
                                         _e241232241885_
                                         _hd241231241888_
                                         _tl241230241890_
                                         _e241235241893_
                                         _hd241234241896_
                                         _tl241233241898_
                                         _e241238241901_
                                         _hd241237241904_
                                         _tl241236241906_
                                         _e241241241909_
                                         _hd241240241912_
                                         _tl241239241914_))))
                                (___match252208252209_
                                 _e241220241853_
                                 _hd241219241856_
                                 _tl241218241858_
                                 _e241223241861_
                                 _hd241222241864_
                                 _tl241221241866_
                                 _e241226241869_
                                 _hd241225241872_
                                 _tl241224241874_
                                 _e241229241877_
                                 _hd241228241880_
                                 _tl241227241882_
                                 _e241232241885_
                                 _hd241231241888_
                                 _tl241230241890_
                                 _e241235241893_
                                 _hd241234241896_
                                 _tl241233241898_
                                 _e241238241901_
                                 _hd241237241904_
                                 _tl241236241906_
                                 _e241241241909_
                                 _hd241240241912_
                                 _tl241239241914_))
                            (___match251994251995_
                             _e241220241853_
                             _hd241219241856_
                             _tl241218241858_
                             _e241223241861_
                             _hd241222241864_
                             _tl241221241866_
                             _e241226241869_
                             _hd241225241872_
                             _tl241224241874_
                             _e241229241877_
                             _hd241228241880_
                             _tl241227241882_
                             _e241232241885_
                             _hd241231241888_
                             _tl241230241890_
                             _e241235241893_
                             _hd241234241896_
                             _tl241233241898_
                             _e241238241901_
                             _hd241237241904_
                             _tl241236241906_
                             _e241241241909_
                             _hd241240241912_
                             _tl241239241914_
                             _e241244241917_
                             _hd241243241920_
                             _tl241242241922_))))
                     (___match251816251817_
                      (lambda (_e241176242045_
                               _hd241175242048_
                               _tl241174242050_
                               _e241179242053_
                               _hd241178242056_
                               _tl241177242058_
                               _e241182242061_
                               _hd241181242064_
                               _tl241180242066_
                               _e241185242069_
                               _hd241184242072_
                               _tl241183242074_
                               _e241188242077_
                               _hd241187242080_
                               _tl241186242082_
                               _e241191242085_
                               _hd241190242088_
                               _tl241189242090_
                               _e241194242093_
                               _hd241193242096_
                               _tl241192242098_
                               _e241197242101_
                               _hd241196242104_
                               _tl241195242106_
                               _e241200242109_
                               _hd241199242112_
                               _tl241198242114_
                               _e241203242117_
                               _hd241202242120_
                               _tl241201242122_
                               ___splice251715251716_
                               _target241204242125_
                               _tl241206242127_)
                        (letrec ((_loop241207242130_
                                  (lambda (_hd241205242133_ _args241211242135_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241205242133_))
                                        (let ((_e241208242138_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241205242133_))))
                                          (let ((_lp-tl241210242143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241208242138_)))
                                                (_lp-hd241209242141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241208242138_))))
                                            (let ((__tmp252658
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241209242141_
                                                           _args241211242135_))))
                                              (declare (not safe))
                                              (_loop241207242130_
                                               _lp-tl241210242143_
                                               __tmp252658))))
                                        (let ((_args241212242146_
                                               (reverse _args241211242135_)))
                                          (let ((_L242149_ _args241212242146_)
                                                (_L242150_ _hd241202242120_)
                                                (_L242151_ _hd241193242096_)
                                                (_L242152_ _hd241184242072_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242152_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242151_
                                                        _self241152_)))
                                                (___kont251713251714_
                                                 _L242149_
                                                 _L242150_
                                                 _L242151_
                                                 _L242152_)
                                                (___match252004252005_
                                                 _e241176242045_
                                                 _hd241175242048_
                                                 _tl241174242050_
                                                 _e241179242053_
                                                 _hd241178242056_
                                                 _tl241177242058_
                                                 _e241182242061_
                                                 _hd241181242064_
                                                 _tl241180242066_
                                                 _e241185242069_
                                                 _hd241184242072_
                                                 _tl241183242074_
                                                 _e241188242077_
                                                 _hd241187242080_
                                                 _tl241186242082_
                                                 _e241191242085_
                                                 _hd241190242088_
                                                 _tl241189242090_
                                                 _e241194242093_
                                                 _hd241193242096_
                                                 _tl241192242098_
                                                 _e241197242101_
                                                 _hd241196242104_
                                                 _tl241195242106_
                                                 _e241200242109_
                                                 _hd241199242112_
                                                 _tl241198242114_
                                                 _e241203242117_
                                                 _hd241202242120_
                                                 _tl241201242122_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241207242130_ _target241204242125_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251711251712_))
                    (let ((_e241176242045_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251711251712_))))
                      (let ((_tl241174242050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241176242045_)))
                            (_hd241175242048_
                             (let ()
                               (declare (not safe))
                               (##car _e241176242045_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241174242050_))
                            (let ((_e241179242053_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241174242050_))))
                              (let ((_tl241177242058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241179242053_)))
                                    (_hd241178242056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241179242053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241178242056_))
                                    (let ((_e241182242061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241178242056_))))
                                      (let ((_tl241180242066_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241182242061_)))
                                            (_hd241181242064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241182242061_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241181242064_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241181242064_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241180242066_))
                                                    (let ((_e241185242069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241180242066_))))
                                                      (let ((_tl241183242074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241185242069_)))
                    (_hd241184242072_
                     (let () (declare (not safe)) (##car _e241185242069_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241183242074_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241177242058_))
                        (let ((_e241188242077_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241177242058_))))
                          (let ((_tl241186242082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241188242077_)))
                                (_hd241187242080_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241188242077_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241187242080_))
                                (let ((_e241191242085_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241187242080_))))
                                  (let ((_tl241189242090_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241191242085_)))
                                        (_hd241190242088_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241191242085_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241190242088_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241190242088_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241189242090_))
                                                (let ((_e241194242093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241189242090_))))
                                                  (let ((_tl241192242098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241194242093_)))
                                                        (_hd241193242096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241194242093_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241192242098_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241186242082_))
                                                            (let ((_e241197242101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241186242082_))))
                      (let ((_tl241195242106_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241197242101_)))
                            (_hd241196242104_
                             (let ()
                               (declare (not safe))
                               (##car _e241197242101_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241196242104_))
                            (let ((_e241200242109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241196242104_))))
                              (let ((_tl241198242114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241200242109_)))
                                    (_hd241199242112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241200242109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241199242112_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241199242112_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241198242114_))
                                            (let ((_e241203242117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241198242114_))))
                                              (let ((_tl241201242122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241203242117_)))
                                                    (_hd241202242120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241203242117_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241201242122_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241195242106_))
                                                        (let ((___splice251715251716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241195242106_ '0))))
                  (let ((_tl241206242127_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice251715251716_ '1)))
                        (_target241204242125_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice251715251716_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241206242127_))
                        (___match251816251817_
                         _e241176242045_
                         _hd241175242048_
                         _tl241174242050_
                         _e241179242053_
                         _hd241178242056_
                         _tl241177242058_
                         _e241182242061_
                         _hd241181242064_
                         _tl241180242066_
                         _e241185242069_
                         _hd241184242072_
                         _tl241183242074_
                         _e241188242077_
                         _hd241187242080_
                         _tl241186242082_
                         _e241191242085_
                         _hd241190242088_
                         _tl241189242090_
                         _e241194242093_
                         _hd241193242096_
                         _tl241192242098_
                         _e241197242101_
                         _hd241196242104_
                         _tl241195242106_
                         _e241200242109_
                         _hd241199242112_
                         _tl241198242114_
                         _e241203242117_
                         _hd241202242120_
                         _tl241201242122_
                         ___splice251715251716_
                         _target241204242125_
                         _tl241206242127_)
                        (___match252004252005_
                         _e241176242045_
                         _hd241175242048_
                         _tl241174242050_
                         _e241179242053_
                         _hd241178242056_
                         _tl241177242058_
                         _e241182242061_
                         _hd241181242064_
                         _tl241180242066_
                         _e241185242069_
                         _hd241184242072_
                         _tl241183242074_
                         _e241188242077_
                         _hd241187242080_
                         _tl241186242082_
                         _e241191242085_
                         _hd241190242088_
                         _tl241189242090_
                         _e241194242093_
                         _hd241193242096_
                         _tl241192242098_
                         _e241197242101_
                         _hd241196242104_
                         _tl241195242106_
                         _e241200242109_
                         _hd241199242112_
                         _tl241198242114_
                         _e241203242117_
                         _hd241202242120_
                         _tl241201242122_))))
                (___match252004252005_
                 _e241176242045_
                 _hd241175242048_
                 _tl241174242050_
                 _e241179242053_
                 _hd241178242056_
                 _tl241177242058_
                 _e241182242061_
                 _hd241181242064_
                 _tl241180242066_
                 _e241185242069_
                 _hd241184242072_
                 _tl241183242074_
                 _e241188242077_
                 _hd241187242080_
                 _tl241186242082_
                 _e241191242085_
                 _hd241190242088_
                 _tl241189242090_
                 _e241194242093_
                 _hd241193242096_
                 _tl241192242098_
                 _e241197242101_
                 _hd241196242104_
                 _tl241195242106_
                 _e241200242109_
                 _hd241199242112_
                 _tl241198242114_
                 _e241203242117_
                 _hd241202242120_
                 _tl241201242122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252208252209_
                                                     _e241176242045_
                                                     _hd241175242048_
                                                     _tl241174242050_
                                                     _e241179242053_
                                                     _hd241178242056_
                                                     _tl241177242058_
                                                     _e241182242061_
                                                     _hd241181242064_
                                                     _tl241180242066_
                                                     _e241185242069_
                                                     _hd241184242072_
                                                     _tl241183242074_
                                                     _e241188242077_
                                                     _hd241187242080_
                                                     _tl241186242082_
                                                     _e241191242085_
                                                     _hd241190242088_
                                                     _tl241189242090_
                                                     _e241194242093_
                                                     _hd241193242096_
                                                     _tl241192242098_
                                                     _e241197242101_
                                                     _hd241196242104_
                                                     _tl241195242106_))))
                                            (___match252208252209_
                                             _e241176242045_
                                             _hd241175242048_
                                             _tl241174242050_
                                             _e241179242053_
                                             _hd241178242056_
                                             _tl241177242058_
                                             _e241182242061_
                                             _hd241181242064_
                                             _tl241180242066_
                                             _e241185242069_
                                             _hd241184242072_
                                             _tl241183242074_
                                             _e241188242077_
                                             _hd241187242080_
                                             _tl241186242082_
                                             _e241191242085_
                                             _hd241190242088_
                                             _tl241189242090_
                                             _e241194242093_
                                             _hd241193242096_
                                             _tl241192242098_
                                             _e241197242101_
                                             _hd241196242104_
                                             _tl241195242106_))
                                        (___match251884251885_
                                         _e241176242045_
                                         _hd241175242048_
                                         _tl241174242050_
                                         _e241179242053_
                                         _hd241178242056_
                                         _tl241177242058_
                                         _e241182242061_
                                         _hd241181242064_
                                         _tl241180242066_
                                         _e241185242069_
                                         _hd241184242072_
                                         _tl241183242074_
                                         _e241188242077_
                                         _hd241187242080_
                                         _tl241186242082_
                                         _e241191242085_
                                         _hd241190242088_
                                         _tl241189242090_
                                         _e241194242093_
                                         _hd241193242096_
                                         _tl241192242098_
                                         _e241197242101_
                                         _hd241196242104_
                                         _tl241195242106_
                                         _e241200242109_
                                         _hd241199242112_
                                         _tl241198242114_))
                                    (___match252208252209_
                                     _e241176242045_
                                     _hd241175242048_
                                     _tl241174242050_
                                     _e241179242053_
                                     _hd241178242056_
                                     _tl241177242058_
                                     _e241182242061_
                                     _hd241181242064_
                                     _tl241180242066_
                                     _e241185242069_
                                     _hd241184242072_
                                     _tl241183242074_
                                     _e241188242077_
                                     _hd241187242080_
                                     _tl241186242082_
                                     _e241191242085_
                                     _hd241190242088_
                                     _tl241189242090_
                                     _e241194242093_
                                     _hd241193242096_
                                     _tl241192242098_
                                     _e241197242101_
                                     _hd241196242104_
                                     _tl241195242106_))))
                            (___match252208252209_
                             _e241176242045_
                             _hd241175242048_
                             _tl241174242050_
                             _e241179242053_
                             _hd241178242056_
                             _tl241177242058_
                             _e241182242061_
                             _hd241181242064_
                             _tl241180242066_
                             _e241185242069_
                             _hd241184242072_
                             _tl241183242074_
                             _e241188242077_
                             _hd241187242080_
                             _tl241186242082_
                             _e241191242085_
                             _hd241190242088_
                             _tl241189242090_
                             _e241194242093_
                             _hd241193242096_
                             _tl241192242098_
                             _e241197242101_
                             _hd241196242104_
                             _tl241195242106_))))
                    (___match252146252147_
                     _e241176242045_
                     _hd241175242048_
                     _tl241174242050_
                     _e241179242053_
                     _hd241178242056_
                     _tl241177242058_
                     _e241182242061_
                     _hd241181242064_
                     _tl241180242066_
                     _e241185242069_
                     _hd241184242072_
                     _tl241183242074_
                     _e241188242077_
                     _hd241187242080_
                     _tl241186242082_
                     _e241191242085_
                     _hd241190242088_
                     _tl241189242090_
                     _e241194242093_
                     _hd241193242096_
                     _tl241192242098_))
                (___kont251729251730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont251729251730_))
                                            (___kont251729251730_))
                                        (___kont251729251730_))))
                                (___kont251729251730_))))
                        (___kont251729251730_))
                    (___kont251729251730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251729251730_))
                                                (___kont251729251730_))
                                            (___kont251729251730_))))
                                    (___kont251729251730_))))
                            (___kont251729251730_))))
                    (___kont251729251730_))))))))))
