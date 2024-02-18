(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708271182)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl256010_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp261205 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl256010_ __tmp261205))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256010_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256010_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256010_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256010_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl256010_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx255993_ . _args255995_)
        (let ((__tmp261207
               (lambda ()
                 (declare (not safe))
                 (if (null? _args255995_)
                     (gxc#compile-e__0 _stx255993_)
                     (let ((_arg1256000_ (car _args255995_))
                           (_rest256002_ (cdr _args255995_)))
                       (if (null? _rest256002_)
                           (gxc#compile-e__1 _stx255993_ _arg1256000_)
                           (let ((_arg2256005_ (car _rest256002_))
                                 (_rest256007_ (cdr _rest256002_)))
                             (if (null? _rest256007_)
                                 (gxc#compile-e__2
                                  _stx255993_
                                  _arg1256000_
                                  _arg2256005_)
                                 (apply gxc#compile-e
                                        _stx255993_
                                        _arg1256000_
                                        _arg2256005_
                                        _rest256007_))))))))
              (__tmp261206 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp261207
           gxc#current-compile-methods
           __tmp261206))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl255990_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp261208 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl255990_ __tmp261208))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255990_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl255990_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl255990_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx255973_ . _args255975_)
        (let ((__tmp261210
               (lambda ()
                 (declare (not safe))
                 (if (null? _args255975_)
                     (gxc#compile-e__0 _stx255973_)
                     (let ((_arg1255980_ (car _args255975_))
                           (_rest255982_ (cdr _args255975_)))
                       (if (null? _rest255982_)
                           (gxc#compile-e__1 _stx255973_ _arg1255980_)
                           (let ((_arg2255985_ (car _rest255982_))
                                 (_rest255987_ (cdr _rest255982_)))
                             (if (null? _rest255987_)
                                 (gxc#compile-e__2
                                  _stx255973_
                                  _arg1255980_
                                  _arg2255985_)
                                 (apply gxc#compile-e
                                        _stx255973_
                                        _arg1255980_
                                        _arg2255985_
                                        _rest255987_))))))))
              (__tmp261209 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp261210
           gxc#current-compile-methods
           __tmp261209))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl255970_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp261211 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl255970_ __tmp261211))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255970_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl255970_ '%#call gxc#subst-object-refs-call%))
           _tbl255970_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx255953_ . _args255955_)
        (let ((__tmp261213
               (lambda ()
                 (declare (not safe))
                 (if (null? _args255955_)
                     (gxc#compile-e__0 _stx255953_)
                     (let ((_arg1255960_ (car _args255955_))
                           (_rest255962_ (cdr _args255955_)))
                       (if (null? _rest255962_)
                           (gxc#compile-e__1 _stx255953_ _arg1255960_)
                           (let ((_arg2255965_ (car _rest255962_))
                                 (_rest255967_ (cdr _rest255962_)))
                             (if (null? _rest255967_)
                                 (gxc#compile-e__2
                                  _stx255953_
                                  _arg1255960_
                                  _arg2255965_)
                                 (apply gxc#compile-e
                                        _stx255953_
                                        _arg1255960_
                                        _arg2255965_
                                        _rest255967_))))))))
              (__tmp261212 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp261213
           gxc#current-compile-methods
           __tmp261212))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx252623_)
        (letrec ((_generate-method-bind252625_
                  (lambda (_$t255947_ _id255948_ _$id255949_)
                    (let ((_$tmp255951_
                           (let ((__tmp261214 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp261214))))
                      (let ((__tmp261262
                             (let ()
                               (declare (not safe))
                               (cons _$id255949_ '())))
                            (__tmp261215
                             (let ((__tmp261216
                                    (let ((__tmp261217
                                           (let ((__tmp261260
                                                  (let ((__tmp261261
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp261261)))
                                                 (__tmp261218
                                                  (let ((__tmp261219
                                                         (let ((__tmp261220
                                                                (let ((__tmp261221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp261222
                                      (let ((__tmp261223
                                             (let ((__tmp261243
                                                    (let ((__tmp261244
                                                           (let ((__tmp261259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp255951_ '())))
                         (__tmp261245
                          (let ((__tmp261246
                                 (let ((__tmp261247
                                        (let ((__tmp261257
                                               (let ((__tmp261258
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp261258)))
                                              (__tmp261248
                                               (let ((__tmp261255
                                                      (let ((__tmp261256
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t255947_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp261256)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp261249
                                                      (let ((__tmp261253
                                                             (let ((__tmp261254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp261254)))
                    (__tmp261250
                     (let ((__tmp261251
                            (let ((__tmp261252
                                   (let ()
                                     (declare (not safe))
                                     (cons _id255948_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp261252))))
                       (declare (not safe))
                       (cons __tmp261251 '()))))
                (declare (not safe))
                (cons __tmp261253 __tmp261250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp261255
                                                       __tmp261249))))
                                          (declare (not safe))
                                          (cons __tmp261257 __tmp261248))))
                                   (declare (not safe))
                                   (cons '%#call __tmp261247))))
                            (declare (not safe))
                            (cons __tmp261246 '()))))
                     (declare (not safe))
                     (cons __tmp261259 __tmp261245))))
              (declare (not safe))
              (cons __tmp261244 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp261224
                                                    (let ((__tmp261225
                                                           (let ((__tmp261226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp261241
                                 (let ((__tmp261242
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp255951_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp261242)))
                                (__tmp261227
                                 (let ((__tmp261239
                                        (let ((__tmp261240
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp255951_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp261240)))
                                       (__tmp261228
                                        (let ((__tmp261229
                                               (let ((__tmp261230
                                                      (let ((__tmp261237
                                                             (let ((__tmp261238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp261238)))
                    (__tmp261231
                     (let ((__tmp261235
                            (let ((__tmp261236
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp261236)))
                           (__tmp261232
                            (let ((__tmp261233
                                   (let ((__tmp261234
                                          (let ()
                                            (declare (not safe))
                                            (cons _id255948_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp261234))))
                              (declare (not safe))
                              (cons __tmp261233 '()))))
                       (declare (not safe))
                       (cons __tmp261235 __tmp261232))))
                (declare (not safe))
                (cons __tmp261237 __tmp261231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp261230))))
                                          (declare (not safe))
                                          (cons __tmp261229 '()))))
                                   (declare (not safe))
                                   (cons __tmp261239 __tmp261228))))
                            (declare (not safe))
                            (cons __tmp261241 __tmp261227))))
                     (declare (not safe))
                     (cons '%#if __tmp261226))))
              (declare (not safe))
              (cons __tmp261225 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp261243
                                                     __tmp261224))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp261223))))
                                 (declare (not safe))
                                 (cons __tmp261222 '()))))
                          (declare (not safe))
                          (cons '() __tmp261221))))
                   (declare (not safe))
                   (cons '%#lambda __tmp261220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261219 '()))))
                                             (declare (not safe))
                                             (cons __tmp261260 __tmp261218))))
                                      (declare (not safe))
                                      (cons '%#call __tmp261217))))
                               (declare (not safe))
                               (cons __tmp261216 '()))))
                        (declare (not safe))
                        (cons __tmp261262 __tmp261215)))))
                 (_generate-slot-bind252626_
                  (lambda (_$t255941_ _id255942_ _$id255943_)
                    (let ((_$tmp255945_
                           (let ((__tmp261263 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp261263))))
                      (let ((__tmp261300
                             (let ()
                               (declare (not safe))
                               (cons _$id255943_ '())))
                            (__tmp261264
                             (let ((__tmp261265
                                    (let ((__tmp261266
                                           (let ((__tmp261286
                                                  (let ((__tmp261287
                                                         (let ((__tmp261299
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp255945_ '())))
                       (__tmp261288
                        (let ((__tmp261289
                               (let ((__tmp261290
                                      (let ((__tmp261297
                                             (let ((__tmp261298
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp261298)))
                                            (__tmp261291
                                             (let ((__tmp261295
                                                    (let ((__tmp261296
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t255941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp261296)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp261292
                                                    (let ((__tmp261293
                                                           (let ((__tmp261294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id255942_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp261294))))
              (declare (not safe))
              (cons __tmp261293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp261295
                                                     __tmp261292))))
                                        (declare (not safe))
                                        (cons __tmp261297 __tmp261291))))
                                 (declare (not safe))
                                 (cons '%#call __tmp261290))))
                          (declare (not safe))
                          (cons __tmp261289 '()))))
                   (declare (not safe))
                   (cons __tmp261299 __tmp261288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261287 '())))
                                                 (__tmp261267
                                                  (let ((__tmp261268
                                                         (let ((__tmp261269
                                                                (let ((__tmp261284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp261285
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp255945_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp261285)))
                              (__tmp261270
                               (let ((__tmp261282
                                      (let ((__tmp261283
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp255945_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp261283)))
                                     (__tmp261271
                                      (let ((__tmp261272
                                             (let ((__tmp261273
                                                    (let ((__tmp261280
                                                           (let ((__tmp261281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp261281)))
                  (__tmp261274
                   (let ((__tmp261278
                          (let ((__tmp261279
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp261279)))
                         (__tmp261275
                          (let ((__tmp261276
                                 (let ((__tmp261277
                                        (let ()
                                          (declare (not safe))
                                          (cons _id255942_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp261277))))
                            (declare (not safe))
                            (cons __tmp261276 '()))))
                     (declare (not safe))
                     (cons __tmp261278 __tmp261275))))
              (declare (not safe))
              (cons __tmp261280 __tmp261274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp261273))))
                                        (declare (not safe))
                                        (cons __tmp261272 '()))))
                                 (declare (not safe))
                                 (cons __tmp261282 __tmp261271))))
                          (declare (not safe))
                          (cons __tmp261284 __tmp261270))))
                   (declare (not safe))
                   (cons '%#if __tmp261269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261268 '()))))
                                             (declare (not safe))
                                             (cons __tmp261286 __tmp261267))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp261266))))
                               (declare (not safe))
                               (cons __tmp261265 '()))))
                        (declare (not safe))
                        (cons __tmp261300 __tmp261264)))))
                 (_generate-class-check-bind252627_
                  (lambda (_$t255937_ _class-type255938_ _$class-type255939_)
                    (let ((__tmp261312
                           (let ()
                             (declare (not safe))
                             (cons _$class-type255939_ '())))
                          (__tmp261301
                           (let ((__tmp261302
                                  (let ((__tmp261303
                                         (let ((__tmp261310
                                                (let ((__tmp261311
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp261311)))
                                               (__tmp261304
                                                (let ((__tmp261308
                                                       (let ((__tmp261309
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t255937_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp261309)))
              (__tmp261305
               (let ((__tmp261306
                      (let ((__tmp261307
                             (let ()
                               (declare (not safe))
                               (cons _class-type255938_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp261307))))
                 (declare (not safe))
                 (cons __tmp261306 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp261308
                                                        __tmp261305))))
                                           (declare (not safe))
                                           (cons __tmp261310 __tmp261304))))
                                    (declare (not safe))
                                    (cons '%#call __tmp261303))))
                             (declare (not safe))
                             (cons __tmp261302 '()))))
                      (declare (not safe))
                      (cons __tmp261312 __tmp261301))))
                 (_generate-struct-check-bind252628_
                  (lambda (_$t255933_ _class-type255934_ _$class-type255935_)
                    (let ((__tmp261324
                           (let ()
                             (declare (not safe))
                             (cons _$class-type255935_ '())))
                          (__tmp261313
                           (let ((__tmp261314
                                  (let ((__tmp261315
                                         (let ((__tmp261322
                                                (let ((__tmp261323
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp261323)))
                                               (__tmp261316
                                                (let ((__tmp261320
                                                       (let ((__tmp261321
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t255933_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp261321)))
              (__tmp261317
               (let ((__tmp261318
                      (let ((__tmp261319
                             (let ()
                               (declare (not safe))
                               (cons _class-type255934_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp261319))))
                 (declare (not safe))
                 (cons __tmp261318 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp261320
                                                        __tmp261317))))
                                           (declare (not safe))
                                           (cons __tmp261322 __tmp261316))))
                                    (declare (not safe))
                                    (cons '%#call __tmp261315))))
                             (declare (not safe))
                             (cons __tmp261314 '()))))
                      (declare (not safe))
                      (cons __tmp261324 __tmp261313))))
                 (_generate-specializer-impl252629_
                  (lambda (_$t255882_
                           _methods-bind255883_
                           _slots-bind255884_
                           _class-check-bind255885_
                           _struct-check-bind255886_
                           _specializer-impl255887_
                           _lifted-specializer-id255888_
                           _unchecked-specializer-impl255889_)
                    (let ((__tmp261325
                           (let ((__tmp261326
                                  (let ((__tmp261352
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t255882_ '())))
                                        (__tmp261327
                                         (let ((__tmp261328
                                                (let ((__tmp261329
                                                       (let ((__tmp261349
                                                              (let ((__tmp261350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp261351
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind255886_
                                              _class-check-bind255885_))))
                               (declare (not safe))
                               (foldr1 cons __tmp261351 _slots-bind255884_))))
                        (declare (not safe))
                        (foldr1 cons __tmp261350 _methods-bind255883_)))
                     (__tmp261330
                      (let ((__tmp261331
                             (if (or _lifted-specializer-id255888_
                                     _unchecked-specializer-impl255889_)
                                 (let* ((_$specializer255894_
                                         (let ((__tmp261332
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp261332)))
                                        (__tmp261333
                                         (let ((__tmp261345
                                                (let ((__tmp261346
                                                       (let ((__tmp261348
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer255894_ '())))
                     (__tmp261347
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl255887_ '()))))
                 (declare (not safe))
                 (cons __tmp261348 __tmp261347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp261346 '())))
                                               (__tmp261334
                                                (let ((__tmp261335
                                                       (let _recur255896_ ((_rest255898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind255886_)))
                 (let* ((_rest255899255907_ _rest255898_)
                        (_else255901255915_
                         (lambda ()
                           (if _lifted-specializer-id255888_
                               (let ((__tmp261336
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id255888_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp261336))
                               _unchecked-specializer-impl255889_)))
                        (_K255903255921_
                         (lambda (_rest255918_ _checkq255919_)
                           (let ((__tmp261337
                                  (let ((__tmp261343
                                         (let ((__tmp261344
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq255919_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp261344)))
                                        (__tmp261338
                                         (let ((__tmp261342
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur255896_
                                                   _rest255918_)))
                                               (__tmp261339
                                                (let ((__tmp261340
                                                       (let ((__tmp261341
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer255894_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp261341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp261340 '()))))
                                           (declare (not safe))
                                           (cons __tmp261342 __tmp261339))))
                                    (declare (not safe))
                                    (cons __tmp261343 __tmp261338))))
                             (declare (not safe))
                             (cons '%#if __tmp261337)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest255899255907_))
                       (let ((_hd255904255924_
                              (let ()
                                (declare (not safe))
                                (##car _rest255899255907_)))
                             (_tl255905255926_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest255899255907_))))
                         (let* ((_checkq255929_ _hd255904255924_)
                                (_rest255931_ _tl255905255926_))
                           (declare (not safe))
                           (_K255903255921_ _rest255931_ _checkq255929_)))
                       (let () (declare (not safe)) (_else255901255915_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp261335 '()))))
                                           (declare (not safe))
                                           (cons __tmp261345 __tmp261334))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp261333))
                                 _specializer-impl255887_)))
                        (declare (not safe))
                        (cons __tmp261331 '()))))
                 (declare (not safe))
                 (cons __tmp261349 __tmp261330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp261329))))
                                           (declare (not safe))
                                           (cons __tmp261328 '()))))
                                    (declare (not safe))
                                    (cons __tmp261352 __tmp261327))))
                             (declare (not safe))
                             (cons '%#lambda __tmp261326))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp261325 _stx252623_))))
                 (_generate-specializer-def252630_
                  (lambda (_id255876_
                           _specializer-id255877_
                           _specializer-impl255878_
                           _lifted-specializer-id255879_
                           _unchecked-specializer-impl255880_)
                    (let ((__tmp261353
                           (let ((__tmp261354
                                  (let ((__tmp261355
                                         (let ((__tmp261375
                                                (let ((__tmp261376
                                                       (let ((__tmp261377
                                                              (let ((__tmp261379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id255877_ '())))
                            (__tmp261378
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl255878_ '()))))
                        (declare (not safe))
                        (cons __tmp261379 __tmp261378))))
                 (declare (not safe))
                 (cons '%#define-values __tmp261377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp261376
                                                   _stx252623_)))
                                               (__tmp261356
                                                (let ((__tmp261363
                                                       (let ((__tmp261364
                                                              (let ((__tmp261365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp261366
                                    (let ((__tmp261373
                                           (let ((__tmp261374
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp261374)))
                                          (__tmp261367
                                           (let ((__tmp261371
                                                  (let ((__tmp261372
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id255876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp261372)))
                                                 (__tmp261368
                                                  (let ((__tmp261369
                                                         (let ((__tmp261370
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id255877_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp261370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261369 '()))))
                                             (declare (not safe))
                                             (cons __tmp261371 __tmp261368))))
                                      (declare (not safe))
                                      (cons __tmp261373 __tmp261367))))
                               (declare (not safe))
                               (cons '%#call __tmp261366))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp261365 _stx252623_))))
                 (declare (not safe))
                 (cons __tmp261364 '())))
              (__tmp261357
               (if _lifted-specializer-id255879_
                   (let ((__tmp261358
                          (let ((__tmp261359
                                 (let ((__tmp261360
                                        (let ((__tmp261362
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id255879_
                                                       '())))
                                              (__tmp261361
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl255880_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp261362 __tmp261361))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp261360))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp261359 _stx252623_))))
                     (declare (not safe))
                     (cons __tmp261358 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp261363
                                                          __tmp261357))))
                                           (declare (not safe))
                                           (cons __tmp261375 __tmp261356))))
                                    (declare (not safe))
                                    (cons _stx252623_ __tmp261355))))
                             (declare (not safe))
                             (cons '%#begin __tmp261354))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp261353 _stx252623_)))))
          (let* ((___stx260166260167_ _stx252623_)
                 (_g252633252653_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx260166260167_)))))
            (let ((___kont260168260169_
                   (lambda (_L252697_ _L252698_)
                     (let ((_method-calls252717_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs252718_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check252719_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check252720_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert252721_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty252722_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?252724_
                                 (lambda ()
                                   (if (let ((__tmp261380
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls252717_))))
                                         (declare (not safe))
                                         (fxzero? __tmp261380))
                                       (if (let ((__tmp261381
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs252718_))))
                                             (declare (not safe))
                                             (fxzero? __tmp261381))
                                           (if (let ((__tmp261382
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check252719_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp261382))
                                               (if (let ((__tmp261383
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check252720_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp261383))
                                                   (let ((__tmp261384
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert252721_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp261384))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?252725_
                                 (lambda ()
                                   (let ((_$e255869_
                                          (let ((__tmp261385
                                                 (let ((__tmp261386
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check252720_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp261386))))
                                            (declare (not safe))
                                            (not __tmp261385))))
                                     (if _$e255869_
                                         _$e255869_
                                         (let ((__tmp261387
                                                (let ((__tmp261388
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert252721_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp261388))))
                                           (declare (not safe))
                                           (not __tmp261387))))))
                                (_lift-unchecked-specializer?252726_
                                 (lambda ()
                                   (if (let ((__tmp261389
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls252717_))))
                                         (declare (not safe))
                                         (fxzero? __tmp261389))
                                       (if (let ((__tmp261390
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs252718_))))
                                             (declare (not safe))
                                             (fxzero? __tmp261390))
                                           (let ((__tmp261391
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check252719_))))
                                             (declare (not safe))
                                             (fxzero? __tmp261391))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L252697_))
                             (let* ((___stx260080260081_ _L252697_)
                                    (_g253239253257_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx260080260081_)))))
                               (let ((___kont260082260083_
                                      (lambda (_L253293_ _L253294_ _L253295_)
                                        (for-each
                                         (lambda (_g253310253312_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g253310253312_
                                              _L253295_
                                              _method-calls252717_
                                              _slot-refs252718_
                                              _class-type-check252719_
                                              _struct-type-check252720_
                                              _struct-type-assert252721_)))
                                         _L253293_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?252724_))
                                            _stx252623_
                                            (let* ((_specializer-id253321_
                                                    (let* ((_id253315_
                                                            (let ((__tmp261392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L252698_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp261392 '"::specialize")))
                   (_specializer-id253318_
                    (let ((__tmp261393
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx252623_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id253315_ __tmp261393))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id253318_))
              _specializer-id253318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id253328_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?252726_))
                                                        (let* ((_id253323_
                                                                (let ((__tmp261394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L252698_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp261394
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id253325_
                        (let ((__tmp261395
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx252623_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id253323_ __tmp261395))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id253325_))
                  _lifted-specializer-id253325_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t253330_
                                                    (let ((__tmp261396
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp261396)))
                                                   (_methods253332_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls252717_)))
                                                   (_$methods253336_
                                                    (map (lambda (_id253334_)
                                                           (let ((__tmp261397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id253334_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp261397)))
                 _methods253332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g261398_
                                                    (for-each
                                                     (lambda (_g253337253340_
                                                              _g253338253342_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls252717_
                                                          _g253337253340_
                                                          _g253338253342_)))
                                                     _methods253332_
                                                     _$methods253336_))
                                                   (_methods-bind253353_
                                                    (map (lambda (_g253345253348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g253346253350_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind252625_
                      _$t253330_
                      _g253345253348_
                      _g253346253350_)))
                 _methods253332_
                 _$methods253336_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots253355_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs252718_)))
                                                   (_$slots253359_
                                                    (map (lambda (_id253357_)
                                                           (let ((__tmp261399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id253357_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp261399)))
                 _slots253355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g261400_
                                                    (for-each
                                                     (lambda (_g253360253363_
                                                              _g253361253365_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs252718_
                                                          _g253360253363_
                                                          _g253361253365_)))
                                                     _slots253355_
                                                     _$slots253359_))
                                                   (_slots-bind253376_
                                                    (map (lambda (_g253368253371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g253369253373_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind252626_
                      _$t253330_
                      _g253368253371_
                      _g253369253373_)))
                 _slots253355_
                 _$slots253359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check253378_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check252719_)))
                                                   (_$class-check253381_
                                                    (map (lambda (_g261401_)
                                                           (let ((__tmp261402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp261402)))
                 _class-check253378_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g261403_
                                                    (for-each
                                                     (lambda (_g253382253385_
                                                              _g253383253387_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check252719_
                                                          _g253382253385_
                                                          _g253383253387_)))
                                                     _class-check253378_
                                                     _$class-check253381_))
                                                   (_class-check-bind253398_
                                                    (map (lambda (_g253390253393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g253391253395_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind252627_
                      _$t253330_
                      _g253390253393_
                      _g253391253395_)))
                 _class-check253378_
                 _$class-check253381_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all253400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check252720_
                                                       _struct-type-assert252721_)))
                                                   (_struct-check253402_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all253400_)))
                                                   (_$struct-check253405_
                                                    (map (lambda (_g261404_)
                                                           (let ((__tmp261405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp261405)))
                 _struct-check253402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g261406_
                                                    (for-each
                                                     (lambda (_g253406253409_
                                                              _g253407253411_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all253400_
                                                          _g253406253409_
                                                          _g253407253411_)))
                                                     _struct-check253402_
                                                     _$struct-check253405_))
                                                   (_struct-check-bind253422_
                                                    (map (lambda (_g253414253417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g253415253419_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind252628_
                      _$t253330_
                      _g253414253417_
                      _g253415253419_)))
                 _struct-check253402_
                 _$struct-check253405_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl253433_
                                                    (lambda (_struct-type-check1253424_
                                                             _struct-type-check2253425_)
                                                      (let* ((_specializer-body253431_
                                                              (map (lambda (_g253426253428_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g253426253428_
                                _L253295_
                                _$t253330_
                                _method-calls252717_
                                _slot-refs252718_
                                _class-type-check252719_
                                _struct-type-check1253424_
                                _struct-type-check2253425_)))
                           _L253293_))
                     (__tmp261407
                      (let ((__tmp261408
                             (let ((__tmp261409
                                    (let ()
                                      (declare (not safe))
                                      (cons _L253295_ _L253294_))))
                               (declare (not safe))
                               (cons __tmp261409 _specializer-body253431_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp261408))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp261407 _stx252623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl253435_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl253433_
                                                       _struct-check-all253400_
                                                       _empty252722_)))
                                                   (_unchecked-specializer-impl253437_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?252725_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl253433_
                                                           _empty252722_
                                                           _struct-check-all253400_))
                                                        '#f))
                                                   (_specializer-impl253439_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl252629_
                                                       _$t253330_
                                                       _methods-bind253353_
                                                       _slots-bind253376_
                                                       _class-check-bind253398_
                                                       _struct-check-bind253422_
                                                       _specializer-impl253435_
                                                       _lifted-specializer-id253328_
                                                       _unchecked-specializer-impl253437_))))
                                              (let ((__tmp261411
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L252698_)))
                                                    (__tmp261410
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id253321_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp261411
                                                 '" => "
                                                 __tmp261410))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def252630_
                                                 _L252698_
                                                 _specializer-id253321_
                                                 _specializer-impl253439_
                                                 _lifted-specializer-id253328_
                                                 _unchecked-specializer-impl253437_))))))
                                     (___kont260084260085_
                                      (lambda () _stx252623_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx260080260081_))
                                     (let ((_e253244253269_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx260080260081_))))
                                       (let ((_tl253246253274_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e253244253269_)))
                                             (_hd253245253272_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e253244253269_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl253246253274_))
                                             (let ((_e253247253277_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl253246253274_))))
                                               (let ((_tl253249253282_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e253247253277_)))
                                                     (_hd253248253280_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e253247253277_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd253248253280_))
                                                     (let ((_e253250253285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd253248253280_))))
                                                       (let ((_tl253252253290_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e253250253285_)))
                     (_hd253251253288_
                      (let () (declare (not safe)) (##car _e253250253285_))))
                 (___kont260082260083_
                  _tl253249253282_
                  _tl253252253290_
                  _hd253251253288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont260084260085_))))
                                             (___kont260084260085_))))
                                     (___kont260084260085_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L252697_))
                                 (let* ((_g253445253464_
                                         (lambda (_g253446253461_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g253446253461_))))
                                        (_g253444253815_
                                         (lambda (_g253446253467_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g253446253467_))
                                               (let ((_e253448253469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g253446253467_))))
                                                 (let ((_hd253449253472_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e253448253469_)))
                                                       (_tl253450253474_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e253448253469_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl253450253474_))
                                                       (let ((_g261412_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl253450253474_ '0))))
                 (begin
                   (let ((_g261413_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g261412_)
                                (##vector-length _g261412_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g261413_ 2)))
                         (error "Context expects 2 values" _g261413_)))
                   (let ((_target253451253477_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g261412_ 0)))
                         (_tl253453253479_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g261412_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl253453253479_))
                         (letrec ((_loop253454253482_
                                   (lambda (_hd253452253485_
                                            _clause253458253487_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd253452253485_))
                                         (let ((_e253455253490_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd253452253485_))))
                                           (let ((_lp-hd253456253493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e253455253490_)))
                                                 (_lp-tl253457253495_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e253455253490_))))
                                             (let ((__tmp261414
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd253456253493_
                                                            _clause253458253487_))))
                                               (declare (not safe))
                                               (_loop253454253482_
                                                _lp-tl253457253495_
                                                __tmp261414))))
                                         (let ((_clause253459253498_
                                                (reverse _clause253458253487_)))
                                           ((lambda (_L253501_)
                                              (for-each
                                               (lambda (_clause253514_)
                                                 (let* ((___stx260106260107_
                                                         _clause253514_)
                                                        (_g253517253532_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx260106260107_)))))
                                                   (let ((___kont260108260109_
                                                          (lambda (_L253560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L253561_
                           _L253562_)
                    (for-each
                     (lambda (_g253577253579_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g253577253579_
                          _L253562_
                          _method-calls252717_
                          _slot-refs252718_
                          _class-type-check252719_
                          _struct-type-check252720_
                          _struct-type-assert252721_)))
                     _L253560_)))
                 (___kont260110260111_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx260106260107_))
                                                         (let ((_e253522253544_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx260106260107_))))
                   (let ((_tl253524253549_
                          (let ()
                            (declare (not safe))
                            (##cdr _e253522253544_)))
                         (_hd253523253547_
                          (let ()
                            (declare (not safe))
                            (##car _e253522253544_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd253523253547_))
                         (let ((_e253525253552_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd253523253547_))))
                           (let ((_tl253527253557_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e253525253552_)))
                                 (_hd253526253555_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e253525253552_))))
                             (___kont260108260109_
                              _tl253524253549_
                              _tl253527253557_
                              _hd253526253555_)))
                         (___kont260110260111_))))
                 (___kont260110260111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp261415
                                                      (lambda (_g253584253587_
                                                               _g253585253589_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g253584253587_
                                                                _g253585253589_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp261415
                                                         '()
                                                         _L253501_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?252724_))
                                                  _stx252623_
                                                  (let* ((_specializer-id253598_
                                                          (let* ((_id253592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp261416
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L252698_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp261416 '"::specialize")))
                         (_specializer-id253595_
                          (let ((__tmp261417
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx252623_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id253592_ __tmp261417))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id253595_))
                    _specializer-id253595_))
                 (_lifted-specializer-id253605_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?252726_))
                      (let* ((_id253600_
                              (let ((__tmp261418
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L252698_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp261418
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id253602_
                              (let ((__tmp261419
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx252623_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id253600_
                                 __tmp261419))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id253602_))
                        _lifted-specializer-id253602_)
                      '#f))
                 (_$t253607_
                  (let ((__tmp261420 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp261420)))
                 (_methods253609_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls252717_)))
                 (_$methods253613_
                  (map (lambda (_id253611_)
                         (let ((__tmp261421 (gensym _id253611_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp261421)))
                       _methods253609_))
                 (_g261422_
                  (for-each
                   (lambda (_g253614253617_ _g253615253619_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls252717_
                        _g253614253617_
                        _g253615253619_)))
                   _methods253609_
                   _$methods253613_))
                 (_methods-bind253630_
                  (map (lambda (_g253622253625_ _g253623253627_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind252625_
                            _$t253607_
                            _g253622253625_
                            _g253623253627_)))
                       _methods253609_
                       _$methods253613_))
                 (_slots253632_
                  (let () (declare (not safe)) (hash-keys _slot-refs252718_)))
                 (_$slots253636_
                  (map (lambda (_id253634_)
                         (let ((__tmp261423 (gensym _id253634_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp261423)))
                       _slots253632_))
                 (_g261424_
                  (for-each
                   (lambda (_g253637253640_ _g253638253642_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs252718_
                        _g253637253640_
                        _g253638253642_)))
                   _slots253632_
                   _$slots253636_))
                 (_slots-bind253653_
                  (map (lambda (_g253645253648_ _g253646253650_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind252626_
                            _$t253607_
                            _g253645253648_
                            _g253646253650_)))
                       _slots253632_
                       _$slots253636_))
                 (_class-check253655_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check252719_)))
                 (_$class-check253658_
                  (map (lambda (_g261425_)
                         (let ((__tmp261426 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp261426)))
                       _class-check253655_))
                 (_g261427_
                  (for-each
                   (lambda (_g253659253662_ _g253660253664_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check252719_
                        _g253659253662_
                        _g253660253664_)))
                   _class-check253655_
                   _$class-check253658_))
                 (_class-check-bind253675_
                  (map (lambda (_g253667253670_ _g253668253672_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind252627_
                            _$t253607_
                            _g253667253670_
                            _g253668253672_)))
                       _class-check253655_
                       _$class-check253658_))
                 (_struct-check-all253677_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check252720_
                     _struct-type-assert252721_)))
                 (_struct-check253679_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all253677_)))
                 (_$struct-check253682_
                  (map (lambda (_g261428_)
                         (let ((__tmp261429 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp261429)))
                       _struct-check253679_))
                 (_g261430_
                  (for-each
                   (lambda (_g253683253686_ _g253684253688_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all253677_
                        _g253683253686_
                        _g253684253688_)))
                   _struct-check253679_
                   _$struct-check253682_))
                 (_struct-check-bind253699_
                  (map (lambda (_g253691253694_ _g253692253696_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind252628_
                            _$t253607_
                            _g253691253694_
                            _g253692253696_)))
                       _struct-check253679_
                       _$struct-check253682_))
                 (_make-specializer-impl253806_
                  (lambda (_struct-type-check1253701_
                           _struct-type-check2253702_)
                    (let* ((_specializer-clauses253804_
                            (map (lambda (_clause253704_)
                                   (let* ((___stx260126260127_ _clause253704_)
                                          (_g253707253722_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx260126260127_)))))
                                     (let ((___kont260128260129_
                                            (lambda (_L253750_
                                                     _L253751_
                                                     _L253752_)
                                              (let* ((_body253792_
                                                      (map (lambda (_g253787253789_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g253787253789_
                        _L253752_
                        _$t253607_
                        _method-calls252717_
                        _slot-refs252718_
                        _class-type-check252719_
                        _struct-type-check1253701_
                        _struct-type-check2253702_)))
                   _L253750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp261431
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L253752_
                                                              _L253751_))))
                                                (declare (not safe))
                                                (cons __tmp261431
                                                      _body253792_))))
                                           (___kont260130260131_
                                            (lambda () _clause253704_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx260126260127_))
                                           (let ((_e253712253734_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx260126260127_))))
                                             (let ((_tl253714253739_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e253712253734_)))
                                                   (_hd253713253737_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e253712253734_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd253713253737_))
                                                   (let ((_e253715253742_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd253713253737_))))
                                                     (let ((_tl253717253747_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e253715253742_)))
                                                           (_hd253716253745_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e253715253742_))))
                                                       (___kont260128260129_
                                                        _tl253714253739_
                                                        _tl253717253747_
                                                        _hd253716253745_)))
                                                   (___kont260130260131_))))
                                           (___kont260130260131_)))))
                                 (let ((__tmp261432
                                        (lambda (_g253796253799_
                                                 _g253797253801_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g253796253799_
                                                  _g253797253801_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp261432 '() _L253501_))))
                           (__tmp261433
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses253804_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp261433 _stx252623_))))
                 (_specializer-impl253808_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl253806_
                     _struct-check-all253677_
                     _empty252722_)))
                 (_unchecked-specializer-impl253810_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl253806_
                         _empty252722_
                         _struct-check-all253677_))
                      '#f))
                 (_specializer-impl253812_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl252629_
                     _$t253607_
                     _methods-bind253630_
                     _slots-bind253653_
                     _class-check-bind253675_
                     _struct-check-bind253699_
                     _specializer-impl253808_
                     _lifted-specializer-id253605_
                     _unchecked-specializer-impl253810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp261435
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L252698_)))
                                                          (__tmp261434
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id253598_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp261435
                                                       '" => "
                                                       __tmp261434))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def252630_
                                                       _L252698_
                                                       _specializer-id253598_
                                                       _specializer-impl253812_
                                                       _lifted-specializer-id253605_
                                                       _unchecked-specializer-impl253810_)))))
                                            _clause253459253498_))))))
                           (let ()
                             (declare (not safe))
                             (_loop253454253482_ _target253451253477_ '())))
                         (let ()
                           (declare (not safe))
                           (_g253445253464_ _g253446253467_))))))
               (let ()
                 (declare (not safe))
                 (_g253445253464_ _g253446253467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g253445253464_
                                                  _g253446253467_))))))
                                   (declare (not safe))
                                   (_g253444253815_ _L252697_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L252697_))
                                     (let* ((_g253818253848_
                                             (lambda (_g253819253845_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g253819253845_))))
                                            (_g253817254536_
                                             (lambda (_g253819253851_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g253819253851_))
                                                   (let ((_e253823253853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g253819253851_))))
                                                     (let ((_hd253824253856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e253823253853_)))
                                                           (_tl253825253858_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e253823253853_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl253825253858_))
                                                           (let ((_e253826253861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl253825253858_))))
                     (let ((_hd253827253864_
                            (let ()
                              (declare (not safe))
                              (##car _e253826253861_)))
                           (_tl253828253866_
                            (let ()
                              (declare (not safe))
                              (##cdr _e253826253861_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd253827253864_))
                           (let ((_e253829253869_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd253827253864_))))
                             (let ((_hd253830253872_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e253829253869_)))
                                   (_tl253831253874_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e253829253869_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd253830253872_))
                                   (let ((_e253832253877_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd253830253872_))))
                                     (let ((_hd253833253880_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e253832253877_)))
                                           (_tl253834253882_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e253832253877_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd253833253880_))
                                           (let ((_e253835253885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd253833253880_))))
                                             (let ((_hd253836253888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e253835253885_)))
                                                   (_tl253837253890_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e253835253885_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl253837253890_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl253834253882_))
                                                       (let ((_e253838253893_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl253834253882_))))
                 (let ((_hd253839253896_
                        (let () (declare (not safe)) (##car _e253838253893_)))
                       (_tl253840253898_
                        (let () (declare (not safe)) (##cdr _e253838253893_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl253840253898_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl253831253874_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl253828253866_))
                               (let ((_e253841253901_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl253828253866_))))
                                 (let ((_hd253842253904_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e253841253901_)))
                                       (_tl253843253906_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e253841253901_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl253843253906_))
                                       ((lambda (_L253909_ _L253910_ _L253911_)
                                          (let* ((_g253934253952_
                                                  (lambda (_g253935253949_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g253935253949_))))
                                                 (_g253933254003_
                                                  (lambda (_g253935253955_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g253935253955_))
                                                        (let ((_e253939253957_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g253935253955_))))
                  (let ((_hd253940253960_
                         (let () (declare (not safe)) (##car _e253939253957_)))
                        (_tl253941253962_
                         (let ()
                           (declare (not safe))
                           (##cdr _e253939253957_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl253941253962_))
                        (let ((_e253942253965_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl253941253962_))))
                          (let ((_hd253943253968_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e253942253965_)))
                                (_tl253944253970_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e253942253965_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd253943253968_))
                                (let ((_e253945253973_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd253943253968_))))
                                  (let ((_hd253946253976_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e253945253973_)))
                                        (_tl253947253978_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e253945253973_))))
                                    ((lambda (_L253981_ _L253982_ _L253983_)
                                       (for-each
                                        (lambda (_g253998254000_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g253998254000_
                                             _L253983_
                                             _method-calls252717_
                                             _slot-refs252718_
                                             _class-type-check252719_
                                             _struct-type-check252720_
                                             _struct-type-assert252721_)))
                                        _L253981_))
                                     _tl253944253970_
                                     _tl253947253978_
                                     _hd253946253976_)))
                                (let ()
                                  (declare (not safe))
                                  (_g253934253952_ _g253935253955_)))))
                        (let ()
                          (declare (not safe))
                          (_g253934253952_ _g253935253955_)))))
                (let ()
                  (declare (not safe))
                  (_g253934253952_ _g253935253955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g253933254003_ _L253910_))
                                          (let* ((_g254006254025_
                                                  (lambda (_g254007254022_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g254007254022_))))
                                                 (_g254005254144_
                                                  (lambda (_g254007254028_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g254007254028_))
                                                        (let ((_e254009254030_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g254007254028_))))
                  (let ((_hd254010254033_
                         (let () (declare (not safe)) (##car _e254009254030_)))
                        (_tl254011254035_
                         (let ()
                           (declare (not safe))
                           (##cdr _e254009254030_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl254011254035_))
                        (let ((_g261436_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl254011254035_
                                  '0))))
                          (begin
                            (let ((_g261437_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g261436_)
                                         (##vector-length _g261436_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g261437_ 2)))
                                  (error "Context expects 2 values"
                                         _g261437_)))
                            (let ((_target254012254038_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g261436_ 0)))
                                  (_tl254014254040_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g261436_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl254014254040_))
                                  (letrec ((_loop254015254043_
                                            (lambda (_hd254013254046_
                                                     _clause254019254048_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd254013254046_))
                                                  (let ((_e254016254051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd254013254046_))))
                                                    (let ((_lp-hd254017254054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e254016254051_)))
                                                          (_lp-tl254018254056_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e254016254051_))))
                                                      (let ((__tmp261438
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd254017254054_ _clause254019254048_))))
                (declare (not safe))
                (_loop254015254043_ _lp-tl254018254056_ __tmp261438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause254020254059_
                                                         (reverse _clause254019254048_)))
                                                    ((lambda (_L254062_)
                                                       (for-each
                                                        (lambda (_clause254075_)
                                                          (let* ((_g254077254092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g254078254089_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g254078254089_))))
                         (_g254076254134_
                          (lambda (_g254078254095_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g254078254095_))
                                (let ((_e254082254097_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g254078254095_))))
                                  (let ((_hd254083254100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e254082254097_)))
                                        (_tl254084254102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e254082254097_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd254083254100_))
                                        (let ((_e254085254105_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd254083254100_))))
                                          (let ((_hd254086254108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e254085254105_)))
                                                (_tl254087254110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e254085254105_))))
                                            ((lambda (_L254113_
                                                      _L254114_
                                                      _L254115_)
                                               (for-each
                                                (lambda (_g254129254131_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g254129254131_
                                                     _L254115_
                                                     _method-calls252717_
                                                     _slot-refs252718_
                                                     _class-type-check252719_
                                                     _struct-type-check252720_
                                                     _struct-type-assert252721_)))
                                                _L254113_))
                                             _tl254084254102_
                                             _tl254087254110_
                                             _hd254086254108_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g254077254092_ _g254078254095_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g254077254092_ _g254078254095_))))))
                    (declare (not safe))
                    (_g254076254134_ _clause254075_)))
                (let ((__tmp261439
                       (lambda (_g254136254139_ _g254137254141_)
                         (let ()
                           (declare (not safe))
                           (cons _g254136254139_ _g254137254141_)))))
                  (declare (not safe))
                  (foldr1 __tmp261439 '() _L254062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause254020254059_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop254015254043_
                                       _target254012254038_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g254006254025_ _g254007254028_))))))
                        (let ()
                          (declare (not safe))
                          (_g254006254025_ _g254007254028_)))))
                (let ()
                  (declare (not safe))
                  (_g254006254025_ _g254007254028_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g254005254144_ _L253909_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?252724_))
                                              _stx252623_
                                              (let* ((_specializer-id254153_
                                                      (let* ((_id254147_
                                                              (let ((__tmp261440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L252698_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp261440 '"::specialize")))
                     (_specializer-id254150_
                      (let ((__tmp261441
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx252623_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id254147_ __tmp261441))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id254150_))
                _specializer-id254150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id254160_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?252726_))
                                                          (let* ((_id254155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp261442
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L252698_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp261442
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id254157_
                          (let ((__tmp261443
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx252623_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id254155_ __tmp261443))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id254157_))
                    _lifted-specializer-id254157_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t254162_
                                                      (let ((__tmp261444
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp261444)))
                                                     (_methods254164_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls252717_)))
                                                     (_$methods254168_
                                                      (map (lambda (_id254166_)
                                                             (let ((__tmp261445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id254166_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp261445)))
                   _methods254164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g261446_
                                                      (for-each
                                                       (lambda (_g254169254172_
                                                                _g254170254174_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls252717_
                                                            _g254169254172_
                                                            _g254170254174_)))
                                                       _methods254164_
                                                       _$methods254168_))
                                                     (_methods-bind254185_
                                                      (map (lambda (_g254177254180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g254178254182_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind252625_
                        _$t254162_
                        _g254177254180_
                        _g254178254182_)))
                   _methods254164_
                   _$methods254168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots254187_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs252718_)))
                                                     (_$slots254191_
                                                      (map (lambda (_id254189_)
                                                             (let ((__tmp261447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id254189_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp261447)))
                   _slots254187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g261448_
                                                      (for-each
                                                       (lambda (_g254192254195_
                                                                _g254193254197_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs252718_
                                                            _g254192254195_
                                                            _g254193254197_)))
                                                       _slots254187_
                                                       _$slots254191_))
                                                     (_slots-bind254208_
                                                      (map (lambda (_g254200254203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g254201254205_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind252626_
                        _$t254162_
                        _g254200254203_
                        _g254201254205_)))
                   _slots254187_
                   _$slots254191_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check254210_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check252719_)))
                                                     (_$class-check254213_
                                                      (map (lambda (_g261449_)
                                                             (let ((__tmp261450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp261450)))
                   _class-check254210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g261451_
                                                      (for-each
                                                       (lambda (_g254214254217_
                                                                _g254215254219_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check252719_
                                                            _g254214254217_
                                                            _g254215254219_)))
                                                       _class-check254210_
                                                       _$class-check254213_))
                                                     (_class-check-bind254230_
                                                      (map (lambda (_g254222254225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g254223254227_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind252627_
                        _$t254162_
                        _g254222254225_
                        _g254223254227_)))
                   _class-check254210_
                   _$class-check254213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all254232_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check252720_
                                                         _struct-type-assert252721_)))
                                                     (_struct-check254234_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all254232_)))
                                                     (_$struct-check254237_
                                                      (map (lambda (_g261452_)
                                                             (let ((__tmp261453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp261453)))
                   _struct-check254234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g261454_
                                                      (for-each
                                                       (lambda (_g254238254241_
                                                                _g254239254243_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all254232_
                                                            _g254238254241_
                                                            _g254239254243_)))
                                                       _struct-check254234_
                                                       _$struct-check254237_))
                                                     (_struct-check-bind254254_
                                                      (map (lambda (_g254246254249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g254247254251_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind252628_
                        _$t254162_
                        _g254246254249_
                        _g254247254251_)))
                   _struct-check254234_
                   _$struct-check254237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr254353_
                                                      (lambda (_struct-type-check1254256_
                                                               _struct-type-check2254257_)
                                                        (let* ((_g254259254277_
                                                                (lambda (_g254260254274_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g254260254274_))))
                       (_g254258254350_
                        (lambda (_g254260254280_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g254260254280_))
                              (let ((_e254264254282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g254260254280_))))
                                (let ((_hd254265254285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e254264254282_)))
                                      (_tl254266254287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e254264254282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl254266254287_))
                                      (let ((_e254267254290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl254266254287_))))
                                        (let ((_hd254268254293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e254267254290_)))
                                              (_tl254269254295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e254267254290_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd254268254293_))
                                              (let ((_e254270254298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd254268254293_))))
                                                (let ((_hd254271254301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e254270254298_)))
                                                      (_tl254272254303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e254270254298_))))
                                                  ((lambda (_L254306_
                                                            _L254307_
                                                            _L254308_)
                                                     (let* ((_body254348_
                                                             (map (lambda (_g254343254345_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g254343254345_
                               _L254308_
                               _$t254162_
                               _method-calls252717_
                               _slot-refs252718_
                               _class-type-check252719_
                               _struct-type-check1254256_
                               _struct-type-check2254257_)))
                          _L254306_))
                    (__tmp261455
                     (let ((__tmp261456
                            (let ((__tmp261457
                                   (let ()
                                     (declare (not safe))
                                     (cons _L254308_ _L254307_))))
                              (declare (not safe))
                              (cons __tmp261457 _body254348_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp261456))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp261455 _L253910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl254269254295_
                                                   _tl254272254303_
                                                   _hd254271254301_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g254259254277_
                                                 _g254260254280_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g254259254277_ _g254260254280_)))))
                              (let ()
                                (declare (not safe))
                                (_g254259254277_ _g254260254280_))))))
                  (declare (not safe))
                  (_g254258254350_ _L253910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr254514_
                                                      (lambda (_struct-type-check1254355_
                                                               _struct-type-check2254356_)
                                                        (let* ((_g254358254377_
                                                                (lambda (_g254359254374_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g254359254374_))))
                       (_g254357254511_
                        (lambda (_g254359254380_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g254359254380_))
                              (let ((_e254361254382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g254359254380_))))
                                (let ((_hd254362254385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e254361254382_)))
                                      (_tl254363254387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e254361254382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl254363254387_))
                                      (let ((_g261458_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl254363254387_
                                                '0))))
                                        (begin
                                          (let ((_g261459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g261458_)
                                                       (##vector-length
                                                        _g261458_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g261459_ 2)))
                                                (error "Context expects 2 values"
                                                       _g261459_)))
                                          (let ((_target254364254390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g261458_ 0)))
                                                (_tl254366254392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g261458_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl254366254392_))
                                                (letrec ((_loop254367254395_
                                                          (lambda (_hd254365254398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause254371254400_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd254365254398_))
                        (let ((_e254368254403_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd254365254398_))))
                          (let ((_lp-hd254369254406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e254368254403_)))
                                (_lp-tl254370254408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e254368254403_))))
                            (let ((__tmp261460
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd254369254406_
                                           _clause254371254400_))))
                              (declare (not safe))
                              (_loop254367254395_
                               _lp-tl254370254408_
                               __tmp261460))))
                        (let ((_clause254372254411_
                               (reverse _clause254371254400_)))
                          ((lambda (_L254414_)
                             (let* ((_clauses254509_
                                     (map (lambda (_clause254429_)
                                            (let* ((___stx260146260147_
                                                    _clause254429_)
                                                   (_g254432254447_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx260146260147_)))))
                                              (let ((___kont260148260149_
                                                     (lambda (_L254475_
                                                              _L254476_
                                                              _L254477_)
                                                       (let* ((_body254497_
                                                               (map (lambda (_g254492254494_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g254492254494_
                                 _L254477_
                                 _$t254162_
                                 _method-calls252717_
                                 _slot-refs252718_
                                 _class-type-check252719_
                                 _struct-type-check1254355_
                                 _struct-type-check2254356_)))
                            _L254475_))
                      (__tmp261461
                       (let ()
                         (declare (not safe))
                         (cons _L254477_ _L254476_))))
                 (declare (not safe))
                 (cons __tmp261461 _body254497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont260150260151_
                                                     (lambda ()
                                                       _clause254429_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx260146260147_))
                                                    (let ((_e254437254459_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx260146260147_))))
                                                      (let ((_tl254439254464_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e254437254459_)))
                    (_hd254438254462_
                     (let () (declare (not safe)) (##car _e254437254459_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd254438254462_))
                    (let ((_e254440254467_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd254438254462_))))
                      (let ((_tl254442254472_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254440254467_)))
                            (_hd254441254470_
                             (let ()
                               (declare (not safe))
                               (##car _e254440254467_))))
                        (___kont260148260149_
                         _tl254439254464_
                         _tl254442254472_
                         _hd254441254470_)))
                    (___kont260150260151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont260150260151_)))))
                                          (let ((__tmp261462
                                                 (lambda (_g254501254504_
                                                          _g254502254506_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g254501254504_
                                                           _g254502254506_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp261462
                                                    '()
                                                    _L254414_))))
                                    (__tmp261463
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses254509_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp261463 _L253909_)))
                           _clause254372254411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop254367254395_
                                                     _target254364254390_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g254358254377_
                                                   _g254359254380_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g254358254377_ _g254359254380_)))))
                              (let ()
                                (declare (not safe))
                                (_g254358254377_ _g254359254380_))))))
                  (declare (not safe))
                  (_g254357254511_ _L253909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl254519_
                                                      (lambda (_specializer-lambda-expr254516_
                                                               _specializer-case-lambda-expr254517_)
                                                        (let ((__tmp261464
                                                               (let ((__tmp261465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp261467
                                     (let ((__tmp261468
                                            (let ((__tmp261470
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L253911_ '())))
                                                  (__tmp261469
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr254516_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp261470 __tmp261469))))
                                       (declare (not safe))
                                       (cons __tmp261468 '())))
                                    (__tmp261466
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr254517_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp261467 __tmp261466))))
                         (declare (not safe))
                         (cons '%#let-values __tmp261465))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp261464 _stx252623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr254521_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr254353_
                                                         _struct-check-all254232_
                                                         _empty252722_)))
                                                     (_specializer-case-lambda-expr254523_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr254514_
                                                         _struct-check-all254232_
                                                         _empty252722_)))
                                                     (_specializer-impl254525_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl254519_
                                                         _specializer-lambda-expr254521_
                                                         _specializer-case-lambda-expr254523_)))
                                                     (_unchecked-specializer-lambda-expr254527_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?252725_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr254353_
                                                             _empty252722_
                                                             _struct-check-all254232_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr254529_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?252725_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr254514_
                                                             _empty252722_
                                                             _struct-check-all254232_))
                                                          '#f))
                                                     (_unchecked-specializer-impl254531_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?252725_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl254519_
                                                             _unchecked-specializer-lambda-expr254527_
                                                             _unchecked-specializer-case-lambda-expr254529_))
                                                          '#f))
                                                     (_specializer-impl254533_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl252629_
                                                         _$t254162_
                                                         _methods-bind254185_
                                                         _slots-bind254208_
                                                         _class-check-bind254230_
                                                         _struct-check-bind254254_
                                                         _specializer-impl254525_
                                                         _lifted-specializer-id254160_
                                                         _unchecked-specializer-impl254531_))))
                                                (let ((__tmp261472
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L252698_)))
                                                      (__tmp261471
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id254153_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp261472
                                                   '" => "
                                                   __tmp261471))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def252630_
                                                   _L252698_
                                                   _specializer-id254153_
                                                   _specializer-impl254533_
                                                   _lifted-specializer-id254160_
                                                   _unchecked-specializer-impl254531_)))))
                                        _hd253842253904_
                                        _hd253839253896_
                                        _hd253836253888_)
                                       (let ()
                                         (declare (not safe))
                                         (_g253818253848_ _g253819253851_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g253818253848_ _g253819253851_)))
                           (let ()
                             (declare (not safe))
                             (_g253818253848_ _g253819253851_)))
                       (let ()
                         (declare (not safe))
                         (_g253818253848_ _g253819253851_)))))
               (let () (declare (not safe)) (_g253818253848_ _g253819253851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253818253848_
                                                      _g253819253851_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g253818253848_
                                              _g253819253851_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g253818253848_ _g253819253851_)))))
                           (let ()
                             (declare (not safe))
                             (_g253818253848_ _g253819253851_)))))
                   (let ()
                     (declare (not safe))
                     (_g253818253848_ _g253819253851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g253818253848_
                                                      _g253819253851_))))))
                                       (declare (not safe))
                                       (_g253817254536_ _L252697_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L252697_))
                                         (let* ((_g254539254592_
                                                 (lambda (_g254540254589_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g254540254589_))))
                                                (_g254538255864_
                                                 (lambda (_g254540254595_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g254540254595_))
                                                       (let ((_e254546254597_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g254540254595_))))
                 (let ((_hd254547254600_
                        (let () (declare (not safe)) (##car _e254546254597_)))
                       (_tl254548254602_
                        (let () (declare (not safe)) (##cdr _e254546254597_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd254547254600_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd254547254600_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl254548254602_))
                               (let ((_e254549254605_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl254548254602_))))
                                 (let ((_hd254550254608_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e254549254605_)))
                                       (_tl254551254610_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e254549254605_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd254550254608_))
                                       (let ((_e254552254613_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd254550254608_))))
                                         (let ((_hd254553254616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e254552254613_)))
                                               (_tl254554254618_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e254552254613_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd254553254616_))
                                               (let ((_e254555254621_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd254553254616_))))
                                                 (let ((_hd254556254624_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254555254621_)))
                                                       (_tl254557254626_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254555254621_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd254556254624_))
                                                       (let ((_e254558254629_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd254556254624_))))
                 (let ((_hd254559254632_
                        (let () (declare (not safe)) (##car _e254558254629_)))
                       (_tl254560254634_
                        (let () (declare (not safe)) (##cdr _e254558254629_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl254560254634_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl254557254626_))
                           (let ((_e254561254637_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl254557254626_))))
                             (let ((_hd254562254640_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e254561254637_)))
                                   (_tl254563254642_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e254561254637_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd254562254640_))
                                   (let ((_e254564254645_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd254562254640_))))
                                     (let ((_hd254565254648_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254564254645_)))
                                           (_tl254566254650_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254564254645_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd254565254648_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd254565254648_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl254566254650_))
                                                   (let ((_e254567254653_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl254566254650_))))
                                                     (let ((_hd254568254656_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254567254653_)))
                                                           (_tl254569254658_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254567254653_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd254568254656_))
                                                           (let ((_e254570254661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd254568254656_))))
                     (let ((_hd254571254664_
                            (let ()
                              (declare (not safe))
                              (##car _e254570254661_)))
                           (_tl254572254666_
                            (let ()
                              (declare (not safe))
                              (##cdr _e254570254661_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd254571254664_))
                           (let ((_e254573254669_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd254571254664_))))
                             (let ((_hd254574254672_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e254573254669_)))
                                   (_tl254575254674_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e254573254669_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd254574254672_))
                                   (let ((_e254576254677_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd254574254672_))))
                                     (let ((_hd254577254680_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254576254677_)))
                                           (_tl254578254682_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254576254677_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl254578254682_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl254575254674_))
                                               (let ((_e254579254685_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl254575254674_))))
                                                 (let ((_hd254580254688_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254579254685_)))
                                                       (_tl254581254690_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254579254685_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl254581254690_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl254572254666_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl254569254658_))
                       (let ((_e254582254693_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl254569254658_))))
                         (let ((_hd254583254696_
                                (let ()
                                  (declare (not safe))
                                  (##car _e254582254693_)))
                               (_tl254584254698_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e254582254693_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl254584254698_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl254563254642_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl254554254618_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl254551254610_))
                                           (let ((_e254585254701_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl254551254610_))))
                                             (let ((_hd254586254704_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254585254701_)))
                                                   (_tl254587254706_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254585254701_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl254587254706_))
                                                   ((lambda (_L254709_
                                                             _L254710_
                                                             _L254711_
                                                             _L254712_
                                                             _L254713_)
                                                      (let* ((_g254752254814_
                                                              (lambda (_g254753254811_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g254753254811_))))
                     (_g254751255861_
                      (lambda (_g254753254817_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g254753254817_))
                            (let ((_e254759254819_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g254753254817_))))
                              (let ((_hd254760254822_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254759254819_)))
                                    (_tl254761254824_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254759254819_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd254760254822_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd254760254822_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl254761254824_))
                                            (let ((_e254762254827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl254761254824_))))
                                              (let ((_hd254763254830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e254762254827_)))
                                                    (_tl254764254832_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e254762254827_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl254764254832_))
                                                    (let ((_e254765254835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl254764254832_))))
                                                      (let ((_hd254766254838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e254765254835_)))
                    (_tl254767254840_
                     (let () (declare (not safe)) (##cdr _e254765254835_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd254766254838_))
                    (let ((_e254768254843_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd254766254838_))))
                      (let ((_hd254769254846_
                             (let ()
                               (declare (not safe))
                               (##car _e254768254843_)))
                            (_tl254770254848_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254768254843_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd254769254846_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd254769254846_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl254770254848_))
                                    (let ((_e254771254851_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl254770254848_))))
                                      (let ((_hd254772254854_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e254771254851_)))
                                            (_tl254773254856_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e254771254851_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd254772254854_))
                                            (let ((_e254774254859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd254772254854_))))
                                              (let ((_hd254775254862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e254774254859_)))
                                                    (_tl254776254864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e254774254859_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd254775254862_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd254775254862_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl254776254864_))
                                                            (let ((_e254777254867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl254776254864_))))
                      (let ((_hd254778254870_
                             (let ()
                               (declare (not safe))
                               (##car _e254777254867_)))
                            (_tl254779254872_
                             (let ()
                               (declare (not safe))
                               (##cdr _e254777254867_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl254779254872_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl254773254856_))
                                (let ((_e254780254875_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl254773254856_))))
                                  (let ((_hd254781254878_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e254780254875_)))
                                        (_tl254782254880_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e254780254875_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd254781254878_))
                                        (let ((_e254783254883_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd254781254878_))))
                                          (let ((_hd254784254886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e254783254883_)))
                                                (_tl254785254888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e254783254883_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd254784254886_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd254784254886_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl254785254888_))
                                                        (let ((_e254786254891_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl254785254888_))))
                  (let ((_hd254787254894_
                         (let () (declare (not safe)) (##car _e254786254891_)))
                        (_tl254788254896_
                         (let ()
                           (declare (not safe))
                           (##cdr _e254786254891_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl254788254896_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl254782254880_))
                            (let ((_e254789254899_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl254782254880_))))
                              (let ((_hd254790254902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e254789254899_)))
                                    (_tl254791254904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e254789254899_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd254790254902_))
                                    (let ((_e254792254907_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd254790254902_))))
                                      (let ((_hd254793254910_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e254792254907_)))
                                            (_tl254794254912_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e254792254907_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd254793254910_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd254793254910_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl254794254912_))
                                                    (let ((_e254795254915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl254794254912_))))
                                                      (let ((_hd254796254918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e254795254915_)))
                    (_tl254797254920_
                     (let () (declare (not safe)) (##cdr _e254795254915_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl254797254920_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl254791254904_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl254791254904_))
                                  '1)
                            (let ((_g261473_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl254791254904_
                                      '1))))
                              (begin
                                (let ((_g261474_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g261473_)
                                             (##vector-length _g261473_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g261474_ 2)))
                                      (error "Context expects 2 values"
                                             _g261474_)))
                                (let ((_target254798254923_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g261473_ 0)))
                                      (_tl254800254925_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g261473_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl254800254925_))
                                      (let ((_e254807254928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl254800254925_))))
                                        (let ((_hd254808254931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e254807254928_)))
                                              (_tl254809254933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e254807254928_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl254809254933_))
                                              (letrec ((_loop254801254936_
                                                        (lambda (_hd254799254939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref254805254941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd254799254939_))
                      (let ((_e254802254944_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd254799254939_))))
                        (let ((_lp-hd254803254947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e254802254944_)))
                              (_lp-tl254804254949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e254802254944_))))
                          (let ((__tmp261475
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd254803254947_
                                         _kw-ref254805254941_))))
                            (declare (not safe))
                            (_loop254801254936_
                             _lp-tl254804254949_
                             __tmp261475))))
                      (let ((_kw-ref254806254952_
                             (reverse _kw-ref254805254941_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl254767254840_))
                            ((lambda (_L254955_
                                      _L254956_
                                      _L254957_
                                      _L254958_
                                      _L254959_)
                               (let* ((_kw-count255010_
                                       (length (let ((__tmp261476
                                                      (lambda (_g255002255005_
                                                               _g255003255007_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g255002255005_
                                                                _g255003255007_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp261476
                                                         '()
                                                         _L254956_))))
                                      (_self-index255012_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count255010_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L254711_))
                                     (let* ((_g255015255029_
                                             (lambda (_g255016255026_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g255016255026_))))
                                            (_g255014255200_
                                             (lambda (_g255016255032_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g255016255032_))
                                                   (let ((_e255019255034_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g255016255032_))))
                                                     (let ((_hd255020255037_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255019255034_)))
                                                           (_tl255021255039_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255019255034_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl255021255039_))
                                                           (let ((_e255022255042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl255021255039_))))
                     (let ((_hd255023255045_
                            (let ()
                              (declare (not safe))
                              (##car _e255022255042_)))
                           (_tl255024255047_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255022255042_))))
                       ((lambda (_L255050_ _L255051_)
                          (let ((_self255067_
                                 (list-ref _L255051_ _self-index255012_)))
                            (for-each
                             (lambda (_g255068255070_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g255068255070_
                                  _self255067_
                                  _method-calls252717_
                                  _slot-refs252718_
                                  _class-type-check252719_
                                  _struct-type-check252720_
                                  _struct-type-assert252721_)))
                             _L255050_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?252724_))
                                _stx252623_
                                (let* ((_specializer-id255079_
                                        (let* ((_id255073_
                                                (let ((__tmp261477
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L252698_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp261477
                                                   '"::specialize")))
                                               (_specializer-id255076_
                                                (let ((__tmp261478
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx252623_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id255073_
                                                   __tmp261478))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id255076_))
                                          _specializer-id255076_))
                                       (_lifted-specializer-id255086_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?252726_))
                                            (let* ((_id255081_
                                                    (let ((__tmp261479
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L252698_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp261479
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id255083_
                                                    (let ((__tmp261480
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx252623_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id255081_
                                                       __tmp261480))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id255083_))
                                              _lifted-specializer-id255083_)
                                            '#f))
                                       (_$t255088_
                                        (let ((__tmp261481 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp261481)))
                                       (_methods255090_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls252717_)))
                                       (_$methods255094_
                                        (map (lambda (_id255092_)
                                               (let ((__tmp261482
                                                      (gensym _id255092_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp261482)))
                                             _methods255090_))
                                       (_g261483_
                                        (for-each
                                         (lambda (_g255095255098_
                                                  _g255096255100_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls252717_
                                              _g255095255098_
                                              _g255096255100_)))
                                         _methods255090_
                                         _$methods255094_))
                                       (_methods-bind255111_
                                        (map (lambda (_g255103255106_
                                                      _g255104255108_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind252625_
                                                  _$t255088_
                                                  _g255103255106_
                                                  _g255104255108_)))
                                             _methods255090_
                                             _$methods255094_))
                                       (_slots255113_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs252718_)))
                                       (_$slots255117_
                                        (map (lambda (_id255115_)
                                               (let ((__tmp261484
                                                      (gensym _id255115_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp261484)))
                                             _slots255113_))
                                       (_g261485_
                                        (for-each
                                         (lambda (_g255118255121_
                                                  _g255119255123_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs252718_
                                              _g255118255121_
                                              _g255119255123_)))
                                         _slots255113_
                                         _$slots255117_))
                                       (_slots-bind255134_
                                        (map (lambda (_g255126255129_
                                                      _g255127255131_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind252626_
                                                  _$t255088_
                                                  _g255126255129_
                                                  _g255127255131_)))
                                             _slots255113_
                                             _$slots255117_))
                                       (_class-check255136_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check252719_)))
                                       (_$class-check255139_
                                        (map (lambda (_g261486_)
                                               (let ((__tmp261487
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp261487)))
                                             _class-check255136_))
                                       (_g261488_
                                        (for-each
                                         (lambda (_g255140255143_
                                                  _g255141255145_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check252719_
                                              _g255140255143_
                                              _g255141255145_)))
                                         _class-check255136_
                                         _$class-check255139_))
                                       (_class-check-bind255156_
                                        (map (lambda (_g255148255151_
                                                      _g255149255153_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind252627_
                                                  _$t255088_
                                                  _g255148255151_
                                                  _g255149255153_)))
                                             _class-check255136_
                                             _$class-check255139_))
                                       (_struct-check-all255158_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check252720_
                                           _struct-type-assert252721_)))
                                       (_struct-check255160_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all255158_)))
                                       (_$struct-check255163_
                                        (map (lambda (_g261489_)
                                               (let ((__tmp261490
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp261490)))
                                             _struct-check255160_))
                                       (_g261491_
                                        (for-each
                                         (lambda (_g255164255167_
                                                  _g255165255169_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all255158_
                                              _g255164255167_
                                              _g255165255169_)))
                                         _struct-check255160_
                                         _$struct-check255163_))
                                       (_struct-check-bind255180_
                                        (map (lambda (_g255172255175_
                                                      _g255173255177_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind252628_
                                                  _$t255088_
                                                  _g255172255175_
                                                  _g255173255177_)))
                                             _struct-check255160_
                                             _$struct-check255163_))
                                       (_make-specializer-impl255191_
                                        (lambda (_struct-type-check1255182_
                                                 _struct-type-check2255183_)
                                          (let* ((_specializer-body255189_
                                                  (map (lambda (_g255184255186_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g255184255186_
                                                            _self255067_
                                                            _$t255088_
                                                            _method-calls252717_
                                                            _slot-refs252718_
                                                            _class-type-check252719_
                                                            _struct-type-check1255182_
                                                            _struct-type-check2255183_)))
                                                       _L255050_))
                                                 (__tmp261492
                                                  (let ((__tmp261493
                                                         (let ((__tmp261495
                                                                (let ((__tmp261496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp261508
                                      (let ()
                                        (declare (not safe))
                                        (cons _L254713_ '())))
                                     (__tmp261497
                                      (let ((__tmp261498
                                             (let ((__tmp261499
                                                    (let ((__tmp261501
                                                           (let ((__tmp261502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp261507
                                 (let ()
                                   (declare (not safe))
                                   (cons _L254712_ '())))
                                (__tmp261503
                                 (let ((__tmp261504
                                        (let ((__tmp261505
                                               (let ((__tmp261506
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L255051_
                                                              _specializer-body255189_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp261506))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp261505
                                           _L254711_))))
                                   (declare (not safe))
                                   (cons __tmp261504 '()))))
                            (declare (not safe))
                            (cons __tmp261507 __tmp261503))))
                     (declare (not safe))
                     (cons __tmp261502 '())))
                  (__tmp261500
                   (let () (declare (not safe)) (cons _L254710_ '()))))
              (declare (not safe))
              (cons __tmp261501 __tmp261500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp261499))))
                                        (declare (not safe))
                                        (cons __tmp261498 '()))))
                                 (declare (not safe))
                                 (cons __tmp261508 __tmp261497))))
                          (declare (not safe))
                          (cons __tmp261496 '())))
                       (__tmp261494
                        (let () (declare (not safe)) (cons _L254709_ '()))))
                   (declare (not safe))
                   (cons __tmp261495 __tmp261494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp261493))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp261492
                                             _stx252623_))))
                                       (_specializer-impl255193_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl255191_
                                           _struct-check-all255158_
                                           _empty252722_)))
                                       (_unchecked-specializer-impl255195_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?252725_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl255191_
                                               _empty252722_
                                               _struct-check-all255158_))
                                            '#f))
                                       (_specializer-impl255197_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl252629_
                                           _$t255088_
                                           _methods-bind255111_
                                           _slots-bind255134_
                                           _class-check-bind255156_
                                           _struct-check-bind255180_
                                           _specializer-impl255193_
                                           _lifted-specializer-id255086_
                                           _unchecked-specializer-impl255195_))))
                                  (let ((__tmp261510
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L252698_)))
                                        (__tmp261509
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id255079_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp261510
                                     '" => "
                                     __tmp261509))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def252630_
                                     _L252698_
                                     _specializer-id255079_
                                     _specializer-impl255197_
                                     _lifted-specializer-id255086_
                                     _unchecked-specializer-impl255195_))))))
                        _tl255024255047_
                        _hd255023255045_)))
                   (let ()
                     (declare (not safe))
                     (_g255015255029_ _g255016255032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255015255029_
                                                      _g255016255032_))))))
                                       (declare (not safe))
                                       (_g255014255200_ _L254711_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L254711_))
                                         (let* ((_g255203255233_
                                                 (lambda (_g255204255230_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g255204255230_))))
                                                (_g255202255858_
                                                 (lambda (_g255204255236_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g255204255236_))
                                                       (let ((_e255208255238_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g255204255236_))))
                 (let ((_hd255209255241_
                        (let () (declare (not safe)) (##car _e255208255238_)))
                       (_tl255210255243_
                        (let () (declare (not safe)) (##cdr _e255208255238_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl255210255243_))
                       (let ((_e255211255246_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl255210255243_))))
                         (let ((_hd255212255249_
                                (let ()
                                  (declare (not safe))
                                  (##car _e255211255246_)))
                               (_tl255213255251_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e255211255246_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd255212255249_))
                               (let ((_e255214255254_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd255212255249_))))
                                 (let ((_hd255215255257_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e255214255254_)))
                                       (_tl255216255259_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e255214255254_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd255215255257_))
                                       (let ((_e255217255262_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd255215255257_))))
                                         (let ((_hd255218255265_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e255217255262_)))
                                               (_tl255219255267_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e255217255262_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd255218255265_))
                                               (let ((_e255220255270_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd255218255265_))))
                                                 (let ((_hd255221255273_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255220255270_)))
                                                       (_tl255222255275_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255220255270_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl255222255275_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl255219255267_))
                                                           (let ((_e255223255278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl255219255267_))))
                     (let ((_hd255224255281_
                            (let ()
                              (declare (not safe))
                              (##car _e255223255278_)))
                           (_tl255225255283_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255223255278_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl255225255283_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl255216255259_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl255213255251_))
                                   (let ((_e255226255286_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl255213255251_))))
                                     (let ((_hd255227255289_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255226255286_)))
                                           (_tl255228255291_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255226255286_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl255228255291_))
                                           ((lambda (_L255294_
                                                     _L255295_
                                                     _L255296_)
                                              (let* ((_g255319255333_
                                                      (lambda (_g255320255330_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g255320255330_))))
                                                     (_g255318255374_
                                                      (lambda (_g255320255336_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g255320255336_))
                                                            (let ((_e255323255338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g255320255336_))))
                      (let ((_hd255324255341_
                             (let ()
                               (declare (not safe))
                               (##car _e255323255338_)))
                            (_tl255325255343_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255323255338_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl255325255343_))
                            (let ((_e255326255346_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl255325255343_))))
                              (let ((_hd255327255349_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255326255346_)))
                                    (_tl255328255351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255326255346_))))
                                ((lambda (_L255354_ _L255355_)
                                   (let ((_self255368_
                                          (list-ref
                                           _L255355_
                                           _self-index255012_)))
                                     (for-each
                                      (lambda (_g255369255371_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g255369255371_
                                           _self255368_
                                           _method-calls252717_
                                           _slot-refs252718_
                                           _class-type-check252719_
                                           _struct-type-check252720_
                                           _struct-type-assert252721_)))
                                      _L255354_)))
                                 _tl255328255351_
                                 _hd255327255349_)))
                            (let ()
                              (declare (not safe))
                              (_g255319255333_ _g255320255336_)))))
                    (let ()
                      (declare (not safe))
                      (_g255319255333_ _g255320255336_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g255318255374_ _L255295_))
                                              (let* ((_g255377255396_
                                                      (lambda (_g255378255393_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g255378255393_))))
                                                     (_g255376255501_
                                                      (lambda (_g255378255399_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g255378255399_))
                                                            (let ((_e255380255401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g255378255399_))))
                      (let ((_hd255381255404_
                             (let ()
                               (declare (not safe))
                               (##car _e255380255401_)))
                            (_tl255382255406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255380255401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl255382255406_))
                            (let ((_g261511_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl255382255406_
                                      '0))))
                              (begin
                                (let ((_g261512_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g261511_)
                                             (##vector-length _g261511_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g261512_ 2)))
                                      (error "Context expects 2 values"
                                             _g261512_)))
                                (let ((_target255383255409_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g261511_ 0)))
                                      (_tl255385255411_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g261511_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl255385255411_))
                                      (letrec ((_loop255386255414_
                                                (lambda (_hd255384255417_
                                                         _clause255390255419_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd255384255417_))
                                                      (let ((_e255387255422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd255384255417_))))
                (let ((_lp-hd255388255425_
                       (let () (declare (not safe)) (##car _e255387255422_)))
                      (_lp-tl255389255427_
                       (let () (declare (not safe)) (##cdr _e255387255422_))))
                  (let ((__tmp261513
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd255388255425_ _clause255390255419_))))
                    (declare (not safe))
                    (_loop255386255414_ _lp-tl255389255427_ __tmp261513))))
              (let ((_clause255391255430_ (reverse _clause255390255419_)))
                ((lambda (_L255433_)
                   (for-each
                    (lambda (_clause255446_)
                      (let* ((_g255448255459_
                              (lambda (_g255449255456_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g255449255456_))))
                             (_g255447255491_
                              (lambda (_g255449255462_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g255449255462_))
                                    (let ((_e255452255464_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g255449255462_))))
                                      (let ((_hd255453255467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255452255464_)))
                                            (_tl255454255469_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255452255464_))))
                                        ((lambda (_L255472_ _L255473_)
                                           (let ((_self255485_
                                                  (list-ref
                                                   _L255473_
                                                   _self-index255012_)))
                                             (for-each
                                              (lambda (_g255486255488_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g255486255488_
                                                   _self255485_
                                                   _method-calls252717_
                                                   _slot-refs252718_
                                                   _class-type-check252719_
                                                   _struct-type-check252720_
                                                   _struct-type-assert252721_)))
                                              _L255472_)))
                                         _tl255454255469_
                                         _hd255453255467_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g255448255459_ _g255449255462_))))))
                        (declare (not safe))
                        (_g255447255491_ _clause255446_)))
                    (let ((__tmp261514
                           (lambda (_g255493255496_ _g255494255498_)
                             (let ()
                               (declare (not safe))
                               (cons _g255493255496_ _g255494255498_)))))
                      (declare (not safe))
                      (foldr1 __tmp261514 '() _L255433_))))
                 _clause255391255430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop255386255414_
                                           _target255383255409_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g255377255396_ _g255378255399_))))))
                            (let ()
                              (declare (not safe))
                              (_g255377255396_ _g255378255399_)))))
                    (let ()
                      (declare (not safe))
                      (_g255377255396_ _g255378255399_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g255376255501_ _L255294_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?252724_))
                                                  _stx252623_
                                                  (let* ((_specializer-id255510_
                                                          (let* ((_id255504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp261515
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L252698_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp261515 '"::specialize")))
                         (_specializer-id255507_
                          (let ((__tmp261516
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx252623_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id255504_ __tmp261516))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id255507_))
                    _specializer-id255507_))
                 (_lifted-specializer-id255517_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?252726_))
                      (let* ((_id255512_
                              (let ((__tmp261517
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L252698_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp261517
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id255514_
                              (let ((__tmp261518
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx252623_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id255512_
                                 __tmp261518))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id255514_))
                        _lifted-specializer-id255514_)
                      '#f))
                 (_$t255519_
                  (let ((__tmp261519 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp261519)))
                 (_methods255521_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls252717_)))
                 (_$methods255525_
                  (map (lambda (_id255523_)
                         (let ((__tmp261520 (gensym _id255523_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp261520)))
                       _methods255521_))
                 (_g261521_
                  (for-each
                   (lambda (_g255526255529_ _g255527255531_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls252717_
                        _g255526255529_
                        _g255527255531_)))
                   _methods255521_
                   _$methods255525_))
                 (_methods-bind255542_
                  (map (lambda (_g255534255537_ _g255535255539_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind252625_
                            _$t255519_
                            _g255534255537_
                            _g255535255539_)))
                       _methods255521_
                       _$methods255525_))
                 (_slots255544_
                  (let () (declare (not safe)) (hash-keys _slot-refs252718_)))
                 (_$slots255548_
                  (map (lambda (_id255546_)
                         (let ((__tmp261522 (gensym _id255546_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp261522)))
                       _slots255544_))
                 (_g261523_
                  (for-each
                   (lambda (_g255549255552_ _g255550255554_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs252718_
                        _g255549255552_
                        _g255550255554_)))
                   _slots255544_
                   _$slots255548_))
                 (_slots-bind255565_
                  (map (lambda (_g255557255560_ _g255558255562_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind252626_
                            _$t255519_
                            _g255557255560_
                            _g255558255562_)))
                       _slots255544_
                       _$slots255548_))
                 (_class-check255567_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check252719_)))
                 (_$class-check255570_
                  (map (lambda (_g261524_)
                         (let ((__tmp261525 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp261525)))
                       _class-check255567_))
                 (_g261526_
                  (for-each
                   (lambda (_g255571255574_ _g255572255576_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check252719_
                        _g255571255574_
                        _g255572255576_)))
                   _class-check255567_
                   _$class-check255570_))
                 (_class-check-bind255587_
                  (map (lambda (_g255579255582_ _g255580255584_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind252627_
                            _$t255519_
                            _g255579255582_
                            _g255580255584_)))
                       _class-check255567_
                       _$class-check255570_))
                 (_struct-check-all255589_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check252720_
                     _struct-type-assert252721_)))
                 (_struct-check255591_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all255589_)))
                 (_$struct-check255594_
                  (map (lambda (_g261527_)
                         (let ((__tmp261528 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp261528)))
                       _struct-check255591_))
                 (_g261529_
                  (for-each
                   (lambda (_g255595255598_ _g255596255600_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all255589_
                        _g255595255598_
                        _g255596255600_)))
                   _struct-check255591_
                   _$struct-check255594_))
                 (_struct-check-bind255611_
                  (map (lambda (_g255603255606_ _g255604255608_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind252628_
                            _$t255519_
                            _g255603255606_
                            _g255604255608_)))
                       _struct-check255591_
                       _$struct-check255594_))
                 (_make-specializer-lambda-expr255697_
                  (lambda (_struct-type-check1255613_
                           _struct-type-check2255614_)
                    (let* ((_g255616255630_
                            (lambda (_g255617255627_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g255617255627_))))
                           (_g255615255694_
                            (lambda (_g255617255633_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g255617255633_))
                                  (let ((_e255620255635_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g255617255633_))))
                                    (let ((_hd255621255638_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e255620255635_)))
                                          (_tl255622255640_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e255620255635_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl255622255640_))
                                          (let ((_e255623255643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl255622255640_))))
                                            (let ((_hd255624255646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e255623255643_)))
                                                  (_tl255625255648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e255623255643_))))
                                              ((lambda (_L255651_ _L255652_)
                                                 (let* ((_self255685_
                                                         (list-ref
                                                          _L255652_
                                                          _self-index255012_))
                                                        (_body255691_
                                                         (map (lambda (_g255686255688_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g255686255688_
                           _self255685_
                           _$t255519_
                           _method-calls252717_
                           _slot-refs252718_
                           _class-type-check252719_
                           _struct-type-check1255613_
                           _struct-type-check2255614_)))
                      _L255651_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp261530
                                                          (let ((__tmp261531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L255652_ _body255691_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp261531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp261530
                                                      _L255295_))))
                                               _tl255625255648_
                                               _hd255624255646_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g255616255630_
                                             _g255617255633_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g255616255630_ _g255617255633_))))))
                      (declare (not safe))
                      (_g255615255694_ _L255295_))))
                 (_make-specializer-case-lambda-expr255836_
                  (lambda (_struct-type-check1255699_
                           _struct-type-check2255700_)
                    (let* ((_g255702255721_
                            (lambda (_g255703255718_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g255703255718_))))
                           (_g255701255833_
                            (lambda (_g255703255724_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g255703255724_))
                                  (let ((_e255705255726_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g255703255724_))))
                                    (let ((_hd255706255729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e255705255726_)))
                                          (_tl255707255731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e255705255726_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl255707255731_))
                                          (let ((_g261532_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl255707255731_
                                                    '0))))
                                            (begin
                                              (let ((_g261533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g261532_)
                                                           (##vector-length
                                                            _g261532_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g261533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g261533_)))
                                              (let ((_target255708255734_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g261532_
                                                        0)))
                                                    (_tl255710255736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g261532_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl255710255736_))
                                                    (letrec ((_loop255711255739_
                                                              (lambda (_hd255709255742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause255715255744_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd255709255742_))
                            (let ((_e255712255747_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd255709255742_))))
                              (let ((_lp-hd255713255750_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255712255747_)))
                                    (_lp-tl255714255752_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255712255747_))))
                                (let ((__tmp261534
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd255713255750_
                                               _clause255715255744_))))
                                  (declare (not safe))
                                  (_loop255711255739_
                                   _lp-tl255714255752_
                                   __tmp261534))))
                            (let ((_clause255716255755_
                                   (reverse _clause255715255744_)))
                              ((lambda (_L255758_)
                                 (let* ((_clauses255831_
                                         (map (lambda (_clause255773_)
                                                (let* ((_g255775255786_
                                                        (lambda (_g255776255783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g255776255783_))))
                                                       (_g255774255821_
                                                        (lambda (_g255776255789_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g255776255789_))
                      (let ((_e255779255791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g255776255789_))))
                        (let ((_hd255780255794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e255779255791_)))
                              (_tl255781255796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e255779255791_))))
                          ((lambda (_L255799_ _L255800_)
                             (let* ((_self255812_
                                     (list-ref _L255800_ _self-index255012_))
                                    (_body255818_
                                     (map (lambda (_g255813255815_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g255813255815_
                                               _self255812_
                                               _$t255519_
                                               _method-calls252717_
                                               _slot-refs252718_
                                               _class-type-check252719_
                                               _struct-type-check1255699_
                                               _struct-type-check2255700_)))
                                          _L255799_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L255800_ _body255818_))))
                           _tl255781255796_
                           _hd255780255794_)))
                      (let ()
                        (declare (not safe))
                        (_g255775255786_ _g255776255789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g255774255821_
                                                   _clause255773_)))
                                              (let ((__tmp261535
                                                     (lambda (_g255823255826_
                                                              _g255824255828_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g255823255826_
                                                               _g255824255828_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp261535
                                                        '()
                                                        _L255758_))))
                                        (__tmp261536
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses255831_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp261536
                                    _L255294_)))
                               _clause255716255755_))))))
              (let ()
                (declare (not safe))
                (_loop255711255739_ _target255708255734_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255702255721_
                                                       _g255703255724_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g255702255721_
                                             _g255703255724_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g255702255721_ _g255703255724_))))))
                      (declare (not safe))
                      (_g255701255833_ _L255294_))))
                 (_make-specializer-impl255841_
                  (lambda (_specializer-lambda-expr255838_
                           _specializer-case-lambda-expr255839_)
                    (let ((__tmp261537
                           (let ((__tmp261538
                                  (let ((__tmp261540
                                         (let ((__tmp261541
                                                (let ((__tmp261558
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L254713_ '())))
                                                      (__tmp261542
                                                       (let ((__tmp261543
                                                              (let ((__tmp261544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp261546
                                    (let ((__tmp261547
                                           (let ((__tmp261557
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L254712_ '())))
                                                 (__tmp261548
                                                  (let ((__tmp261549
                                                         (let ((__tmp261550
                                                                (let ((__tmp261551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp261553
                                      (let ((__tmp261554
                                             (let ((__tmp261556
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L255296_ '())))
                                                   (__tmp261555
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr255838_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp261556
                                                     __tmp261555))))
                                        (declare (not safe))
                                        (cons __tmp261554 '())))
                                     (__tmp261552
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr255839_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp261553 __tmp261552))))
                          (declare (not safe))
                          (cons '%#let-values __tmp261551))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp261550 _stx252623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261549 '()))))
                                             (declare (not safe))
                                             (cons __tmp261557 __tmp261548))))
                                      (declare (not safe))
                                      (cons __tmp261547 '())))
                                   (__tmp261545
                                    (let ()
                                      (declare (not safe))
                                      (cons _L254710_ '()))))
                               (declare (not safe))
                               (cons __tmp261546 __tmp261545))))
                        (declare (not safe))
                        (cons '%#let-values __tmp261544))))
                 (declare (not safe))
                 (cons __tmp261543 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp261558
                                                        __tmp261542))))
                                           (declare (not safe))
                                           (cons __tmp261541 '())))
                                        (__tmp261539
                                         (let ()
                                           (declare (not safe))
                                           (cons _L254709_ '()))))
                                    (declare (not safe))
                                    (cons __tmp261540 __tmp261539))))
                             (declare (not safe))
                             (cons '%#let-values __tmp261538))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp261537 _stx252623_))))
                 (_specializer-lambda-expr255843_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr255697_
                     _struct-check-all255589_
                     _empty252722_)))
                 (_specializer-case-lambda-expr255845_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr255836_
                     _struct-check-all255589_
                     _empty252722_)))
                 (_specializer-impl255847_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl255841_
                     _specializer-lambda-expr255843_
                     _specializer-case-lambda-expr255845_)))
                 (_unchecked-specializer-lambda-expr255849_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr255697_
                         _empty252722_
                         _struct-check-all255589_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr255851_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr255836_
                         _empty252722_
                         _struct-check-all255589_))
                      '#f))
                 (_unchecked-specializer-impl255853_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?252725_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl255841_
                         _unchecked-specializer-lambda-expr255849_
                         _unchecked-specializer-case-lambda-expr255851_))
                      '#f))
                 (_specializer-impl255855_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl252629_
                     _$t255519_
                     _methods-bind255542_
                     _slots-bind255565_
                     _class-check-bind255587_
                     _struct-check-bind255611_
                     _specializer-impl255847_
                     _lifted-specializer-id255517_
                     _unchecked-specializer-impl255853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp261560
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L252698_)))
                                                          (__tmp261559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id255510_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp261560
                                                       '" => "
                                                       __tmp261559))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def252630_
                                                       _L252698_
                                                       _specializer-id255510_
                                                       _specializer-impl255855_
                                                       _lifted-specializer-id255517_
                                                       _unchecked-specializer-impl255853_)))))
                                            _hd255227255289_
                                            _hd255224255281_
                                            _hd255221255273_)
                                           (let ()
                                             (declare (not safe))
                                             (_g255203255233_
                                              _g255204255236_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255203255233_ _g255204255236_)))
                               (let ()
                                 (declare (not safe))
                                 (_g255203255233_ _g255204255236_)))
                           (let ()
                             (declare (not safe))
                             (_g255203255233_ _g255204255236_)))))
                   (let ()
                     (declare (not safe))
                     (_g255203255233_ _g255204255236_)))
               (let ()
                 (declare (not safe))
                 (_g255203255233_ _g255204255236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255203255233_
                                                  _g255204255236_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g255203255233_ _g255204255236_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g255203255233_ _g255204255236_)))))
                       (let ()
                         (declare (not safe))
                         (_g255203255233_ _g255204255236_)))))
               (let ()
                 (declare (not safe))
                 (_g255203255233_ _g255204255236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g255202255858_ _L254711_))
                                         _stx252623_))))
                             _hd254808254931_
                             _kw-ref254806254952_
                             _hd254796254918_
                             _hd254787254894_
                             _hd254778254870_)
                            (let ()
                              (declare (not safe))
                              (_g254752254814_ _g254753254817_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop254801254936_
                                                   _target254798254923_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g254752254814_
                                                 _g254753254817_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g254752254814_ _g254753254817_))))))
                            (let ()
                              (declare (not safe))
                              (_g254752254814_ _g254753254817_)))
                        (let ()
                          (declare (not safe))
                          (_g254752254814_ _g254753254817_)))
                    (let ()
                      (declare (not safe))
                      (_g254752254814_ _g254753254817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254752254814_
                                                       _g254753254817_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g254752254814_
                                                   _g254753254817_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g254752254814_
                                               _g254753254817_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g254752254814_ _g254753254817_)))))
                            (let ()
                              (declare (not safe))
                              (_g254752254814_ _g254753254817_)))
                        (let ()
                          (declare (not safe))
                          (_g254752254814_ _g254753254817_)))))
                (let ()
                  (declare (not safe))
                  (_g254752254814_ _g254753254817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254752254814_
                                                       _g254753254817_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g254752254814_
                                                   _g254753254817_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g254752254814_ _g254753254817_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g254752254814_ _g254753254817_)))
                            (let ()
                              (declare (not safe))
                              (_g254752254814_ _g254753254817_)))))
                    (let ()
                      (declare (not safe))
                      (_g254752254814_ _g254753254817_)))
                (let ()
                  (declare (not safe))
                  (_g254752254814_ _g254753254817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254752254814_
                                                       _g254753254817_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g254752254814_
                                               _g254753254817_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g254752254814_ _g254753254817_)))
                                (let ()
                                  (declare (not safe))
                                  (_g254752254814_ _g254753254817_)))
                            (let ()
                              (declare (not safe))
                              (_g254752254814_ _g254753254817_)))))
                    (let ()
                      (declare (not safe))
                      (_g254752254814_ _g254753254817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g254752254814_
                                                       _g254753254817_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g254752254814_
                                               _g254753254817_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g254752254814_ _g254753254817_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g254752254814_ _g254753254817_)))))
                            (let ()
                              (declare (not safe))
                              (_g254752254814_ _g254753254817_))))))
                (declare (not safe))
                (_g254751255861_ _L254710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd254586254704_
                                                    _hd254583254696_
                                                    _hd254580254688_
                                                    _hd254577254680_
                                                    _hd254559254632_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254539254592_
                                                      _g254540254595_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g254539254592_
                                              _g254540254595_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g254539254592_ _g254540254595_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g254539254592_ _g254540254595_)))
                               (let ()
                                 (declare (not safe))
                                 (_g254539254592_ _g254540254595_)))))
                       (let ()
                         (declare (not safe))
                         (_g254539254592_ _g254540254595_)))
                   (let ()
                     (declare (not safe))
                     (_g254539254592_ _g254540254595_)))
               (let ()
                 (declare (not safe))
                 (_g254539254592_ _g254540254595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254539254592_
                                                  _g254540254595_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g254539254592_
                                              _g254540254595_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g254539254592_ _g254540254595_)))))
                           (let ()
                             (declare (not safe))
                             (_g254539254592_ _g254540254595_)))))
                   (let ()
                     (declare (not safe))
                     (_g254539254592_ _g254540254595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254539254592_
                                                      _g254540254595_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254539254592_
                                                  _g254540254595_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g254539254592_
                                              _g254540254595_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g254539254592_ _g254540254595_)))))
                           (let ()
                             (declare (not safe))
                             (_g254539254592_ _g254540254595_)))
                       (let ()
                         (declare (not safe))
                         (_g254539254592_ _g254540254595_)))))
               (let ()
                 (declare (not safe))
                 (_g254539254592_ _g254540254595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254539254592_
                                                  _g254540254595_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g254539254592_ _g254540254595_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g254539254592_ _g254540254595_)))
                           (let ()
                             (declare (not safe))
                             (_g254539254592_ _g254540254595_)))
                       (let ()
                         (declare (not safe))
                         (_g254539254592_ _g254540254595_)))))
               (let ()
                 (declare (not safe))
                 (_g254539254592_ _g254540254595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g254538255864_ _L252697_))
                                         _stx252623_))))))))
                  (___kont260170260171_ (lambda () _stx252623_)))
              (let ((___match260199260200_
                     (lambda (_e252637252665_
                              _hd252638252668_
                              _tl252639252670_
                              _e252640252673_
                              _hd252641252676_
                              _tl252642252678_
                              _e252643252681_
                              _hd252644252684_
                              _tl252645252686_
                              _e252646252689_
                              _hd252647252692_
                              _tl252648252694_)
                       (let ((_L252697_ _hd252647252692_)
                             (_L252698_ _hd252644252684_))
                         (if (let ((__tmp261561
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L252698_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp261561))
                             (___kont260168260169_ _L252697_ _L252698_)
                             (___kont260170260171_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx260166260167_))
                    (let ((_e252637252665_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx260166260167_))))
                      (let ((_tl252639252670_
                             (let ()
                               (declare (not safe))
                               (##cdr _e252637252665_)))
                            (_hd252638252668_
                             (let ()
                               (declare (not safe))
                               (##car _e252637252665_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl252639252670_))
                            (let ((_e252640252673_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl252639252670_))))
                              (let ((_tl252642252678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e252640252673_)))
                                    (_hd252641252676_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e252640252673_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd252641252676_))
                                    (let ((_e252643252681_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd252641252676_))))
                                      (let ((_tl252645252686_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e252643252681_)))
                                            (_hd252644252684_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e252643252681_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl252645252686_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl252642252678_))
                                                (let ((_e252646252689_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl252642252678_))))
                                                  (let ((_tl252648252694_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e252646252689_)))
                                                        (_hd252647252692_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e252646252689_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl252648252694_))
                                                        (___match260199260200_
                                                         _e252637252665_
                                                         _hd252638252668_
                                                         _tl252639252670_
                                                         _e252640252673_
                                                         _hd252641252676_
                                                         _tl252642252678_
                                                         _e252643252681_
                                                         _hd252644252684_
                                                         _tl252645252686_
                                                         _e252646252689_
                                                         _hd252647252692_
                                                         _tl252648252694_)
                                                        (___kont260170260171_))))
                                                (___kont260170260171_))
                                            (___kont260170260171_))))
                                    (___kont260170260171_))))
                            (___kont260170260171_))))
                    (___kont260170260171_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx251599_
               _self251600_
               _methods251601_
               _slots251602_
               _class-check251603_
               _struct-check251604_
               _struct-assert251605_)
        (let* ((___stx260202260203_ _stx251599_)
               (_g251613251835_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx260202260203_)))))
          (let ((___kont260204260205_
                 (lambda (_L252572_ _L252573_ _L252574_ _L252575_)
                   (let ((__tmp261562
                          (let () (declare (not safe)) (gx#stx-e _L252573_))))
                     (declare (not safe))
                     (hash-put! _methods251601_ __tmp261562 '#t))
                   (for-each
                    (lambda (_g252608252610_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g252608252610_
                         _self251600_
                         _methods251601_
                         _slots251602_
                         _class-check251603_
                         _struct-check251604_
                         _struct-assert251605_)))
                    (let ((__tmp261563
                           (lambda (_g252612252615_ _g252613252617_)
                             (let ()
                               (declare (not safe))
                               (cons _g252612252615_ _g252613252617_)))))
                      (declare (not safe))
                      (foldr1 __tmp261563 '() _L252572_)))))
                (___kont260208260209_
                 (lambda (_L252407_ _L252408_ _L252409_ _L252410_ _L252411_)
                   (let ((__tmp261564
                          (let () (declare (not safe)) (gx#stx-e _L252408_))))
                     (declare (not safe))
                     (hash-put! _methods251601_ __tmp261564 '#t))
                   (for-each
                    (lambda (_g252451252453_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g252451252453_
                         _self251600_
                         _methods251601_
                         _slots251602_
                         _class-check251603_
                         _struct-check251604_
                         _struct-assert251605_)))
                    (let ((__tmp261565
                           (lambda (_g252455252458_ _g252456252460_)
                             (let ()
                               (declare (not safe))
                               (cons _g252455252458_ _g252456252460_)))))
                      (declare (not safe))
                      (foldr1 __tmp261565 '() _L252407_)))))
                (___kont260212260213_
                 (lambda (_L252240_ _L252241_ _L252242_)
                   (let ((__tmp261566
                          (let () (declare (not safe)) (gx#stx-e _L252240_))))
                     (declare (not safe))
                     (hash-put! _slots251602_ __tmp261566 '#t))))
                (___kont260214260215_
                 (lambda (_L252117_ _L252118_ _L252119_ _L252120_)
                   (let ((__tmp261567
                          (let () (declare (not safe)) (gx#stx-e _L252118_))))
                     (declare (not safe))
                     (hash-put! _slots251602_ __tmp261567 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L252117_
                      _self251600_
                      _methods251601_
                      _slots251602_
                      _class-check251603_
                      _struct-check251604_
                      _struct-assert251605_))))
                (___kont260216260217_
                 (lambda (_L252001_ _L252002_)
                   (let ((__tmp261568
                          (##structure-ref
                           (let ((__tmp261569
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L252002_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp261569))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots251602_ __tmp261568 '#t))))
                (___kont260218260219_
                 (lambda (_L251911_ _L251912_ _L251913_)
                   (let ((__tmp261570
                          (##structure-ref
                           (let ((__tmp261571
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L251913_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp261571))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots251602_ __tmp261570 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L251911_
                      _self251600_
                      _methods251601_
                      _slots251602_
                      _class-check251603_
                      _struct-check251604_
                      _struct-assert251605_))))
                (___kont260220260221_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx251599_
                      _self251600_
                      _methods251601_
                      _slots251602_
                      _class-check251603_
                      _struct-check251604_
                      _struct-assert251605_)))))
            (let* ((___match260701260702_
                    (lambda (_e251807251847_
                             _hd251808251850_
                             _tl251809251852_
                             _e251810251855_
                             _hd251811251858_
                             _tl251812251860_
                             _e251813251863_
                             _hd251814251866_
                             _tl251815251868_
                             _e251816251871_
                             _hd251817251874_
                             _tl251818251876_
                             _e251819251879_
                             _hd251820251882_
                             _tl251821251884_
                             _e251822251887_
                             _hd251823251890_
                             _tl251824251892_
                             _e251825251895_
                             _hd251826251898_
                             _tl251827251900_
                             _e251828251903_
                             _hd251829251906_
                             _tl251830251908_)
                      (let ((_L251911_ _hd251829251906_)
                            (_L251912_ _hd251826251898_)
                            (_L251913_ _hd251817251874_))
                        (if (and (let ((__tmp261572
                                        (let ((__tmp261573
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L251913_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp261573))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp261572
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L251912_
                                    _self251600_)))
                            (___kont260218260219_
                             _L251911_
                             _L251912_
                             _L251913_)
                            (___kont260220260221_)))))
                   (___match260699260700_
                    (lambda (_e251807251847_
                             _hd251808251850_
                             _tl251809251852_
                             _e251810251855_
                             _hd251811251858_
                             _tl251812251860_
                             _e251813251863_
                             _hd251814251866_
                             _tl251815251868_
                             _e251816251871_
                             _hd251817251874_
                             _tl251818251876_
                             _e251819251879_
                             _hd251820251882_
                             _tl251821251884_
                             _e251822251887_
                             _hd251823251890_
                             _tl251824251892_
                             _e251825251895_
                             _hd251826251898_
                             _tl251827251900_
                             _e251828251903_
                             _hd251829251906_
                             _tl251830251908_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl251830251908_))
                          (___match260701260702_
                           _e251807251847_
                           _hd251808251850_
                           _tl251809251852_
                           _e251810251855_
                           _hd251811251858_
                           _tl251812251860_
                           _e251813251863_
                           _hd251814251866_
                           _tl251815251868_
                           _e251816251871_
                           _hd251817251874_
                           _tl251818251876_
                           _e251819251879_
                           _hd251820251882_
                           _tl251821251884_
                           _e251822251887_
                           _hd251823251890_
                           _tl251824251892_
                           _e251825251895_
                           _hd251826251898_
                           _tl251827251900_
                           _e251828251903_
                           _hd251829251906_
                           _tl251830251908_)
                          (___kont260220260221_))))
                   (___match260693260694_
                    (lambda (_e251807251847_
                             _hd251808251850_
                             _tl251809251852_
                             _e251810251855_
                             _hd251811251858_
                             _tl251812251860_
                             _e251813251863_
                             _hd251814251866_
                             _tl251815251868_
                             _e251816251871_
                             _hd251817251874_
                             _tl251818251876_
                             _e251819251879_
                             _hd251820251882_
                             _tl251821251884_
                             _e251822251887_
                             _hd251823251890_
                             _tl251824251892_
                             _e251825251895_
                             _hd251826251898_
                             _tl251827251900_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251821251884_))
                          (let ((_e251828251903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251821251884_))))
                            (let ((_tl251830251908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251828251903_)))
                                  (_hd251829251906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251828251903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl251830251908_))
                                  (___match260701260702_
                                   _e251807251847_
                                   _hd251808251850_
                                   _tl251809251852_
                                   _e251810251855_
                                   _hd251811251858_
                                   _tl251812251860_
                                   _e251813251863_
                                   _hd251814251866_
                                   _tl251815251868_
                                   _e251816251871_
                                   _hd251817251874_
                                   _tl251818251876_
                                   _e251819251879_
                                   _hd251820251882_
                                   _tl251821251884_
                                   _e251822251887_
                                   _hd251823251890_
                                   _tl251824251892_
                                   _e251825251895_
                                   _hd251826251898_
                                   _tl251827251900_
                                   _e251828251903_
                                   _hd251829251906_
                                   _tl251830251908_)
                                  (___kont260220260221_))))
                          (___kont260220260221_))))
                   (___match260639260640_
                    (lambda (_e251783251945_
                             _hd251784251948_
                             _tl251785251950_
                             _e251786251953_
                             _hd251787251956_
                             _tl251788251958_
                             _e251789251961_
                             _hd251790251964_
                             _tl251791251966_
                             _e251792251969_
                             _hd251793251972_
                             _tl251794251974_
                             _e251795251977_
                             _hd251796251980_
                             _tl251797251982_
                             _e251798251985_
                             _hd251799251988_
                             _tl251800251990_
                             _e251801251993_
                             _hd251802251996_
                             _tl251803251998_)
                      (let ((_L252001_ _hd251802251996_)
                            (_L252002_ _hd251793251972_))
                        (if (and (let ((__tmp261574
                                        (let ((__tmp261575
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L252002_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp261575))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp261574
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L252001_
                                    _self251600_)))
                            (___kont260216260217_ _L252001_ _L252002_)
                            (___kont260220260221_)))))
                   (___match260637260638_
                    (lambda (_e251783251945_
                             _hd251784251948_
                             _tl251785251950_
                             _e251786251953_
                             _hd251787251956_
                             _tl251788251958_
                             _e251789251961_
                             _hd251790251964_
                             _tl251791251966_
                             _e251792251969_
                             _hd251793251972_
                             _tl251794251974_
                             _e251795251977_
                             _hd251796251980_
                             _tl251797251982_
                             _e251798251985_
                             _hd251799251988_
                             _tl251800251990_
                             _e251801251993_
                             _hd251802251996_
                             _tl251803251998_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl251797251982_))
                          (___match260639260640_
                           _e251783251945_
                           _hd251784251948_
                           _tl251785251950_
                           _e251786251953_
                           _hd251787251956_
                           _tl251788251958_
                           _e251789251961_
                           _hd251790251964_
                           _tl251791251966_
                           _e251792251969_
                           _hd251793251972_
                           _tl251794251974_
                           _e251795251977_
                           _hd251796251980_
                           _tl251797251982_
                           _e251798251985_
                           _hd251799251988_
                           _tl251800251990_
                           _e251801251993_
                           _hd251802251996_
                           _tl251803251998_)
                          (___match260693260694_
                           _e251783251945_
                           _hd251784251948_
                           _tl251785251950_
                           _e251786251953_
                           _hd251787251956_
                           _tl251788251958_
                           _e251789251961_
                           _hd251790251964_
                           _tl251791251966_
                           _e251792251969_
                           _hd251793251972_
                           _tl251794251974_
                           _e251795251977_
                           _hd251796251980_
                           _tl251797251982_
                           _e251798251985_
                           _hd251799251988_
                           _tl251800251990_
                           _e251801251993_
                           _hd251802251996_
                           _tl251803251998_))))
                   (___match260583260584_
                    (lambda (_e251748252029_
                             _hd251749252032_
                             _tl251750252034_
                             _e251751252037_
                             _hd251752252040_
                             _tl251753252042_
                             _e251754252045_
                             _hd251755252048_
                             _tl251756252050_
                             _e251757252053_
                             _hd251758252056_
                             _tl251759252058_
                             _e251760252061_
                             _hd251761252064_
                             _tl251762252066_
                             _e251763252069_
                             _hd251764252072_
                             _tl251765252074_
                             _e251766252077_
                             _hd251767252080_
                             _tl251768252082_
                             _e251769252085_
                             _hd251770252088_
                             _tl251771252090_
                             _e251772252093_
                             _hd251773252096_
                             _tl251774252098_
                             _e251775252101_
                             _hd251776252104_
                             _tl251777252106_
                             _e251778252109_
                             _hd251779252112_
                             _tl251780252114_)
                      (let ((_L252117_ _hd251779252112_)
                            (_L252118_ _hd251776252104_)
                            (_L252119_ _hd251767252080_)
                            (_L252120_ _hd251758252056_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L252120_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L252120_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L252119_
                                    _self251600_)))
                            (___kont260214260215_
                             _L252117_
                             _L252118_
                             _L252119_
                             _L252120_)
                            (___kont260220260221_)))))
                   (___match260575260576_
                    (lambda (_e251748252029_
                             _hd251749252032_
                             _tl251750252034_
                             _e251751252037_
                             _hd251752252040_
                             _tl251753252042_
                             _e251754252045_
                             _hd251755252048_
                             _tl251756252050_
                             _e251757252053_
                             _hd251758252056_
                             _tl251759252058_
                             _e251760252061_
                             _hd251761252064_
                             _tl251762252066_
                             _e251763252069_
                             _hd251764252072_
                             _tl251765252074_
                             _e251766252077_
                             _hd251767252080_
                             _tl251768252082_
                             _e251769252085_
                             _hd251770252088_
                             _tl251771252090_
                             _e251772252093_
                             _hd251773252096_
                             _tl251774252098_
                             _e251775252101_
                             _hd251776252104_
                             _tl251777252106_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251771252090_))
                          (let ((_e251778252109_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251771252090_))))
                            (let ((_tl251780252114_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251778252109_)))
                                  (_hd251779252112_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251778252109_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl251780252114_))
                                  (___match260583260584_
                                   _e251748252029_
                                   _hd251749252032_
                                   _tl251750252034_
                                   _e251751252037_
                                   _hd251752252040_
                                   _tl251753252042_
                                   _e251754252045_
                                   _hd251755252048_
                                   _tl251756252050_
                                   _e251757252053_
                                   _hd251758252056_
                                   _tl251759252058_
                                   _e251760252061_
                                   _hd251761252064_
                                   _tl251762252066_
                                   _e251763252069_
                                   _hd251764252072_
                                   _tl251765252074_
                                   _e251766252077_
                                   _hd251767252080_
                                   _tl251768252082_
                                   _e251769252085_
                                   _hd251770252088_
                                   _tl251771252090_
                                   _e251772252093_
                                   _hd251773252096_
                                   _tl251774252098_
                                   _e251775252101_
                                   _hd251776252104_
                                   _tl251777252106_
                                   _e251778252109_
                                   _hd251779252112_
                                   _tl251780252114_)
                                  (___kont260220260221_))))
                          (___match260699260700_
                           _e251748252029_
                           _hd251749252032_
                           _tl251750252034_
                           _e251751252037_
                           _hd251752252040_
                           _tl251753252042_
                           _e251754252045_
                           _hd251755252048_
                           _tl251756252050_
                           _e251757252053_
                           _hd251758252056_
                           _tl251759252058_
                           _e251760252061_
                           _hd251761252064_
                           _tl251762252066_
                           _e251763252069_
                           _hd251764252072_
                           _tl251765252074_
                           _e251766252077_
                           _hd251767252080_
                           _tl251768252082_
                           _e251769252085_
                           _hd251770252088_
                           _tl251771252090_))))
                   (___match260497260498_
                    (lambda (_e251714252160_
                             _hd251715252163_
                             _tl251716252165_
                             _e251717252168_
                             _hd251718252171_
                             _tl251719252173_
                             _e251720252176_
                             _hd251721252179_
                             _tl251722252181_
                             _e251723252184_
                             _hd251724252187_
                             _tl251725252189_
                             _e251726252192_
                             _hd251727252195_
                             _tl251728252197_
                             _e251729252200_
                             _hd251730252203_
                             _tl251731252205_
                             _e251732252208_
                             _hd251733252211_
                             _tl251734252213_
                             _e251735252216_
                             _hd251736252219_
                             _tl251737252221_
                             _e251738252224_
                             _hd251739252227_
                             _tl251740252229_
                             _e251741252232_
                             _hd251742252235_
                             _tl251743252237_)
                      (let ((_L252240_ _hd251742252235_)
                            (_L252241_ _hd251733252211_)
                            (_L252242_ _hd251724252187_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L252242_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L252242_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L252241_
                                    _self251600_)))
                            (___kont260212260213_
                             _L252240_
                             _L252241_
                             _L252242_)
                            (___match260701260702_
                             _e251714252160_
                             _hd251715252163_
                             _tl251716252165_
                             _e251717252168_
                             _hd251718252171_
                             _tl251719252173_
                             _e251720252176_
                             _hd251721252179_
                             _tl251722252181_
                             _e251723252184_
                             _hd251724252187_
                             _tl251725252189_
                             _e251726252192_
                             _hd251727252195_
                             _tl251728252197_
                             _e251729252200_
                             _hd251730252203_
                             _tl251731252205_
                             _e251732252208_
                             _hd251733252211_
                             _tl251734252213_
                             _e251735252216_
                             _hd251736252219_
                             _tl251737252221_)))))
                   (___match260495260496_
                    (lambda (_e251714252160_
                             _hd251715252163_
                             _tl251716252165_
                             _e251717252168_
                             _hd251718252171_
                             _tl251719252173_
                             _e251720252176_
                             _hd251721252179_
                             _tl251722252181_
                             _e251723252184_
                             _hd251724252187_
                             _tl251725252189_
                             _e251726252192_
                             _hd251727252195_
                             _tl251728252197_
                             _e251729252200_
                             _hd251730252203_
                             _tl251731252205_
                             _e251732252208_
                             _hd251733252211_
                             _tl251734252213_
                             _e251735252216_
                             _hd251736252219_
                             _tl251737252221_
                             _e251738252224_
                             _hd251739252227_
                             _tl251740252229_
                             _e251741252232_
                             _hd251742252235_
                             _tl251743252237_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl251737252221_))
                          (___match260497260498_
                           _e251714252160_
                           _hd251715252163_
                           _tl251716252165_
                           _e251717252168_
                           _hd251718252171_
                           _tl251719252173_
                           _e251720252176_
                           _hd251721252179_
                           _tl251722252181_
                           _e251723252184_
                           _hd251724252187_
                           _tl251725252189_
                           _e251726252192_
                           _hd251727252195_
                           _tl251728252197_
                           _e251729252200_
                           _hd251730252203_
                           _tl251731252205_
                           _e251732252208_
                           _hd251733252211_
                           _tl251734252213_
                           _e251735252216_
                           _hd251736252219_
                           _tl251737252221_
                           _e251738252224_
                           _hd251739252227_
                           _tl251740252229_
                           _e251741252232_
                           _hd251742252235_
                           _tl251743252237_)
                          (___match260575260576_
                           _e251714252160_
                           _hd251715252163_
                           _tl251716252165_
                           _e251717252168_
                           _hd251718252171_
                           _tl251719252173_
                           _e251720252176_
                           _hd251721252179_
                           _tl251722252181_
                           _e251723252184_
                           _hd251724252187_
                           _tl251725252189_
                           _e251726252192_
                           _hd251727252195_
                           _tl251728252197_
                           _e251729252200_
                           _hd251730252203_
                           _tl251731252205_
                           _e251732252208_
                           _hd251733252211_
                           _tl251734252213_
                           _e251735252216_
                           _hd251736252219_
                           _tl251737252221_
                           _e251738252224_
                           _hd251739252227_
                           _tl251740252229_
                           _e251741252232_
                           _hd251742252235_
                           _tl251743252237_))))
                   (___match260485260486_
                    (lambda (_e251714252160_
                             _hd251715252163_
                             _tl251716252165_
                             _e251717252168_
                             _hd251718252171_
                             _tl251719252173_
                             _e251720252176_
                             _hd251721252179_
                             _tl251722252181_
                             _e251723252184_
                             _hd251724252187_
                             _tl251725252189_
                             _e251726252192_
                             _hd251727252195_
                             _tl251728252197_
                             _e251729252200_
                             _hd251730252203_
                             _tl251731252205_
                             _e251732252208_
                             _hd251733252211_
                             _tl251734252213_
                             _e251735252216_
                             _hd251736252219_
                             _tl251737252221_
                             _e251738252224_
                             _hd251739252227_
                             _tl251740252229_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd251739252227_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl251740252229_))
                              (let ((_e251741252232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl251740252229_))))
                                (let ((_tl251743252237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e251741252232_)))
                                      (_hd251742252235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e251741252232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl251743252237_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl251737252221_))
                                          (___match260497260498_
                                           _e251714252160_
                                           _hd251715252163_
                                           _tl251716252165_
                                           _e251717252168_
                                           _hd251718252171_
                                           _tl251719252173_
                                           _e251720252176_
                                           _hd251721252179_
                                           _tl251722252181_
                                           _e251723252184_
                                           _hd251724252187_
                                           _tl251725252189_
                                           _e251726252192_
                                           _hd251727252195_
                                           _tl251728252197_
                                           _e251729252200_
                                           _hd251730252203_
                                           _tl251731252205_
                                           _e251732252208_
                                           _hd251733252211_
                                           _tl251734252213_
                                           _e251735252216_
                                           _hd251736252219_
                                           _tl251737252221_
                                           _e251738252224_
                                           _hd251739252227_
                                           _tl251740252229_
                                           _e251741252232_
                                           _hd251742252235_
                                           _tl251743252237_)
                                          (___match260575260576_
                                           _e251714252160_
                                           _hd251715252163_
                                           _tl251716252165_
                                           _e251717252168_
                                           _hd251718252171_
                                           _tl251719252173_
                                           _e251720252176_
                                           _hd251721252179_
                                           _tl251722252181_
                                           _e251723252184_
                                           _hd251724252187_
                                           _tl251725252189_
                                           _e251726252192_
                                           _hd251727252195_
                                           _tl251728252197_
                                           _e251729252200_
                                           _hd251730252203_
                                           _tl251731252205_
                                           _e251732252208_
                                           _hd251733252211_
                                           _tl251734252213_
                                           _e251735252216_
                                           _hd251736252219_
                                           _tl251737252221_
                                           _e251738252224_
                                           _hd251739252227_
                                           _tl251740252229_
                                           _e251741252232_
                                           _hd251742252235_
                                           _tl251743252237_))
                                      (___match260699260700_
                                       _e251714252160_
                                       _hd251715252163_
                                       _tl251716252165_
                                       _e251717252168_
                                       _hd251718252171_
                                       _tl251719252173_
                                       _e251720252176_
                                       _hd251721252179_
                                       _tl251722252181_
                                       _e251723252184_
                                       _hd251724252187_
                                       _tl251725252189_
                                       _e251726252192_
                                       _hd251727252195_
                                       _tl251728252197_
                                       _e251729252200_
                                       _hd251730252203_
                                       _tl251731252205_
                                       _e251732252208_
                                       _hd251733252211_
                                       _tl251734252213_
                                       _e251735252216_
                                       _hd251736252219_
                                       _tl251737252221_))))
                              (___match260699260700_
                               _e251714252160_
                               _hd251715252163_
                               _tl251716252165_
                               _e251717252168_
                               _hd251718252171_
                               _tl251719252173_
                               _e251720252176_
                               _hd251721252179_
                               _tl251722252181_
                               _e251723252184_
                               _hd251724252187_
                               _tl251725252189_
                               _e251726252192_
                               _hd251727252195_
                               _tl251728252197_
                               _e251729252200_
                               _hd251730252203_
                               _tl251731252205_
                               _e251732252208_
                               _hd251733252211_
                               _tl251734252213_
                               _e251735252216_
                               _hd251736252219_
                               _tl251737252221_))
                          (___match260699260700_
                           _e251714252160_
                           _hd251715252163_
                           _tl251716252165_
                           _e251717252168_
                           _hd251718252171_
                           _tl251719252173_
                           _e251720252176_
                           _hd251721252179_
                           _tl251722252181_
                           _e251723252184_
                           _hd251724252187_
                           _tl251725252189_
                           _e251726252192_
                           _hd251727252195_
                           _tl251728252197_
                           _e251729252200_
                           _hd251730252203_
                           _tl251731252205_
                           _e251732252208_
                           _hd251733252211_
                           _tl251734252213_
                           _e251735252216_
                           _hd251736252219_
                           _tl251737252221_))))
                   (___match260417260418_
                    (lambda (_e251663252279_
                             _hd251664252282_
                             _tl251665252284_
                             _e251666252287_
                             _hd251667252290_
                             _tl251668252292_
                             _e251669252295_
                             _hd251670252298_
                             _tl251671252300_
                             _e251672252303_
                             _hd251673252306_
                             _tl251674252308_
                             _e251675252311_
                             _hd251676252314_
                             _tl251677252316_
                             _e251678252319_
                             _hd251679252322_
                             _tl251680252324_
                             _e251681252327_
                             _hd251682252330_
                             _tl251683252332_
                             _e251684252335_
                             _hd251685252338_
                             _tl251686252340_
                             _e251687252343_
                             _hd251688252346_
                             _tl251689252348_
                             _e251690252351_
                             _hd251691252354_
                             _tl251692252356_
                             _e251693252359_
                             _hd251694252362_
                             _tl251695252364_
                             _e251696252367_
                             _hd251697252370_
                             _tl251698252372_
                             _e251699252375_
                             _hd251700252378_
                             _tl251701252380_
                             ___splice260210260211_
                             _target251702252383_
                             _tl251704252385_)
                      (letrec ((_loop251705252388_
                                (lambda (_hd251703252391_ _args251709252393_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd251703252391_))
                                      (let ((_e251706252396_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd251703252391_))))
                                        (let ((_lp-tl251708252401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e251706252396_)))
                                              (_lp-hd251707252399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e251706252396_))))
                                          (let ((__tmp261576
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd251707252399_
                                                         _args251709252393_))))
                                            (declare (not safe))
                                            (_loop251705252388_
                                             _lp-tl251708252401_
                                             __tmp261576))))
                                      (let ((_args251710252404_
                                             (reverse _args251709252393_)))
                                        (let ((_L252407_ _args251710252404_)
                                              (_L252408_ _hd251700252378_)
                                              (_L252409_ _hd251691252354_)
                                              (_L252410_ _hd251682252330_)
                                              (_L252411_ _hd251673252306_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L252411_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L252410_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L252409_
                                                      _self251600_)))
                                              (___kont260208260209_
                                               _L252407_
                                               _L252408_
                                               _L252409_
                                               _L252410_
                                               _L252411_)
                                              (___kont260220260221_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop251705252388_ _target251702252383_ '())))))
                   (___match260375260376_
                    (lambda (_e251663252279_
                             _hd251664252282_
                             _tl251665252284_
                             _e251666252287_
                             _hd251667252290_
                             _tl251668252292_
                             _e251669252295_
                             _hd251670252298_
                             _tl251671252300_
                             _e251672252303_
                             _hd251673252306_
                             _tl251674252308_
                             _e251675252311_
                             _hd251676252314_
                             _tl251677252316_
                             _e251678252319_
                             _hd251679252322_
                             _tl251680252324_
                             _e251681252327_
                             _hd251682252330_
                             _tl251683252332_
                             _e251684252335_
                             _hd251685252338_
                             _tl251686252340_
                             _e251687252343_
                             _hd251688252346_
                             _tl251689252348_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd251688252346_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl251689252348_))
                              (let ((_e251690252351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl251689252348_))))
                                (let ((_tl251692252356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e251690252351_)))
                                      (_hd251691252354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e251690252351_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl251692252356_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl251686252340_))
                                          (let ((_e251693252359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl251686252340_))))
                                            (let ((_tl251695252364_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e251693252359_)))
                                                  (_hd251694252362_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e251693252359_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd251694252362_))
                                                  (let ((_e251696252367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd251694252362_))))
                                                    (let ((_tl251698252372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e251696252367_)))
                                                          (_hd251697252370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e251696252367_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd251697252370_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd251697252370_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251698252372_))
                          (let ((_e251699252375_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251698252372_))))
                            (let ((_tl251701252380_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251699252375_)))
                                  (_hd251700252378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251699252375_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl251701252380_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl251695252364_))
                                      (let ((___splice260210260211_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl251695252364_
                                                '0))))
                                        (let ((_tl251704252385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice260210260211_
                                                  '1)))
                                              (_target251702252383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice260210260211_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl251704252385_))
                                              (___match260417260418_
                                               _e251663252279_
                                               _hd251664252282_
                                               _tl251665252284_
                                               _e251666252287_
                                               _hd251667252290_
                                               _tl251668252292_
                                               _e251669252295_
                                               _hd251670252298_
                                               _tl251671252300_
                                               _e251672252303_
                                               _hd251673252306_
                                               _tl251674252308_
                                               _e251675252311_
                                               _hd251676252314_
                                               _tl251677252316_
                                               _e251678252319_
                                               _hd251679252322_
                                               _tl251680252324_
                                               _e251681252327_
                                               _hd251682252330_
                                               _tl251683252332_
                                               _e251684252335_
                                               _hd251685252338_
                                               _tl251686252340_
                                               _e251687252343_
                                               _hd251688252346_
                                               _tl251689252348_
                                               _e251690252351_
                                               _hd251691252354_
                                               _tl251692252356_
                                               _e251693252359_
                                               _hd251694252362_
                                               _tl251695252364_
                                               _e251696252367_
                                               _hd251697252370_
                                               _tl251698252372_
                                               _e251699252375_
                                               _hd251700252378_
                                               _tl251701252380_
                                               ___splice260210260211_
                                               _target251702252383_
                                               _tl251704252385_)
                                              (___kont260220260221_))))
                                      (___kont260220260221_))
                                  (___kont260220260221_))))
                          (___kont260220260221_))
                      (___kont260220260221_))
                  (___kont260220260221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont260220260221_))))
                                          (___match260699260700_
                                           _e251663252279_
                                           _hd251664252282_
                                           _tl251665252284_
                                           _e251666252287_
                                           _hd251667252290_
                                           _tl251668252292_
                                           _e251669252295_
                                           _hd251670252298_
                                           _tl251671252300_
                                           _e251672252303_
                                           _hd251673252306_
                                           _tl251674252308_
                                           _e251675252311_
                                           _hd251676252314_
                                           _tl251677252316_
                                           _e251678252319_
                                           _hd251679252322_
                                           _tl251680252324_
                                           _e251681252327_
                                           _hd251682252330_
                                           _tl251683252332_
                                           _e251684252335_
                                           _hd251685252338_
                                           _tl251686252340_))
                                      (___match260699260700_
                                       _e251663252279_
                                       _hd251664252282_
                                       _tl251665252284_
                                       _e251666252287_
                                       _hd251667252290_
                                       _tl251668252292_
                                       _e251669252295_
                                       _hd251670252298_
                                       _tl251671252300_
                                       _e251672252303_
                                       _hd251673252306_
                                       _tl251674252308_
                                       _e251675252311_
                                       _hd251676252314_
                                       _tl251677252316_
                                       _e251678252319_
                                       _hd251679252322_
                                       _tl251680252324_
                                       _e251681252327_
                                       _hd251682252330_
                                       _tl251683252332_
                                       _e251684252335_
                                       _hd251685252338_
                                       _tl251686252340_))))
                              (___match260699260700_
                               _e251663252279_
                               _hd251664252282_
                               _tl251665252284_
                               _e251666252287_
                               _hd251667252290_
                               _tl251668252292_
                               _e251669252295_
                               _hd251670252298_
                               _tl251671252300_
                               _e251672252303_
                               _hd251673252306_
                               _tl251674252308_
                               _e251675252311_
                               _hd251676252314_
                               _tl251677252316_
                               _e251678252319_
                               _hd251679252322_
                               _tl251680252324_
                               _e251681252327_
                               _hd251682252330_
                               _tl251683252332_
                               _e251684252335_
                               _hd251685252338_
                               _tl251686252340_))
                          (___match260485260486_
                           _e251663252279_
                           _hd251664252282_
                           _tl251665252284_
                           _e251666252287_
                           _hd251667252290_
                           _tl251668252292_
                           _e251669252295_
                           _hd251670252298_
                           _tl251671252300_
                           _e251672252303_
                           _hd251673252306_
                           _tl251674252308_
                           _e251675252311_
                           _hd251676252314_
                           _tl251677252316_
                           _e251678252319_
                           _hd251679252322_
                           _tl251680252324_
                           _e251681252327_
                           _hd251682252330_
                           _tl251683252332_
                           _e251684252335_
                           _hd251685252338_
                           _tl251686252340_
                           _e251687252343_
                           _hd251688252346_
                           _tl251689252348_))))
                   (___match260307260308_
                    (lambda (_e251619252468_
                             _hd251620252471_
                             _tl251621252473_
                             _e251622252476_
                             _hd251623252479_
                             _tl251624252481_
                             _e251625252484_
                             _hd251626252487_
                             _tl251627252489_
                             _e251628252492_
                             _hd251629252495_
                             _tl251630252497_
                             _e251631252500_
                             _hd251632252503_
                             _tl251633252505_
                             _e251634252508_
                             _hd251635252511_
                             _tl251636252513_
                             _e251637252516_
                             _hd251638252519_
                             _tl251639252521_
                             _e251640252524_
                             _hd251641252527_
                             _tl251642252529_
                             _e251643252532_
                             _hd251644252535_
                             _tl251645252537_
                             _e251646252540_
                             _hd251647252543_
                             _tl251648252545_
                             ___splice260206260207_
                             _target251649252548_
                             _tl251651252550_)
                      (letrec ((_loop251652252553_
                                (lambda (_hd251650252556_ _args251656252558_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd251650252556_))
                                      (let ((_e251653252561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd251650252556_))))
                                        (let ((_lp-tl251655252566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e251653252561_)))
                                              (_lp-hd251654252564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e251653252561_))))
                                          (let ((__tmp261577
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd251654252564_
                                                         _args251656252558_))))
                                            (declare (not safe))
                                            (_loop251652252553_
                                             _lp-tl251655252566_
                                             __tmp261577))))
                                      (let ((_args251657252569_
                                             (reverse _args251656252558_)))
                                        (let ((_L252572_ _args251657252569_)
                                              (_L252573_ _hd251647252543_)
                                              (_L252574_ _hd251638252519_)
                                              (_L252575_ _hd251629252495_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L252575_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L252574_
                                                      _self251600_)))
                                              (___kont260204260205_
                                               _L252572_
                                               _L252573_
                                               _L252574_
                                               _L252575_)
                                              (___match260495260496_
                                               _e251619252468_
                                               _hd251620252471_
                                               _tl251621252473_
                                               _e251622252476_
                                               _hd251623252479_
                                               _tl251624252481_
                                               _e251625252484_
                                               _hd251626252487_
                                               _tl251627252489_
                                               _e251628252492_
                                               _hd251629252495_
                                               _tl251630252497_
                                               _e251631252500_
                                               _hd251632252503_
                                               _tl251633252505_
                                               _e251634252508_
                                               _hd251635252511_
                                               _tl251636252513_
                                               _e251637252516_
                                               _hd251638252519_
                                               _tl251639252521_
                                               _e251640252524_
                                               _hd251641252527_
                                               _tl251642252529_
                                               _e251643252532_
                                               _hd251644252535_
                                               _tl251645252537_
                                               _e251646252540_
                                               _hd251647252543_
                                               _tl251648252545_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop251652252553_ _target251649252548_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx260202260203_))
                  (let ((_e251619252468_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx260202260203_))))
                    (let ((_tl251621252473_
                           (let ()
                             (declare (not safe))
                             (##cdr _e251619252468_)))
                          (_hd251620252471_
                           (let ()
                             (declare (not safe))
                             (##car _e251619252468_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl251621252473_))
                          (let ((_e251622252476_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl251621252473_))))
                            (let ((_tl251624252481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251622252476_)))
                                  (_hd251623252479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251622252476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd251623252479_))
                                  (let ((_e251625252484_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd251623252479_))))
                                    (let ((_tl251627252489_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e251625252484_)))
                                          (_hd251626252487_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e251625252484_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd251626252487_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd251626252487_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl251627252489_))
                                                  (let ((_e251628252492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl251627252489_))))
                                                    (let ((_tl251630252497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e251628252492_)))
                                                          (_hd251629252495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e251628252492_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl251630252497_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl251624252481_))
                      (let ((_e251631252500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl251624252481_))))
                        (let ((_tl251633252505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e251631252500_)))
                              (_hd251632252503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e251631252500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd251632252503_))
                              (let ((_e251634252508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd251632252503_))))
                                (let ((_tl251636252513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e251634252508_)))
                                      (_hd251635252511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e251634252508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd251635252511_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd251635252511_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl251636252513_))
                                              (let ((_e251637252516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl251636252513_))))
                                                (let ((_tl251639252521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e251637252516_)))
                                                      (_hd251638252519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e251637252516_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl251639252521_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl251633252505_))
                                                          (let ((_e251640252524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl251633252505_))))
                    (let ((_tl251642252529_
                           (let ()
                             (declare (not safe))
                             (##cdr _e251640252524_)))
                          (_hd251641252527_
                           (let ()
                             (declare (not safe))
                             (##car _e251640252524_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd251641252527_))
                          (let ((_e251643252532_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd251641252527_))))
                            (let ((_tl251645252537_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e251643252532_)))
                                  (_hd251644252535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e251643252532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd251644252535_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd251644252535_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl251645252537_))
                                          (let ((_e251646252540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl251645252537_))))
                                            (let ((_tl251648252545_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e251646252540_)))
                                                  (_hd251647252543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e251646252540_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl251648252545_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl251642252529_))
                                                      (let ((___splice260206260207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl251642252529_ '0))))
                (let ((_tl251651252550_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice260206260207_ '1)))
                      (_target251649252548_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice260206260207_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl251651252550_))
                      (___match260307260308_
                       _e251619252468_
                       _hd251620252471_
                       _tl251621252473_
                       _e251622252476_
                       _hd251623252479_
                       _tl251624252481_
                       _e251625252484_
                       _hd251626252487_
                       _tl251627252489_
                       _e251628252492_
                       _hd251629252495_
                       _tl251630252497_
                       _e251631252500_
                       _hd251632252503_
                       _tl251633252505_
                       _e251634252508_
                       _hd251635252511_
                       _tl251636252513_
                       _e251637252516_
                       _hd251638252519_
                       _tl251639252521_
                       _e251640252524_
                       _hd251641252527_
                       _tl251642252529_
                       _e251643252532_
                       _hd251644252535_
                       _tl251645252537_
                       _e251646252540_
                       _hd251647252543_
                       _tl251648252545_
                       ___splice260206260207_
                       _target251649252548_
                       _tl251651252550_)
                      (___match260495260496_
                       _e251619252468_
                       _hd251620252471_
                       _tl251621252473_
                       _e251622252476_
                       _hd251623252479_
                       _tl251624252481_
                       _e251625252484_
                       _hd251626252487_
                       _tl251627252489_
                       _e251628252492_
                       _hd251629252495_
                       _tl251630252497_
                       _e251631252500_
                       _hd251632252503_
                       _tl251633252505_
                       _e251634252508_
                       _hd251635252511_
                       _tl251636252513_
                       _e251637252516_
                       _hd251638252519_
                       _tl251639252521_
                       _e251640252524_
                       _hd251641252527_
                       _tl251642252529_
                       _e251643252532_
                       _hd251644252535_
                       _tl251645252537_
                       _e251646252540_
                       _hd251647252543_
                       _tl251648252545_))))
              (___match260495260496_
               _e251619252468_
               _hd251620252471_
               _tl251621252473_
               _e251622252476_
               _hd251623252479_
               _tl251624252481_
               _e251625252484_
               _hd251626252487_
               _tl251627252489_
               _e251628252492_
               _hd251629252495_
               _tl251630252497_
               _e251631252500_
               _hd251632252503_
               _tl251633252505_
               _e251634252508_
               _hd251635252511_
               _tl251636252513_
               _e251637252516_
               _hd251638252519_
               _tl251639252521_
               _e251640252524_
               _hd251641252527_
               _tl251642252529_
               _e251643252532_
               _hd251644252535_
               _tl251645252537_
               _e251646252540_
               _hd251647252543_
               _tl251648252545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match260699260700_
                                                   _e251619252468_
                                                   _hd251620252471_
                                                   _tl251621252473_
                                                   _e251622252476_
                                                   _hd251623252479_
                                                   _tl251624252481_
                                                   _e251625252484_
                                                   _hd251626252487_
                                                   _tl251627252489_
                                                   _e251628252492_
                                                   _hd251629252495_
                                                   _tl251630252497_
                                                   _e251631252500_
                                                   _hd251632252503_
                                                   _tl251633252505_
                                                   _e251634252508_
                                                   _hd251635252511_
                                                   _tl251636252513_
                                                   _e251637252516_
                                                   _hd251638252519_
                                                   _tl251639252521_
                                                   _e251640252524_
                                                   _hd251641252527_
                                                   _tl251642252529_))))
                                          (___match260699260700_
                                           _e251619252468_
                                           _hd251620252471_
                                           _tl251621252473_
                                           _e251622252476_
                                           _hd251623252479_
                                           _tl251624252481_
                                           _e251625252484_
                                           _hd251626252487_
                                           _tl251627252489_
                                           _e251628252492_
                                           _hd251629252495_
                                           _tl251630252497_
                                           _e251631252500_
                                           _hd251632252503_
                                           _tl251633252505_
                                           _e251634252508_
                                           _hd251635252511_
                                           _tl251636252513_
                                           _e251637252516_
                                           _hd251638252519_
                                           _tl251639252521_
                                           _e251640252524_
                                           _hd251641252527_
                                           _tl251642252529_))
                                      (___match260375260376_
                                       _e251619252468_
                                       _hd251620252471_
                                       _tl251621252473_
                                       _e251622252476_
                                       _hd251623252479_
                                       _tl251624252481_
                                       _e251625252484_
                                       _hd251626252487_
                                       _tl251627252489_
                                       _e251628252492_
                                       _hd251629252495_
                                       _tl251630252497_
                                       _e251631252500_
                                       _hd251632252503_
                                       _tl251633252505_
                                       _e251634252508_
                                       _hd251635252511_
                                       _tl251636252513_
                                       _e251637252516_
                                       _hd251638252519_
                                       _tl251639252521_
                                       _e251640252524_
                                       _hd251641252527_
                                       _tl251642252529_
                                       _e251643252532_
                                       _hd251644252535_
                                       _tl251645252537_))
                                  (___match260699260700_
                                   _e251619252468_
                                   _hd251620252471_
                                   _tl251621252473_
                                   _e251622252476_
                                   _hd251623252479_
                                   _tl251624252481_
                                   _e251625252484_
                                   _hd251626252487_
                                   _tl251627252489_
                                   _e251628252492_
                                   _hd251629252495_
                                   _tl251630252497_
                                   _e251631252500_
                                   _hd251632252503_
                                   _tl251633252505_
                                   _e251634252508_
                                   _hd251635252511_
                                   _tl251636252513_
                                   _e251637252516_
                                   _hd251638252519_
                                   _tl251639252521_
                                   _e251640252524_
                                   _hd251641252527_
                                   _tl251642252529_))))
                          (___match260699260700_
                           _e251619252468_
                           _hd251620252471_
                           _tl251621252473_
                           _e251622252476_
                           _hd251623252479_
                           _tl251624252481_
                           _e251625252484_
                           _hd251626252487_
                           _tl251627252489_
                           _e251628252492_
                           _hd251629252495_
                           _tl251630252497_
                           _e251631252500_
                           _hd251632252503_
                           _tl251633252505_
                           _e251634252508_
                           _hd251635252511_
                           _tl251636252513_
                           _e251637252516_
                           _hd251638252519_
                           _tl251639252521_
                           _e251640252524_
                           _hd251641252527_
                           _tl251642252529_))))
                  (___match260637260638_
                   _e251619252468_
                   _hd251620252471_
                   _tl251621252473_
                   _e251622252476_
                   _hd251623252479_
                   _tl251624252481_
                   _e251625252484_
                   _hd251626252487_
                   _tl251627252489_
                   _e251628252492_
                   _hd251629252495_
                   _tl251630252497_
                   _e251631252500_
                   _hd251632252503_
                   _tl251633252505_
                   _e251634252508_
                   _hd251635252511_
                   _tl251636252513_
                   _e251637252516_
                   _hd251638252519_
                   _tl251639252521_))
              (___kont260220260221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont260220260221_))
                                          (___kont260220260221_))
                                      (___kont260220260221_))))
                              (___kont260220260221_))))
                      (___kont260220260221_))
                  (___kont260220260221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont260220260221_))
                                              (___kont260220260221_))
                                          (___kont260220260221_))))
                                  (___kont260220260221_))))
                          (___kont260220260221_))))
                  (___kont260220260221_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx250545_
               _self250546_
               _$t250547_
               _methods250548_
               _slots250549_
               _class-check250550_
               _struct-check250551_
               _struct-assert250552_)
        (letrec ((_force-e250554_
                  (lambda (_what251597_)
                    (let ((__tmp261578
                           (let ((__tmp261582
                                  (let ((__tmp261583
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp261583)))
                                 (__tmp261579
                                  (let ((__tmp261580
                                         (let ((__tmp261581
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what251597_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp261581))))
                                    (declare (not safe))
                                    (cons __tmp261580 '()))))
                             (declare (not safe))
                             (cons __tmp261582 __tmp261579))))
                      (declare (not safe))
                      (cons '%#call __tmp261578)))))
          (let* ((___stx260704260705_ _stx250545_)
                 (_g250562250784_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx260704260705_)))))
            (let ((___kont260706260707_
                   (lambda (_L251543_ _L251544_ _L251545_ _L251546_)
                     (let ((_$method251591_
                            (let ((__tmp261584
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L251544_))))
                              (declare (not safe))
                              (hash-ref__0 _methods250548_ __tmp261584)))
                           (_args251592_
                            (map (lambda (_g251579251581_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g251579251581_
                                      _self250546_
                                      _$t250547_
                                      _methods250548_
                                      _slots250549_
                                      _class-check250550_
                                      _struct-check250551_
                                      _struct-assert250552_)))
                                 (let ((__tmp261585
                                        (lambda (_g251583251586_
                                                 _g251584251588_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g251583251586_
                                                  _g251584251588_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp261585 '() _L251543_)))))
                       (let ((__tmp261586
                              (let ((__tmp261587
                                     (let ((__tmp261591
                                            (let ()
                                              (declare (not safe))
                                              (_force-e250554_
                                               _$method251591_)))
                                           (__tmp261588
                                            (let ((__tmp261589
                                                   (let ((__tmp261590
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self250546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261590))))
                                              (declare (not safe))
                                              (cons __tmp261589
                                                    _args251592_))))
                                       (declare (not safe))
                                       (cons __tmp261591 __tmp261588))))
                                (declare (not safe))
                                (cons '%#call __tmp261587))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261586 _stx250545_)))))
                  (___kont260710260711_
                   (lambda (_L251375_ _L251376_ _L251377_ _L251378_ _L251379_)
                     (let ((_$method251431_
                            (let ((__tmp261592
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L251376_))))
                              (declare (not safe))
                              (hash-ref__0 _methods250548_ __tmp261592)))
                           (_args251432_
                            (map (lambda (_g251419251421_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g251419251421_
                                      _self250546_
                                      _$t250547_
                                      _methods250548_
                                      _slots250549_
                                      _class-check250550_
                                      _struct-check250551_
                                      _struct-assert250552_)))
                                 (let ((__tmp261593
                                        (lambda (_g251423251426_
                                                 _g251424251428_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g251423251426_
                                                  _g251424251428_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp261593 '() _L251375_)))))
                       (let ((__tmp261594
                              (let ((__tmp261595
                                     (let ((__tmp261601
                                            (let ((__tmp261602
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261602)))
                                           (__tmp261596
                                            (let ((__tmp261600
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e250554_
                                                      _$method251431_)))
                                                  (__tmp261597
                                                   (let ((__tmp261598
                                                          (let ((__tmp261599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self250546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261598
                                                           _args251432_))))
                                              (declare (not safe))
                                              (cons __tmp261600 __tmp261597))))
                                       (declare (not safe))
                                       (cons __tmp261601 __tmp261596))))
                                (declare (not safe))
                                (cons '%#call __tmp261595))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261594 _stx250545_)))))
                  (___kont260714260715_
                   (lambda (_L251206_ _L251207_ _L251208_)
                     (let* ((_$field251240_
                             (let ((__tmp261603
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L251206_))))
                               (declare (not safe))
                               (hash-ref__0 _slots250549_ __tmp261603)))
                            (__tmp261604
                             (let ((__tmp261605
                                    (let ((__tmp261612
                                           (let ((__tmp261613
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t250547_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp261613)))
                                          (__tmp261606
                                           (let ((__tmp261610
                                                  (let ((__tmp261611
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field251240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp261611)))
                                                 (__tmp261607
                                                  (let ((__tmp261608
                                                         (let ((__tmp261609
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self250546_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp261609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp261608 '()))))
                                             (declare (not safe))
                                             (cons __tmp261610 __tmp261607))))
                                      (declare (not safe))
                                      (cons __tmp261612 __tmp261606))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp261605))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp261604 _stx250545_))))
                  (___kont260716260717_
                   (lambda (_L251080_ _L251081_ _L251082_ _L251083_)
                     (let ((_$field251118_
                            (let ((__tmp261614
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L251081_))))
                              (declare (not safe))
                              (hash-ref__0 _slots250549_ __tmp261614)))
                           (_expr251119_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L251080_
                               _self250546_
                               _$t250547_
                               _methods250548_
                               _slots250549_
                               _class-check250550_
                               _struct-check250551_
                               _struct-assert250552_))))
                       (let ((__tmp261615
                              (let ((__tmp261616
                                     (let ((__tmp261624
                                            (let ((__tmp261625
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t250547_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261625)))
                                           (__tmp261617
                                            (let ((__tmp261622
                                                   (let ((__tmp261623
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field251118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261623)))
                                                  (__tmp261618
                                                   (let ((__tmp261620
                                                          (let ((__tmp261621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self250546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261621)))
                 (__tmp261619
                  (let () (declare (not safe)) (cons _expr251119_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261620
                                                           __tmp261619))))
                                              (declare (not safe))
                                              (cons __tmp261622 __tmp261618))))
                                       (declare (not safe))
                                       (cons __tmp261624 __tmp261617))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp261616))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261615 _stx250545_)))))
                  (___kont260718260719_
                   (lambda (_L250959_ _L250960_)
                     (let* ((_slot250982_
                             (##structure-ref
                              (let ((__tmp261626
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L250960_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp261626))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field250984_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots250549_ _slot250982_))))
                       (let ((__tmp261627
                              (let ((__tmp261628
                                     (let ((__tmp261635
                                            (let ((__tmp261636
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t250547_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261636)))
                                           (__tmp261629
                                            (let ((__tmp261633
                                                   (let ((__tmp261634
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field250984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261634)))
                                                  (__tmp261630
                                                   (let ((__tmp261631
                                                          (let ((__tmp261632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self250546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261631 '()))))
                                              (declare (not safe))
                                              (cons __tmp261633 __tmp261630))))
                                       (declare (not safe))
                                       (cons __tmp261635 __tmp261629))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp261628))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261627 _stx250545_)))))
                  (___kont260720260721_
                   (lambda (_L250860_ _L250861_ _L250862_)
                     (let* ((_slot250891_
                             (##structure-ref
                              (let ((__tmp261637
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L250862_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp261637))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field250893_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots250549_ _slot250891_)))
                            (_expr250895_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L250860_
                                _self250546_
                                _$t250547_
                                _methods250548_
                                _slots250549_
                                _class-check250550_
                                _struct-check250551_
                                _struct-assert250552_))))
                       (let ((__tmp261638
                              (let ((__tmp261639
                                     (let ((__tmp261647
                                            (let ((__tmp261648
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t250547_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp261648)))
                                           (__tmp261640
                                            (let ((__tmp261645
                                                   (let ((__tmp261646
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field250893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp261646)))
                                                  (__tmp261641
                                                   (let ((__tmp261643
                                                          (let ((__tmp261644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self250546_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp261644)))
                 (__tmp261642
                  (let () (declare (not safe)) (cons _expr250895_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp261643
                                                           __tmp261642))))
                                              (declare (not safe))
                                              (cons __tmp261645 __tmp261641))))
                                       (declare (not safe))
                                       (cons __tmp261647 __tmp261640))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp261639))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp261638 _stx250545_)))))
                  (___kont260722260723_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx250545_
                        _self250546_
                        _$t250547_
                        _methods250548_
                        _slots250549_
                        _class-check250550_
                        _struct-check250551_
                        _struct-assert250552_)))))
              (let* ((___match261203261204_
                      (lambda (_e250756250796_
                               _hd250757250799_
                               _tl250758250801_
                               _e250759250804_
                               _hd250760250807_
                               _tl250761250809_
                               _e250762250812_
                               _hd250763250815_
                               _tl250764250817_
                               _e250765250820_
                               _hd250766250823_
                               _tl250767250825_
                               _e250768250828_
                               _hd250769250831_
                               _tl250770250833_
                               _e250771250836_
                               _hd250772250839_
                               _tl250773250841_
                               _e250774250844_
                               _hd250775250847_
                               _tl250776250849_
                               _e250777250852_
                               _hd250778250855_
                               _tl250779250857_)
                        (let ((_L250860_ _hd250778250855_)
                              (_L250861_ _hd250775250847_)
                              (_L250862_ _hd250766250823_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L250861_
                                      _self250546_))
                                   (let ((__tmp261649
                                          (let ((__tmp261650
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L250862_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp261650))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp261649
                                      'gxc#!mutator::t)))
                              (___kont260720260721_
                               _L250860_
                               _L250861_
                               _L250862_)
                              (___kont260722260723_)))))
                     (___match261201261202_
                      (lambda (_e250756250796_
                               _hd250757250799_
                               _tl250758250801_
                               _e250759250804_
                               _hd250760250807_
                               _tl250761250809_
                               _e250762250812_
                               _hd250763250815_
                               _tl250764250817_
                               _e250765250820_
                               _hd250766250823_
                               _tl250767250825_
                               _e250768250828_
                               _hd250769250831_
                               _tl250770250833_
                               _e250771250836_
                               _hd250772250839_
                               _tl250773250841_
                               _e250774250844_
                               _hd250775250847_
                               _tl250776250849_
                               _e250777250852_
                               _hd250778250855_
                               _tl250779250857_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl250779250857_))
                            (___match261203261204_
                             _e250756250796_
                             _hd250757250799_
                             _tl250758250801_
                             _e250759250804_
                             _hd250760250807_
                             _tl250761250809_
                             _e250762250812_
                             _hd250763250815_
                             _tl250764250817_
                             _e250765250820_
                             _hd250766250823_
                             _tl250767250825_
                             _e250768250828_
                             _hd250769250831_
                             _tl250770250833_
                             _e250771250836_
                             _hd250772250839_
                             _tl250773250841_
                             _e250774250844_
                             _hd250775250847_
                             _tl250776250849_
                             _e250777250852_
                             _hd250778250855_
                             _tl250779250857_)
                            (___kont260722260723_))))
                     (___match261195261196_
                      (lambda (_e250756250796_
                               _hd250757250799_
                               _tl250758250801_
                               _e250759250804_
                               _hd250760250807_
                               _tl250761250809_
                               _e250762250812_
                               _hd250763250815_
                               _tl250764250817_
                               _e250765250820_
                               _hd250766250823_
                               _tl250767250825_
                               _e250768250828_
                               _hd250769250831_
                               _tl250770250833_
                               _e250771250836_
                               _hd250772250839_
                               _tl250773250841_
                               _e250774250844_
                               _hd250775250847_
                               _tl250776250849_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250770250833_))
                            (let ((_e250777250852_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250770250833_))))
                              (let ((_tl250779250857_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250777250852_)))
                                    (_hd250778250855_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250777250852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl250779250857_))
                                    (___match261203261204_
                                     _e250756250796_
                                     _hd250757250799_
                                     _tl250758250801_
                                     _e250759250804_
                                     _hd250760250807_
                                     _tl250761250809_
                                     _e250762250812_
                                     _hd250763250815_
                                     _tl250764250817_
                                     _e250765250820_
                                     _hd250766250823_
                                     _tl250767250825_
                                     _e250768250828_
                                     _hd250769250831_
                                     _tl250770250833_
                                     _e250771250836_
                                     _hd250772250839_
                                     _tl250773250841_
                                     _e250774250844_
                                     _hd250775250847_
                                     _tl250776250849_
                                     _e250777250852_
                                     _hd250778250855_
                                     _tl250779250857_)
                                    (___kont260722260723_))))
                            (___kont260722260723_))))
                     (___match261141261142_
                      (lambda (_e250732250903_
                               _hd250733250906_
                               _tl250734250908_
                               _e250735250911_
                               _hd250736250914_
                               _tl250737250916_
                               _e250738250919_
                               _hd250739250922_
                               _tl250740250924_
                               _e250741250927_
                               _hd250742250930_
                               _tl250743250932_
                               _e250744250935_
                               _hd250745250938_
                               _tl250746250940_
                               _e250747250943_
                               _hd250748250946_
                               _tl250749250948_
                               _e250750250951_
                               _hd250751250954_
                               _tl250752250956_)
                        (let ((_L250959_ _hd250751250954_)
                              (_L250960_ _hd250742250930_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L250959_
                                      _self250546_))
                                   (let ((__tmp261651
                                          (let ((__tmp261652
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L250960_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp261652))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp261651
                                      'gxc#!accessor::t)))
                              (___kont260718260719_ _L250959_ _L250960_)
                              (___kont260722260723_)))))
                     (___match261139261140_
                      (lambda (_e250732250903_
                               _hd250733250906_
                               _tl250734250908_
                               _e250735250911_
                               _hd250736250914_
                               _tl250737250916_
                               _e250738250919_
                               _hd250739250922_
                               _tl250740250924_
                               _e250741250927_
                               _hd250742250930_
                               _tl250743250932_
                               _e250744250935_
                               _hd250745250938_
                               _tl250746250940_
                               _e250747250943_
                               _hd250748250946_
                               _tl250749250948_
                               _e250750250951_
                               _hd250751250954_
                               _tl250752250956_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl250746250940_))
                            (___match261141261142_
                             _e250732250903_
                             _hd250733250906_
                             _tl250734250908_
                             _e250735250911_
                             _hd250736250914_
                             _tl250737250916_
                             _e250738250919_
                             _hd250739250922_
                             _tl250740250924_
                             _e250741250927_
                             _hd250742250930_
                             _tl250743250932_
                             _e250744250935_
                             _hd250745250938_
                             _tl250746250940_
                             _e250747250943_
                             _hd250748250946_
                             _tl250749250948_
                             _e250750250951_
                             _hd250751250954_
                             _tl250752250956_)
                            (___match261195261196_
                             _e250732250903_
                             _hd250733250906_
                             _tl250734250908_
                             _e250735250911_
                             _hd250736250914_
                             _tl250737250916_
                             _e250738250919_
                             _hd250739250922_
                             _tl250740250924_
                             _e250741250927_
                             _hd250742250930_
                             _tl250743250932_
                             _e250744250935_
                             _hd250745250938_
                             _tl250746250940_
                             _e250747250943_
                             _hd250748250946_
                             _tl250749250948_
                             _e250750250951_
                             _hd250751250954_
                             _tl250752250956_))))
                     (___match261085261086_
                      (lambda (_e250697250992_
                               _hd250698250995_
                               _tl250699250997_
                               _e250700251000_
                               _hd250701251003_
                               _tl250702251005_
                               _e250703251008_
                               _hd250704251011_
                               _tl250705251013_
                               _e250706251016_
                               _hd250707251019_
                               _tl250708251021_
                               _e250709251024_
                               _hd250710251027_
                               _tl250711251029_
                               _e250712251032_
                               _hd250713251035_
                               _tl250714251037_
                               _e250715251040_
                               _hd250716251043_
                               _tl250717251045_
                               _e250718251048_
                               _hd250719251051_
                               _tl250720251053_
                               _e250721251056_
                               _hd250722251059_
                               _tl250723251061_
                               _e250724251064_
                               _hd250725251067_
                               _tl250726251069_
                               _e250727251072_
                               _hd250728251075_
                               _tl250729251077_)
                        (let ((_L251080_ _hd250728251075_)
                              (_L251081_ _hd250725251067_)
                              (_L251082_ _hd250716251043_)
                              (_L251083_ _hd250707251019_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L251083_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L251083_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L251082_
                                      _self250546_)))
                              (___kont260716260717_
                               _L251080_
                               _L251081_
                               _L251082_
                               _L251083_)
                              (___kont260722260723_)))))
                     (___match261077261078_
                      (lambda (_e250697250992_
                               _hd250698250995_
                               _tl250699250997_
                               _e250700251000_
                               _hd250701251003_
                               _tl250702251005_
                               _e250703251008_
                               _hd250704251011_
                               _tl250705251013_
                               _e250706251016_
                               _hd250707251019_
                               _tl250708251021_
                               _e250709251024_
                               _hd250710251027_
                               _tl250711251029_
                               _e250712251032_
                               _hd250713251035_
                               _tl250714251037_
                               _e250715251040_
                               _hd250716251043_
                               _tl250717251045_
                               _e250718251048_
                               _hd250719251051_
                               _tl250720251053_
                               _e250721251056_
                               _hd250722251059_
                               _tl250723251061_
                               _e250724251064_
                               _hd250725251067_
                               _tl250726251069_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250720251053_))
                            (let ((_e250727251072_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250720251053_))))
                              (let ((_tl250729251077_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250727251072_)))
                                    (_hd250728251075_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250727251072_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl250729251077_))
                                    (___match261085261086_
                                     _e250697250992_
                                     _hd250698250995_
                                     _tl250699250997_
                                     _e250700251000_
                                     _hd250701251003_
                                     _tl250702251005_
                                     _e250703251008_
                                     _hd250704251011_
                                     _tl250705251013_
                                     _e250706251016_
                                     _hd250707251019_
                                     _tl250708251021_
                                     _e250709251024_
                                     _hd250710251027_
                                     _tl250711251029_
                                     _e250712251032_
                                     _hd250713251035_
                                     _tl250714251037_
                                     _e250715251040_
                                     _hd250716251043_
                                     _tl250717251045_
                                     _e250718251048_
                                     _hd250719251051_
                                     _tl250720251053_
                                     _e250721251056_
                                     _hd250722251059_
                                     _tl250723251061_
                                     _e250724251064_
                                     _hd250725251067_
                                     _tl250726251069_
                                     _e250727251072_
                                     _hd250728251075_
                                     _tl250729251077_)
                                    (___kont260722260723_))))
                            (___match261201261202_
                             _e250697250992_
                             _hd250698250995_
                             _tl250699250997_
                             _e250700251000_
                             _hd250701251003_
                             _tl250702251005_
                             _e250703251008_
                             _hd250704251011_
                             _tl250705251013_
                             _e250706251016_
                             _hd250707251019_
                             _tl250708251021_
                             _e250709251024_
                             _hd250710251027_
                             _tl250711251029_
                             _e250712251032_
                             _hd250713251035_
                             _tl250714251037_
                             _e250715251040_
                             _hd250716251043_
                             _tl250717251045_
                             _e250718251048_
                             _hd250719251051_
                             _tl250720251053_))))
                     (___match260999261000_
                      (lambda (_e250663251126_
                               _hd250664251129_
                               _tl250665251131_
                               _e250666251134_
                               _hd250667251137_
                               _tl250668251139_
                               _e250669251142_
                               _hd250670251145_
                               _tl250671251147_
                               _e250672251150_
                               _hd250673251153_
                               _tl250674251155_
                               _e250675251158_
                               _hd250676251161_
                               _tl250677251163_
                               _e250678251166_
                               _hd250679251169_
                               _tl250680251171_
                               _e250681251174_
                               _hd250682251177_
                               _tl250683251179_
                               _e250684251182_
                               _hd250685251185_
                               _tl250686251187_
                               _e250687251190_
                               _hd250688251193_
                               _tl250689251195_
                               _e250690251198_
                               _hd250691251201_
                               _tl250692251203_)
                        (let ((_L251206_ _hd250691251201_)
                              (_L251207_ _hd250682251177_)
                              (_L251208_ _hd250673251153_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L251208_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L251208_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L251207_
                                      _self250546_)))
                              (___kont260714260715_
                               _L251206_
                               _L251207_
                               _L251208_)
                              (___match261203261204_
                               _e250663251126_
                               _hd250664251129_
                               _tl250665251131_
                               _e250666251134_
                               _hd250667251137_
                               _tl250668251139_
                               _e250669251142_
                               _hd250670251145_
                               _tl250671251147_
                               _e250672251150_
                               _hd250673251153_
                               _tl250674251155_
                               _e250675251158_
                               _hd250676251161_
                               _tl250677251163_
                               _e250678251166_
                               _hd250679251169_
                               _tl250680251171_
                               _e250681251174_
                               _hd250682251177_
                               _tl250683251179_
                               _e250684251182_
                               _hd250685251185_
                               _tl250686251187_)))))
                     (___match260997260998_
                      (lambda (_e250663251126_
                               _hd250664251129_
                               _tl250665251131_
                               _e250666251134_
                               _hd250667251137_
                               _tl250668251139_
                               _e250669251142_
                               _hd250670251145_
                               _tl250671251147_
                               _e250672251150_
                               _hd250673251153_
                               _tl250674251155_
                               _e250675251158_
                               _hd250676251161_
                               _tl250677251163_
                               _e250678251166_
                               _hd250679251169_
                               _tl250680251171_
                               _e250681251174_
                               _hd250682251177_
                               _tl250683251179_
                               _e250684251182_
                               _hd250685251185_
                               _tl250686251187_
                               _e250687251190_
                               _hd250688251193_
                               _tl250689251195_
                               _e250690251198_
                               _hd250691251201_
                               _tl250692251203_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl250686251187_))
                            (___match260999261000_
                             _e250663251126_
                             _hd250664251129_
                             _tl250665251131_
                             _e250666251134_
                             _hd250667251137_
                             _tl250668251139_
                             _e250669251142_
                             _hd250670251145_
                             _tl250671251147_
                             _e250672251150_
                             _hd250673251153_
                             _tl250674251155_
                             _e250675251158_
                             _hd250676251161_
                             _tl250677251163_
                             _e250678251166_
                             _hd250679251169_
                             _tl250680251171_
                             _e250681251174_
                             _hd250682251177_
                             _tl250683251179_
                             _e250684251182_
                             _hd250685251185_
                             _tl250686251187_
                             _e250687251190_
                             _hd250688251193_
                             _tl250689251195_
                             _e250690251198_
                             _hd250691251201_
                             _tl250692251203_)
                            (___match261077261078_
                             _e250663251126_
                             _hd250664251129_
                             _tl250665251131_
                             _e250666251134_
                             _hd250667251137_
                             _tl250668251139_
                             _e250669251142_
                             _hd250670251145_
                             _tl250671251147_
                             _e250672251150_
                             _hd250673251153_
                             _tl250674251155_
                             _e250675251158_
                             _hd250676251161_
                             _tl250677251163_
                             _e250678251166_
                             _hd250679251169_
                             _tl250680251171_
                             _e250681251174_
                             _hd250682251177_
                             _tl250683251179_
                             _e250684251182_
                             _hd250685251185_
                             _tl250686251187_
                             _e250687251190_
                             _hd250688251193_
                             _tl250689251195_
                             _e250690251198_
                             _hd250691251201_
                             _tl250692251203_))))
                     (___match260987260988_
                      (lambda (_e250663251126_
                               _hd250664251129_
                               _tl250665251131_
                               _e250666251134_
                               _hd250667251137_
                               _tl250668251139_
                               _e250669251142_
                               _hd250670251145_
                               _tl250671251147_
                               _e250672251150_
                               _hd250673251153_
                               _tl250674251155_
                               _e250675251158_
                               _hd250676251161_
                               _tl250677251163_
                               _e250678251166_
                               _hd250679251169_
                               _tl250680251171_
                               _e250681251174_
                               _hd250682251177_
                               _tl250683251179_
                               _e250684251182_
                               _hd250685251185_
                               _tl250686251187_
                               _e250687251190_
                               _hd250688251193_
                               _tl250689251195_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd250688251193_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl250689251195_))
                                (let ((_e250690251198_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl250689251195_))))
                                  (let ((_tl250692251203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e250690251198_)))
                                        (_hd250691251201_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e250690251198_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl250692251203_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl250686251187_))
                                            (___match260999261000_
                                             _e250663251126_
                                             _hd250664251129_
                                             _tl250665251131_
                                             _e250666251134_
                                             _hd250667251137_
                                             _tl250668251139_
                                             _e250669251142_
                                             _hd250670251145_
                                             _tl250671251147_
                                             _e250672251150_
                                             _hd250673251153_
                                             _tl250674251155_
                                             _e250675251158_
                                             _hd250676251161_
                                             _tl250677251163_
                                             _e250678251166_
                                             _hd250679251169_
                                             _tl250680251171_
                                             _e250681251174_
                                             _hd250682251177_
                                             _tl250683251179_
                                             _e250684251182_
                                             _hd250685251185_
                                             _tl250686251187_
                                             _e250687251190_
                                             _hd250688251193_
                                             _tl250689251195_
                                             _e250690251198_
                                             _hd250691251201_
                                             _tl250692251203_)
                                            (___match261077261078_
                                             _e250663251126_
                                             _hd250664251129_
                                             _tl250665251131_
                                             _e250666251134_
                                             _hd250667251137_
                                             _tl250668251139_
                                             _e250669251142_
                                             _hd250670251145_
                                             _tl250671251147_
                                             _e250672251150_
                                             _hd250673251153_
                                             _tl250674251155_
                                             _e250675251158_
                                             _hd250676251161_
                                             _tl250677251163_
                                             _e250678251166_
                                             _hd250679251169_
                                             _tl250680251171_
                                             _e250681251174_
                                             _hd250682251177_
                                             _tl250683251179_
                                             _e250684251182_
                                             _hd250685251185_
                                             _tl250686251187_
                                             _e250687251190_
                                             _hd250688251193_
                                             _tl250689251195_
                                             _e250690251198_
                                             _hd250691251201_
                                             _tl250692251203_))
                                        (___match261201261202_
                                         _e250663251126_
                                         _hd250664251129_
                                         _tl250665251131_
                                         _e250666251134_
                                         _hd250667251137_
                                         _tl250668251139_
                                         _e250669251142_
                                         _hd250670251145_
                                         _tl250671251147_
                                         _e250672251150_
                                         _hd250673251153_
                                         _tl250674251155_
                                         _e250675251158_
                                         _hd250676251161_
                                         _tl250677251163_
                                         _e250678251166_
                                         _hd250679251169_
                                         _tl250680251171_
                                         _e250681251174_
                                         _hd250682251177_
                                         _tl250683251179_
                                         _e250684251182_
                                         _hd250685251185_
                                         _tl250686251187_))))
                                (___match261201261202_
                                 _e250663251126_
                                 _hd250664251129_
                                 _tl250665251131_
                                 _e250666251134_
                                 _hd250667251137_
                                 _tl250668251139_
                                 _e250669251142_
                                 _hd250670251145_
                                 _tl250671251147_
                                 _e250672251150_
                                 _hd250673251153_
                                 _tl250674251155_
                                 _e250675251158_
                                 _hd250676251161_
                                 _tl250677251163_
                                 _e250678251166_
                                 _hd250679251169_
                                 _tl250680251171_
                                 _e250681251174_
                                 _hd250682251177_
                                 _tl250683251179_
                                 _e250684251182_
                                 _hd250685251185_
                                 _tl250686251187_))
                            (___match261201261202_
                             _e250663251126_
                             _hd250664251129_
                             _tl250665251131_
                             _e250666251134_
                             _hd250667251137_
                             _tl250668251139_
                             _e250669251142_
                             _hd250670251145_
                             _tl250671251147_
                             _e250672251150_
                             _hd250673251153_
                             _tl250674251155_
                             _e250675251158_
                             _hd250676251161_
                             _tl250677251163_
                             _e250678251166_
                             _hd250679251169_
                             _tl250680251171_
                             _e250681251174_
                             _hd250682251177_
                             _tl250683251179_
                             _e250684251182_
                             _hd250685251185_
                             _tl250686251187_))))
                     (___match260919260920_
                      (lambda (_e250612251247_
                               _hd250613251250_
                               _tl250614251252_
                               _e250615251255_
                               _hd250616251258_
                               _tl250617251260_
                               _e250618251263_
                               _hd250619251266_
                               _tl250620251268_
                               _e250621251271_
                               _hd250622251274_
                               _tl250623251276_
                               _e250624251279_
                               _hd250625251282_
                               _tl250626251284_
                               _e250627251287_
                               _hd250628251290_
                               _tl250629251292_
                               _e250630251295_
                               _hd250631251298_
                               _tl250632251300_
                               _e250633251303_
                               _hd250634251306_
                               _tl250635251308_
                               _e250636251311_
                               _hd250637251314_
                               _tl250638251316_
                               _e250639251319_
                               _hd250640251322_
                               _tl250641251324_
                               _e250642251327_
                               _hd250643251330_
                               _tl250644251332_
                               _e250645251335_
                               _hd250646251338_
                               _tl250647251340_
                               _e250648251343_
                               _hd250649251346_
                               _tl250650251348_
                               ___splice260712260713_
                               _target250651251351_
                               _tl250653251353_)
                        (letrec ((_loop250654251356_
                                  (lambda (_hd250652251359_ _args250658251361_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd250652251359_))
                                        (let ((_e250655251364_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd250652251359_))))
                                          (let ((_lp-tl250657251369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e250655251364_)))
                                                (_lp-hd250656251367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e250655251364_))))
                                            (let ((__tmp261653
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd250656251367_
                                                           _args250658251361_))))
                                              (declare (not safe))
                                              (_loop250654251356_
                                               _lp-tl250657251369_
                                               __tmp261653))))
                                        (let ((_args250659251372_
                                               (reverse _args250658251361_)))
                                          (let ((_L251375_ _args250659251372_)
                                                (_L251376_ _hd250649251346_)
                                                (_L251377_ _hd250640251322_)
                                                (_L251378_ _hd250631251298_)
                                                (_L251379_ _hd250622251274_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L251379_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L251378_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L251377_
                                                        _self250546_)))
                                                (___kont260710260711_
                                                 _L251375_
                                                 _L251376_
                                                 _L251377_
                                                 _L251378_
                                                 _L251379_)
                                                (___kont260722260723_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop250654251356_ _target250651251351_ '())))))
                     (___match260877260878_
                      (lambda (_e250612251247_
                               _hd250613251250_
                               _tl250614251252_
                               _e250615251255_
                               _hd250616251258_
                               _tl250617251260_
                               _e250618251263_
                               _hd250619251266_
                               _tl250620251268_
                               _e250621251271_
                               _hd250622251274_
                               _tl250623251276_
                               _e250624251279_
                               _hd250625251282_
                               _tl250626251284_
                               _e250627251287_
                               _hd250628251290_
                               _tl250629251292_
                               _e250630251295_
                               _hd250631251298_
                               _tl250632251300_
                               _e250633251303_
                               _hd250634251306_
                               _tl250635251308_
                               _e250636251311_
                               _hd250637251314_
                               _tl250638251316_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd250637251314_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl250638251316_))
                                (let ((_e250639251319_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl250638251316_))))
                                  (let ((_tl250641251324_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e250639251319_)))
                                        (_hd250640251322_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e250639251319_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl250641251324_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl250635251308_))
                                            (let ((_e250642251327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl250635251308_))))
                                              (let ((_tl250644251332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e250642251327_)))
                                                    (_hd250643251330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e250642251327_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd250643251330_))
                                                    (let ((_e250645251335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd250643251330_))))
                                                      (let ((_tl250647251340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e250645251335_)))
                    (_hd250646251338_
                     (let () (declare (not safe)) (##car _e250645251335_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd250646251338_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd250646251338_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250647251340_))
                            (let ((_e250648251343_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250647251340_))))
                              (let ((_tl250650251348_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250648251343_)))
                                    (_hd250649251346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250648251343_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl250650251348_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl250644251332_))
                                        (let ((___splice260712260713_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl250644251332_
                                                  '0))))
                                          (let ((_tl250653251353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice260712260713_
                                                    '1)))
                                                (_target250651251351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice260712260713_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl250653251353_))
                                                (___match260919260920_
                                                 _e250612251247_
                                                 _hd250613251250_
                                                 _tl250614251252_
                                                 _e250615251255_
                                                 _hd250616251258_
                                                 _tl250617251260_
                                                 _e250618251263_
                                                 _hd250619251266_
                                                 _tl250620251268_
                                                 _e250621251271_
                                                 _hd250622251274_
                                                 _tl250623251276_
                                                 _e250624251279_
                                                 _hd250625251282_
                                                 _tl250626251284_
                                                 _e250627251287_
                                                 _hd250628251290_
                                                 _tl250629251292_
                                                 _e250630251295_
                                                 _hd250631251298_
                                                 _tl250632251300_
                                                 _e250633251303_
                                                 _hd250634251306_
                                                 _tl250635251308_
                                                 _e250636251311_
                                                 _hd250637251314_
                                                 _tl250638251316_
                                                 _e250639251319_
                                                 _hd250640251322_
                                                 _tl250641251324_
                                                 _e250642251327_
                                                 _hd250643251330_
                                                 _tl250644251332_
                                                 _e250645251335_
                                                 _hd250646251338_
                                                 _tl250647251340_
                                                 _e250648251343_
                                                 _hd250649251346_
                                                 _tl250650251348_
                                                 ___splice260712260713_
                                                 _target250651251351_
                                                 _tl250653251353_)
                                                (___kont260722260723_))))
                                        (___kont260722260723_))
                                    (___kont260722260723_))))
                            (___kont260722260723_))
                        (___kont260722260723_))
                    (___kont260722260723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont260722260723_))))
                                            (___match261201261202_
                                             _e250612251247_
                                             _hd250613251250_
                                             _tl250614251252_
                                             _e250615251255_
                                             _hd250616251258_
                                             _tl250617251260_
                                             _e250618251263_
                                             _hd250619251266_
                                             _tl250620251268_
                                             _e250621251271_
                                             _hd250622251274_
                                             _tl250623251276_
                                             _e250624251279_
                                             _hd250625251282_
                                             _tl250626251284_
                                             _e250627251287_
                                             _hd250628251290_
                                             _tl250629251292_
                                             _e250630251295_
                                             _hd250631251298_
                                             _tl250632251300_
                                             _e250633251303_
                                             _hd250634251306_
                                             _tl250635251308_))
                                        (___match261201261202_
                                         _e250612251247_
                                         _hd250613251250_
                                         _tl250614251252_
                                         _e250615251255_
                                         _hd250616251258_
                                         _tl250617251260_
                                         _e250618251263_
                                         _hd250619251266_
                                         _tl250620251268_
                                         _e250621251271_
                                         _hd250622251274_
                                         _tl250623251276_
                                         _e250624251279_
                                         _hd250625251282_
                                         _tl250626251284_
                                         _e250627251287_
                                         _hd250628251290_
                                         _tl250629251292_
                                         _e250630251295_
                                         _hd250631251298_
                                         _tl250632251300_
                                         _e250633251303_
                                         _hd250634251306_
                                         _tl250635251308_))))
                                (___match261201261202_
                                 _e250612251247_
                                 _hd250613251250_
                                 _tl250614251252_
                                 _e250615251255_
                                 _hd250616251258_
                                 _tl250617251260_
                                 _e250618251263_
                                 _hd250619251266_
                                 _tl250620251268_
                                 _e250621251271_
                                 _hd250622251274_
                                 _tl250623251276_
                                 _e250624251279_
                                 _hd250625251282_
                                 _tl250626251284_
                                 _e250627251287_
                                 _hd250628251290_
                                 _tl250629251292_
                                 _e250630251295_
                                 _hd250631251298_
                                 _tl250632251300_
                                 _e250633251303_
                                 _hd250634251306_
                                 _tl250635251308_))
                            (___match260987260988_
                             _e250612251247_
                             _hd250613251250_
                             _tl250614251252_
                             _e250615251255_
                             _hd250616251258_
                             _tl250617251260_
                             _e250618251263_
                             _hd250619251266_
                             _tl250620251268_
                             _e250621251271_
                             _hd250622251274_
                             _tl250623251276_
                             _e250624251279_
                             _hd250625251282_
                             _tl250626251284_
                             _e250627251287_
                             _hd250628251290_
                             _tl250629251292_
                             _e250630251295_
                             _hd250631251298_
                             _tl250632251300_
                             _e250633251303_
                             _hd250634251306_
                             _tl250635251308_
                             _e250636251311_
                             _hd250637251314_
                             _tl250638251316_))))
                     (___match260809260810_
                      (lambda (_e250568251439_
                               _hd250569251442_
                               _tl250570251444_
                               _e250571251447_
                               _hd250572251450_
                               _tl250573251452_
                               _e250574251455_
                               _hd250575251458_
                               _tl250576251460_
                               _e250577251463_
                               _hd250578251466_
                               _tl250579251468_
                               _e250580251471_
                               _hd250581251474_
                               _tl250582251476_
                               _e250583251479_
                               _hd250584251482_
                               _tl250585251484_
                               _e250586251487_
                               _hd250587251490_
                               _tl250588251492_
                               _e250589251495_
                               _hd250590251498_
                               _tl250591251500_
                               _e250592251503_
                               _hd250593251506_
                               _tl250594251508_
                               _e250595251511_
                               _hd250596251514_
                               _tl250597251516_
                               ___splice260708260709_
                               _target250598251519_
                               _tl250600251521_)
                        (letrec ((_loop250601251524_
                                  (lambda (_hd250599251527_ _args250605251529_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd250599251527_))
                                        (let ((_e250602251532_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd250599251527_))))
                                          (let ((_lp-tl250604251537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e250602251532_)))
                                                (_lp-hd250603251535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e250602251532_))))
                                            (let ((__tmp261654
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd250603251535_
                                                           _args250605251529_))))
                                              (declare (not safe))
                                              (_loop250601251524_
                                               _lp-tl250604251537_
                                               __tmp261654))))
                                        (let ((_args250606251540_
                                               (reverse _args250605251529_)))
                                          (let ((_L251543_ _args250606251540_)
                                                (_L251544_ _hd250596251514_)
                                                (_L251545_ _hd250587251490_)
                                                (_L251546_ _hd250578251466_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L251546_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L251545_
                                                        _self250546_)))
                                                (___kont260706260707_
                                                 _L251543_
                                                 _L251544_
                                                 _L251545_
                                                 _L251546_)
                                                (___match260997260998_
                                                 _e250568251439_
                                                 _hd250569251442_
                                                 _tl250570251444_
                                                 _e250571251447_
                                                 _hd250572251450_
                                                 _tl250573251452_
                                                 _e250574251455_
                                                 _hd250575251458_
                                                 _tl250576251460_
                                                 _e250577251463_
                                                 _hd250578251466_
                                                 _tl250579251468_
                                                 _e250580251471_
                                                 _hd250581251474_
                                                 _tl250582251476_
                                                 _e250583251479_
                                                 _hd250584251482_
                                                 _tl250585251484_
                                                 _e250586251487_
                                                 _hd250587251490_
                                                 _tl250588251492_
                                                 _e250589251495_
                                                 _hd250590251498_
                                                 _tl250591251500_
                                                 _e250592251503_
                                                 _hd250593251506_
                                                 _tl250594251508_
                                                 _e250595251511_
                                                 _hd250596251514_
                                                 _tl250597251516_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop250601251524_ _target250598251519_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx260704260705_))
                    (let ((_e250568251439_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx260704260705_))))
                      (let ((_tl250570251444_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250568251439_)))
                            (_hd250569251442_
                             (let ()
                               (declare (not safe))
                               (##car _e250568251439_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250570251444_))
                            (let ((_e250571251447_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250570251444_))))
                              (let ((_tl250573251452_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250571251447_)))
                                    (_hd250572251450_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250571251447_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd250572251450_))
                                    (let ((_e250574251455_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd250572251450_))))
                                      (let ((_tl250576251460_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e250574251455_)))
                                            (_hd250575251458_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e250574251455_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd250575251458_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd250575251458_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl250576251460_))
                                                    (let ((_e250577251463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl250576251460_))))
                                                      (let ((_tl250579251468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e250577251463_)))
                    (_hd250578251466_
                     (let () (declare (not safe)) (##car _e250577251463_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl250579251468_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl250573251452_))
                        (let ((_e250580251471_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl250573251452_))))
                          (let ((_tl250582251476_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e250580251471_)))
                                (_hd250581251474_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e250580251471_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd250581251474_))
                                (let ((_e250583251479_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd250581251474_))))
                                  (let ((_tl250585251484_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e250583251479_)))
                                        (_hd250584251482_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e250583251479_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd250584251482_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd250584251482_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl250585251484_))
                                                (let ((_e250586251487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl250585251484_))))
                                                  (let ((_tl250588251492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e250586251487_)))
                                                        (_hd250587251490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e250586251487_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl250588251492_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl250582251476_))
                                                            (let ((_e250589251495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl250582251476_))))
                      (let ((_tl250591251500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250589251495_)))
                            (_hd250590251498_
                             (let ()
                               (declare (not safe))
                               (##car _e250589251495_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd250590251498_))
                            (let ((_e250592251503_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd250590251498_))))
                              (let ((_tl250594251508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250592251503_)))
                                    (_hd250593251506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250592251503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd250593251506_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd250593251506_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl250594251508_))
                                            (let ((_e250595251511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl250594251508_))))
                                              (let ((_tl250597251516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e250595251511_)))
                                                    (_hd250596251514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e250595251511_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl250597251516_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl250591251500_))
                                                        (let ((___splice260708260709_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl250591251500_ '0))))
                  (let ((_tl250600251521_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice260708260709_ '1)))
                        (_target250598251519_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice260708260709_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl250600251521_))
                        (___match260809260810_
                         _e250568251439_
                         _hd250569251442_
                         _tl250570251444_
                         _e250571251447_
                         _hd250572251450_
                         _tl250573251452_
                         _e250574251455_
                         _hd250575251458_
                         _tl250576251460_
                         _e250577251463_
                         _hd250578251466_
                         _tl250579251468_
                         _e250580251471_
                         _hd250581251474_
                         _tl250582251476_
                         _e250583251479_
                         _hd250584251482_
                         _tl250585251484_
                         _e250586251487_
                         _hd250587251490_
                         _tl250588251492_
                         _e250589251495_
                         _hd250590251498_
                         _tl250591251500_
                         _e250592251503_
                         _hd250593251506_
                         _tl250594251508_
                         _e250595251511_
                         _hd250596251514_
                         _tl250597251516_
                         ___splice260708260709_
                         _target250598251519_
                         _tl250600251521_)
                        (___match260997260998_
                         _e250568251439_
                         _hd250569251442_
                         _tl250570251444_
                         _e250571251447_
                         _hd250572251450_
                         _tl250573251452_
                         _e250574251455_
                         _hd250575251458_
                         _tl250576251460_
                         _e250577251463_
                         _hd250578251466_
                         _tl250579251468_
                         _e250580251471_
                         _hd250581251474_
                         _tl250582251476_
                         _e250583251479_
                         _hd250584251482_
                         _tl250585251484_
                         _e250586251487_
                         _hd250587251490_
                         _tl250588251492_
                         _e250589251495_
                         _hd250590251498_
                         _tl250591251500_
                         _e250592251503_
                         _hd250593251506_
                         _tl250594251508_
                         _e250595251511_
                         _hd250596251514_
                         _tl250597251516_))))
                (___match260997260998_
                 _e250568251439_
                 _hd250569251442_
                 _tl250570251444_
                 _e250571251447_
                 _hd250572251450_
                 _tl250573251452_
                 _e250574251455_
                 _hd250575251458_
                 _tl250576251460_
                 _e250577251463_
                 _hd250578251466_
                 _tl250579251468_
                 _e250580251471_
                 _hd250581251474_
                 _tl250582251476_
                 _e250583251479_
                 _hd250584251482_
                 _tl250585251484_
                 _e250586251487_
                 _hd250587251490_
                 _tl250588251492_
                 _e250589251495_
                 _hd250590251498_
                 _tl250591251500_
                 _e250592251503_
                 _hd250593251506_
                 _tl250594251508_
                 _e250595251511_
                 _hd250596251514_
                 _tl250597251516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match261201261202_
                                                     _e250568251439_
                                                     _hd250569251442_
                                                     _tl250570251444_
                                                     _e250571251447_
                                                     _hd250572251450_
                                                     _tl250573251452_
                                                     _e250574251455_
                                                     _hd250575251458_
                                                     _tl250576251460_
                                                     _e250577251463_
                                                     _hd250578251466_
                                                     _tl250579251468_
                                                     _e250580251471_
                                                     _hd250581251474_
                                                     _tl250582251476_
                                                     _e250583251479_
                                                     _hd250584251482_
                                                     _tl250585251484_
                                                     _e250586251487_
                                                     _hd250587251490_
                                                     _tl250588251492_
                                                     _e250589251495_
                                                     _hd250590251498_
                                                     _tl250591251500_))))
                                            (___match261201261202_
                                             _e250568251439_
                                             _hd250569251442_
                                             _tl250570251444_
                                             _e250571251447_
                                             _hd250572251450_
                                             _tl250573251452_
                                             _e250574251455_
                                             _hd250575251458_
                                             _tl250576251460_
                                             _e250577251463_
                                             _hd250578251466_
                                             _tl250579251468_
                                             _e250580251471_
                                             _hd250581251474_
                                             _tl250582251476_
                                             _e250583251479_
                                             _hd250584251482_
                                             _tl250585251484_
                                             _e250586251487_
                                             _hd250587251490_
                                             _tl250588251492_
                                             _e250589251495_
                                             _hd250590251498_
                                             _tl250591251500_))
                                        (___match260877260878_
                                         _e250568251439_
                                         _hd250569251442_
                                         _tl250570251444_
                                         _e250571251447_
                                         _hd250572251450_
                                         _tl250573251452_
                                         _e250574251455_
                                         _hd250575251458_
                                         _tl250576251460_
                                         _e250577251463_
                                         _hd250578251466_
                                         _tl250579251468_
                                         _e250580251471_
                                         _hd250581251474_
                                         _tl250582251476_
                                         _e250583251479_
                                         _hd250584251482_
                                         _tl250585251484_
                                         _e250586251487_
                                         _hd250587251490_
                                         _tl250588251492_
                                         _e250589251495_
                                         _hd250590251498_
                                         _tl250591251500_
                                         _e250592251503_
                                         _hd250593251506_
                                         _tl250594251508_))
                                    (___match261201261202_
                                     _e250568251439_
                                     _hd250569251442_
                                     _tl250570251444_
                                     _e250571251447_
                                     _hd250572251450_
                                     _tl250573251452_
                                     _e250574251455_
                                     _hd250575251458_
                                     _tl250576251460_
                                     _e250577251463_
                                     _hd250578251466_
                                     _tl250579251468_
                                     _e250580251471_
                                     _hd250581251474_
                                     _tl250582251476_
                                     _e250583251479_
                                     _hd250584251482_
                                     _tl250585251484_
                                     _e250586251487_
                                     _hd250587251490_
                                     _tl250588251492_
                                     _e250589251495_
                                     _hd250590251498_
                                     _tl250591251500_))))
                            (___match261201261202_
                             _e250568251439_
                             _hd250569251442_
                             _tl250570251444_
                             _e250571251447_
                             _hd250572251450_
                             _tl250573251452_
                             _e250574251455_
                             _hd250575251458_
                             _tl250576251460_
                             _e250577251463_
                             _hd250578251466_
                             _tl250579251468_
                             _e250580251471_
                             _hd250581251474_
                             _tl250582251476_
                             _e250583251479_
                             _hd250584251482_
                             _tl250585251484_
                             _e250586251487_
                             _hd250587251490_
                             _tl250588251492_
                             _e250589251495_
                             _hd250590251498_
                             _tl250591251500_))))
                    (___match261139261140_
                     _e250568251439_
                     _hd250569251442_
                     _tl250570251444_
                     _e250571251447_
                     _hd250572251450_
                     _tl250573251452_
                     _e250574251455_
                     _hd250575251458_
                     _tl250576251460_
                     _e250577251463_
                     _hd250578251466_
                     _tl250579251468_
                     _e250580251471_
                     _hd250581251474_
                     _tl250582251476_
                     _e250583251479_
                     _hd250584251482_
                     _tl250585251484_
                     _e250586251487_
                     _hd250587251490_
                     _tl250588251492_))
                (___kont260722260723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont260722260723_))
                                            (___kont260722260723_))
                                        (___kont260722260723_))))
                                (___kont260722260723_))))
                        (___kont260722260723_))
                    (___kont260722260723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont260722260723_))
                                                (___kont260722260723_))
                                            (___kont260722260723_))))
                                    (___kont260722260723_))))
                            (___kont260722260723_))))
                    (___kont260722260723_))))))))))
