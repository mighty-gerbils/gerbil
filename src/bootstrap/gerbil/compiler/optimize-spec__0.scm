(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708289485)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl256971_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp262166 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl256971_ __tmp262166))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256971_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256971_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256971_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256971_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl256971_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx256954_ . _args256956_)
        (let ((__tmp262168
               (lambda ()
                 (declare (not safe))
                 (if (null? _args256956_)
                     (gxc#compile-e__0 _stx256954_)
                     (let ((_arg1256961_ (car _args256956_))
                           (_rest256963_ (cdr _args256956_)))
                       (if (null? _rest256963_)
                           (gxc#compile-e__1 _stx256954_ _arg1256961_)
                           (let ((_arg2256966_ (car _rest256963_))
                                 (_rest256968_ (cdr _rest256963_)))
                             (if (null? _rest256968_)
                                 (gxc#compile-e__2
                                  _stx256954_
                                  _arg1256961_
                                  _arg2256966_)
                                 (apply gxc#compile-e
                                        _stx256954_
                                        _arg1256961_
                                        _arg2256966_
                                        _rest256968_))))))))
              (__tmp262167 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp262168
           gxc#current-compile-methods
           __tmp262167))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl256951_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp262169 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl256951_ __tmp262169))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256951_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl256951_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl256951_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx256934_ . _args256936_)
        (let ((__tmp262171
               (lambda ()
                 (declare (not safe))
                 (if (null? _args256936_)
                     (gxc#compile-e__0 _stx256934_)
                     (let ((_arg1256941_ (car _args256936_))
                           (_rest256943_ (cdr _args256936_)))
                       (if (null? _rest256943_)
                           (gxc#compile-e__1 _stx256934_ _arg1256941_)
                           (let ((_arg2256946_ (car _rest256943_))
                                 (_rest256948_ (cdr _rest256943_)))
                             (if (null? _rest256948_)
                                 (gxc#compile-e__2
                                  _stx256934_
                                  _arg1256941_
                                  _arg2256946_)
                                 (apply gxc#compile-e
                                        _stx256934_
                                        _arg1256941_
                                        _arg2256946_
                                        _rest256948_))))))))
              (__tmp262170 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp262171
           gxc#current-compile-methods
           __tmp262170))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl256931_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp262172 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl256931_ __tmp262172))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256931_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl256931_ '%#call gxc#subst-object-refs-call%))
           _tbl256931_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx256914_ . _args256916_)
        (let ((__tmp262174
               (lambda ()
                 (declare (not safe))
                 (if (null? _args256916_)
                     (gxc#compile-e__0 _stx256914_)
                     (let ((_arg1256921_ (car _args256916_))
                           (_rest256923_ (cdr _args256916_)))
                       (if (null? _rest256923_)
                           (gxc#compile-e__1 _stx256914_ _arg1256921_)
                           (let ((_arg2256926_ (car _rest256923_))
                                 (_rest256928_ (cdr _rest256923_)))
                             (if (null? _rest256928_)
                                 (gxc#compile-e__2
                                  _stx256914_
                                  _arg1256921_
                                  _arg2256926_)
                                 (apply gxc#compile-e
                                        _stx256914_
                                        _arg1256921_
                                        _arg2256926_
                                        _rest256928_))))))))
              (__tmp262173 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp262174
           gxc#current-compile-methods
           __tmp262173))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx253584_)
        (letrec ((_generate-method-bind253586_
                  (lambda (_$t256908_ _id256909_ _$id256910_)
                    (let ((_$tmp256912_
                           (let ((__tmp262175 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp262175))))
                      (let ((__tmp262223
                             (let ()
                               (declare (not safe))
                               (cons _$id256910_ '())))
                            (__tmp262176
                             (let ((__tmp262177
                                    (let ((__tmp262178
                                           (let ((__tmp262221
                                                  (let ((__tmp262222
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262222)))
                                                 (__tmp262179
                                                  (let ((__tmp262180
                                                         (let ((__tmp262181
                                                                (let ((__tmp262182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262183
                                      (let ((__tmp262184
                                             (let ((__tmp262204
                                                    (let ((__tmp262205
                                                           (let ((__tmp262220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp256912_ '())))
                         (__tmp262206
                          (let ((__tmp262207
                                 (let ((__tmp262208
                                        (let ((__tmp262218
                                               (let ((__tmp262219
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp262219)))
                                              (__tmp262209
                                               (let ((__tmp262216
                                                      (let ((__tmp262217
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t256908_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp262217)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp262210
                                                      (let ((__tmp262214
                                                             (let ((__tmp262215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp262215)))
                    (__tmp262211
                     (let ((__tmp262212
                            (let ((__tmp262213
                                   (let ()
                                     (declare (not safe))
                                     (cons _id256909_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp262213))))
                       (declare (not safe))
                       (cons __tmp262212 '()))))
                (declare (not safe))
                (cons __tmp262214 __tmp262211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp262216
                                                       __tmp262210))))
                                          (declare (not safe))
                                          (cons __tmp262218 __tmp262209))))
                                   (declare (not safe))
                                   (cons '%#call __tmp262208))))
                            (declare (not safe))
                            (cons __tmp262207 '()))))
                     (declare (not safe))
                     (cons __tmp262220 __tmp262206))))
              (declare (not safe))
              (cons __tmp262205 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262185
                                                    (let ((__tmp262186
                                                           (let ((__tmp262187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262202
                                 (let ((__tmp262203
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp256912_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp262203)))
                                (__tmp262188
                                 (let ((__tmp262200
                                        (let ((__tmp262201
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp256912_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp262201)))
                                       (__tmp262189
                                        (let ((__tmp262190
                                               (let ((__tmp262191
                                                      (let ((__tmp262198
                                                             (let ((__tmp262199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp262199)))
                    (__tmp262192
                     (let ((__tmp262196
                            (let ((__tmp262197
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp262197)))
                           (__tmp262193
                            (let ((__tmp262194
                                   (let ((__tmp262195
                                          (let ()
                                            (declare (not safe))
                                            (cons _id256909_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp262195))))
                              (declare (not safe))
                              (cons __tmp262194 '()))))
                       (declare (not safe))
                       (cons __tmp262196 __tmp262193))))
                (declare (not safe))
                (cons __tmp262198 __tmp262192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp262191))))
                                          (declare (not safe))
                                          (cons __tmp262190 '()))))
                                   (declare (not safe))
                                   (cons __tmp262200 __tmp262189))))
                            (declare (not safe))
                            (cons __tmp262202 __tmp262188))))
                     (declare (not safe))
                     (cons '%#if __tmp262187))))
              (declare (not safe))
              (cons __tmp262186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp262204
                                                     __tmp262185))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp262184))))
                                 (declare (not safe))
                                 (cons __tmp262183 '()))))
                          (declare (not safe))
                          (cons '() __tmp262182))))
                   (declare (not safe))
                   (cons '%#lambda __tmp262181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262180 '()))))
                                             (declare (not safe))
                                             (cons __tmp262221 __tmp262179))))
                                      (declare (not safe))
                                      (cons '%#call __tmp262178))))
                               (declare (not safe))
                               (cons __tmp262177 '()))))
                        (declare (not safe))
                        (cons __tmp262223 __tmp262176)))))
                 (_generate-slot-bind253587_
                  (lambda (_$t256902_ _id256903_ _$id256904_)
                    (let ((_$tmp256906_
                           (let ((__tmp262224 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp262224))))
                      (let ((__tmp262261
                             (let ()
                               (declare (not safe))
                               (cons _$id256904_ '())))
                            (__tmp262225
                             (let ((__tmp262226
                                    (let ((__tmp262227
                                           (let ((__tmp262247
                                                  (let ((__tmp262248
                                                         (let ((__tmp262260
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp256906_ '())))
                       (__tmp262249
                        (let ((__tmp262250
                               (let ((__tmp262251
                                      (let ((__tmp262258
                                             (let ((__tmp262259
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp262259)))
                                            (__tmp262252
                                             (let ((__tmp262256
                                                    (let ((__tmp262257
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t256902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp262257)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262253
                                                    (let ((__tmp262254
                                                           (let ((__tmp262255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id256903_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp262255))))
              (declare (not safe))
              (cons __tmp262254 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp262256
                                                     __tmp262253))))
                                        (declare (not safe))
                                        (cons __tmp262258 __tmp262252))))
                                 (declare (not safe))
                                 (cons '%#call __tmp262251))))
                          (declare (not safe))
                          (cons __tmp262250 '()))))
                   (declare (not safe))
                   (cons __tmp262260 __tmp262249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262248 '())))
                                                 (__tmp262228
                                                  (let ((__tmp262229
                                                         (let ((__tmp262230
                                                                (let ((__tmp262245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262246
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp256906_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp262246)))
                              (__tmp262231
                               (let ((__tmp262243
                                      (let ((__tmp262244
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp256906_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp262244)))
                                     (__tmp262232
                                      (let ((__tmp262233
                                             (let ((__tmp262234
                                                    (let ((__tmp262241
                                                           (let ((__tmp262242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp262242)))
                  (__tmp262235
                   (let ((__tmp262239
                          (let ((__tmp262240
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp262240)))
                         (__tmp262236
                          (let ((__tmp262237
                                 (let ((__tmp262238
                                        (let ()
                                          (declare (not safe))
                                          (cons _id256903_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp262238))))
                            (declare (not safe))
                            (cons __tmp262237 '()))))
                     (declare (not safe))
                     (cons __tmp262239 __tmp262236))))
              (declare (not safe))
              (cons __tmp262241 __tmp262235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp262234))))
                                        (declare (not safe))
                                        (cons __tmp262233 '()))))
                                 (declare (not safe))
                                 (cons __tmp262243 __tmp262232))))
                          (declare (not safe))
                          (cons __tmp262245 __tmp262231))))
                   (declare (not safe))
                   (cons '%#if __tmp262230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262229 '()))))
                                             (declare (not safe))
                                             (cons __tmp262247 __tmp262228))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp262227))))
                               (declare (not safe))
                               (cons __tmp262226 '()))))
                        (declare (not safe))
                        (cons __tmp262261 __tmp262225)))))
                 (_generate-class-check-bind253588_
                  (lambda (_$t256898_ _class-type256899_ _$class-type256900_)
                    (let ((__tmp262273
                           (let ()
                             (declare (not safe))
                             (cons _$class-type256900_ '())))
                          (__tmp262262
                           (let ((__tmp262263
                                  (let ((__tmp262264
                                         (let ((__tmp262271
                                                (let ((__tmp262272
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp262272)))
                                               (__tmp262265
                                                (let ((__tmp262269
                                                       (let ((__tmp262270
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t256898_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262270)))
              (__tmp262266
               (let ((__tmp262267
                      (let ((__tmp262268
                             (let ()
                               (declare (not safe))
                               (cons _class-type256899_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp262268))))
                 (declare (not safe))
                 (cons __tmp262267 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262269
                                                        __tmp262266))))
                                           (declare (not safe))
                                           (cons __tmp262271 __tmp262265))))
                                    (declare (not safe))
                                    (cons '%#call __tmp262264))))
                             (declare (not safe))
                             (cons __tmp262263 '()))))
                      (declare (not safe))
                      (cons __tmp262273 __tmp262262))))
                 (_generate-struct-check-bind253589_
                  (lambda (_$t256894_ _class-type256895_ _$class-type256896_)
                    (let ((__tmp262285
                           (let ()
                             (declare (not safe))
                             (cons _$class-type256896_ '())))
                          (__tmp262274
                           (let ((__tmp262275
                                  (let ((__tmp262276
                                         (let ((__tmp262283
                                                (let ((__tmp262284
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp262284)))
                                               (__tmp262277
                                                (let ((__tmp262281
                                                       (let ((__tmp262282
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t256894_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262282)))
              (__tmp262278
               (let ((__tmp262279
                      (let ((__tmp262280
                             (let ()
                               (declare (not safe))
                               (cons _class-type256895_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp262280))))
                 (declare (not safe))
                 (cons __tmp262279 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262281
                                                        __tmp262278))))
                                           (declare (not safe))
                                           (cons __tmp262283 __tmp262277))))
                                    (declare (not safe))
                                    (cons '%#call __tmp262276))))
                             (declare (not safe))
                             (cons __tmp262275 '()))))
                      (declare (not safe))
                      (cons __tmp262285 __tmp262274))))
                 (_generate-specializer-impl253590_
                  (lambda (_$t256843_
                           _methods-bind256844_
                           _slots-bind256845_
                           _class-check-bind256846_
                           _struct-check-bind256847_
                           _specializer-impl256848_
                           _lifted-specializer-id256849_
                           _unchecked-specializer-impl256850_)
                    (let ((__tmp262286
                           (let ((__tmp262287
                                  (let ((__tmp262313
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t256843_ '())))
                                        (__tmp262288
                                         (let ((__tmp262289
                                                (let ((__tmp262290
                                                       (let ((__tmp262310
                                                              (let ((__tmp262311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp262312
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind256847_
                                              _class-check-bind256846_))))
                               (declare (not safe))
                               (foldr1 cons __tmp262312 _slots-bind256845_))))
                        (declare (not safe))
                        (foldr1 cons __tmp262311 _methods-bind256844_)))
                     (__tmp262291
                      (let ((__tmp262292
                             (if (or _lifted-specializer-id256849_
                                     _unchecked-specializer-impl256850_)
                                 (let* ((_$specializer256855_
                                         (let ((__tmp262293
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp262293)))
                                        (__tmp262294
                                         (let ((__tmp262306
                                                (let ((__tmp262307
                                                       (let ((__tmp262309
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer256855_ '())))
                     (__tmp262308
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl256848_ '()))))
                 (declare (not safe))
                 (cons __tmp262309 __tmp262308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262307 '())))
                                               (__tmp262295
                                                (let ((__tmp262296
                                                       (let _recur256857_ ((_rest256859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind256847_)))
                 (let* ((_rest256860256868_ _rest256859_)
                        (_else256862256876_
                         (lambda ()
                           (if _lifted-specializer-id256849_
                               (let ((__tmp262297
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id256849_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp262297))
                               _unchecked-specializer-impl256850_)))
                        (_K256864256882_
                         (lambda (_rest256879_ _checkq256880_)
                           (let ((__tmp262298
                                  (let ((__tmp262304
                                         (let ((__tmp262305
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq256880_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp262305)))
                                        (__tmp262299
                                         (let ((__tmp262303
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur256857_
                                                   _rest256879_)))
                                               (__tmp262300
                                                (let ((__tmp262301
                                                       (let ((__tmp262302
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer256855_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262301 '()))))
                                           (declare (not safe))
                                           (cons __tmp262303 __tmp262300))))
                                    (declare (not safe))
                                    (cons __tmp262304 __tmp262299))))
                             (declare (not safe))
                             (cons '%#if __tmp262298)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest256860256868_))
                       (let ((_hd256865256885_
                              (let ()
                                (declare (not safe))
                                (##car _rest256860256868_)))
                             (_tl256866256887_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest256860256868_))))
                         (let* ((_checkq256890_ _hd256865256885_)
                                (_rest256892_ _tl256866256887_))
                           (declare (not safe))
                           (_K256864256882_ _rest256892_ _checkq256890_)))
                       (let () (declare (not safe)) (_else256862256876_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262296 '()))))
                                           (declare (not safe))
                                           (cons __tmp262306 __tmp262295))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp262294))
                                 _specializer-impl256848_)))
                        (declare (not safe))
                        (cons __tmp262292 '()))))
                 (declare (not safe))
                 (cons __tmp262310 __tmp262291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp262290))))
                                           (declare (not safe))
                                           (cons __tmp262289 '()))))
                                    (declare (not safe))
                                    (cons __tmp262313 __tmp262288))))
                             (declare (not safe))
                             (cons '%#lambda __tmp262287))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262286 _stx253584_))))
                 (_generate-specializer-def253591_
                  (lambda (_id256837_
                           _specializer-id256838_
                           _specializer-impl256839_
                           _lifted-specializer-id256840_
                           _unchecked-specializer-impl256841_)
                    (let ((__tmp262314
                           (let ((__tmp262315
                                  (let ((__tmp262316
                                         (let ((__tmp262336
                                                (let ((__tmp262337
                                                       (let ((__tmp262338
                                                              (let ((__tmp262340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id256838_ '())))
                            (__tmp262339
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl256839_ '()))))
                        (declare (not safe))
                        (cons __tmp262340 __tmp262339))))
                 (declare (not safe))
                 (cons '%#define-values __tmp262338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262337
                                                   _stx253584_)))
                                               (__tmp262317
                                                (let ((__tmp262324
                                                       (let ((__tmp262325
                                                              (let ((__tmp262326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp262327
                                    (let ((__tmp262334
                                           (let ((__tmp262335
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp262335)))
                                          (__tmp262328
                                           (let ((__tmp262332
                                                  (let ((__tmp262333
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id256837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262333)))
                                                 (__tmp262329
                                                  (let ((__tmp262330
                                                         (let ((__tmp262331
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id256838_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp262331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262330 '()))))
                                             (declare (not safe))
                                             (cons __tmp262332 __tmp262329))))
                                      (declare (not safe))
                                      (cons __tmp262334 __tmp262328))))
                               (declare (not safe))
                               (cons '%#call __tmp262327))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp262326 _stx253584_))))
                 (declare (not safe))
                 (cons __tmp262325 '())))
              (__tmp262318
               (if _lifted-specializer-id256840_
                   (let ((__tmp262319
                          (let ((__tmp262320
                                 (let ((__tmp262321
                                        (let ((__tmp262323
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id256840_
                                                       '())))
                                              (__tmp262322
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl256841_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp262323 __tmp262322))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp262321))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp262320 _stx253584_))))
                     (declare (not safe))
                     (cons __tmp262319 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp262324
                                                          __tmp262318))))
                                           (declare (not safe))
                                           (cons __tmp262336 __tmp262317))))
                                    (declare (not safe))
                                    (cons _stx253584_ __tmp262316))))
                             (declare (not safe))
                             (cons '%#begin __tmp262315))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262314 _stx253584_)))))
          (let* ((___stx261127261128_ _stx253584_)
                 (_g253594253614_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx261127261128_)))))
            (let ((___kont261129261130_
                   (lambda (_L253658_ _L253659_)
                     (let ((_method-calls253678_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs253679_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check253680_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check253681_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert253682_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty253683_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?253685_
                                 (lambda ()
                                   (if (let ((__tmp262345
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls253678_))))
                                         (declare (not safe))
                                         (fxzero? __tmp262345))
                                       (if (let ((__tmp262344
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs253679_))))
                                             (declare (not safe))
                                             (fxzero? __tmp262344))
                                           (if (let ((__tmp262343
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check253680_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp262343))
                                               (if (let ((__tmp262342
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check253681_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp262342))
                                                   (let ((__tmp262341
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert253682_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp262341))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?253686_
                                 (lambda ()
                                   (let ((_$e256830_
                                          (let ((__tmp262346
                                                 (let ((__tmp262347
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check253681_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp262347))))
                                            (declare (not safe))
                                            (not __tmp262346))))
                                     (if _$e256830_
                                         _$e256830_
                                         (let ((__tmp262348
                                                (let ((__tmp262349
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert253682_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp262349))))
                                           (declare (not safe))
                                           (not __tmp262348))))))
                                (_lift-unchecked-specializer?253687_
                                 (lambda ()
                                   (if (let ((__tmp262352
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls253678_))))
                                         (declare (not safe))
                                         (fxzero? __tmp262352))
                                       (if (let ((__tmp262351
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs253679_))))
                                             (declare (not safe))
                                             (fxzero? __tmp262351))
                                           (let ((__tmp262350
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check253680_))))
                                             (declare (not safe))
                                             (fxzero? __tmp262350))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L253658_))
                             (let* ((___stx261041261042_ _L253658_)
                                    (_g254200254218_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx261041261042_)))))
                               (let ((___kont261043261044_
                                      (lambda (_L254254_ _L254255_ _L254256_)
                                        (for-each
                                         (lambda (_g254271254273_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g254271254273_
                                              _L254256_
                                              _method-calls253678_
                                              _slot-refs253679_
                                              _class-type-check253680_
                                              _struct-type-check253681_
                                              _struct-type-assert253682_)))
                                         _L254254_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?253685_))
                                            _stx253584_
                                            (let* ((_specializer-id254282_
                                                    (let* ((_id254276_
                                                            (let ((__tmp262502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L253659_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp262502 '"::specialize")))
                   (_specializer-id254279_
                    (let ((__tmp262503
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx253584_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id254276_ __tmp262503))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id254279_))
              _specializer-id254279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id254289_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?253687_))
                                                        (let* ((_id254284_
                                                                (let ((__tmp262504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L253659_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp262504
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id254286_
                        (let ((__tmp262505
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx253584_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id254284_ __tmp262505))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id254286_))
                  _lifted-specializer-id254286_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t254291_
                                                    (let ((__tmp262506
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp262506)))
                                                   (_methods254293_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls253678_)))
                                                   (_$methods254297_
                                                    (map (lambda (_id254295_)
                                                           (let ((__tmp262507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254295_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp262507)))
                 _methods254293_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262508_
                                                    (for-each
                                                     (lambda (_g254298254301_
                                                              _g254299254303_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls253678_
                                                          _g254298254301_
                                                          _g254299254303_)))
                                                     _methods254293_
                                                     _$methods254297_))
                                                   (_methods-bind254314_
                                                    (map (lambda (_g254306254309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254307254311_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind253586_
                      _$t254291_
                      _g254306254309_
                      _g254307254311_)))
                 _methods254293_
                 _$methods254297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots254316_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs253679_)))
                                                   (_$slots254320_
                                                    (map (lambda (_id254318_)
                                                           (let ((__tmp262509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254318_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp262509)))
                 _slots254316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262510_
                                                    (for-each
                                                     (lambda (_g254321254324_
                                                              _g254322254326_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs253679_
                                                          _g254321254324_
                                                          _g254322254326_)))
                                                     _slots254316_
                                                     _$slots254320_))
                                                   (_slots-bind254337_
                                                    (map (lambda (_g254329254332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254330254334_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind253587_
                      _$t254291_
                      _g254329254332_
                      _g254330254334_)))
                 _slots254316_
                 _$slots254320_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check254339_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check253680_)))
                                                   (_$class-check254342_
                                                    (map (lambda (_g262511_)
                                                           (let ((__tmp262512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp262512)))
                 _class-check254339_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262513_
                                                    (for-each
                                                     (lambda (_g254343254346_
                                                              _g254344254348_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check253680_
                                                          _g254343254346_
                                                          _g254344254348_)))
                                                     _class-check254339_
                                                     _$class-check254342_))
                                                   (_class-check-bind254359_
                                                    (map (lambda (_g254351254354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254352254356_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind253588_
                      _$t254291_
                      _g254351254354_
                      _g254352254356_)))
                 _class-check254339_
                 _$class-check254342_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all254361_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check253681_
                                                       _struct-type-assert253682_)))
                                                   (_struct-check254363_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all254361_)))
                                                   (_$struct-check254366_
                                                    (map (lambda (_g262514_)
                                                           (let ((__tmp262515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp262515)))
                 _struct-check254363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g262516_
                                                    (for-each
                                                     (lambda (_g254367254370_
                                                              _g254368254372_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all254361_
                                                          _g254367254370_
                                                          _g254368254372_)))
                                                     _struct-check254363_
                                                     _$struct-check254366_))
                                                   (_struct-check-bind254383_
                                                    (map (lambda (_g254375254378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254376254380_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind253589_
                      _$t254291_
                      _g254375254378_
                      _g254376254380_)))
                 _struct-check254363_
                 _$struct-check254366_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl254394_
                                                    (lambda (_struct-type-check1254385_
                                                             _struct-type-check2254386_)
                                                      (let* ((_specializer-body254392_
                                                              (map (lambda (_g254387254389_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g254387254389_
                                _L254256_
                                _$t254291_
                                _method-calls253678_
                                _slot-refs253679_
                                _class-type-check253680_
                                _struct-type-check1254385_
                                _struct-type-check2254386_)))
                           _L254254_))
                     (__tmp262517
                      (let ((__tmp262518
                             (let ((__tmp262519
                                    (let ()
                                      (declare (not safe))
                                      (cons _L254256_ _L254255_))))
                               (declare (not safe))
                               (cons __tmp262519 _specializer-body254392_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp262518))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp262517 _stx253584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl254396_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl254394_
                                                       _struct-check-all254361_
                                                       _empty253683_)))
                                                   (_unchecked-specializer-impl254398_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?253686_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl254394_
                                                           _empty253683_
                                                           _struct-check-all254361_))
                                                        '#f))
                                                   (_specializer-impl254400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl253590_
                                                       _$t254291_
                                                       _methods-bind254314_
                                                       _slots-bind254337_
                                                       _class-check-bind254359_
                                                       _struct-check-bind254383_
                                                       _specializer-impl254396_
                                                       _lifted-specializer-id254289_
                                                       _unchecked-specializer-impl254398_))))
                                              (let ((__tmp262521
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L253659_)))
                                                    (__tmp262520
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id254282_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp262521
                                                 '" => "
                                                 __tmp262520))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def253591_
                                                 _L253659_
                                                 _specializer-id254282_
                                                 _specializer-impl254400_
                                                 _lifted-specializer-id254289_
                                                 _unchecked-specializer-impl254398_))))))
                                     (___kont261045261046_
                                      (lambda () _stx253584_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx261041261042_))
                                     (let ((_e254207254230_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx261041261042_))))
                                       (let ((_tl254205254235_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e254207254230_)))
                                             (_hd254206254233_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e254207254230_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl254205254235_))
                                             (let ((_e254210254238_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl254205254235_))))
                                               (let ((_tl254208254243_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e254210254238_)))
                                                     (_hd254209254241_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e254210254238_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd254209254241_))
                                                     (let ((_e254213254246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd254209254241_))))
                                                       (let ((_tl254211254251_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e254213254246_)))
                     (_hd254212254249_
                      (let () (declare (not safe)) (##car _e254213254246_))))
                 (___kont261043261044_
                  _tl254208254243_
                  _tl254211254251_
                  _hd254212254249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont261045261046_))))
                                             (___kont261045261046_))))
                                     (___kont261045261046_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L253658_))
                                 (let* ((_g254406254425_
                                         (lambda (_g254407254422_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g254407254422_))))
                                        (_g254405254776_
                                         (lambda (_g254407254428_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g254407254428_))
                                               (let ((_e254411254430_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g254407254428_))))
                                                 (let ((_hd254410254433_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254411254430_)))
                                                       (_tl254409254435_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254411254430_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl254409254435_))
                                                       (let ((_g262478_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl254409254435_ '0))))
                 (begin
                   (let ((_g262479_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g262478_)
                                (##vector-length _g262478_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g262479_ 2)))
                         (error "Context expects 2 values" _g262479_)))
                   (let ((_target254412254438_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g262478_ 0)))
                         (_tl254414254440_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g262478_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl254414254440_))
                         (letrec ((_loop254415254443_
                                   (lambda (_hd254413254446_
                                            _clause254419254448_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd254413254446_))
                                         (let ((_e254416254451_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd254413254446_))))
                                           (let ((_lp-hd254417254454_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e254416254451_)))
                                                 (_lp-tl254418254456_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e254416254451_))))
                                             (let ((__tmp262501
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd254417254454_
                                                            _clause254419254448_))))
                                               (declare (not safe))
                                               (_loop254415254443_
                                                _lp-tl254418254456_
                                                __tmp262501))))
                                         (let ((_clause254420254459_
                                                (reverse _clause254419254448_)))
                                           ((lambda (_L254462_)
                                              (for-each
                                               (lambda (_clause254475_)
                                                 (let* ((___stx261067261068_
                                                         _clause254475_)
                                                        (_g254478254493_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx261067261068_)))))
                                                   (let ((___kont261069261070_
                                                          (lambda (_L254521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L254522_
                           _L254523_)
                    (for-each
                     (lambda (_g254538254540_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g254538254540_
                          _L254523_
                          _method-calls253678_
                          _slot-refs253679_
                          _class-type-check253680_
                          _struct-type-check253681_
                          _struct-type-assert253682_)))
                     _L254521_)))
                 (___kont261071261072_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx261067261068_))
                                                         (let ((_e254485254505_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx261067261068_))))
                   (let ((_tl254483254510_
                          (let ()
                            (declare (not safe))
                            (##cdr _e254485254505_)))
                         (_hd254484254508_
                          (let ()
                            (declare (not safe))
                            (##car _e254485254505_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd254484254508_))
                         (let ((_e254488254513_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd254484254508_))))
                           (let ((_tl254486254518_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e254488254513_)))
                                 (_hd254487254516_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e254488254513_))))
                             (___kont261069261070_
                              _tl254483254510_
                              _tl254486254518_
                              _hd254487254516_)))
                         (___kont261071261072_))))
                 (___kont261071261072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp262480
                                                      (lambda (_g254545254548_
                                                               _g254546254550_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g254545254548_
                                                                _g254546254550_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp262480
                                                         '()
                                                         _L254462_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?253685_))
                                                  _stx253584_
                                                  (let* ((_specializer-id254559_
                                                          (let* ((_id254553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262481
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253659_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp262481 '"::specialize")))
                         (_specializer-id254556_
                          (let ((__tmp262482
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253584_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id254553_ __tmp262482))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id254556_))
                    _specializer-id254556_))
                 (_lifted-specializer-id254566_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?253687_))
                      (let* ((_id254561_
                              (let ((__tmp262483
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L253659_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp262483
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id254563_
                              (let ((__tmp262484
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx253584_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id254561_
                                 __tmp262484))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id254563_))
                        _lifted-specializer-id254563_)
                      '#f))
                 (_$t254568_
                  (let ((__tmp262485 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp262485)))
                 (_methods254570_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls253678_)))
                 (_$methods254574_
                  (map (lambda (_id254572_)
                         (let ((__tmp262486 (gensym _id254572_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262486)))
                       _methods254570_))
                 (_g262487_
                  (for-each
                   (lambda (_g254575254578_ _g254576254580_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls253678_
                        _g254575254578_
                        _g254576254580_)))
                   _methods254570_
                   _$methods254574_))
                 (_methods-bind254591_
                  (map (lambda (_g254583254586_ _g254584254588_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind253586_
                            _$t254568_
                            _g254583254586_
                            _g254584254588_)))
                       _methods254570_
                       _$methods254574_))
                 (_slots254593_
                  (let () (declare (not safe)) (hash-keys _slot-refs253679_)))
                 (_$slots254597_
                  (map (lambda (_id254595_)
                         (let ((__tmp262488 (gensym _id254595_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262488)))
                       _slots254593_))
                 (_g262489_
                  (for-each
                   (lambda (_g254598254601_ _g254599254603_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs253679_
                        _g254598254601_
                        _g254599254603_)))
                   _slots254593_
                   _$slots254597_))
                 (_slots-bind254614_
                  (map (lambda (_g254606254609_ _g254607254611_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind253587_
                            _$t254568_
                            _g254606254609_
                            _g254607254611_)))
                       _slots254593_
                       _$slots254597_))
                 (_class-check254616_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check253680_)))
                 (_$class-check254619_
                  (map (lambda (_g262490_)
                         (let ((__tmp262491 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262491)))
                       _class-check254616_))
                 (_g262492_
                  (for-each
                   (lambda (_g254620254623_ _g254621254625_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check253680_
                        _g254620254623_
                        _g254621254625_)))
                   _class-check254616_
                   _$class-check254619_))
                 (_class-check-bind254636_
                  (map (lambda (_g254628254631_ _g254629254633_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind253588_
                            _$t254568_
                            _g254628254631_
                            _g254629254633_)))
                       _class-check254616_
                       _$class-check254619_))
                 (_struct-check-all254638_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check253681_
                     _struct-type-assert253682_)))
                 (_struct-check254640_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all254638_)))
                 (_$struct-check254643_
                  (map (lambda (_g262493_)
                         (let ((__tmp262494 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262494)))
                       _struct-check254640_))
                 (_g262495_
                  (for-each
                   (lambda (_g254644254647_ _g254645254649_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all254638_
                        _g254644254647_
                        _g254645254649_)))
                   _struct-check254640_
                   _$struct-check254643_))
                 (_struct-check-bind254660_
                  (map (lambda (_g254652254655_ _g254653254657_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind253589_
                            _$t254568_
                            _g254652254655_
                            _g254653254657_)))
                       _struct-check254640_
                       _$struct-check254643_))
                 (_make-specializer-impl254767_
                  (lambda (_struct-type-check1254662_
                           _struct-type-check2254663_)
                    (let* ((_specializer-clauses254765_
                            (map (lambda (_clause254665_)
                                   (let* ((___stx261087261088_ _clause254665_)
                                          (_g254668254683_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx261087261088_)))))
                                     (let ((___kont261089261090_
                                            (lambda (_L254711_
                                                     _L254712_
                                                     _L254713_)
                                              (let* ((_body254753_
                                                      (map (lambda (_g254748254750_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g254748254750_
                        _L254713_
                        _$t254568_
                        _method-calls253678_
                        _slot-refs253679_
                        _class-type-check253680_
                        _struct-type-check1254662_
                        _struct-type-check2254663_)))
                   _L254711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp262496
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L254713_
                                                              _L254712_))))
                                                (declare (not safe))
                                                (cons __tmp262496
                                                      _body254753_))))
                                           (___kont261091261092_
                                            (lambda () _clause254665_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx261087261088_))
                                           (let ((_e254675254695_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx261087261088_))))
                                             (let ((_tl254673254700_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254675254695_)))
                                                   (_hd254674254698_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254675254695_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd254674254698_))
                                                   (let ((_e254678254703_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd254674254698_))))
                                                     (let ((_tl254676254708_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254678254703_)))
                                                           (_hd254677254706_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254678254703_))))
                                                       (___kont261089261090_
                                                        _tl254673254700_
                                                        _tl254676254708_
                                                        _hd254677254706_)))
                                                   (___kont261091261092_))))
                                           (___kont261091261092_)))))
                                 (let ((__tmp262497
                                        (lambda (_g254757254760_
                                                 _g254758254762_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g254757254760_
                                                  _g254758254762_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp262497 '() _L254462_))))
                           (__tmp262498
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses254765_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262498 _stx253584_))))
                 (_specializer-impl254769_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl254767_
                     _struct-check-all254638_
                     _empty253683_)))
                 (_unchecked-specializer-impl254771_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253686_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl254767_
                         _empty253683_
                         _struct-check-all254638_))
                      '#f))
                 (_specializer-impl254773_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl253590_
                     _$t254568_
                     _methods-bind254591_
                     _slots-bind254614_
                     _class-check-bind254636_
                     _struct-check-bind254660_
                     _specializer-impl254769_
                     _lifted-specializer-id254566_
                     _unchecked-specializer-impl254771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp262500
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253659_)))
                                                          (__tmp262499
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id254559_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp262500
                                                       '" => "
                                                       __tmp262499))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def253591_
                                                       _L253659_
                                                       _specializer-id254559_
                                                       _specializer-impl254773_
                                                       _lifted-specializer-id254566_
                                                       _unchecked-specializer-impl254771_)))))
                                            _clause254420254459_))))))
                           (let ()
                             (declare (not safe))
                             (_loop254415254443_ _target254412254438_ '())))
                         (let ()
                           (declare (not safe))
                           (_g254406254425_ _g254407254428_))))))
               (let ()
                 (declare (not safe))
                 (_g254406254425_ _g254407254428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254406254425_
                                                  _g254407254428_))))))
                                   (declare (not safe))
                                   (_g254405254776_ _L253658_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L253658_))
                                     (let* ((_g254779254809_
                                             (lambda (_g254780254806_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g254780254806_))))
                                            (_g254778255497_
                                             (lambda (_g254780254812_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g254780254812_))
                                                   (let ((_e254786254814_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g254780254812_))))
                                                     (let ((_hd254785254817_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254786254814_)))
                                                           (_tl254784254819_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254786254814_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl254784254819_))
                                                           (let ((_e254789254822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl254784254819_))))
                     (let ((_hd254788254825_
                            (let ()
                              (declare (not safe))
                              (##car _e254789254822_)))
                           (_tl254787254827_
                            (let ()
                              (declare (not safe))
                              (##cdr _e254789254822_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd254788254825_))
                           (let ((_e254792254830_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd254788254825_))))
                             (let ((_hd254791254833_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e254792254830_)))
                                   (_tl254790254835_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e254792254830_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd254791254833_))
                                   (let ((_e254795254838_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd254791254833_))))
                                     (let ((_hd254794254841_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e254795254838_)))
                                           (_tl254793254843_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e254795254838_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd254794254841_))
                                           (let ((_e254798254846_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd254794254841_))))
                                             (let ((_hd254797254849_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254798254846_)))
                                                   (_tl254796254851_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254798254846_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl254796254851_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl254793254843_))
                                                       (let ((_e254801254854_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl254793254843_))))
                 (let ((_hd254800254857_
                        (let () (declare (not safe)) (##car _e254801254854_)))
                       (_tl254799254859_
                        (let () (declare (not safe)) (##cdr _e254801254854_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl254799254859_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl254790254835_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl254787254827_))
                               (let ((_e254804254862_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl254787254827_))))
                                 (let ((_hd254803254865_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e254804254862_)))
                                       (_tl254802254867_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e254804254862_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl254802254867_))
                                       ((lambda (_L254870_ _L254871_ _L254872_)
                                          (let* ((_g254895254913_
                                                  (lambda (_g254896254910_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g254896254910_))))
                                                 (_g254894254964_
                                                  (lambda (_g254896254916_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g254896254916_))
                                                        (let ((_e254902254918_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g254896254916_))))
                  (let ((_hd254901254921_
                         (let () (declare (not safe)) (##car _e254902254918_)))
                        (_tl254900254923_
                         (let ()
                           (declare (not safe))
                           (##cdr _e254902254918_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl254900254923_))
                        (let ((_e254905254926_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl254900254923_))))
                          (let ((_hd254904254929_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e254905254926_)))
                                (_tl254903254931_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e254905254926_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd254904254929_))
                                (let ((_e254908254934_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd254904254929_))))
                                  (let ((_hd254907254937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e254908254934_)))
                                        (_tl254906254939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e254908254934_))))
                                    ((lambda (_L254942_ _L254943_ _L254944_)
                                       (for-each
                                        (lambda (_g254959254961_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g254959254961_
                                             _L254944_
                                             _method-calls253678_
                                             _slot-refs253679_
                                             _class-type-check253680_
                                             _struct-type-check253681_
                                             _struct-type-assert253682_)))
                                        _L254942_))
                                     _tl254903254931_
                                     _tl254906254939_
                                     _hd254907254937_)))
                                (let ()
                                  (declare (not safe))
                                  (_g254895254913_ _g254896254916_)))))
                        (let ()
                          (declare (not safe))
                          (_g254895254913_ _g254896254916_)))))
                (let ()
                  (declare (not safe))
                  (_g254895254913_ _g254896254916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g254894254964_ _L254871_))
                                          (let* ((_g254967254986_
                                                  (lambda (_g254968254983_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g254968254983_))))
                                                 (_g254966255105_
                                                  (lambda (_g254968254989_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g254968254989_))
                                                        (let ((_e254972254991_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g254968254989_))))
                  (let ((_hd254971254994_
                         (let () (declare (not safe)) (##car _e254972254991_)))
                        (_tl254970254996_
                         (let ()
                           (declare (not safe))
                           (##cdr _e254972254991_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl254970254996_))
                        (let ((_g262441_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl254970254996_
                                  '0))))
                          (begin
                            (let ((_g262442_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g262441_)
                                         (##vector-length _g262441_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g262442_ 2)))
                                  (error "Context expects 2 values"
                                         _g262442_)))
                            (let ((_target254973254999_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g262441_ 0)))
                                  (_tl254975255001_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g262441_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl254975255001_))
                                  (letrec ((_loop254976255004_
                                            (lambda (_hd254974255007_
                                                     _clause254980255009_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd254974255007_))
                                                  (let ((_e254977255012_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd254974255007_))))
                                                    (let ((_lp-hd254978255015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e254977255012_)))
                                                          (_lp-tl254979255017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e254977255012_))))
                                                      (let ((__tmp262444
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd254978255015_ _clause254980255009_))))
                (declare (not safe))
                (_loop254976255004_ _lp-tl254979255017_ __tmp262444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause254981255020_
                                                         (reverse _clause254980255009_)))
                                                    ((lambda (_L255023_)
                                                       (for-each
                                                        (lambda (_clause255036_)
                                                          (let* ((_g255038255053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g255039255050_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g255039255050_))))
                         (_g255037255095_
                          (lambda (_g255039255056_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g255039255056_))
                                (let ((_e255045255058_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g255039255056_))))
                                  (let ((_hd255044255061_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255045255058_)))
                                        (_tl255043255063_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255045255058_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255044255061_))
                                        (let ((_e255048255066_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255044255061_))))
                                          (let ((_hd255047255069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255048255066_)))
                                                (_tl255046255071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255048255066_))))
                                            ((lambda (_L255074_
                                                      _L255075_
                                                      _L255076_)
                                               (for-each
                                                (lambda (_g255090255092_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g255090255092_
                                                     _L255076_
                                                     _method-calls253678_
                                                     _slot-refs253679_
                                                     _class-type-check253680_
                                                     _struct-type-check253681_
                                                     _struct-type-assert253682_)))
                                                _L255074_))
                                             _tl255043255063_
                                             _tl255046255071_
                                             _hd255047255069_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255038255053_ _g255039255056_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255038255053_ _g255039255056_))))))
                    (declare (not safe))
                    (_g255037255095_ _clause255036_)))
                (let ((__tmp262443
                       (lambda (_g255097255100_ _g255098255102_)
                         (let ()
                           (declare (not safe))
                           (cons _g255097255100_ _g255098255102_)))))
                  (declare (not safe))
                  (foldr1 __tmp262443 '() _L255023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause254981255020_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop254976255004_
                                       _target254973254999_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g254967254986_ _g254968254989_))))))
                        (let ()
                          (declare (not safe))
                          (_g254967254986_ _g254968254989_)))))
                (let ()
                  (declare (not safe))
                  (_g254967254986_ _g254968254989_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g254966255105_ _L254870_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?253685_))
                                              _stx253584_
                                              (let* ((_specializer-id255114_
                                                      (let* ((_id255108_
                                                              (let ((__tmp262445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L253659_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp262445 '"::specialize")))
                     (_specializer-id255111_
                      (let ((__tmp262446
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx253584_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id255108_ __tmp262446))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id255111_))
                _specializer-id255111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id255121_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?253687_))
                                                          (let* ((_id255116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262447
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253659_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp262447
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id255118_
                          (let ((__tmp262448
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253584_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id255116_ __tmp262448))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id255118_))
                    _lifted-specializer-id255118_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t255123_
                                                      (let ((__tmp262449
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp262449)))
                                                     (_methods255125_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls253678_)))
                                                     (_$methods255129_
                                                      (map (lambda (_id255127_)
                                                             (let ((__tmp262450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255127_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp262450)))
                   _methods255125_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262451_
                                                      (for-each
                                                       (lambda (_g255130255133_
                                                                _g255131255135_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls253678_
                                                            _g255130255133_
                                                            _g255131255135_)))
                                                       _methods255125_
                                                       _$methods255129_))
                                                     (_methods-bind255146_
                                                      (map (lambda (_g255138255141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255139255143_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind253586_
                        _$t255123_
                        _g255138255141_
                        _g255139255143_)))
                   _methods255125_
                   _$methods255129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots255148_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs253679_)))
                                                     (_$slots255152_
                                                      (map (lambda (_id255150_)
                                                             (let ((__tmp262452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255150_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp262452)))
                   _slots255148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262453_
                                                      (for-each
                                                       (lambda (_g255153255156_
                                                                _g255154255158_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs253679_
                                                            _g255153255156_
                                                            _g255154255158_)))
                                                       _slots255148_
                                                       _$slots255152_))
                                                     (_slots-bind255169_
                                                      (map (lambda (_g255161255164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255162255166_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind253587_
                        _$t255123_
                        _g255161255164_
                        _g255162255166_)))
                   _slots255148_
                   _$slots255152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check255171_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check253680_)))
                                                     (_$class-check255174_
                                                      (map (lambda (_g262454_)
                                                             (let ((__tmp262455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp262455)))
                   _class-check255171_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262456_
                                                      (for-each
                                                       (lambda (_g255175255178_
                                                                _g255176255180_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check253680_
                                                            _g255175255178_
                                                            _g255176255180_)))
                                                       _class-check255171_
                                                       _$class-check255174_))
                                                     (_class-check-bind255191_
                                                      (map (lambda (_g255183255186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255184255188_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind253588_
                        _$t255123_
                        _g255183255186_
                        _g255184255188_)))
                   _class-check255171_
                   _$class-check255174_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all255193_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check253681_
                                                         _struct-type-assert253682_)))
                                                     (_struct-check255195_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all255193_)))
                                                     (_$struct-check255198_
                                                      (map (lambda (_g262457_)
                                                             (let ((__tmp262458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp262458)))
                   _struct-check255195_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g262459_
                                                      (for-each
                                                       (lambda (_g255199255202_
                                                                _g255200255204_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all255193_
                                                            _g255199255202_
                                                            _g255200255204_)))
                                                       _struct-check255195_
                                                       _$struct-check255198_))
                                                     (_struct-check-bind255215_
                                                      (map (lambda (_g255207255210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255208255212_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind253589_
                        _$t255123_
                        _g255207255210_
                        _g255208255212_)))
                   _struct-check255195_
                   _$struct-check255198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr255314_
                                                      (lambda (_struct-type-check1255217_
                                                               _struct-type-check2255218_)
                                                        (let* ((_g255220255238_
                                                                (lambda (_g255221255235_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255221255235_))))
                       (_g255219255311_
                        (lambda (_g255221255241_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255221255241_))
                              (let ((_e255227255243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255221255241_))))
                                (let ((_hd255226255246_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255227255243_)))
                                      (_tl255225255248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255227255243_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255225255248_))
                                      (let ((_e255230255251_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255225255248_))))
                                        (let ((_hd255229255254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255230255251_)))
                                              (_tl255228255256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255230255251_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd255229255254_))
                                              (let ((_e255233255259_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd255229255254_))))
                                                (let ((_hd255232255262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e255233255259_)))
                                                      (_tl255231255264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e255233255259_))))
                                                  ((lambda (_L255267_
                                                            _L255268_
                                                            _L255269_)
                                                     (let* ((_body255309_
                                                             (map (lambda (_g255304255306_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g255304255306_
                               _L255269_
                               _$t255123_
                               _method-calls253678_
                               _slot-refs253679_
                               _class-type-check253680_
                               _struct-type-check1255217_
                               _struct-type-check2255218_)))
                          _L255267_))
                    (__tmp262460
                     (let ((__tmp262461
                            (let ((__tmp262462
                                   (let ()
                                     (declare (not safe))
                                     (cons _L255269_ _L255268_))))
                              (declare (not safe))
                              (cons __tmp262462 _body255309_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp262461))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp262460 _L254871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl255228255256_
                                                   _tl255231255264_
                                                   _hd255232255262_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g255220255238_
                                                 _g255221255241_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255220255238_ _g255221255241_)))))
                              (let ()
                                (declare (not safe))
                                (_g255220255238_ _g255221255241_))))))
                  (declare (not safe))
                  (_g255219255311_ _L254871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr255475_
                                                      (lambda (_struct-type-check1255316_
                                                               _struct-type-check2255317_)
                                                        (let* ((_g255319255338_
                                                                (lambda (_g255320255335_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255320255335_))))
                       (_g255318255472_
                        (lambda (_g255320255341_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255320255341_))
                              (let ((_e255324255343_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255320255341_))))
                                (let ((_hd255323255346_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255324255343_)))
                                      (_tl255322255348_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255324255343_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl255322255348_))
                                      (let ((_g262463_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl255322255348_
                                                '0))))
                                        (begin
                                          (let ((_g262464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g262463_)
                                                       (##vector-length
                                                        _g262463_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g262464_ 2)))
                                                (error "Context expects 2 values"
                                                       _g262464_)))
                                          (let ((_target255325255351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g262463_ 0)))
                                                (_tl255327255353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g262463_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl255327255353_))
                                                (letrec ((_loop255328255356_
                                                          (lambda (_hd255326255359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause255332255361_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd255326255359_))
                        (let ((_e255329255364_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd255326255359_))))
                          (let ((_lp-hd255330255367_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255329255364_)))
                                (_lp-tl255331255369_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255329255364_))))
                            (let ((__tmp262468
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd255330255367_
                                           _clause255332255361_))))
                              (declare (not safe))
                              (_loop255328255356_
                               _lp-tl255331255369_
                               __tmp262468))))
                        (let ((_clause255333255372_
                               (reverse _clause255332255361_)))
                          ((lambda (_L255375_)
                             (let* ((_clauses255470_
                                     (map (lambda (_clause255390_)
                                            (let* ((___stx261107261108_
                                                    _clause255390_)
                                                   (_g255393255408_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx261107261108_)))))
                                              (let ((___kont261109261110_
                                                     (lambda (_L255436_
                                                              _L255437_
                                                              _L255438_)
                                                       (let* ((_body255458_
                                                               (map (lambda (_g255453255455_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g255453255455_
                                 _L255438_
                                 _$t255123_
                                 _method-calls253678_
                                 _slot-refs253679_
                                 _class-type-check253680_
                                 _struct-type-check1255316_
                                 _struct-type-check2255317_)))
                            _L255436_))
                      (__tmp262465
                       (let ()
                         (declare (not safe))
                         (cons _L255438_ _L255437_))))
                 (declare (not safe))
                 (cons __tmp262465 _body255458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261111261112_
                                                     (lambda ()
                                                       _clause255390_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx261107261108_))
                                                    (let ((_e255400255420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx261107261108_))))
                                                      (let ((_tl255398255425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e255400255420_)))
                    (_hd255399255423_
                     (let () (declare (not safe)) (##car _e255400255420_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd255399255423_))
                    (let ((_e255403255428_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd255399255423_))))
                      (let ((_tl255401255433_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255403255428_)))
                            (_hd255402255431_
                             (let ()
                               (declare (not safe))
                               (##car _e255403255428_))))
                        (___kont261109261110_
                         _tl255398255425_
                         _tl255401255433_
                         _hd255402255431_)))
                    (___kont261111261112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261111261112_)))))
                                          (let ((__tmp262466
                                                 (lambda (_g255462255465_
                                                          _g255463255467_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g255462255465_
                                                           _g255463255467_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp262466
                                                    '()
                                                    _L255375_))))
                                    (__tmp262467
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses255470_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp262467 _L254870_)))
                           _clause255333255372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop255328255356_
                                                     _target255325255351_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255319255338_
                                                   _g255320255341_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255319255338_ _g255320255341_)))))
                              (let ()
                                (declare (not safe))
                                (_g255319255338_ _g255320255341_))))))
                  (declare (not safe))
                  (_g255318255472_ _L254870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl255480_
                                                      (lambda (_specializer-lambda-expr255477_
                                                               _specializer-case-lambda-expr255478_)
                                                        (let ((__tmp262469
                                                               (let ((__tmp262470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp262472
                                     (let ((__tmp262473
                                            (let ((__tmp262475
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L254872_ '())))
                                                  (__tmp262474
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr255477_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp262475 __tmp262474))))
                                       (declare (not safe))
                                       (cons __tmp262473 '())))
                                    (__tmp262471
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr255478_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp262472 __tmp262471))))
                         (declare (not safe))
                         (cons '%#let-values __tmp262470))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp262469 _stx253584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr255482_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr255314_
                                                         _struct-check-all255193_
                                                         _empty253683_)))
                                                     (_specializer-case-lambda-expr255484_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr255475_
                                                         _struct-check-all255193_
                                                         _empty253683_)))
                                                     (_specializer-impl255486_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl255480_
                                                         _specializer-lambda-expr255482_
                                                         _specializer-case-lambda-expr255484_)))
                                                     (_unchecked-specializer-lambda-expr255488_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253686_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr255314_
                                                             _empty253683_
                                                             _struct-check-all255193_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr255490_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253686_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr255475_
                                                             _empty253683_
                                                             _struct-check-all255193_))
                                                          '#f))
                                                     (_unchecked-specializer-impl255492_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253686_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl255480_
                                                             _unchecked-specializer-lambda-expr255488_
                                                             _unchecked-specializer-case-lambda-expr255490_))
                                                          '#f))
                                                     (_specializer-impl255494_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl253590_
                                                         _$t255123_
                                                         _methods-bind255146_
                                                         _slots-bind255169_
                                                         _class-check-bind255191_
                                                         _struct-check-bind255215_
                                                         _specializer-impl255486_
                                                         _lifted-specializer-id255121_
                                                         _unchecked-specializer-impl255492_))))
                                                (let ((__tmp262477
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L253659_)))
                                                      (__tmp262476
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id255114_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp262477
                                                   '" => "
                                                   __tmp262476))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def253591_
                                                   _L253659_
                                                   _specializer-id255114_
                                                   _specializer-impl255494_
                                                   _lifted-specializer-id255121_
                                                   _unchecked-specializer-impl255492_)))))
                                        _hd254803254865_
                                        _hd254800254857_
                                        _hd254797254849_)
                                       (let ()
                                         (declare (not safe))
                                         (_g254779254809_ _g254780254812_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g254779254809_ _g254780254812_)))
                           (let ()
                             (declare (not safe))
                             (_g254779254809_ _g254780254812_)))
                       (let ()
                         (declare (not safe))
                         (_g254779254809_ _g254780254812_)))))
               (let () (declare (not safe)) (_g254779254809_ _g254780254812_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254779254809_
                                                      _g254780254812_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g254779254809_
                                              _g254780254812_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g254779254809_ _g254780254812_)))))
                           (let ()
                             (declare (not safe))
                             (_g254779254809_ _g254780254812_)))))
                   (let ()
                     (declare (not safe))
                     (_g254779254809_ _g254780254812_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g254779254809_
                                                      _g254780254812_))))))
                                       (declare (not safe))
                                       (_g254778255497_ _L253658_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L253658_))
                                         (let* ((_g255500255553_
                                                 (lambda (_g255501255550_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g255501255550_))))
                                                (_g255499256825_
                                                 (lambda (_g255501255556_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g255501255556_))
                                                       (let ((_e255509255558_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g255501255556_))))
                 (let ((_hd255508255561_
                        (let () (declare (not safe)) (##car _e255509255558_)))
                       (_tl255507255563_
                        (let () (declare (not safe)) (##cdr _e255509255558_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd255508255561_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd255508255561_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl255507255563_))
                               (let ((_e255512255566_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl255507255563_))))
                                 (let ((_hd255511255569_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e255512255566_)))
                                       (_tl255510255571_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e255512255566_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd255511255569_))
                                       (let ((_e255515255574_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd255511255569_))))
                                         (let ((_hd255514255577_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e255515255574_)))
                                               (_tl255513255579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e255515255574_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd255514255577_))
                                               (let ((_e255518255582_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd255514255577_))))
                                                 (let ((_hd255517255585_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255518255582_)))
                                                       (_tl255516255587_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255518255582_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd255517255585_))
                                                       (let ((_e255521255590_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd255517255585_))))
                 (let ((_hd255520255593_
                        (let () (declare (not safe)) (##car _e255521255590_)))
                       (_tl255519255595_
                        (let () (declare (not safe)) (##cdr _e255521255590_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl255519255595_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl255516255587_))
                           (let ((_e255524255598_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl255516255587_))))
                             (let ((_hd255523255601_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255524255598_)))
                                   (_tl255522255603_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255524255598_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255523255601_))
                                   (let ((_e255527255606_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255523255601_))))
                                     (let ((_hd255526255609_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255527255606_)))
                                           (_tl255525255611_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255527255606_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd255526255609_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd255526255609_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl255525255611_))
                                                   (let ((_e255530255614_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl255525255611_))))
                                                     (let ((_hd255529255617_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255530255614_)))
                                                           (_tl255528255619_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255530255614_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd255529255617_))
                                                           (let ((_e255533255622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd255529255617_))))
                     (let ((_hd255532255625_
                            (let ()
                              (declare (not safe))
                              (##car _e255533255622_)))
                           (_tl255531255627_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255533255622_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd255532255625_))
                           (let ((_e255536255630_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd255532255625_))))
                             (let ((_hd255535255633_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255536255630_)))
                                   (_tl255534255635_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255536255630_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255535255633_))
                                   (let ((_e255539255638_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255535255633_))))
                                     (let ((_hd255538255641_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255539255638_)))
                                           (_tl255537255643_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255539255638_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl255537255643_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl255534255635_))
                                               (let ((_e255542255646_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl255534255635_))))
                                                 (let ((_hd255541255649_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255542255646_)))
                                                       (_tl255540255651_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255542255646_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl255540255651_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl255531255627_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl255528255619_))
                       (let ((_e255545255654_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl255528255619_))))
                         (let ((_hd255544255657_
                                (let ()
                                  (declare (not safe))
                                  (##car _e255545255654_)))
                               (_tl255543255659_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e255545255654_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl255543255659_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl255522255603_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl255513255579_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl255510255571_))
                                           (let ((_e255548255662_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl255510255571_))))
                                             (let ((_hd255547255665_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e255548255662_)))
                                                   (_tl255546255667_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e255548255662_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl255546255667_))
                                                   ((lambda (_L255670_
                                                             _L255671_
                                                             _L255672_
                                                             _L255673_
                                                             _L255674_)
                                                      (let* ((_g255713255775_
                                                              (lambda (_g255714255772_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g255714255772_))))
                     (_g255712256822_
                      (lambda (_g255714255778_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g255714255778_))
                            (let ((_e255722255780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g255714255778_))))
                              (let ((_hd255721255783_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255722255780_)))
                                    (_tl255720255785_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255722255780_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd255721255783_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd255721255783_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl255720255785_))
                                            (let ((_e255725255788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl255720255785_))))
                                              (let ((_hd255724255791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e255725255788_)))
                                                    (_tl255723255793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e255725255788_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl255723255793_))
                                                    (let ((_e255728255796_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl255723255793_))))
                                                      (let ((_hd255727255799_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e255728255796_)))
                    (_tl255726255801_
                     (let () (declare (not safe)) (##cdr _e255728255796_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd255727255799_))
                    (let ((_e255731255804_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd255727255799_))))
                      (let ((_hd255730255807_
                             (let ()
                               (declare (not safe))
                               (##car _e255731255804_)))
                            (_tl255729255809_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255731255804_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd255730255807_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd255730255807_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl255729255809_))
                                    (let ((_e255734255812_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl255729255809_))))
                                      (let ((_hd255733255815_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255734255812_)))
                                            (_tl255732255817_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255734255812_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd255733255815_))
                                            (let ((_e255737255820_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd255733255815_))))
                                              (let ((_hd255736255823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e255737255820_)))
                                                    (_tl255735255825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e255737255820_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd255736255823_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd255736255823_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl255735255825_))
                                                            (let ((_e255740255828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl255735255825_))))
                      (let ((_hd255739255831_
                             (let ()
                               (declare (not safe))
                               (##car _e255740255828_)))
                            (_tl255738255833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255740255828_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl255738255833_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl255732255817_))
                                (let ((_e255743255836_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl255732255817_))))
                                  (let ((_hd255742255839_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255743255836_)))
                                        (_tl255741255841_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255743255836_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255742255839_))
                                        (let ((_e255746255844_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255742255839_))))
                                          (let ((_hd255745255847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255746255844_)))
                                                (_tl255744255849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255746255844_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd255745255847_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd255745255847_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl255744255849_))
                                                        (let ((_e255749255852_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl255744255849_))))
                  (let ((_hd255748255855_
                         (let () (declare (not safe)) (##car _e255749255852_)))
                        (_tl255747255857_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255749255852_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl255747255857_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl255741255841_))
                            (let ((_e255752255860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl255741255841_))))
                              (let ((_hd255751255863_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255752255860_)))
                                    (_tl255750255865_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255752255860_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd255751255863_))
                                    (let ((_e255755255868_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd255751255863_))))
                                      (let ((_hd255754255871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255755255868_)))
                                            (_tl255753255873_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255755255868_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd255754255871_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd255754255871_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl255753255873_))
                                                    (let ((_e255758255876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl255753255873_))))
                                                      (let ((_hd255757255879_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e255758255876_)))
                    (_tl255756255881_
                     (let () (declare (not safe)) (##cdr _e255758255876_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl255756255881_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl255750255865_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl255750255865_))
                                  '1)
                            (let ((_g262353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl255750255865_
                                      '1))))
                              (begin
                                (let ((_g262354_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g262353_)
                                             (##vector-length _g262353_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g262354_ 2)))
                                      (error "Context expects 2 values"
                                             _g262354_)))
                                (let ((_target255759255884_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262353_ 0)))
                                      (_tl255761255886_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262353_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255761255886_))
                                      (let ((_e255770255889_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255761255886_))))
                                        (let ((_hd255769255892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255770255889_)))
                                              (_tl255768255894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255770255889_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl255768255894_))
                                              (letrec ((_loop255762255897_
                                                        (lambda (_hd255760255900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref255766255902_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd255760255900_))
                      (let ((_e255763255905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd255760255900_))))
                        (let ((_lp-hd255764255908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e255763255905_)))
                              (_lp-tl255765255910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e255763255905_))))
                          (let ((__tmp262440
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd255764255908_
                                         _kw-ref255766255902_))))
                            (declare (not safe))
                            (_loop255762255897_
                             _lp-tl255765255910_
                             __tmp262440))))
                      (let ((_kw-ref255767255913_
                             (reverse _kw-ref255766255902_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl255726255801_))
                            ((lambda (_L255916_
                                      _L255917_
                                      _L255918_
                                      _L255919_
                                      _L255920_)
                               (let* ((_kw-count255971_
                                       (length (let ((__tmp262355
                                                      (lambda (_g255963255966_
                                                               _g255964255968_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g255963255966_
                                                                _g255964255968_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp262355
                                                         '()
                                                         _L255917_))))
                                      (_self-index255973_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count255971_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L255672_))
                                     (let* ((_g255976255990_
                                             (lambda (_g255977255987_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g255977255987_))))
                                            (_g255975256161_
                                             (lambda (_g255977255993_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g255977255993_))
                                                   (let ((_e255982255995_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g255977255993_))))
                                                     (let ((_hd255981255998_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255982255995_)))
                                                           (_tl255980256000_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255982255995_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl255980256000_))
                                                           (let ((_e255985256003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl255980256000_))))
                     (let ((_hd255984256006_
                            (let ()
                              (declare (not safe))
                              (##car _e255985256003_)))
                           (_tl255983256008_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255985256003_))))
                       ((lambda (_L256011_ _L256012_)
                          (let ((_self256028_
                                 (list-ref _L256012_ _self-index255973_)))
                            (for-each
                             (lambda (_g256029256031_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g256029256031_
                                  _self256028_
                                  _method-calls253678_
                                  _slot-refs253679_
                                  _class-type-check253680_
                                  _struct-type-check253681_
                                  _struct-type-assert253682_)))
                             _L256011_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?253685_))
                                _stx253584_
                                (let* ((_specializer-id256040_
                                        (let* ((_id256034_
                                                (let ((__tmp262406
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L253659_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp262406
                                                   '"::specialize")))
                                               (_specializer-id256037_
                                                (let ((__tmp262407
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx253584_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id256034_
                                                   __tmp262407))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id256037_))
                                          _specializer-id256037_))
                                       (_lifted-specializer-id256047_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?253687_))
                                            (let* ((_id256042_
                                                    (let ((__tmp262408
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253659_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp262408
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id256044_
                                                    (let ((__tmp262409
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx253584_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id256042_
                                                       __tmp262409))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id256044_))
                                              _lifted-specializer-id256044_)
                                            '#f))
                                       (_$t256049_
                                        (let ((__tmp262410 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp262410)))
                                       (_methods256051_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls253678_)))
                                       (_$methods256055_
                                        (map (lambda (_id256053_)
                                               (let ((__tmp262411
                                                      (gensym _id256053_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp262411)))
                                             _methods256051_))
                                       (_g262412_
                                        (for-each
                                         (lambda (_g256056256059_
                                                  _g256057256061_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls253678_
                                              _g256056256059_
                                              _g256057256061_)))
                                         _methods256051_
                                         _$methods256055_))
                                       (_methods-bind256072_
                                        (map (lambda (_g256064256067_
                                                      _g256065256069_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind253586_
                                                  _$t256049_
                                                  _g256064256067_
                                                  _g256065256069_)))
                                             _methods256051_
                                             _$methods256055_))
                                       (_slots256074_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs253679_)))
                                       (_$slots256078_
                                        (map (lambda (_id256076_)
                                               (let ((__tmp262413
                                                      (gensym _id256076_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp262413)))
                                             _slots256074_))
                                       (_g262414_
                                        (for-each
                                         (lambda (_g256079256082_
                                                  _g256080256084_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs253679_
                                              _g256079256082_
                                              _g256080256084_)))
                                         _slots256074_
                                         _$slots256078_))
                                       (_slots-bind256095_
                                        (map (lambda (_g256087256090_
                                                      _g256088256092_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind253587_
                                                  _$t256049_
                                                  _g256087256090_
                                                  _g256088256092_)))
                                             _slots256074_
                                             _$slots256078_))
                                       (_class-check256097_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check253680_)))
                                       (_$class-check256100_
                                        (map (lambda (_g262415_)
                                               (let ((__tmp262416
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp262416)))
                                             _class-check256097_))
                                       (_g262417_
                                        (for-each
                                         (lambda (_g256101256104_
                                                  _g256102256106_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check253680_
                                              _g256101256104_
                                              _g256102256106_)))
                                         _class-check256097_
                                         _$class-check256100_))
                                       (_class-check-bind256117_
                                        (map (lambda (_g256109256112_
                                                      _g256110256114_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind253588_
                                                  _$t256049_
                                                  _g256109256112_
                                                  _g256110256114_)))
                                             _class-check256097_
                                             _$class-check256100_))
                                       (_struct-check-all256119_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check253681_
                                           _struct-type-assert253682_)))
                                       (_struct-check256121_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all256119_)))
                                       (_$struct-check256124_
                                        (map (lambda (_g262418_)
                                               (let ((__tmp262419
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp262419)))
                                             _struct-check256121_))
                                       (_g262420_
                                        (for-each
                                         (lambda (_g256125256128_
                                                  _g256126256130_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all256119_
                                              _g256125256128_
                                              _g256126256130_)))
                                         _struct-check256121_
                                         _$struct-check256124_))
                                       (_struct-check-bind256141_
                                        (map (lambda (_g256133256136_
                                                      _g256134256138_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind253589_
                                                  _$t256049_
                                                  _g256133256136_
                                                  _g256134256138_)))
                                             _struct-check256121_
                                             _$struct-check256124_))
                                       (_make-specializer-impl256152_
                                        (lambda (_struct-type-check1256143_
                                                 _struct-type-check2256144_)
                                          (let* ((_specializer-body256150_
                                                  (map (lambda (_g256145256147_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g256145256147_
                                                            _self256028_
                                                            _$t256049_
                                                            _method-calls253678_
                                                            _slot-refs253679_
                                                            _class-type-check253680_
                                                            _struct-type-check1256143_
                                                            _struct-type-check2256144_)))
                                                       _L256011_))
                                                 (__tmp262421
                                                  (let ((__tmp262422
                                                         (let ((__tmp262424
                                                                (let ((__tmp262425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262437
                                      (let ()
                                        (declare (not safe))
                                        (cons _L255674_ '())))
                                     (__tmp262426
                                      (let ((__tmp262427
                                             (let ((__tmp262428
                                                    (let ((__tmp262430
                                                           (let ((__tmp262431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262436
                                 (let ()
                                   (declare (not safe))
                                   (cons _L255673_ '())))
                                (__tmp262432
                                 (let ((__tmp262433
                                        (let ((__tmp262434
                                               (let ((__tmp262435
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L256012_
                                                              _specializer-body256150_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp262435))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp262434
                                           _L255672_))))
                                   (declare (not safe))
                                   (cons __tmp262433 '()))))
                            (declare (not safe))
                            (cons __tmp262436 __tmp262432))))
                     (declare (not safe))
                     (cons __tmp262431 '())))
                  (__tmp262429
                   (let () (declare (not safe)) (cons _L255671_ '()))))
              (declare (not safe))
              (cons __tmp262430 __tmp262429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp262428))))
                                        (declare (not safe))
                                        (cons __tmp262427 '()))))
                                 (declare (not safe))
                                 (cons __tmp262437 __tmp262426))))
                          (declare (not safe))
                          (cons __tmp262425 '())))
                       (__tmp262423
                        (let () (declare (not safe)) (cons _L255670_ '()))))
                   (declare (not safe))
                   (cons __tmp262424 __tmp262423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp262422))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp262421
                                             _stx253584_))))
                                       (_specializer-impl256154_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl256152_
                                           _struct-check-all256119_
                                           _empty253683_)))
                                       (_unchecked-specializer-impl256156_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?253686_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl256152_
                                               _empty253683_
                                               _struct-check-all256119_))
                                            '#f))
                                       (_specializer-impl256158_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl253590_
                                           _$t256049_
                                           _methods-bind256072_
                                           _slots-bind256095_
                                           _class-check-bind256117_
                                           _struct-check-bind256141_
                                           _specializer-impl256154_
                                           _lifted-specializer-id256047_
                                           _unchecked-specializer-impl256156_))))
                                  (let ((__tmp262439
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L253659_)))
                                        (__tmp262438
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id256040_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp262439
                                     '" => "
                                     __tmp262438))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def253591_
                                     _L253659_
                                     _specializer-id256040_
                                     _specializer-impl256158_
                                     _lifted-specializer-id256047_
                                     _unchecked-specializer-impl256156_))))))
                        _tl255983256008_
                        _hd255984256006_)))
                   (let ()
                     (declare (not safe))
                     (_g255976255990_ _g255977255993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255976255990_
                                                      _g255977255993_))))))
                                       (declare (not safe))
                                       (_g255975256161_ _L255672_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L255672_))
                                         (let* ((_g256164256194_
                                                 (lambda (_g256165256191_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g256165256191_))))
                                                (_g256163256819_
                                                 (lambda (_g256165256197_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g256165256197_))
                                                       (let ((_e256171256199_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g256165256197_))))
                 (let ((_hd256170256202_
                        (let () (declare (not safe)) (##car _e256171256199_)))
                       (_tl256169256204_
                        (let () (declare (not safe)) (##cdr _e256171256199_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl256169256204_))
                       (let ((_e256174256207_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl256169256204_))))
                         (let ((_hd256173256210_
                                (let ()
                                  (declare (not safe))
                                  (##car _e256174256207_)))
                               (_tl256172256212_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e256174256207_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd256173256210_))
                               (let ((_e256177256215_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd256173256210_))))
                                 (let ((_hd256176256218_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e256177256215_)))
                                       (_tl256175256220_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e256177256215_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd256176256218_))
                                       (let ((_e256180256223_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd256176256218_))))
                                         (let ((_hd256179256226_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e256180256223_)))
                                               (_tl256178256228_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e256180256223_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd256179256226_))
                                               (let ((_e256183256231_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd256179256226_))))
                                                 (let ((_hd256182256234_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e256183256231_)))
                                                       (_tl256181256236_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e256183256231_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl256181256236_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256178256228_))
                                                           (let ((_e256186256239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256178256228_))))
                     (let ((_hd256185256242_
                            (let ()
                              (declare (not safe))
                              (##car _e256186256239_)))
                           (_tl256184256244_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256186256239_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl256184256244_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl256175256220_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl256172256212_))
                                   (let ((_e256189256247_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl256172256212_))))
                                     (let ((_hd256188256250_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e256189256247_)))
                                           (_tl256187256252_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e256189256247_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl256187256252_))
                                           ((lambda (_L256255_
                                                     _L256256_
                                                     _L256257_)
                                              (let* ((_g256280256294_
                                                      (lambda (_g256281256291_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256281256291_))))
                                                     (_g256279256335_
                                                      (lambda (_g256281256297_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256281256297_))
                                                            (let ((_e256286256299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256281256297_))))
                      (let ((_hd256285256302_
                             (let ()
                               (declare (not safe))
                               (##car _e256286256299_)))
                            (_tl256284256304_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256286256299_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl256284256304_))
                            (let ((_e256289256307_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl256284256304_))))
                              (let ((_hd256288256310_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256289256307_)))
                                    (_tl256287256312_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256289256307_))))
                                ((lambda (_L256315_ _L256316_)
                                   (let ((_self256329_
                                          (list-ref
                                           _L256316_
                                           _self-index255973_)))
                                     (for-each
                                      (lambda (_g256330256332_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g256330256332_
                                           _self256329_
                                           _method-calls253678_
                                           _slot-refs253679_
                                           _class-type-check253680_
                                           _struct-type-check253681_
                                           _struct-type-assert253682_)))
                                      _L256315_)))
                                 _tl256287256312_
                                 _hd256288256310_)))
                            (let ()
                              (declare (not safe))
                              (_g256280256294_ _g256281256297_)))))
                    (let ()
                      (declare (not safe))
                      (_g256280256294_ _g256281256297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256279256335_ _L256256_))
                                              (let* ((_g256338256357_
                                                      (lambda (_g256339256354_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256339256354_))))
                                                     (_g256337256462_
                                                      (lambda (_g256339256360_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256339256360_))
                                                            (let ((_e256343256362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256339256360_))))
                      (let ((_hd256342256365_
                             (let ()
                               (declare (not safe))
                               (##car _e256343256362_)))
                            (_tl256341256367_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256343256362_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl256341256367_))
                            (let ((_g262356_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl256341256367_
                                      '0))))
                              (begin
                                (let ((_g262357_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g262356_)
                                             (##vector-length _g262356_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g262357_ 2)))
                                      (error "Context expects 2 values"
                                             _g262357_)))
                                (let ((_target256344256370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262356_ 0)))
                                      (_tl256346256372_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g262356_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl256346256372_))
                                      (letrec ((_loop256347256375_
                                                (lambda (_hd256345256378_
                                                         _clause256351256380_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd256345256378_))
                                                      (let ((_e256348256383_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd256345256378_))))
                (let ((_lp-hd256349256386_
                       (let () (declare (not safe)) (##car _e256348256383_)))
                      (_lp-tl256350256388_
                       (let () (declare (not safe)) (##cdr _e256348256383_))))
                  (let ((__tmp262359
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd256349256386_ _clause256351256380_))))
                    (declare (not safe))
                    (_loop256347256375_ _lp-tl256350256388_ __tmp262359))))
              (let ((_clause256352256391_ (reverse _clause256351256380_)))
                ((lambda (_L256394_)
                   (for-each
                    (lambda (_clause256407_)
                      (let* ((_g256409256420_
                              (lambda (_g256410256417_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g256410256417_))))
                             (_g256408256452_
                              (lambda (_g256410256423_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g256410256423_))
                                    (let ((_e256415256425_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g256410256423_))))
                                      (let ((_hd256414256428_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e256415256425_)))
                                            (_tl256413256430_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e256415256425_))))
                                        ((lambda (_L256433_ _L256434_)
                                           (let ((_self256446_
                                                  (list-ref
                                                   _L256434_
                                                   _self-index255973_)))
                                             (for-each
                                              (lambda (_g256447256449_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g256447256449_
                                                   _self256446_
                                                   _method-calls253678_
                                                   _slot-refs253679_
                                                   _class-type-check253680_
                                                   _struct-type-check253681_
                                                   _struct-type-assert253682_)))
                                              _L256433_)))
                                         _tl256413256430_
                                         _hd256414256428_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g256409256420_ _g256410256423_))))))
                        (declare (not safe))
                        (_g256408256452_ _clause256407_)))
                    (let ((__tmp262358
                           (lambda (_g256454256457_ _g256455256459_)
                             (let ()
                               (declare (not safe))
                               (cons _g256454256457_ _g256455256459_)))))
                      (declare (not safe))
                      (foldr1 __tmp262358 '() _L256394_))))
                 _clause256352256391_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop256347256375_
                                           _target256344256370_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g256338256357_ _g256339256360_))))))
                            (let ()
                              (declare (not safe))
                              (_g256338256357_ _g256339256360_)))))
                    (let ()
                      (declare (not safe))
                      (_g256338256357_ _g256339256360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256337256462_ _L256255_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?253685_))
                                                  _stx253584_
                                                  (let* ((_specializer-id256471_
                                                          (let* ((_id256465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262360
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253659_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp262360 '"::specialize")))
                         (_specializer-id256468_
                          (let ((__tmp262361
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253584_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id256465_ __tmp262361))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id256468_))
                    _specializer-id256468_))
                 (_lifted-specializer-id256478_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?253687_))
                      (let* ((_id256473_
                              (let ((__tmp262362
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L253659_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp262362
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id256475_
                              (let ((__tmp262363
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx253584_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id256473_
                                 __tmp262363))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id256475_))
                        _lifted-specializer-id256475_)
                      '#f))
                 (_$t256480_
                  (let ((__tmp262364 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp262364)))
                 (_methods256482_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls253678_)))
                 (_$methods256486_
                  (map (lambda (_id256484_)
                         (let ((__tmp262365 (gensym _id256484_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262365)))
                       _methods256482_))
                 (_g262366_
                  (for-each
                   (lambda (_g256487256490_ _g256488256492_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls253678_
                        _g256487256490_
                        _g256488256492_)))
                   _methods256482_
                   _$methods256486_))
                 (_methods-bind256503_
                  (map (lambda (_g256495256498_ _g256496256500_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind253586_
                            _$t256480_
                            _g256495256498_
                            _g256496256500_)))
                       _methods256482_
                       _$methods256486_))
                 (_slots256505_
                  (let () (declare (not safe)) (hash-keys _slot-refs253679_)))
                 (_$slots256509_
                  (map (lambda (_id256507_)
                         (let ((__tmp262367 (gensym _id256507_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp262367)))
                       _slots256505_))
                 (_g262368_
                  (for-each
                   (lambda (_g256510256513_ _g256511256515_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs253679_
                        _g256510256513_
                        _g256511256515_)))
                   _slots256505_
                   _$slots256509_))
                 (_slots-bind256526_
                  (map (lambda (_g256518256521_ _g256519256523_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind253587_
                            _$t256480_
                            _g256518256521_
                            _g256519256523_)))
                       _slots256505_
                       _$slots256509_))
                 (_class-check256528_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check253680_)))
                 (_$class-check256531_
                  (map (lambda (_g262369_)
                         (let ((__tmp262370 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262370)))
                       _class-check256528_))
                 (_g262371_
                  (for-each
                   (lambda (_g256532256535_ _g256533256537_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check253680_
                        _g256532256535_
                        _g256533256537_)))
                   _class-check256528_
                   _$class-check256531_))
                 (_class-check-bind256548_
                  (map (lambda (_g256540256543_ _g256541256545_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind253588_
                            _$t256480_
                            _g256540256543_
                            _g256541256545_)))
                       _class-check256528_
                       _$class-check256531_))
                 (_struct-check-all256550_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check253681_
                     _struct-type-assert253682_)))
                 (_struct-check256552_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all256550_)))
                 (_$struct-check256555_
                  (map (lambda (_g262372_)
                         (let ((__tmp262373 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp262373)))
                       _struct-check256552_))
                 (_g262374_
                  (for-each
                   (lambda (_g256556256559_ _g256557256561_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all256550_
                        _g256556256559_
                        _g256557256561_)))
                   _struct-check256552_
                   _$struct-check256555_))
                 (_struct-check-bind256572_
                  (map (lambda (_g256564256567_ _g256565256569_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind253589_
                            _$t256480_
                            _g256564256567_
                            _g256565256569_)))
                       _struct-check256552_
                       _$struct-check256555_))
                 (_make-specializer-lambda-expr256658_
                  (lambda (_struct-type-check1256574_
                           _struct-type-check2256575_)
                    (let* ((_g256577256591_
                            (lambda (_g256578256588_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g256578256588_))))
                           (_g256576256655_
                            (lambda (_g256578256594_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g256578256594_))
                                  (let ((_e256583256596_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g256578256594_))))
                                    (let ((_hd256582256599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e256583256596_)))
                                          (_tl256581256601_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e256583256596_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl256581256601_))
                                          (let ((_e256586256604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl256581256601_))))
                                            (let ((_hd256585256607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e256586256604_)))
                                                  (_tl256584256609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e256586256604_))))
                                              ((lambda (_L256612_ _L256613_)
                                                 (let* ((_self256646_
                                                         (list-ref
                                                          _L256613_
                                                          _self-index255973_))
                                                        (_body256652_
                                                         (map (lambda (_g256647256649_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g256647256649_
                           _self256646_
                           _$t256480_
                           _method-calls253678_
                           _slot-refs253679_
                           _class-type-check253680_
                           _struct-type-check1256574_
                           _struct-type-check2256575_)))
                      _L256612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp262375
                                                          (let ((__tmp262376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L256613_ _body256652_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp262376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp262375
                                                      _L256256_))))
                                               _tl256584256609_
                                               _hd256585256607_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g256577256591_
                                             _g256578256594_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g256577256591_ _g256578256594_))))))
                      (declare (not safe))
                      (_g256576256655_ _L256256_))))
                 (_make-specializer-case-lambda-expr256797_
                  (lambda (_struct-type-check1256660_
                           _struct-type-check2256661_)
                    (let* ((_g256663256682_
                            (lambda (_g256664256679_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g256664256679_))))
                           (_g256662256794_
                            (lambda (_g256664256685_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g256664256685_))
                                  (let ((_e256668256687_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g256664256685_))))
                                    (let ((_hd256667256690_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e256668256687_)))
                                          (_tl256666256692_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e256668256687_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl256666256692_))
                                          (let ((_g262377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl256666256692_
                                                    '0))))
                                            (begin
                                              (let ((_g262378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g262377_)
                                                           (##vector-length
                                                            _g262377_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g262378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g262378_)))
                                              (let ((_target256669256695_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g262377_
                                                        0)))
                                                    (_tl256671256697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g262377_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl256671256697_))
                                                    (letrec ((_loop256672256700_
                                                              (lambda (_hd256670256703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause256676256705_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd256670256703_))
                            (let ((_e256673256708_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd256670256703_))))
                              (let ((_lp-hd256674256711_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256673256708_)))
                                    (_lp-tl256675256713_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256673256708_))))
                                (let ((__tmp262381
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd256674256711_
                                               _clause256676256705_))))
                                  (declare (not safe))
                                  (_loop256672256700_
                                   _lp-tl256675256713_
                                   __tmp262381))))
                            (let ((_clause256677256716_
                                   (reverse _clause256676256705_)))
                              ((lambda (_L256719_)
                                 (let* ((_clauses256792_
                                         (map (lambda (_clause256734_)
                                                (let* ((_g256736256747_
                                                        (lambda (_g256737256744_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g256737256744_))))
                                                       (_g256735256782_
                                                        (lambda (_g256737256750_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g256737256750_))
                      (let ((_e256742256752_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g256737256750_))))
                        (let ((_hd256741256755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e256742256752_)))
                              (_tl256740256757_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e256742256752_))))
                          ((lambda (_L256760_ _L256761_)
                             (let* ((_self256773_
                                     (list-ref _L256761_ _self-index255973_))
                                    (_body256779_
                                     (map (lambda (_g256774256776_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g256774256776_
                                               _self256773_
                                               _$t256480_
                                               _method-calls253678_
                                               _slot-refs253679_
                                               _class-type-check253680_
                                               _struct-type-check1256660_
                                               _struct-type-check2256661_)))
                                          _L256760_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L256761_ _body256779_))))
                           _tl256740256757_
                           _hd256741256755_)))
                      (let ()
                        (declare (not safe))
                        (_g256736256747_ _g256737256750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g256735256782_
                                                   _clause256734_)))
                                              (let ((__tmp262379
                                                     (lambda (_g256784256787_
                                                              _g256785256789_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g256784256787_
                                                               _g256785256789_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp262379
                                                        '()
                                                        _L256719_))))
                                        (__tmp262380
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses256792_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp262380
                                    _L256255_)))
                               _clause256677256716_))))))
              (let ()
                (declare (not safe))
                (_loop256672256700_ _target256669256695_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256663256682_
                                                       _g256664256685_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g256663256682_
                                             _g256664256685_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g256663256682_ _g256664256685_))))))
                      (declare (not safe))
                      (_g256662256794_ _L256255_))))
                 (_make-specializer-impl256802_
                  (lambda (_specializer-lambda-expr256799_
                           _specializer-case-lambda-expr256800_)
                    (let ((__tmp262382
                           (let ((__tmp262383
                                  (let ((__tmp262385
                                         (let ((__tmp262386
                                                (let ((__tmp262403
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L255674_ '())))
                                                      (__tmp262387
                                                       (let ((__tmp262388
                                                              (let ((__tmp262389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp262391
                                    (let ((__tmp262392
                                           (let ((__tmp262402
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L255673_ '())))
                                                 (__tmp262393
                                                  (let ((__tmp262394
                                                         (let ((__tmp262395
                                                                (let ((__tmp262396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262398
                                      (let ((__tmp262399
                                             (let ((__tmp262401
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L256257_ '())))
                                                   (__tmp262400
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr256799_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp262401
                                                     __tmp262400))))
                                        (declare (not safe))
                                        (cons __tmp262399 '())))
                                     (__tmp262397
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr256800_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp262398 __tmp262397))))
                          (declare (not safe))
                          (cons '%#let-values __tmp262396))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp262395 _stx253584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262394 '()))))
                                             (declare (not safe))
                                             (cons __tmp262402 __tmp262393))))
                                      (declare (not safe))
                                      (cons __tmp262392 '())))
                                   (__tmp262390
                                    (let ()
                                      (declare (not safe))
                                      (cons _L255671_ '()))))
                               (declare (not safe))
                               (cons __tmp262391 __tmp262390))))
                        (declare (not safe))
                        (cons '%#let-values __tmp262389))))
                 (declare (not safe))
                 (cons __tmp262388 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262403
                                                        __tmp262387))))
                                           (declare (not safe))
                                           (cons __tmp262386 '())))
                                        (__tmp262384
                                         (let ()
                                           (declare (not safe))
                                           (cons _L255670_ '()))))
                                    (declare (not safe))
                                    (cons __tmp262385 __tmp262384))))
                             (declare (not safe))
                             (cons '%#let-values __tmp262383))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262382 _stx253584_))))
                 (_specializer-lambda-expr256804_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr256658_
                     _struct-check-all256550_
                     _empty253683_)))
                 (_specializer-case-lambda-expr256806_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr256797_
                     _struct-check-all256550_
                     _empty253683_)))
                 (_specializer-impl256808_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl256802_
                     _specializer-lambda-expr256804_
                     _specializer-case-lambda-expr256806_)))
                 (_unchecked-specializer-lambda-expr256810_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253686_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr256658_
                         _empty253683_
                         _struct-check-all256550_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr256812_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253686_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr256797_
                         _empty253683_
                         _struct-check-all256550_))
                      '#f))
                 (_unchecked-specializer-impl256814_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253686_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl256802_
                         _unchecked-specializer-lambda-expr256810_
                         _unchecked-specializer-case-lambda-expr256812_))
                      '#f))
                 (_specializer-impl256816_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl253590_
                     _$t256480_
                     _methods-bind256503_
                     _slots-bind256526_
                     _class-check-bind256548_
                     _struct-check-bind256572_
                     _specializer-impl256808_
                     _lifted-specializer-id256478_
                     _unchecked-specializer-impl256814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp262405
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253659_)))
                                                          (__tmp262404
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id256471_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp262405
                                                       '" => "
                                                       __tmp262404))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def253591_
                                                       _L253659_
                                                       _specializer-id256471_
                                                       _specializer-impl256816_
                                                       _lifted-specializer-id256478_
                                                       _unchecked-specializer-impl256814_)))))
                                            _hd256188256250_
                                            _hd256185256242_
                                            _hd256182256234_)
                                           (let ()
                                             (declare (not safe))
                                             (_g256164256194_
                                              _g256165256197_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g256164256194_ _g256165256197_)))
                               (let ()
                                 (declare (not safe))
                                 (_g256164256194_ _g256165256197_)))
                           (let ()
                             (declare (not safe))
                             (_g256164256194_ _g256165256197_)))))
                   (let ()
                     (declare (not safe))
                     (_g256164256194_ _g256165256197_)))
               (let ()
                 (declare (not safe))
                 (_g256164256194_ _g256165256197_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256164256194_
                                                  _g256165256197_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g256164256194_ _g256165256197_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g256164256194_ _g256165256197_)))))
                       (let ()
                         (declare (not safe))
                         (_g256164256194_ _g256165256197_)))))
               (let ()
                 (declare (not safe))
                 (_g256164256194_ _g256165256197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g256163256819_ _L255672_))
                                         _stx253584_))))
                             _hd255769255892_
                             _kw-ref255767255913_
                             _hd255757255879_
                             _hd255748255855_
                             _hd255739255831_)
                            (let ()
                              (declare (not safe))
                              (_g255713255775_ _g255714255778_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop255762255897_
                                                   _target255759255884_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g255713255775_
                                                 _g255714255778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255713255775_ _g255714255778_))))))
                            (let ()
                              (declare (not safe))
                              (_g255713255775_ _g255714255778_)))
                        (let ()
                          (declare (not safe))
                          (_g255713255775_ _g255714255778_)))
                    (let ()
                      (declare (not safe))
                      (_g255713255775_ _g255714255778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255713255775_
                                                       _g255714255778_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255713255775_
                                                   _g255714255778_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g255713255775_
                                               _g255714255778_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g255713255775_ _g255714255778_)))))
                            (let ()
                              (declare (not safe))
                              (_g255713255775_ _g255714255778_)))
                        (let ()
                          (declare (not safe))
                          (_g255713255775_ _g255714255778_)))))
                (let ()
                  (declare (not safe))
                  (_g255713255775_ _g255714255778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255713255775_
                                                       _g255714255778_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255713255775_
                                                   _g255714255778_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g255713255775_ _g255714255778_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255713255775_ _g255714255778_)))
                            (let ()
                              (declare (not safe))
                              (_g255713255775_ _g255714255778_)))))
                    (let ()
                      (declare (not safe))
                      (_g255713255775_ _g255714255778_)))
                (let ()
                  (declare (not safe))
                  (_g255713255775_ _g255714255778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255713255775_
                                                       _g255714255778_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g255713255775_
                                               _g255714255778_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g255713255775_ _g255714255778_)))
                                (let ()
                                  (declare (not safe))
                                  (_g255713255775_ _g255714255778_)))
                            (let ()
                              (declare (not safe))
                              (_g255713255775_ _g255714255778_)))))
                    (let ()
                      (declare (not safe))
                      (_g255713255775_ _g255714255778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255713255775_
                                                       _g255714255778_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g255713255775_
                                               _g255714255778_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255713255775_ _g255714255778_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g255713255775_ _g255714255778_)))))
                            (let ()
                              (declare (not safe))
                              (_g255713255775_ _g255714255778_))))))
                (declare (not safe))
                (_g255712256822_ _L255671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd255547255665_
                                                    _hd255544255657_
                                                    _hd255541255649_
                                                    _hd255538255641_
                                                    _hd255520255593_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255500255553_
                                                      _g255501255556_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g255500255553_
                                              _g255501255556_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g255500255553_ _g255501255556_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g255500255553_ _g255501255556_)))
                               (let ()
                                 (declare (not safe))
                                 (_g255500255553_ _g255501255556_)))))
                       (let ()
                         (declare (not safe))
                         (_g255500255553_ _g255501255556_)))
                   (let ()
                     (declare (not safe))
                     (_g255500255553_ _g255501255556_)))
               (let ()
                 (declare (not safe))
                 (_g255500255553_ _g255501255556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255500255553_
                                                  _g255501255556_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g255500255553_
                                              _g255501255556_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255500255553_ _g255501255556_)))))
                           (let ()
                             (declare (not safe))
                             (_g255500255553_ _g255501255556_)))))
                   (let ()
                     (declare (not safe))
                     (_g255500255553_ _g255501255556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255500255553_
                                                      _g255501255556_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255500255553_
                                                  _g255501255556_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g255500255553_
                                              _g255501255556_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255500255553_ _g255501255556_)))))
                           (let ()
                             (declare (not safe))
                             (_g255500255553_ _g255501255556_)))
                       (let ()
                         (declare (not safe))
                         (_g255500255553_ _g255501255556_)))))
               (let ()
                 (declare (not safe))
                 (_g255500255553_ _g255501255556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255500255553_
                                                  _g255501255556_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g255500255553_ _g255501255556_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g255500255553_ _g255501255556_)))
                           (let ()
                             (declare (not safe))
                             (_g255500255553_ _g255501255556_)))
                       (let ()
                         (declare (not safe))
                         (_g255500255553_ _g255501255556_)))))
               (let ()
                 (declare (not safe))
                 (_g255500255553_ _g255501255556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g255499256825_ _L253658_))
                                         _stx253584_))))))))
                  (___kont261131261132_ (lambda () _stx253584_)))
              (let ((___match261160261161_
                     (lambda (_e253600253626_
                              _hd253599253629_
                              _tl253598253631_
                              _e253603253634_
                              _hd253602253637_
                              _tl253601253639_
                              _e253606253642_
                              _hd253605253645_
                              _tl253604253647_
                              _e253609253650_
                              _hd253608253653_
                              _tl253607253655_)
                       (let ((_L253658_ _hd253608253653_)
                             (_L253659_ _hd253605253645_))
                         (if (let ((__tmp262522
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L253659_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp262522))
                             (___kont261129261130_ _L253658_ _L253659_)
                             (___kont261131261132_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx261127261128_))
                    (let ((_e253600253626_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx261127261128_))))
                      (let ((_tl253598253631_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253600253626_)))
                            (_hd253599253629_
                             (let ()
                               (declare (not safe))
                               (##car _e253600253626_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl253598253631_))
                            (let ((_e253603253634_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl253598253631_))))
                              (let ((_tl253601253639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e253603253634_)))
                                    (_hd253602253637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e253603253634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd253602253637_))
                                    (let ((_e253606253642_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd253602253637_))))
                                      (let ((_tl253604253647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e253606253642_)))
                                            (_hd253605253645_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e253606253642_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl253604253647_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl253601253639_))
                                                (let ((_e253609253650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl253601253639_))))
                                                  (let ((_tl253607253655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e253609253650_)))
                                                        (_hd253608253653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e253609253650_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl253607253655_))
                                                        (___match261160261161_
                                                         _e253600253626_
                                                         _hd253599253629_
                                                         _tl253598253631_
                                                         _e253603253634_
                                                         _hd253602253637_
                                                         _tl253601253639_
                                                         _e253606253642_
                                                         _hd253605253645_
                                                         _tl253604253647_
                                                         _e253609253650_
                                                         _hd253608253653_
                                                         _tl253607253655_)
                                                        (___kont261131261132_))))
                                                (___kont261131261132_))
                                            (___kont261131261132_))))
                                    (___kont261131261132_))))
                            (___kont261131261132_))))
                    (___kont261131261132_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx252560_
               _self252561_
               _methods252562_
               _slots252563_
               _class-check252564_
               _struct-check252565_
               _struct-assert252566_)
        (let* ((___stx261163261164_ _stx252560_)
               (_g252574252796_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx261163261164_)))))
          (let ((___kont261165261166_
                 (lambda (_L253533_ _L253534_ _L253535_ _L253536_)
                   (let ((__tmp262523
                          (let () (declare (not safe)) (gx#stx-e _L253534_))))
                     (declare (not safe))
                     (hash-put! _methods252562_ __tmp262523 '#t))
                   (for-each
                    (lambda (_g253569253571_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g253569253571_
                         _self252561_
                         _methods252562_
                         _slots252563_
                         _class-check252564_
                         _struct-check252565_
                         _struct-assert252566_)))
                    (let ((__tmp262524
                           (lambda (_g253573253576_ _g253574253578_)
                             (let ()
                               (declare (not safe))
                               (cons _g253573253576_ _g253574253578_)))))
                      (declare (not safe))
                      (foldr1 __tmp262524 '() _L253533_)))))
                (___kont261169261170_
                 (lambda (_L253368_ _L253369_ _L253370_ _L253371_ _L253372_)
                   (let ((__tmp262525
                          (let () (declare (not safe)) (gx#stx-e _L253369_))))
                     (declare (not safe))
                     (hash-put! _methods252562_ __tmp262525 '#t))
                   (for-each
                    (lambda (_g253412253414_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g253412253414_
                         _self252561_
                         _methods252562_
                         _slots252563_
                         _class-check252564_
                         _struct-check252565_
                         _struct-assert252566_)))
                    (let ((__tmp262526
                           (lambda (_g253416253419_ _g253417253421_)
                             (let ()
                               (declare (not safe))
                               (cons _g253416253419_ _g253417253421_)))))
                      (declare (not safe))
                      (foldr1 __tmp262526 '() _L253368_)))))
                (___kont261173261174_
                 (lambda (_L253201_ _L253202_ _L253203_)
                   (let ((__tmp262527
                          (let () (declare (not safe)) (gx#stx-e _L253201_))))
                     (declare (not safe))
                     (hash-put! _slots252563_ __tmp262527 '#t))))
                (___kont261175261176_
                 (lambda (_L253078_ _L253079_ _L253080_ _L253081_)
                   (let ((__tmp262528
                          (let () (declare (not safe)) (gx#stx-e _L253079_))))
                     (declare (not safe))
                     (hash-put! _slots252563_ __tmp262528 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253078_
                      _self252561_
                      _methods252562_
                      _slots252563_
                      _class-check252564_
                      _struct-check252565_
                      _struct-assert252566_))))
                (___kont261177261178_
                 (lambda (_L252962_ _L252963_)
                   (let ((__tmp262529
                          (##structure-ref
                           (let ((__tmp262530
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L252963_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp262530))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots252563_ __tmp262529 '#t))))
                (___kont261179261180_
                 (lambda (_L252872_ _L252873_ _L252874_)
                   (let ((__tmp262531
                          (##structure-ref
                           (let ((__tmp262532
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L252874_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp262532))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots252563_ __tmp262531 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L252872_
                      _self252561_
                      _methods252562_
                      _slots252563_
                      _class-check252564_
                      _struct-check252565_
                      _struct-assert252566_))))
                (___kont261181261182_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx252560_
                      _self252561_
                      _methods252562_
                      _slots252563_
                      _class-check252564_
                      _struct-check252565_
                      _struct-assert252566_)))))
            (let* ((___match261662261663_
                    (lambda (_e252770252808_
                             _hd252769252811_
                             _tl252768252813_
                             _e252773252816_
                             _hd252772252819_
                             _tl252771252821_
                             _e252776252824_
                             _hd252775252827_
                             _tl252774252829_
                             _e252779252832_
                             _hd252778252835_
                             _tl252777252837_
                             _e252782252840_
                             _hd252781252843_
                             _tl252780252845_
                             _e252785252848_
                             _hd252784252851_
                             _tl252783252853_
                             _e252788252856_
                             _hd252787252859_
                             _tl252786252861_
                             _e252791252864_
                             _hd252790252867_
                             _tl252789252869_)
                      (let ((_L252872_ _hd252790252867_)
                            (_L252873_ _hd252787252859_)
                            (_L252874_ _hd252778252835_))
                        (if (and (let ((__tmp262533
                                        (let ((__tmp262534
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L252874_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp262534))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp262533
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L252873_
                                    _self252561_)))
                            (___kont261179261180_
                             _L252872_
                             _L252873_
                             _L252874_)
                            (___kont261181261182_)))))
                   (___match261660261661_
                    (lambda (_e252770252808_
                             _hd252769252811_
                             _tl252768252813_
                             _e252773252816_
                             _hd252772252819_
                             _tl252771252821_
                             _e252776252824_
                             _hd252775252827_
                             _tl252774252829_
                             _e252779252832_
                             _hd252778252835_
                             _tl252777252837_
                             _e252782252840_
                             _hd252781252843_
                             _tl252780252845_
                             _e252785252848_
                             _hd252784252851_
                             _tl252783252853_
                             _e252788252856_
                             _hd252787252859_
                             _tl252786252861_
                             _e252791252864_
                             _hd252790252867_
                             _tl252789252869_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252789252869_))
                          (___match261662261663_
                           _e252770252808_
                           _hd252769252811_
                           _tl252768252813_
                           _e252773252816_
                           _hd252772252819_
                           _tl252771252821_
                           _e252776252824_
                           _hd252775252827_
                           _tl252774252829_
                           _e252779252832_
                           _hd252778252835_
                           _tl252777252837_
                           _e252782252840_
                           _hd252781252843_
                           _tl252780252845_
                           _e252785252848_
                           _hd252784252851_
                           _tl252783252853_
                           _e252788252856_
                           _hd252787252859_
                           _tl252786252861_
                           _e252791252864_
                           _hd252790252867_
                           _tl252789252869_)
                          (___kont261181261182_))))
                   (___match261654261655_
                    (lambda (_e252770252808_
                             _hd252769252811_
                             _tl252768252813_
                             _e252773252816_
                             _hd252772252819_
                             _tl252771252821_
                             _e252776252824_
                             _hd252775252827_
                             _tl252774252829_
                             _e252779252832_
                             _hd252778252835_
                             _tl252777252837_
                             _e252782252840_
                             _hd252781252843_
                             _tl252780252845_
                             _e252785252848_
                             _hd252784252851_
                             _tl252783252853_
                             _e252788252856_
                             _hd252787252859_
                             _tl252786252861_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252780252845_))
                          (let ((_e252791252864_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252780252845_))))
                            (let ((_tl252789252869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252791252864_)))
                                  (_hd252790252867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252791252864_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252789252869_))
                                  (___match261662261663_
                                   _e252770252808_
                                   _hd252769252811_
                                   _tl252768252813_
                                   _e252773252816_
                                   _hd252772252819_
                                   _tl252771252821_
                                   _e252776252824_
                                   _hd252775252827_
                                   _tl252774252829_
                                   _e252779252832_
                                   _hd252778252835_
                                   _tl252777252837_
                                   _e252782252840_
                                   _hd252781252843_
                                   _tl252780252845_
                                   _e252785252848_
                                   _hd252784252851_
                                   _tl252783252853_
                                   _e252788252856_
                                   _hd252787252859_
                                   _tl252786252861_
                                   _e252791252864_
                                   _hd252790252867_
                                   _tl252789252869_)
                                  (___kont261181261182_))))
                          (___kont261181261182_))))
                   (___match261600261601_
                    (lambda (_e252746252906_
                             _hd252745252909_
                             _tl252744252911_
                             _e252749252914_
                             _hd252748252917_
                             _tl252747252919_
                             _e252752252922_
                             _hd252751252925_
                             _tl252750252927_
                             _e252755252930_
                             _hd252754252933_
                             _tl252753252935_
                             _e252758252938_
                             _hd252757252941_
                             _tl252756252943_
                             _e252761252946_
                             _hd252760252949_
                             _tl252759252951_
                             _e252764252954_
                             _hd252763252957_
                             _tl252762252959_)
                      (let ((_L252962_ _hd252763252957_)
                            (_L252963_ _hd252754252933_))
                        (if (and (let ((__tmp262535
                                        (let ((__tmp262536
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L252963_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp262536))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp262535
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L252962_
                                    _self252561_)))
                            (___kont261177261178_ _L252962_ _L252963_)
                            (___kont261181261182_)))))
                   (___match261598261599_
                    (lambda (_e252746252906_
                             _hd252745252909_
                             _tl252744252911_
                             _e252749252914_
                             _hd252748252917_
                             _tl252747252919_
                             _e252752252922_
                             _hd252751252925_
                             _tl252750252927_
                             _e252755252930_
                             _hd252754252933_
                             _tl252753252935_
                             _e252758252938_
                             _hd252757252941_
                             _tl252756252943_
                             _e252761252946_
                             _hd252760252949_
                             _tl252759252951_
                             _e252764252954_
                             _hd252763252957_
                             _tl252762252959_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252756252943_))
                          (___match261600261601_
                           _e252746252906_
                           _hd252745252909_
                           _tl252744252911_
                           _e252749252914_
                           _hd252748252917_
                           _tl252747252919_
                           _e252752252922_
                           _hd252751252925_
                           _tl252750252927_
                           _e252755252930_
                           _hd252754252933_
                           _tl252753252935_
                           _e252758252938_
                           _hd252757252941_
                           _tl252756252943_
                           _e252761252946_
                           _hd252760252949_
                           _tl252759252951_
                           _e252764252954_
                           _hd252763252957_
                           _tl252762252959_)
                          (___match261654261655_
                           _e252746252906_
                           _hd252745252909_
                           _tl252744252911_
                           _e252749252914_
                           _hd252748252917_
                           _tl252747252919_
                           _e252752252922_
                           _hd252751252925_
                           _tl252750252927_
                           _e252755252930_
                           _hd252754252933_
                           _tl252753252935_
                           _e252758252938_
                           _hd252757252941_
                           _tl252756252943_
                           _e252761252946_
                           _hd252760252949_
                           _tl252759252951_
                           _e252764252954_
                           _hd252763252957_
                           _tl252762252959_))))
                   (___match261544261545_
                    (lambda (_e252711252990_
                             _hd252710252993_
                             _tl252709252995_
                             _e252714252998_
                             _hd252713253001_
                             _tl252712253003_
                             _e252717253006_
                             _hd252716253009_
                             _tl252715253011_
                             _e252720253014_
                             _hd252719253017_
                             _tl252718253019_
                             _e252723253022_
                             _hd252722253025_
                             _tl252721253027_
                             _e252726253030_
                             _hd252725253033_
                             _tl252724253035_
                             _e252729253038_
                             _hd252728253041_
                             _tl252727253043_
                             _e252732253046_
                             _hd252731253049_
                             _tl252730253051_
                             _e252735253054_
                             _hd252734253057_
                             _tl252733253059_
                             _e252738253062_
                             _hd252737253065_
                             _tl252736253067_
                             _e252741253070_
                             _hd252740253073_
                             _tl252739253075_)
                      (let ((_L253078_ _hd252740253073_)
                            (_L253079_ _hd252737253065_)
                            (_L253080_ _hd252728253041_)
                            (_L253081_ _hd252719253017_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253081_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253081_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253080_
                                    _self252561_)))
                            (___kont261175261176_
                             _L253078_
                             _L253079_
                             _L253080_
                             _L253081_)
                            (___kont261181261182_)))))
                   (___match261536261537_
                    (lambda (_e252711252990_
                             _hd252710252993_
                             _tl252709252995_
                             _e252714252998_
                             _hd252713253001_
                             _tl252712253003_
                             _e252717253006_
                             _hd252716253009_
                             _tl252715253011_
                             _e252720253014_
                             _hd252719253017_
                             _tl252718253019_
                             _e252723253022_
                             _hd252722253025_
                             _tl252721253027_
                             _e252726253030_
                             _hd252725253033_
                             _tl252724253035_
                             _e252729253038_
                             _hd252728253041_
                             _tl252727253043_
                             _e252732253046_
                             _hd252731253049_
                             _tl252730253051_
                             _e252735253054_
                             _hd252734253057_
                             _tl252733253059_
                             _e252738253062_
                             _hd252737253065_
                             _tl252736253067_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252730253051_))
                          (let ((_e252741253070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252730253051_))))
                            (let ((_tl252739253075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252741253070_)))
                                  (_hd252740253073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252741253070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252739253075_))
                                  (___match261544261545_
                                   _e252711252990_
                                   _hd252710252993_
                                   _tl252709252995_
                                   _e252714252998_
                                   _hd252713253001_
                                   _tl252712253003_
                                   _e252717253006_
                                   _hd252716253009_
                                   _tl252715253011_
                                   _e252720253014_
                                   _hd252719253017_
                                   _tl252718253019_
                                   _e252723253022_
                                   _hd252722253025_
                                   _tl252721253027_
                                   _e252726253030_
                                   _hd252725253033_
                                   _tl252724253035_
                                   _e252729253038_
                                   _hd252728253041_
                                   _tl252727253043_
                                   _e252732253046_
                                   _hd252731253049_
                                   _tl252730253051_
                                   _e252735253054_
                                   _hd252734253057_
                                   _tl252733253059_
                                   _e252738253062_
                                   _hd252737253065_
                                   _tl252736253067_
                                   _e252741253070_
                                   _hd252740253073_
                                   _tl252739253075_)
                                  (___kont261181261182_))))
                          (___match261660261661_
                           _e252711252990_
                           _hd252710252993_
                           _tl252709252995_
                           _e252714252998_
                           _hd252713253001_
                           _tl252712253003_
                           _e252717253006_
                           _hd252716253009_
                           _tl252715253011_
                           _e252720253014_
                           _hd252719253017_
                           _tl252718253019_
                           _e252723253022_
                           _hd252722253025_
                           _tl252721253027_
                           _e252726253030_
                           _hd252725253033_
                           _tl252724253035_
                           _e252729253038_
                           _hd252728253041_
                           _tl252727253043_
                           _e252732253046_
                           _hd252731253049_
                           _tl252730253051_))))
                   (___match261458261459_
                    (lambda (_e252677253121_
                             _hd252676253124_
                             _tl252675253126_
                             _e252680253129_
                             _hd252679253132_
                             _tl252678253134_
                             _e252683253137_
                             _hd252682253140_
                             _tl252681253142_
                             _e252686253145_
                             _hd252685253148_
                             _tl252684253150_
                             _e252689253153_
                             _hd252688253156_
                             _tl252687253158_
                             _e252692253161_
                             _hd252691253164_
                             _tl252690253166_
                             _e252695253169_
                             _hd252694253172_
                             _tl252693253174_
                             _e252698253177_
                             _hd252697253180_
                             _tl252696253182_
                             _e252701253185_
                             _hd252700253188_
                             _tl252699253190_
                             _e252704253193_
                             _hd252703253196_
                             _tl252702253198_)
                      (let ((_L253201_ _hd252703253196_)
                            (_L253202_ _hd252694253172_)
                            (_L253203_ _hd252685253148_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253203_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253203_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253202_
                                    _self252561_)))
                            (___kont261173261174_
                             _L253201_
                             _L253202_
                             _L253203_)
                            (___match261662261663_
                             _e252677253121_
                             _hd252676253124_
                             _tl252675253126_
                             _e252680253129_
                             _hd252679253132_
                             _tl252678253134_
                             _e252683253137_
                             _hd252682253140_
                             _tl252681253142_
                             _e252686253145_
                             _hd252685253148_
                             _tl252684253150_
                             _e252689253153_
                             _hd252688253156_
                             _tl252687253158_
                             _e252692253161_
                             _hd252691253164_
                             _tl252690253166_
                             _e252695253169_
                             _hd252694253172_
                             _tl252693253174_
                             _e252698253177_
                             _hd252697253180_
                             _tl252696253182_)))))
                   (___match261456261457_
                    (lambda (_e252677253121_
                             _hd252676253124_
                             _tl252675253126_
                             _e252680253129_
                             _hd252679253132_
                             _tl252678253134_
                             _e252683253137_
                             _hd252682253140_
                             _tl252681253142_
                             _e252686253145_
                             _hd252685253148_
                             _tl252684253150_
                             _e252689253153_
                             _hd252688253156_
                             _tl252687253158_
                             _e252692253161_
                             _hd252691253164_
                             _tl252690253166_
                             _e252695253169_
                             _hd252694253172_
                             _tl252693253174_
                             _e252698253177_
                             _hd252697253180_
                             _tl252696253182_
                             _e252701253185_
                             _hd252700253188_
                             _tl252699253190_
                             _e252704253193_
                             _hd252703253196_
                             _tl252702253198_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252696253182_))
                          (___match261458261459_
                           _e252677253121_
                           _hd252676253124_
                           _tl252675253126_
                           _e252680253129_
                           _hd252679253132_
                           _tl252678253134_
                           _e252683253137_
                           _hd252682253140_
                           _tl252681253142_
                           _e252686253145_
                           _hd252685253148_
                           _tl252684253150_
                           _e252689253153_
                           _hd252688253156_
                           _tl252687253158_
                           _e252692253161_
                           _hd252691253164_
                           _tl252690253166_
                           _e252695253169_
                           _hd252694253172_
                           _tl252693253174_
                           _e252698253177_
                           _hd252697253180_
                           _tl252696253182_
                           _e252701253185_
                           _hd252700253188_
                           _tl252699253190_
                           _e252704253193_
                           _hd252703253196_
                           _tl252702253198_)
                          (___match261536261537_
                           _e252677253121_
                           _hd252676253124_
                           _tl252675253126_
                           _e252680253129_
                           _hd252679253132_
                           _tl252678253134_
                           _e252683253137_
                           _hd252682253140_
                           _tl252681253142_
                           _e252686253145_
                           _hd252685253148_
                           _tl252684253150_
                           _e252689253153_
                           _hd252688253156_
                           _tl252687253158_
                           _e252692253161_
                           _hd252691253164_
                           _tl252690253166_
                           _e252695253169_
                           _hd252694253172_
                           _tl252693253174_
                           _e252698253177_
                           _hd252697253180_
                           _tl252696253182_
                           _e252701253185_
                           _hd252700253188_
                           _tl252699253190_
                           _e252704253193_
                           _hd252703253196_
                           _tl252702253198_))))
                   (___match261446261447_
                    (lambda (_e252677253121_
                             _hd252676253124_
                             _tl252675253126_
                             _e252680253129_
                             _hd252679253132_
                             _tl252678253134_
                             _e252683253137_
                             _hd252682253140_
                             _tl252681253142_
                             _e252686253145_
                             _hd252685253148_
                             _tl252684253150_
                             _e252689253153_
                             _hd252688253156_
                             _tl252687253158_
                             _e252692253161_
                             _hd252691253164_
                             _tl252690253166_
                             _e252695253169_
                             _hd252694253172_
                             _tl252693253174_
                             _e252698253177_
                             _hd252697253180_
                             _tl252696253182_
                             _e252701253185_
                             _hd252700253188_
                             _tl252699253190_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd252700253188_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl252699253190_))
                              (let ((_e252704253193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl252699253190_))))
                                (let ((_tl252702253198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252704253193_)))
                                      (_hd252703253196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252704253193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl252702253198_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl252696253182_))
                                          (___match261458261459_
                                           _e252677253121_
                                           _hd252676253124_
                                           _tl252675253126_
                                           _e252680253129_
                                           _hd252679253132_
                                           _tl252678253134_
                                           _e252683253137_
                                           _hd252682253140_
                                           _tl252681253142_
                                           _e252686253145_
                                           _hd252685253148_
                                           _tl252684253150_
                                           _e252689253153_
                                           _hd252688253156_
                                           _tl252687253158_
                                           _e252692253161_
                                           _hd252691253164_
                                           _tl252690253166_
                                           _e252695253169_
                                           _hd252694253172_
                                           _tl252693253174_
                                           _e252698253177_
                                           _hd252697253180_
                                           _tl252696253182_
                                           _e252701253185_
                                           _hd252700253188_
                                           _tl252699253190_
                                           _e252704253193_
                                           _hd252703253196_
                                           _tl252702253198_)
                                          (___match261536261537_
                                           _e252677253121_
                                           _hd252676253124_
                                           _tl252675253126_
                                           _e252680253129_
                                           _hd252679253132_
                                           _tl252678253134_
                                           _e252683253137_
                                           _hd252682253140_
                                           _tl252681253142_
                                           _e252686253145_
                                           _hd252685253148_
                                           _tl252684253150_
                                           _e252689253153_
                                           _hd252688253156_
                                           _tl252687253158_
                                           _e252692253161_
                                           _hd252691253164_
                                           _tl252690253166_
                                           _e252695253169_
                                           _hd252694253172_
                                           _tl252693253174_
                                           _e252698253177_
                                           _hd252697253180_
                                           _tl252696253182_
                                           _e252701253185_
                                           _hd252700253188_
                                           _tl252699253190_
                                           _e252704253193_
                                           _hd252703253196_
                                           _tl252702253198_))
                                      (___match261660261661_
                                       _e252677253121_
                                       _hd252676253124_
                                       _tl252675253126_
                                       _e252680253129_
                                       _hd252679253132_
                                       _tl252678253134_
                                       _e252683253137_
                                       _hd252682253140_
                                       _tl252681253142_
                                       _e252686253145_
                                       _hd252685253148_
                                       _tl252684253150_
                                       _e252689253153_
                                       _hd252688253156_
                                       _tl252687253158_
                                       _e252692253161_
                                       _hd252691253164_
                                       _tl252690253166_
                                       _e252695253169_
                                       _hd252694253172_
                                       _tl252693253174_
                                       _e252698253177_
                                       _hd252697253180_
                                       _tl252696253182_))))
                              (___match261660261661_
                               _e252677253121_
                               _hd252676253124_
                               _tl252675253126_
                               _e252680253129_
                               _hd252679253132_
                               _tl252678253134_
                               _e252683253137_
                               _hd252682253140_
                               _tl252681253142_
                               _e252686253145_
                               _hd252685253148_
                               _tl252684253150_
                               _e252689253153_
                               _hd252688253156_
                               _tl252687253158_
                               _e252692253161_
                               _hd252691253164_
                               _tl252690253166_
                               _e252695253169_
                               _hd252694253172_
                               _tl252693253174_
                               _e252698253177_
                               _hd252697253180_
                               _tl252696253182_))
                          (___match261660261661_
                           _e252677253121_
                           _hd252676253124_
                           _tl252675253126_
                           _e252680253129_
                           _hd252679253132_
                           _tl252678253134_
                           _e252683253137_
                           _hd252682253140_
                           _tl252681253142_
                           _e252686253145_
                           _hd252685253148_
                           _tl252684253150_
                           _e252689253153_
                           _hd252688253156_
                           _tl252687253158_
                           _e252692253161_
                           _hd252691253164_
                           _tl252690253166_
                           _e252695253169_
                           _hd252694253172_
                           _tl252693253174_
                           _e252698253177_
                           _hd252697253180_
                           _tl252696253182_))))
                   (___match261378261379_
                    (lambda (_e252626253240_
                             _hd252625253243_
                             _tl252624253245_
                             _e252629253248_
                             _hd252628253251_
                             _tl252627253253_
                             _e252632253256_
                             _hd252631253259_
                             _tl252630253261_
                             _e252635253264_
                             _hd252634253267_
                             _tl252633253269_
                             _e252638253272_
                             _hd252637253275_
                             _tl252636253277_
                             _e252641253280_
                             _hd252640253283_
                             _tl252639253285_
                             _e252644253288_
                             _hd252643253291_
                             _tl252642253293_
                             _e252647253296_
                             _hd252646253299_
                             _tl252645253301_
                             _e252650253304_
                             _hd252649253307_
                             _tl252648253309_
                             _e252653253312_
                             _hd252652253315_
                             _tl252651253317_
                             _e252656253320_
                             _hd252655253323_
                             _tl252654253325_
                             _e252659253328_
                             _hd252658253331_
                             _tl252657253333_
                             _e252662253336_
                             _hd252661253339_
                             _tl252660253341_
                             ___splice261171261172_
                             _target252663253344_
                             _tl252665253346_)
                      (letrec ((_loop252666253349_
                                (lambda (_hd252664253352_ _args252670253354_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd252664253352_))
                                      (let ((_e252667253357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd252664253352_))))
                                        (let ((_lp-tl252669253362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252667253357_)))
                                              (_lp-hd252668253360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252667253357_))))
                                          (let ((__tmp262537
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd252668253360_
                                                         _args252670253354_))))
                                            (declare (not safe))
                                            (_loop252666253349_
                                             _lp-tl252669253362_
                                             __tmp262537))))
                                      (let ((_args252671253365_
                                             (reverse _args252670253354_)))
                                        (let ((_L253368_ _args252671253365_)
                                              (_L253369_ _hd252661253339_)
                                              (_L253370_ _hd252652253315_)
                                              (_L253371_ _hd252643253291_)
                                              (_L253372_ _hd252634253267_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253372_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253371_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L253370_
                                                      _self252561_)))
                                              (___kont261169261170_
                                               _L253368_
                                               _L253369_
                                               _L253370_
                                               _L253371_
                                               _L253372_)
                                              (___kont261181261182_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop252666253349_ _target252663253344_ '())))))
                   (___match261336261337_
                    (lambda (_e252626253240_
                             _hd252625253243_
                             _tl252624253245_
                             _e252629253248_
                             _hd252628253251_
                             _tl252627253253_
                             _e252632253256_
                             _hd252631253259_
                             _tl252630253261_
                             _e252635253264_
                             _hd252634253267_
                             _tl252633253269_
                             _e252638253272_
                             _hd252637253275_
                             _tl252636253277_
                             _e252641253280_
                             _hd252640253283_
                             _tl252639253285_
                             _e252644253288_
                             _hd252643253291_
                             _tl252642253293_
                             _e252647253296_
                             _hd252646253299_
                             _tl252645253301_
                             _e252650253304_
                             _hd252649253307_
                             _tl252648253309_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd252649253307_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl252648253309_))
                              (let ((_e252653253312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl252648253309_))))
                                (let ((_tl252651253317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252653253312_)))
                                      (_hd252652253315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252653253312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl252651253317_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl252645253301_))
                                          (let ((_e252656253320_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl252645253301_))))
                                            (let ((_tl252654253325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e252656253320_)))
                                                  (_hd252655253323_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e252656253320_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd252655253323_))
                                                  (let ((_e252659253328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd252655253323_))))
                                                    (let ((_tl252657253333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252659253328_)))
                                                          (_hd252658253331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252659253328_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd252658253331_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd252658253331_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252657253333_))
                          (let ((_e252662253336_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252657253333_))))
                            (let ((_tl252660253341_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252662253336_)))
                                  (_hd252661253339_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252662253336_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252660253341_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl252654253325_))
                                      (let ((___splice261171261172_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl252654253325_
                                                '0))))
                                        (let ((_tl252665253346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice261171261172_
                                                  '1)))
                                              (_target252663253344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice261171261172_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl252665253346_))
                                              (___match261378261379_
                                               _e252626253240_
                                               _hd252625253243_
                                               _tl252624253245_
                                               _e252629253248_
                                               _hd252628253251_
                                               _tl252627253253_
                                               _e252632253256_
                                               _hd252631253259_
                                               _tl252630253261_
                                               _e252635253264_
                                               _hd252634253267_
                                               _tl252633253269_
                                               _e252638253272_
                                               _hd252637253275_
                                               _tl252636253277_
                                               _e252641253280_
                                               _hd252640253283_
                                               _tl252639253285_
                                               _e252644253288_
                                               _hd252643253291_
                                               _tl252642253293_
                                               _e252647253296_
                                               _hd252646253299_
                                               _tl252645253301_
                                               _e252650253304_
                                               _hd252649253307_
                                               _tl252648253309_
                                               _e252653253312_
                                               _hd252652253315_
                                               _tl252651253317_
                                               _e252656253320_
                                               _hd252655253323_
                                               _tl252654253325_
                                               _e252659253328_
                                               _hd252658253331_
                                               _tl252657253333_
                                               _e252662253336_
                                               _hd252661253339_
                                               _tl252660253341_
                                               ___splice261171261172_
                                               _target252663253344_
                                               _tl252665253346_)
                                              (___kont261181261182_))))
                                      (___kont261181261182_))
                                  (___kont261181261182_))))
                          (___kont261181261182_))
                      (___kont261181261182_))
                  (___kont261181261182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont261181261182_))))
                                          (___match261660261661_
                                           _e252626253240_
                                           _hd252625253243_
                                           _tl252624253245_
                                           _e252629253248_
                                           _hd252628253251_
                                           _tl252627253253_
                                           _e252632253256_
                                           _hd252631253259_
                                           _tl252630253261_
                                           _e252635253264_
                                           _hd252634253267_
                                           _tl252633253269_
                                           _e252638253272_
                                           _hd252637253275_
                                           _tl252636253277_
                                           _e252641253280_
                                           _hd252640253283_
                                           _tl252639253285_
                                           _e252644253288_
                                           _hd252643253291_
                                           _tl252642253293_
                                           _e252647253296_
                                           _hd252646253299_
                                           _tl252645253301_))
                                      (___match261660261661_
                                       _e252626253240_
                                       _hd252625253243_
                                       _tl252624253245_
                                       _e252629253248_
                                       _hd252628253251_
                                       _tl252627253253_
                                       _e252632253256_
                                       _hd252631253259_
                                       _tl252630253261_
                                       _e252635253264_
                                       _hd252634253267_
                                       _tl252633253269_
                                       _e252638253272_
                                       _hd252637253275_
                                       _tl252636253277_
                                       _e252641253280_
                                       _hd252640253283_
                                       _tl252639253285_
                                       _e252644253288_
                                       _hd252643253291_
                                       _tl252642253293_
                                       _e252647253296_
                                       _hd252646253299_
                                       _tl252645253301_))))
                              (___match261660261661_
                               _e252626253240_
                               _hd252625253243_
                               _tl252624253245_
                               _e252629253248_
                               _hd252628253251_
                               _tl252627253253_
                               _e252632253256_
                               _hd252631253259_
                               _tl252630253261_
                               _e252635253264_
                               _hd252634253267_
                               _tl252633253269_
                               _e252638253272_
                               _hd252637253275_
                               _tl252636253277_
                               _e252641253280_
                               _hd252640253283_
                               _tl252639253285_
                               _e252644253288_
                               _hd252643253291_
                               _tl252642253293_
                               _e252647253296_
                               _hd252646253299_
                               _tl252645253301_))
                          (___match261446261447_
                           _e252626253240_
                           _hd252625253243_
                           _tl252624253245_
                           _e252629253248_
                           _hd252628253251_
                           _tl252627253253_
                           _e252632253256_
                           _hd252631253259_
                           _tl252630253261_
                           _e252635253264_
                           _hd252634253267_
                           _tl252633253269_
                           _e252638253272_
                           _hd252637253275_
                           _tl252636253277_
                           _e252641253280_
                           _hd252640253283_
                           _tl252639253285_
                           _e252644253288_
                           _hd252643253291_
                           _tl252642253293_
                           _e252647253296_
                           _hd252646253299_
                           _tl252645253301_
                           _e252650253304_
                           _hd252649253307_
                           _tl252648253309_))))
                   (___match261268261269_
                    (lambda (_e252582253429_
                             _hd252581253432_
                             _tl252580253434_
                             _e252585253437_
                             _hd252584253440_
                             _tl252583253442_
                             _e252588253445_
                             _hd252587253448_
                             _tl252586253450_
                             _e252591253453_
                             _hd252590253456_
                             _tl252589253458_
                             _e252594253461_
                             _hd252593253464_
                             _tl252592253466_
                             _e252597253469_
                             _hd252596253472_
                             _tl252595253474_
                             _e252600253477_
                             _hd252599253480_
                             _tl252598253482_
                             _e252603253485_
                             _hd252602253488_
                             _tl252601253490_
                             _e252606253493_
                             _hd252605253496_
                             _tl252604253498_
                             _e252609253501_
                             _hd252608253504_
                             _tl252607253506_
                             ___splice261167261168_
                             _target252610253509_
                             _tl252612253511_)
                      (letrec ((_loop252613253514_
                                (lambda (_hd252611253517_ _args252617253519_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd252611253517_))
                                      (let ((_e252614253522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd252611253517_))))
                                        (let ((_lp-tl252616253527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252614253522_)))
                                              (_lp-hd252615253525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252614253522_))))
                                          (let ((__tmp262538
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd252615253525_
                                                         _args252617253519_))))
                                            (declare (not safe))
                                            (_loop252613253514_
                                             _lp-tl252616253527_
                                             __tmp262538))))
                                      (let ((_args252618253530_
                                             (reverse _args252617253519_)))
                                        (let ((_L253533_ _args252618253530_)
                                              (_L253534_ _hd252608253504_)
                                              (_L253535_ _hd252599253480_)
                                              (_L253536_ _hd252590253456_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253536_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L253535_
                                                      _self252561_)))
                                              (___kont261165261166_
                                               _L253533_
                                               _L253534_
                                               _L253535_
                                               _L253536_)
                                              (___match261456261457_
                                               _e252582253429_
                                               _hd252581253432_
                                               _tl252580253434_
                                               _e252585253437_
                                               _hd252584253440_
                                               _tl252583253442_
                                               _e252588253445_
                                               _hd252587253448_
                                               _tl252586253450_
                                               _e252591253453_
                                               _hd252590253456_
                                               _tl252589253458_
                                               _e252594253461_
                                               _hd252593253464_
                                               _tl252592253466_
                                               _e252597253469_
                                               _hd252596253472_
                                               _tl252595253474_
                                               _e252600253477_
                                               _hd252599253480_
                                               _tl252598253482_
                                               _e252603253485_
                                               _hd252602253488_
                                               _tl252601253490_
                                               _e252606253493_
                                               _hd252605253496_
                                               _tl252604253498_
                                               _e252609253501_
                                               _hd252608253504_
                                               _tl252607253506_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop252613253514_ _target252610253509_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx261163261164_))
                  (let ((_e252582253429_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx261163261164_))))
                    (let ((_tl252580253434_
                           (let ()
                             (declare (not safe))
                             (##cdr _e252582253429_)))
                          (_hd252581253432_
                           (let ()
                             (declare (not safe))
                             (##car _e252582253429_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252580253434_))
                          (let ((_e252585253437_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252580253434_))))
                            (let ((_tl252583253442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252585253437_)))
                                  (_hd252584253440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252585253437_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd252584253440_))
                                  (let ((_e252588253445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd252584253440_))))
                                    (let ((_tl252586253450_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e252588253445_)))
                                          (_hd252587253448_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e252588253445_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd252587253448_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd252587253448_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl252586253450_))
                                                  (let ((_e252591253453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl252586253450_))))
                                                    (let ((_tl252589253458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252591253453_)))
                                                          (_hd252590253456_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252591253453_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl252589253458_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl252583253442_))
                      (let ((_e252594253461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl252583253442_))))
                        (let ((_tl252592253466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e252594253461_)))
                              (_hd252593253464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e252594253461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd252593253464_))
                              (let ((_e252597253469_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd252593253464_))))
                                (let ((_tl252595253474_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252597253469_)))
                                      (_hd252596253472_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252597253469_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd252596253472_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd252596253472_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl252595253474_))
                                              (let ((_e252600253477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl252595253474_))))
                                                (let ((_tl252598253482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e252600253477_)))
                                                      (_hd252599253480_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e252600253477_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl252598253482_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl252592253466_))
                                                          (let ((_e252603253485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl252592253466_))))
                    (let ((_tl252601253490_
                           (let ()
                             (declare (not safe))
                             (##cdr _e252603253485_)))
                          (_hd252602253488_
                           (let ()
                             (declare (not safe))
                             (##car _e252603253485_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd252602253488_))
                          (let ((_e252606253493_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd252602253488_))))
                            (let ((_tl252604253498_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252606253493_)))
                                  (_hd252605253496_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252606253493_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd252605253496_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd252605253496_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl252604253498_))
                                          (let ((_e252609253501_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl252604253498_))))
                                            (let ((_tl252607253506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e252609253501_)))
                                                  (_hd252608253504_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e252609253501_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl252607253506_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl252601253490_))
                                                      (let ((___splice261167261168_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl252601253490_ '0))))
                (let ((_tl252612253511_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice261167261168_ '1)))
                      (_target252610253509_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice261167261168_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl252612253511_))
                      (___match261268261269_
                       _e252582253429_
                       _hd252581253432_
                       _tl252580253434_
                       _e252585253437_
                       _hd252584253440_
                       _tl252583253442_
                       _e252588253445_
                       _hd252587253448_
                       _tl252586253450_
                       _e252591253453_
                       _hd252590253456_
                       _tl252589253458_
                       _e252594253461_
                       _hd252593253464_
                       _tl252592253466_
                       _e252597253469_
                       _hd252596253472_
                       _tl252595253474_
                       _e252600253477_
                       _hd252599253480_
                       _tl252598253482_
                       _e252603253485_
                       _hd252602253488_
                       _tl252601253490_
                       _e252606253493_
                       _hd252605253496_
                       _tl252604253498_
                       _e252609253501_
                       _hd252608253504_
                       _tl252607253506_
                       ___splice261167261168_
                       _target252610253509_
                       _tl252612253511_)
                      (___match261456261457_
                       _e252582253429_
                       _hd252581253432_
                       _tl252580253434_
                       _e252585253437_
                       _hd252584253440_
                       _tl252583253442_
                       _e252588253445_
                       _hd252587253448_
                       _tl252586253450_
                       _e252591253453_
                       _hd252590253456_
                       _tl252589253458_
                       _e252594253461_
                       _hd252593253464_
                       _tl252592253466_
                       _e252597253469_
                       _hd252596253472_
                       _tl252595253474_
                       _e252600253477_
                       _hd252599253480_
                       _tl252598253482_
                       _e252603253485_
                       _hd252602253488_
                       _tl252601253490_
                       _e252606253493_
                       _hd252605253496_
                       _tl252604253498_
                       _e252609253501_
                       _hd252608253504_
                       _tl252607253506_))))
              (___match261456261457_
               _e252582253429_
               _hd252581253432_
               _tl252580253434_
               _e252585253437_
               _hd252584253440_
               _tl252583253442_
               _e252588253445_
               _hd252587253448_
               _tl252586253450_
               _e252591253453_
               _hd252590253456_
               _tl252589253458_
               _e252594253461_
               _hd252593253464_
               _tl252592253466_
               _e252597253469_
               _hd252596253472_
               _tl252595253474_
               _e252600253477_
               _hd252599253480_
               _tl252598253482_
               _e252603253485_
               _hd252602253488_
               _tl252601253490_
               _e252606253493_
               _hd252605253496_
               _tl252604253498_
               _e252609253501_
               _hd252608253504_
               _tl252607253506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match261660261661_
                                                   _e252582253429_
                                                   _hd252581253432_
                                                   _tl252580253434_
                                                   _e252585253437_
                                                   _hd252584253440_
                                                   _tl252583253442_
                                                   _e252588253445_
                                                   _hd252587253448_
                                                   _tl252586253450_
                                                   _e252591253453_
                                                   _hd252590253456_
                                                   _tl252589253458_
                                                   _e252594253461_
                                                   _hd252593253464_
                                                   _tl252592253466_
                                                   _e252597253469_
                                                   _hd252596253472_
                                                   _tl252595253474_
                                                   _e252600253477_
                                                   _hd252599253480_
                                                   _tl252598253482_
                                                   _e252603253485_
                                                   _hd252602253488_
                                                   _tl252601253490_))))
                                          (___match261660261661_
                                           _e252582253429_
                                           _hd252581253432_
                                           _tl252580253434_
                                           _e252585253437_
                                           _hd252584253440_
                                           _tl252583253442_
                                           _e252588253445_
                                           _hd252587253448_
                                           _tl252586253450_
                                           _e252591253453_
                                           _hd252590253456_
                                           _tl252589253458_
                                           _e252594253461_
                                           _hd252593253464_
                                           _tl252592253466_
                                           _e252597253469_
                                           _hd252596253472_
                                           _tl252595253474_
                                           _e252600253477_
                                           _hd252599253480_
                                           _tl252598253482_
                                           _e252603253485_
                                           _hd252602253488_
                                           _tl252601253490_))
                                      (___match261336261337_
                                       _e252582253429_
                                       _hd252581253432_
                                       _tl252580253434_
                                       _e252585253437_
                                       _hd252584253440_
                                       _tl252583253442_
                                       _e252588253445_
                                       _hd252587253448_
                                       _tl252586253450_
                                       _e252591253453_
                                       _hd252590253456_
                                       _tl252589253458_
                                       _e252594253461_
                                       _hd252593253464_
                                       _tl252592253466_
                                       _e252597253469_
                                       _hd252596253472_
                                       _tl252595253474_
                                       _e252600253477_
                                       _hd252599253480_
                                       _tl252598253482_
                                       _e252603253485_
                                       _hd252602253488_
                                       _tl252601253490_
                                       _e252606253493_
                                       _hd252605253496_
                                       _tl252604253498_))
                                  (___match261660261661_
                                   _e252582253429_
                                   _hd252581253432_
                                   _tl252580253434_
                                   _e252585253437_
                                   _hd252584253440_
                                   _tl252583253442_
                                   _e252588253445_
                                   _hd252587253448_
                                   _tl252586253450_
                                   _e252591253453_
                                   _hd252590253456_
                                   _tl252589253458_
                                   _e252594253461_
                                   _hd252593253464_
                                   _tl252592253466_
                                   _e252597253469_
                                   _hd252596253472_
                                   _tl252595253474_
                                   _e252600253477_
                                   _hd252599253480_
                                   _tl252598253482_
                                   _e252603253485_
                                   _hd252602253488_
                                   _tl252601253490_))))
                          (___match261660261661_
                           _e252582253429_
                           _hd252581253432_
                           _tl252580253434_
                           _e252585253437_
                           _hd252584253440_
                           _tl252583253442_
                           _e252588253445_
                           _hd252587253448_
                           _tl252586253450_
                           _e252591253453_
                           _hd252590253456_
                           _tl252589253458_
                           _e252594253461_
                           _hd252593253464_
                           _tl252592253466_
                           _e252597253469_
                           _hd252596253472_
                           _tl252595253474_
                           _e252600253477_
                           _hd252599253480_
                           _tl252598253482_
                           _e252603253485_
                           _hd252602253488_
                           _tl252601253490_))))
                  (___match261598261599_
                   _e252582253429_
                   _hd252581253432_
                   _tl252580253434_
                   _e252585253437_
                   _hd252584253440_
                   _tl252583253442_
                   _e252588253445_
                   _hd252587253448_
                   _tl252586253450_
                   _e252591253453_
                   _hd252590253456_
                   _tl252589253458_
                   _e252594253461_
                   _hd252593253464_
                   _tl252592253466_
                   _e252597253469_
                   _hd252596253472_
                   _tl252595253474_
                   _e252600253477_
                   _hd252599253480_
                   _tl252598253482_))
              (___kont261181261182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont261181261182_))
                                          (___kont261181261182_))
                                      (___kont261181261182_))))
                              (___kont261181261182_))))
                      (___kont261181261182_))
                  (___kont261181261182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont261181261182_))
                                              (___kont261181261182_))
                                          (___kont261181261182_))))
                                  (___kont261181261182_))))
                          (___kont261181261182_))))
                  (___kont261181261182_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx251506_
               _self251507_
               _$t251508_
               _methods251509_
               _slots251510_
               _class-check251511_
               _struct-check251512_
               _struct-assert251513_)
        (letrec ((_force-e251515_
                  (lambda (_what252558_)
                    (let ((__tmp262539
                           (let ((__tmp262543
                                  (let ((__tmp262544
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp262544)))
                                 (__tmp262540
                                  (let ((__tmp262541
                                         (let ((__tmp262542
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what252558_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp262542))))
                                    (declare (not safe))
                                    (cons __tmp262541 '()))))
                             (declare (not safe))
                             (cons __tmp262543 __tmp262540))))
                      (declare (not safe))
                      (cons '%#call __tmp262539)))))
          (let* ((___stx261665261666_ _stx251506_)
                 (_g251523251745_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx261665261666_)))))
            (let ((___kont261667261668_
                   (lambda (_L252504_ _L252505_ _L252506_ _L252507_)
                     (let ((_$method252552_
                            (let ((__tmp262545
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252505_))))
                              (declare (not safe))
                              (hash-ref__0 _methods251509_ __tmp262545)))
                           (_args252553_
                            (map (lambda (_g252540252542_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g252540252542_
                                      _self251507_
                                      _$t251508_
                                      _methods251509_
                                      _slots251510_
                                      _class-check251511_
                                      _struct-check251512_
                                      _struct-assert251513_)))
                                 (let ((__tmp262546
                                        (lambda (_g252544252547_
                                                 _g252545252549_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252544252547_
                                                  _g252545252549_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp262546 '() _L252504_)))))
                       (let ((__tmp262547
                              (let ((__tmp262548
                                     (let ((__tmp262552
                                            (let ()
                                              (declare (not safe))
                                              (_force-e251515_
                                               _$method252552_)))
                                           (__tmp262549
                                            (let ((__tmp262550
                                                   (let ((__tmp262551
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self251507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262551))))
                                              (declare (not safe))
                                              (cons __tmp262550
                                                    _args252553_))))
                                       (declare (not safe))
                                       (cons __tmp262552 __tmp262549))))
                                (declare (not safe))
                                (cons '%#call __tmp262548))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262547 _stx251506_)))))
                  (___kont261671261672_
                   (lambda (_L252336_ _L252337_ _L252338_ _L252339_ _L252340_)
                     (let ((_$method252392_
                            (let ((__tmp262553
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252337_))))
                              (declare (not safe))
                              (hash-ref__0 _methods251509_ __tmp262553)))
                           (_args252393_
                            (map (lambda (_g252380252382_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g252380252382_
                                      _self251507_
                                      _$t251508_
                                      _methods251509_
                                      _slots251510_
                                      _class-check251511_
                                      _struct-check251512_
                                      _struct-assert251513_)))
                                 (let ((__tmp262554
                                        (lambda (_g252384252387_
                                                 _g252385252389_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252384252387_
                                                  _g252385252389_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp262554 '() _L252336_)))))
                       (let ((__tmp262555
                              (let ((__tmp262556
                                     (let ((__tmp262562
                                            (let ((__tmp262563
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262563)))
                                           (__tmp262557
                                            (let ((__tmp262561
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e251515_
                                                      _$method252392_)))
                                                  (__tmp262558
                                                   (let ((__tmp262559
                                                          (let ((__tmp262560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251507_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262559
                                                           _args252393_))))
                                              (declare (not safe))
                                              (cons __tmp262561 __tmp262558))))
                                       (declare (not safe))
                                       (cons __tmp262562 __tmp262557))))
                                (declare (not safe))
                                (cons '%#call __tmp262556))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262555 _stx251506_)))))
                  (___kont261675261676_
                   (lambda (_L252167_ _L252168_ _L252169_)
                     (let* ((_$field252201_
                             (let ((__tmp262564
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L252167_))))
                               (declare (not safe))
                               (hash-ref__0 _slots251510_ __tmp262564)))
                            (__tmp262565
                             (let ((__tmp262566
                                    (let ((__tmp262573
                                           (let ((__tmp262574
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t251508_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp262574)))
                                          (__tmp262567
                                           (let ((__tmp262571
                                                  (let ((__tmp262572
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field252201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262572)))
                                                 (__tmp262568
                                                  (let ((__tmp262569
                                                         (let ((__tmp262570
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self251507_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp262570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262569 '()))))
                                             (declare (not safe))
                                             (cons __tmp262571 __tmp262568))))
                                      (declare (not safe))
                                      (cons __tmp262573 __tmp262567))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp262566))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp262565 _stx251506_))))
                  (___kont261677261678_
                   (lambda (_L252041_ _L252042_ _L252043_ _L252044_)
                     (let ((_$field252079_
                            (let ((__tmp262575
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252042_))))
                              (declare (not safe))
                              (hash-ref__0 _slots251510_ __tmp262575)))
                           (_expr252080_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L252041_
                               _self251507_
                               _$t251508_
                               _methods251509_
                               _slots251510_
                               _class-check251511_
                               _struct-check251512_
                               _struct-assert251513_))))
                       (let ((__tmp262576
                              (let ((__tmp262577
                                     (let ((__tmp262585
                                            (let ((__tmp262586
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251508_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262586)))
                                           (__tmp262578
                                            (let ((__tmp262583
                                                   (let ((__tmp262584
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262584)))
                                                  (__tmp262579
                                                   (let ((__tmp262581
                                                          (let ((__tmp262582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251507_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262582)))
                 (__tmp262580
                  (let () (declare (not safe)) (cons _expr252080_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262581
                                                           __tmp262580))))
                                              (declare (not safe))
                                              (cons __tmp262583 __tmp262579))))
                                       (declare (not safe))
                                       (cons __tmp262585 __tmp262578))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp262577))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262576 _stx251506_)))))
                  (___kont261679261680_
                   (lambda (_L251920_ _L251921_)
                     (let* ((_slot251943_
                             (##structure-ref
                              (let ((__tmp262587
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L251921_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp262587))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field251945_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots251510_ _slot251943_))))
                       (let ((__tmp262588
                              (let ((__tmp262589
                                     (let ((__tmp262596
                                            (let ((__tmp262597
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251508_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262597)))
                                           (__tmp262590
                                            (let ((__tmp262594
                                                   (let ((__tmp262595
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field251945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262595)))
                                                  (__tmp262591
                                                   (let ((__tmp262592
                                                          (let ((__tmp262593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251507_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262592 '()))))
                                              (declare (not safe))
                                              (cons __tmp262594 __tmp262591))))
                                       (declare (not safe))
                                       (cons __tmp262596 __tmp262590))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp262589))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262588 _stx251506_)))))
                  (___kont261681261682_
                   (lambda (_L251821_ _L251822_ _L251823_)
                     (let* ((_slot251852_
                             (##structure-ref
                              (let ((__tmp262598
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L251823_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp262598))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field251854_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots251510_ _slot251852_)))
                            (_expr251856_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L251821_
                                _self251507_
                                _$t251508_
                                _methods251509_
                                _slots251510_
                                _class-check251511_
                                _struct-check251512_
                                _struct-assert251513_))))
                       (let ((__tmp262599
                              (let ((__tmp262600
                                     (let ((__tmp262608
                                            (let ((__tmp262609
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251508_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp262609)))
                                           (__tmp262601
                                            (let ((__tmp262606
                                                   (let ((__tmp262607
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field251854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp262607)))
                                                  (__tmp262602
                                                   (let ((__tmp262604
                                                          (let ((__tmp262605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251507_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp262605)))
                 (__tmp262603
                  (let () (declare (not safe)) (cons _expr251856_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp262604
                                                           __tmp262603))))
                                              (declare (not safe))
                                              (cons __tmp262606 __tmp262602))))
                                       (declare (not safe))
                                       (cons __tmp262608 __tmp262601))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp262600))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp262599 _stx251506_)))))
                  (___kont261683261684_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx251506_
                        _self251507_
                        _$t251508_
                        _methods251509_
                        _slots251510_
                        _class-check251511_
                        _struct-check251512_
                        _struct-assert251513_)))))
              (let* ((___match262164262165_
                      (lambda (_e251719251757_
                               _hd251718251760_
                               _tl251717251762_
                               _e251722251765_
                               _hd251721251768_
                               _tl251720251770_
                               _e251725251773_
                               _hd251724251776_
                               _tl251723251778_
                               _e251728251781_
                               _hd251727251784_
                               _tl251726251786_
                               _e251731251789_
                               _hd251730251792_
                               _tl251729251794_
                               _e251734251797_
                               _hd251733251800_
                               _tl251732251802_
                               _e251737251805_
                               _hd251736251808_
                               _tl251735251810_
                               _e251740251813_
                               _hd251739251816_
                               _tl251738251818_)
                        (let ((_L251821_ _hd251739251816_)
                              (_L251822_ _hd251736251808_)
                              (_L251823_ _hd251727251784_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L251822_
                                      _self251507_))
                                   (let ((__tmp262610
                                          (let ((__tmp262611
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L251823_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp262611))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp262610
                                      'gxc#!mutator::t)))
                              (___kont261681261682_
                               _L251821_
                               _L251822_
                               _L251823_)
                              (___kont261683261684_)))))
                     (___match262162262163_
                      (lambda (_e251719251757_
                               _hd251718251760_
                               _tl251717251762_
                               _e251722251765_
                               _hd251721251768_
                               _tl251720251770_
                               _e251725251773_
                               _hd251724251776_
                               _tl251723251778_
                               _e251728251781_
                               _hd251727251784_
                               _tl251726251786_
                               _e251731251789_
                               _hd251730251792_
                               _tl251729251794_
                               _e251734251797_
                               _hd251733251800_
                               _tl251732251802_
                               _e251737251805_
                               _hd251736251808_
                               _tl251735251810_
                               _e251740251813_
                               _hd251739251816_
                               _tl251738251818_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251738251818_))
                            (___match262164262165_
                             _e251719251757_
                             _hd251718251760_
                             _tl251717251762_
                             _e251722251765_
                             _hd251721251768_
                             _tl251720251770_
                             _e251725251773_
                             _hd251724251776_
                             _tl251723251778_
                             _e251728251781_
                             _hd251727251784_
                             _tl251726251786_
                             _e251731251789_
                             _hd251730251792_
                             _tl251729251794_
                             _e251734251797_
                             _hd251733251800_
                             _tl251732251802_
                             _e251737251805_
                             _hd251736251808_
                             _tl251735251810_
                             _e251740251813_
                             _hd251739251816_
                             _tl251738251818_)
                            (___kont261683261684_))))
                     (___match262156262157_
                      (lambda (_e251719251757_
                               _hd251718251760_
                               _tl251717251762_
                               _e251722251765_
                               _hd251721251768_
                               _tl251720251770_
                               _e251725251773_
                               _hd251724251776_
                               _tl251723251778_
                               _e251728251781_
                               _hd251727251784_
                               _tl251726251786_
                               _e251731251789_
                               _hd251730251792_
                               _tl251729251794_
                               _e251734251797_
                               _hd251733251800_
                               _tl251732251802_
                               _e251737251805_
                               _hd251736251808_
                               _tl251735251810_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251729251794_))
                            (let ((_e251740251813_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251729251794_))))
                              (let ((_tl251738251818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251740251813_)))
                                    (_hd251739251816_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251740251813_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251738251818_))
                                    (___match262164262165_
                                     _e251719251757_
                                     _hd251718251760_
                                     _tl251717251762_
                                     _e251722251765_
                                     _hd251721251768_
                                     _tl251720251770_
                                     _e251725251773_
                                     _hd251724251776_
                                     _tl251723251778_
                                     _e251728251781_
                                     _hd251727251784_
                                     _tl251726251786_
                                     _e251731251789_
                                     _hd251730251792_
                                     _tl251729251794_
                                     _e251734251797_
                                     _hd251733251800_
                                     _tl251732251802_
                                     _e251737251805_
                                     _hd251736251808_
                                     _tl251735251810_
                                     _e251740251813_
                                     _hd251739251816_
                                     _tl251738251818_)
                                    (___kont261683261684_))))
                            (___kont261683261684_))))
                     (___match262102262103_
                      (lambda (_e251695251864_
                               _hd251694251867_
                               _tl251693251869_
                               _e251698251872_
                               _hd251697251875_
                               _tl251696251877_
                               _e251701251880_
                               _hd251700251883_
                               _tl251699251885_
                               _e251704251888_
                               _hd251703251891_
                               _tl251702251893_
                               _e251707251896_
                               _hd251706251899_
                               _tl251705251901_
                               _e251710251904_
                               _hd251709251907_
                               _tl251708251909_
                               _e251713251912_
                               _hd251712251915_
                               _tl251711251917_)
                        (let ((_L251920_ _hd251712251915_)
                              (_L251921_ _hd251703251891_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L251920_
                                      _self251507_))
                                   (let ((__tmp262612
                                          (let ((__tmp262613
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L251921_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp262613))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp262612
                                      'gxc#!accessor::t)))
                              (___kont261679261680_ _L251920_ _L251921_)
                              (___kont261683261684_)))))
                     (___match262100262101_
                      (lambda (_e251695251864_
                               _hd251694251867_
                               _tl251693251869_
                               _e251698251872_
                               _hd251697251875_
                               _tl251696251877_
                               _e251701251880_
                               _hd251700251883_
                               _tl251699251885_
                               _e251704251888_
                               _hd251703251891_
                               _tl251702251893_
                               _e251707251896_
                               _hd251706251899_
                               _tl251705251901_
                               _e251710251904_
                               _hd251709251907_
                               _tl251708251909_
                               _e251713251912_
                               _hd251712251915_
                               _tl251711251917_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251705251901_))
                            (___match262102262103_
                             _e251695251864_
                             _hd251694251867_
                             _tl251693251869_
                             _e251698251872_
                             _hd251697251875_
                             _tl251696251877_
                             _e251701251880_
                             _hd251700251883_
                             _tl251699251885_
                             _e251704251888_
                             _hd251703251891_
                             _tl251702251893_
                             _e251707251896_
                             _hd251706251899_
                             _tl251705251901_
                             _e251710251904_
                             _hd251709251907_
                             _tl251708251909_
                             _e251713251912_
                             _hd251712251915_
                             _tl251711251917_)
                            (___match262156262157_
                             _e251695251864_
                             _hd251694251867_
                             _tl251693251869_
                             _e251698251872_
                             _hd251697251875_
                             _tl251696251877_
                             _e251701251880_
                             _hd251700251883_
                             _tl251699251885_
                             _e251704251888_
                             _hd251703251891_
                             _tl251702251893_
                             _e251707251896_
                             _hd251706251899_
                             _tl251705251901_
                             _e251710251904_
                             _hd251709251907_
                             _tl251708251909_
                             _e251713251912_
                             _hd251712251915_
                             _tl251711251917_))))
                     (___match262046262047_
                      (lambda (_e251660251953_
                               _hd251659251956_
                               _tl251658251958_
                               _e251663251961_
                               _hd251662251964_
                               _tl251661251966_
                               _e251666251969_
                               _hd251665251972_
                               _tl251664251974_
                               _e251669251977_
                               _hd251668251980_
                               _tl251667251982_
                               _e251672251985_
                               _hd251671251988_
                               _tl251670251990_
                               _e251675251993_
                               _hd251674251996_
                               _tl251673251998_
                               _e251678252001_
                               _hd251677252004_
                               _tl251676252006_
                               _e251681252009_
                               _hd251680252012_
                               _tl251679252014_
                               _e251684252017_
                               _hd251683252020_
                               _tl251682252022_
                               _e251687252025_
                               _hd251686252028_
                               _tl251685252030_
                               _e251690252033_
                               _hd251689252036_
                               _tl251688252038_)
                        (let ((_L252041_ _hd251689252036_)
                              (_L252042_ _hd251686252028_)
                              (_L252043_ _hd251677252004_)
                              (_L252044_ _hd251668251980_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252044_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252044_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252043_
                                      _self251507_)))
                              (___kont261677261678_
                               _L252041_
                               _L252042_
                               _L252043_
                               _L252044_)
                              (___kont261683261684_)))))
                     (___match262038262039_
                      (lambda (_e251660251953_
                               _hd251659251956_
                               _tl251658251958_
                               _e251663251961_
                               _hd251662251964_
                               _tl251661251966_
                               _e251666251969_
                               _hd251665251972_
                               _tl251664251974_
                               _e251669251977_
                               _hd251668251980_
                               _tl251667251982_
                               _e251672251985_
                               _hd251671251988_
                               _tl251670251990_
                               _e251675251993_
                               _hd251674251996_
                               _tl251673251998_
                               _e251678252001_
                               _hd251677252004_
                               _tl251676252006_
                               _e251681252009_
                               _hd251680252012_
                               _tl251679252014_
                               _e251684252017_
                               _hd251683252020_
                               _tl251682252022_
                               _e251687252025_
                               _hd251686252028_
                               _tl251685252030_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251679252014_))
                            (let ((_e251690252033_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251679252014_))))
                              (let ((_tl251688252038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251690252033_)))
                                    (_hd251689252036_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251690252033_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251688252038_))
                                    (___match262046262047_
                                     _e251660251953_
                                     _hd251659251956_
                                     _tl251658251958_
                                     _e251663251961_
                                     _hd251662251964_
                                     _tl251661251966_
                                     _e251666251969_
                                     _hd251665251972_
                                     _tl251664251974_
                                     _e251669251977_
                                     _hd251668251980_
                                     _tl251667251982_
                                     _e251672251985_
                                     _hd251671251988_
                                     _tl251670251990_
                                     _e251675251993_
                                     _hd251674251996_
                                     _tl251673251998_
                                     _e251678252001_
                                     _hd251677252004_
                                     _tl251676252006_
                                     _e251681252009_
                                     _hd251680252012_
                                     _tl251679252014_
                                     _e251684252017_
                                     _hd251683252020_
                                     _tl251682252022_
                                     _e251687252025_
                                     _hd251686252028_
                                     _tl251685252030_
                                     _e251690252033_
                                     _hd251689252036_
                                     _tl251688252038_)
                                    (___kont261683261684_))))
                            (___match262162262163_
                             _e251660251953_
                             _hd251659251956_
                             _tl251658251958_
                             _e251663251961_
                             _hd251662251964_
                             _tl251661251966_
                             _e251666251969_
                             _hd251665251972_
                             _tl251664251974_
                             _e251669251977_
                             _hd251668251980_
                             _tl251667251982_
                             _e251672251985_
                             _hd251671251988_
                             _tl251670251990_
                             _e251675251993_
                             _hd251674251996_
                             _tl251673251998_
                             _e251678252001_
                             _hd251677252004_
                             _tl251676252006_
                             _e251681252009_
                             _hd251680252012_
                             _tl251679252014_))))
                     (___match261960261961_
                      (lambda (_e251626252087_
                               _hd251625252090_
                               _tl251624252092_
                               _e251629252095_
                               _hd251628252098_
                               _tl251627252100_
                               _e251632252103_
                               _hd251631252106_
                               _tl251630252108_
                               _e251635252111_
                               _hd251634252114_
                               _tl251633252116_
                               _e251638252119_
                               _hd251637252122_
                               _tl251636252124_
                               _e251641252127_
                               _hd251640252130_
                               _tl251639252132_
                               _e251644252135_
                               _hd251643252138_
                               _tl251642252140_
                               _e251647252143_
                               _hd251646252146_
                               _tl251645252148_
                               _e251650252151_
                               _hd251649252154_
                               _tl251648252156_
                               _e251653252159_
                               _hd251652252162_
                               _tl251651252164_)
                        (let ((_L252167_ _hd251652252162_)
                              (_L252168_ _hd251643252138_)
                              (_L252169_ _hd251634252114_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252169_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252169_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252168_
                                      _self251507_)))
                              (___kont261675261676_
                               _L252167_
                               _L252168_
                               _L252169_)
                              (___match262164262165_
                               _e251626252087_
                               _hd251625252090_
                               _tl251624252092_
                               _e251629252095_
                               _hd251628252098_
                               _tl251627252100_
                               _e251632252103_
                               _hd251631252106_
                               _tl251630252108_
                               _e251635252111_
                               _hd251634252114_
                               _tl251633252116_
                               _e251638252119_
                               _hd251637252122_
                               _tl251636252124_
                               _e251641252127_
                               _hd251640252130_
                               _tl251639252132_
                               _e251644252135_
                               _hd251643252138_
                               _tl251642252140_
                               _e251647252143_
                               _hd251646252146_
                               _tl251645252148_)))))
                     (___match261958261959_
                      (lambda (_e251626252087_
                               _hd251625252090_
                               _tl251624252092_
                               _e251629252095_
                               _hd251628252098_
                               _tl251627252100_
                               _e251632252103_
                               _hd251631252106_
                               _tl251630252108_
                               _e251635252111_
                               _hd251634252114_
                               _tl251633252116_
                               _e251638252119_
                               _hd251637252122_
                               _tl251636252124_
                               _e251641252127_
                               _hd251640252130_
                               _tl251639252132_
                               _e251644252135_
                               _hd251643252138_
                               _tl251642252140_
                               _e251647252143_
                               _hd251646252146_
                               _tl251645252148_
                               _e251650252151_
                               _hd251649252154_
                               _tl251648252156_
                               _e251653252159_
                               _hd251652252162_
                               _tl251651252164_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251645252148_))
                            (___match261960261961_
                             _e251626252087_
                             _hd251625252090_
                             _tl251624252092_
                             _e251629252095_
                             _hd251628252098_
                             _tl251627252100_
                             _e251632252103_
                             _hd251631252106_
                             _tl251630252108_
                             _e251635252111_
                             _hd251634252114_
                             _tl251633252116_
                             _e251638252119_
                             _hd251637252122_
                             _tl251636252124_
                             _e251641252127_
                             _hd251640252130_
                             _tl251639252132_
                             _e251644252135_
                             _hd251643252138_
                             _tl251642252140_
                             _e251647252143_
                             _hd251646252146_
                             _tl251645252148_
                             _e251650252151_
                             _hd251649252154_
                             _tl251648252156_
                             _e251653252159_
                             _hd251652252162_
                             _tl251651252164_)
                            (___match262038262039_
                             _e251626252087_
                             _hd251625252090_
                             _tl251624252092_
                             _e251629252095_
                             _hd251628252098_
                             _tl251627252100_
                             _e251632252103_
                             _hd251631252106_
                             _tl251630252108_
                             _e251635252111_
                             _hd251634252114_
                             _tl251633252116_
                             _e251638252119_
                             _hd251637252122_
                             _tl251636252124_
                             _e251641252127_
                             _hd251640252130_
                             _tl251639252132_
                             _e251644252135_
                             _hd251643252138_
                             _tl251642252140_
                             _e251647252143_
                             _hd251646252146_
                             _tl251645252148_
                             _e251650252151_
                             _hd251649252154_
                             _tl251648252156_
                             _e251653252159_
                             _hd251652252162_
                             _tl251651252164_))))
                     (___match261948261949_
                      (lambda (_e251626252087_
                               _hd251625252090_
                               _tl251624252092_
                               _e251629252095_
                               _hd251628252098_
                               _tl251627252100_
                               _e251632252103_
                               _hd251631252106_
                               _tl251630252108_
                               _e251635252111_
                               _hd251634252114_
                               _tl251633252116_
                               _e251638252119_
                               _hd251637252122_
                               _tl251636252124_
                               _e251641252127_
                               _hd251640252130_
                               _tl251639252132_
                               _e251644252135_
                               _hd251643252138_
                               _tl251642252140_
                               _e251647252143_
                               _hd251646252146_
                               _tl251645252148_
                               _e251650252151_
                               _hd251649252154_
                               _tl251648252156_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd251649252154_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl251648252156_))
                                (let ((_e251653252159_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl251648252156_))))
                                  (let ((_tl251651252164_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251653252159_)))
                                        (_hd251652252162_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251653252159_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl251651252164_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl251645252148_))
                                            (___match261960261961_
                                             _e251626252087_
                                             _hd251625252090_
                                             _tl251624252092_
                                             _e251629252095_
                                             _hd251628252098_
                                             _tl251627252100_
                                             _e251632252103_
                                             _hd251631252106_
                                             _tl251630252108_
                                             _e251635252111_
                                             _hd251634252114_
                                             _tl251633252116_
                                             _e251638252119_
                                             _hd251637252122_
                                             _tl251636252124_
                                             _e251641252127_
                                             _hd251640252130_
                                             _tl251639252132_
                                             _e251644252135_
                                             _hd251643252138_
                                             _tl251642252140_
                                             _e251647252143_
                                             _hd251646252146_
                                             _tl251645252148_
                                             _e251650252151_
                                             _hd251649252154_
                                             _tl251648252156_
                                             _e251653252159_
                                             _hd251652252162_
                                             _tl251651252164_)
                                            (___match262038262039_
                                             _e251626252087_
                                             _hd251625252090_
                                             _tl251624252092_
                                             _e251629252095_
                                             _hd251628252098_
                                             _tl251627252100_
                                             _e251632252103_
                                             _hd251631252106_
                                             _tl251630252108_
                                             _e251635252111_
                                             _hd251634252114_
                                             _tl251633252116_
                                             _e251638252119_
                                             _hd251637252122_
                                             _tl251636252124_
                                             _e251641252127_
                                             _hd251640252130_
                                             _tl251639252132_
                                             _e251644252135_
                                             _hd251643252138_
                                             _tl251642252140_
                                             _e251647252143_
                                             _hd251646252146_
                                             _tl251645252148_
                                             _e251650252151_
                                             _hd251649252154_
                                             _tl251648252156_
                                             _e251653252159_
                                             _hd251652252162_
                                             _tl251651252164_))
                                        (___match262162262163_
                                         _e251626252087_
                                         _hd251625252090_
                                         _tl251624252092_
                                         _e251629252095_
                                         _hd251628252098_
                                         _tl251627252100_
                                         _e251632252103_
                                         _hd251631252106_
                                         _tl251630252108_
                                         _e251635252111_
                                         _hd251634252114_
                                         _tl251633252116_
                                         _e251638252119_
                                         _hd251637252122_
                                         _tl251636252124_
                                         _e251641252127_
                                         _hd251640252130_
                                         _tl251639252132_
                                         _e251644252135_
                                         _hd251643252138_
                                         _tl251642252140_
                                         _e251647252143_
                                         _hd251646252146_
                                         _tl251645252148_))))
                                (___match262162262163_
                                 _e251626252087_
                                 _hd251625252090_
                                 _tl251624252092_
                                 _e251629252095_
                                 _hd251628252098_
                                 _tl251627252100_
                                 _e251632252103_
                                 _hd251631252106_
                                 _tl251630252108_
                                 _e251635252111_
                                 _hd251634252114_
                                 _tl251633252116_
                                 _e251638252119_
                                 _hd251637252122_
                                 _tl251636252124_
                                 _e251641252127_
                                 _hd251640252130_
                                 _tl251639252132_
                                 _e251644252135_
                                 _hd251643252138_
                                 _tl251642252140_
                                 _e251647252143_
                                 _hd251646252146_
                                 _tl251645252148_))
                            (___match262162262163_
                             _e251626252087_
                             _hd251625252090_
                             _tl251624252092_
                             _e251629252095_
                             _hd251628252098_
                             _tl251627252100_
                             _e251632252103_
                             _hd251631252106_
                             _tl251630252108_
                             _e251635252111_
                             _hd251634252114_
                             _tl251633252116_
                             _e251638252119_
                             _hd251637252122_
                             _tl251636252124_
                             _e251641252127_
                             _hd251640252130_
                             _tl251639252132_
                             _e251644252135_
                             _hd251643252138_
                             _tl251642252140_
                             _e251647252143_
                             _hd251646252146_
                             _tl251645252148_))))
                     (___match261880261881_
                      (lambda (_e251575252208_
                               _hd251574252211_
                               _tl251573252213_
                               _e251578252216_
                               _hd251577252219_
                               _tl251576252221_
                               _e251581252224_
                               _hd251580252227_
                               _tl251579252229_
                               _e251584252232_
                               _hd251583252235_
                               _tl251582252237_
                               _e251587252240_
                               _hd251586252243_
                               _tl251585252245_
                               _e251590252248_
                               _hd251589252251_
                               _tl251588252253_
                               _e251593252256_
                               _hd251592252259_
                               _tl251591252261_
                               _e251596252264_
                               _hd251595252267_
                               _tl251594252269_
                               _e251599252272_
                               _hd251598252275_
                               _tl251597252277_
                               _e251602252280_
                               _hd251601252283_
                               _tl251600252285_
                               _e251605252288_
                               _hd251604252291_
                               _tl251603252293_
                               _e251608252296_
                               _hd251607252299_
                               _tl251606252301_
                               _e251611252304_
                               _hd251610252307_
                               _tl251609252309_
                               ___splice261673261674_
                               _target251612252312_
                               _tl251614252314_)
                        (letrec ((_loop251615252317_
                                  (lambda (_hd251613252320_ _args251619252322_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd251613252320_))
                                        (let ((_e251616252325_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd251613252320_))))
                                          (let ((_lp-tl251618252330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e251616252325_)))
                                                (_lp-hd251617252328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e251616252325_))))
                                            (let ((__tmp262614
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd251617252328_
                                                           _args251619252322_))))
                                              (declare (not safe))
                                              (_loop251615252317_
                                               _lp-tl251618252330_
                                               __tmp262614))))
                                        (let ((_args251620252333_
                                               (reverse _args251619252322_)))
                                          (let ((_L252336_ _args251620252333_)
                                                (_L252337_ _hd251610252307_)
                                                (_L252338_ _hd251601252283_)
                                                (_L252339_ _hd251592252259_)
                                                (_L252340_ _hd251583252235_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252340_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252339_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L252338_
                                                        _self251507_)))
                                                (___kont261671261672_
                                                 _L252336_
                                                 _L252337_
                                                 _L252338_
                                                 _L252339_
                                                 _L252340_)
                                                (___kont261683261684_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop251615252317_ _target251612252312_ '())))))
                     (___match261838261839_
                      (lambda (_e251575252208_
                               _hd251574252211_
                               _tl251573252213_
                               _e251578252216_
                               _hd251577252219_
                               _tl251576252221_
                               _e251581252224_
                               _hd251580252227_
                               _tl251579252229_
                               _e251584252232_
                               _hd251583252235_
                               _tl251582252237_
                               _e251587252240_
                               _hd251586252243_
                               _tl251585252245_
                               _e251590252248_
                               _hd251589252251_
                               _tl251588252253_
                               _e251593252256_
                               _hd251592252259_
                               _tl251591252261_
                               _e251596252264_
                               _hd251595252267_
                               _tl251594252269_
                               _e251599252272_
                               _hd251598252275_
                               _tl251597252277_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd251598252275_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl251597252277_))
                                (let ((_e251602252280_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl251597252277_))))
                                  (let ((_tl251600252285_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251602252280_)))
                                        (_hd251601252283_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251602252280_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl251600252285_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl251594252269_))
                                            (let ((_e251605252288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl251594252269_))))
                                              (let ((_tl251603252293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e251605252288_)))
                                                    (_hd251604252291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e251605252288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd251604252291_))
                                                    (let ((_e251608252296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd251604252291_))))
                                                      (let ((_tl251606252301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e251608252296_)))
                    (_hd251607252299_
                     (let () (declare (not safe)) (##car _e251608252296_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd251607252299_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd251607252299_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251606252301_))
                            (let ((_e251611252304_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251606252301_))))
                              (let ((_tl251609252309_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251611252304_)))
                                    (_hd251610252307_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251611252304_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251609252309_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl251603252293_))
                                        (let ((___splice261673261674_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl251603252293_
                                                  '0))))
                                          (let ((_tl251614252314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice261673261674_
                                                    '1)))
                                                (_target251612252312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice261673261674_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl251614252314_))
                                                (___match261880261881_
                                                 _e251575252208_
                                                 _hd251574252211_
                                                 _tl251573252213_
                                                 _e251578252216_
                                                 _hd251577252219_
                                                 _tl251576252221_
                                                 _e251581252224_
                                                 _hd251580252227_
                                                 _tl251579252229_
                                                 _e251584252232_
                                                 _hd251583252235_
                                                 _tl251582252237_
                                                 _e251587252240_
                                                 _hd251586252243_
                                                 _tl251585252245_
                                                 _e251590252248_
                                                 _hd251589252251_
                                                 _tl251588252253_
                                                 _e251593252256_
                                                 _hd251592252259_
                                                 _tl251591252261_
                                                 _e251596252264_
                                                 _hd251595252267_
                                                 _tl251594252269_
                                                 _e251599252272_
                                                 _hd251598252275_
                                                 _tl251597252277_
                                                 _e251602252280_
                                                 _hd251601252283_
                                                 _tl251600252285_
                                                 _e251605252288_
                                                 _hd251604252291_
                                                 _tl251603252293_
                                                 _e251608252296_
                                                 _hd251607252299_
                                                 _tl251606252301_
                                                 _e251611252304_
                                                 _hd251610252307_
                                                 _tl251609252309_
                                                 ___splice261673261674_
                                                 _target251612252312_
                                                 _tl251614252314_)
                                                (___kont261683261684_))))
                                        (___kont261683261684_))
                                    (___kont261683261684_))))
                            (___kont261683261684_))
                        (___kont261683261684_))
                    (___kont261683261684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261683261684_))))
                                            (___match262162262163_
                                             _e251575252208_
                                             _hd251574252211_
                                             _tl251573252213_
                                             _e251578252216_
                                             _hd251577252219_
                                             _tl251576252221_
                                             _e251581252224_
                                             _hd251580252227_
                                             _tl251579252229_
                                             _e251584252232_
                                             _hd251583252235_
                                             _tl251582252237_
                                             _e251587252240_
                                             _hd251586252243_
                                             _tl251585252245_
                                             _e251590252248_
                                             _hd251589252251_
                                             _tl251588252253_
                                             _e251593252256_
                                             _hd251592252259_
                                             _tl251591252261_
                                             _e251596252264_
                                             _hd251595252267_
                                             _tl251594252269_))
                                        (___match262162262163_
                                         _e251575252208_
                                         _hd251574252211_
                                         _tl251573252213_
                                         _e251578252216_
                                         _hd251577252219_
                                         _tl251576252221_
                                         _e251581252224_
                                         _hd251580252227_
                                         _tl251579252229_
                                         _e251584252232_
                                         _hd251583252235_
                                         _tl251582252237_
                                         _e251587252240_
                                         _hd251586252243_
                                         _tl251585252245_
                                         _e251590252248_
                                         _hd251589252251_
                                         _tl251588252253_
                                         _e251593252256_
                                         _hd251592252259_
                                         _tl251591252261_
                                         _e251596252264_
                                         _hd251595252267_
                                         _tl251594252269_))))
                                (___match262162262163_
                                 _e251575252208_
                                 _hd251574252211_
                                 _tl251573252213_
                                 _e251578252216_
                                 _hd251577252219_
                                 _tl251576252221_
                                 _e251581252224_
                                 _hd251580252227_
                                 _tl251579252229_
                                 _e251584252232_
                                 _hd251583252235_
                                 _tl251582252237_
                                 _e251587252240_
                                 _hd251586252243_
                                 _tl251585252245_
                                 _e251590252248_
                                 _hd251589252251_
                                 _tl251588252253_
                                 _e251593252256_
                                 _hd251592252259_
                                 _tl251591252261_
                                 _e251596252264_
                                 _hd251595252267_
                                 _tl251594252269_))
                            (___match261948261949_
                             _e251575252208_
                             _hd251574252211_
                             _tl251573252213_
                             _e251578252216_
                             _hd251577252219_
                             _tl251576252221_
                             _e251581252224_
                             _hd251580252227_
                             _tl251579252229_
                             _e251584252232_
                             _hd251583252235_
                             _tl251582252237_
                             _e251587252240_
                             _hd251586252243_
                             _tl251585252245_
                             _e251590252248_
                             _hd251589252251_
                             _tl251588252253_
                             _e251593252256_
                             _hd251592252259_
                             _tl251591252261_
                             _e251596252264_
                             _hd251595252267_
                             _tl251594252269_
                             _e251599252272_
                             _hd251598252275_
                             _tl251597252277_))))
                     (___match261770261771_
                      (lambda (_e251531252400_
                               _hd251530252403_
                               _tl251529252405_
                               _e251534252408_
                               _hd251533252411_
                               _tl251532252413_
                               _e251537252416_
                               _hd251536252419_
                               _tl251535252421_
                               _e251540252424_
                               _hd251539252427_
                               _tl251538252429_
                               _e251543252432_
                               _hd251542252435_
                               _tl251541252437_
                               _e251546252440_
                               _hd251545252443_
                               _tl251544252445_
                               _e251549252448_
                               _hd251548252451_
                               _tl251547252453_
                               _e251552252456_
                               _hd251551252459_
                               _tl251550252461_
                               _e251555252464_
                               _hd251554252467_
                               _tl251553252469_
                               _e251558252472_
                               _hd251557252475_
                               _tl251556252477_
                               ___splice261669261670_
                               _target251559252480_
                               _tl251561252482_)
                        (letrec ((_loop251562252485_
                                  (lambda (_hd251560252488_ _args251566252490_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd251560252488_))
                                        (let ((_e251563252493_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd251560252488_))))
                                          (let ((_lp-tl251565252498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e251563252493_)))
                                                (_lp-hd251564252496_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e251563252493_))))
                                            (let ((__tmp262615
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd251564252496_
                                                           _args251566252490_))))
                                              (declare (not safe))
                                              (_loop251562252485_
                                               _lp-tl251565252498_
                                               __tmp262615))))
                                        (let ((_args251567252501_
                                               (reverse _args251566252490_)))
                                          (let ((_L252504_ _args251567252501_)
                                                (_L252505_ _hd251557252475_)
                                                (_L252506_ _hd251548252451_)
                                                (_L252507_ _hd251539252427_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252507_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L252506_
                                                        _self251507_)))
                                                (___kont261667261668_
                                                 _L252504_
                                                 _L252505_
                                                 _L252506_
                                                 _L252507_)
                                                (___match261958261959_
                                                 _e251531252400_
                                                 _hd251530252403_
                                                 _tl251529252405_
                                                 _e251534252408_
                                                 _hd251533252411_
                                                 _tl251532252413_
                                                 _e251537252416_
                                                 _hd251536252419_
                                                 _tl251535252421_
                                                 _e251540252424_
                                                 _hd251539252427_
                                                 _tl251538252429_
                                                 _e251543252432_
                                                 _hd251542252435_
                                                 _tl251541252437_
                                                 _e251546252440_
                                                 _hd251545252443_
                                                 _tl251544252445_
                                                 _e251549252448_
                                                 _hd251548252451_
                                                 _tl251547252453_
                                                 _e251552252456_
                                                 _hd251551252459_
                                                 _tl251550252461_
                                                 _e251555252464_
                                                 _hd251554252467_
                                                 _tl251553252469_
                                                 _e251558252472_
                                                 _hd251557252475_
                                                 _tl251556252477_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop251562252485_ _target251559252480_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx261665261666_))
                    (let ((_e251531252400_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx261665261666_))))
                      (let ((_tl251529252405_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251531252400_)))
                            (_hd251530252403_
                             (let ()
                               (declare (not safe))
                               (##car _e251531252400_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251529252405_))
                            (let ((_e251534252408_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251529252405_))))
                              (let ((_tl251532252413_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251534252408_)))
                                    (_hd251533252411_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251534252408_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd251533252411_))
                                    (let ((_e251537252416_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd251533252411_))))
                                      (let ((_tl251535252421_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e251537252416_)))
                                            (_hd251536252419_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e251537252416_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd251536252419_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd251536252419_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl251535252421_))
                                                    (let ((_e251540252424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl251535252421_))))
                                                      (let ((_tl251538252429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e251540252424_)))
                    (_hd251539252427_
                     (let () (declare (not safe)) (##car _e251540252424_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl251538252429_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl251532252413_))
                        (let ((_e251543252432_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl251532252413_))))
                          (let ((_tl251541252437_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e251543252432_)))
                                (_hd251542252435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e251543252432_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd251542252435_))
                                (let ((_e251546252440_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd251542252435_))))
                                  (let ((_tl251544252445_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251546252440_)))
                                        (_hd251545252443_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251546252440_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd251545252443_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd251545252443_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl251544252445_))
                                                (let ((_e251549252448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl251544252445_))))
                                                  (let ((_tl251547252453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e251549252448_)))
                                                        (_hd251548252451_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e251549252448_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl251547252453_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl251541252437_))
                                                            (let ((_e251552252456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl251541252437_))))
                      (let ((_tl251550252461_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251552252456_)))
                            (_hd251551252459_
                             (let ()
                               (declare (not safe))
                               (##car _e251552252456_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd251551252459_))
                            (let ((_e251555252464_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd251551252459_))))
                              (let ((_tl251553252469_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251555252464_)))
                                    (_hd251554252467_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251555252464_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd251554252467_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd251554252467_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl251553252469_))
                                            (let ((_e251558252472_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl251553252469_))))
                                              (let ((_tl251556252477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e251558252472_)))
                                                    (_hd251557252475_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e251558252472_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl251556252477_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl251550252461_))
                                                        (let ((___splice261669261670_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl251550252461_ '0))))
                  (let ((_tl251561252482_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice261669261670_ '1)))
                        (_target251559252480_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice261669261670_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl251561252482_))
                        (___match261770261771_
                         _e251531252400_
                         _hd251530252403_
                         _tl251529252405_
                         _e251534252408_
                         _hd251533252411_
                         _tl251532252413_
                         _e251537252416_
                         _hd251536252419_
                         _tl251535252421_
                         _e251540252424_
                         _hd251539252427_
                         _tl251538252429_
                         _e251543252432_
                         _hd251542252435_
                         _tl251541252437_
                         _e251546252440_
                         _hd251545252443_
                         _tl251544252445_
                         _e251549252448_
                         _hd251548252451_
                         _tl251547252453_
                         _e251552252456_
                         _hd251551252459_
                         _tl251550252461_
                         _e251555252464_
                         _hd251554252467_
                         _tl251553252469_
                         _e251558252472_
                         _hd251557252475_
                         _tl251556252477_
                         ___splice261669261670_
                         _target251559252480_
                         _tl251561252482_)
                        (___match261958261959_
                         _e251531252400_
                         _hd251530252403_
                         _tl251529252405_
                         _e251534252408_
                         _hd251533252411_
                         _tl251532252413_
                         _e251537252416_
                         _hd251536252419_
                         _tl251535252421_
                         _e251540252424_
                         _hd251539252427_
                         _tl251538252429_
                         _e251543252432_
                         _hd251542252435_
                         _tl251541252437_
                         _e251546252440_
                         _hd251545252443_
                         _tl251544252445_
                         _e251549252448_
                         _hd251548252451_
                         _tl251547252453_
                         _e251552252456_
                         _hd251551252459_
                         _tl251550252461_
                         _e251555252464_
                         _hd251554252467_
                         _tl251553252469_
                         _e251558252472_
                         _hd251557252475_
                         _tl251556252477_))))
                (___match261958261959_
                 _e251531252400_
                 _hd251530252403_
                 _tl251529252405_
                 _e251534252408_
                 _hd251533252411_
                 _tl251532252413_
                 _e251537252416_
                 _hd251536252419_
                 _tl251535252421_
                 _e251540252424_
                 _hd251539252427_
                 _tl251538252429_
                 _e251543252432_
                 _hd251542252435_
                 _tl251541252437_
                 _e251546252440_
                 _hd251545252443_
                 _tl251544252445_
                 _e251549252448_
                 _hd251548252451_
                 _tl251547252453_
                 _e251552252456_
                 _hd251551252459_
                 _tl251550252461_
                 _e251555252464_
                 _hd251554252467_
                 _tl251553252469_
                 _e251558252472_
                 _hd251557252475_
                 _tl251556252477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match262162262163_
                                                     _e251531252400_
                                                     _hd251530252403_
                                                     _tl251529252405_
                                                     _e251534252408_
                                                     _hd251533252411_
                                                     _tl251532252413_
                                                     _e251537252416_
                                                     _hd251536252419_
                                                     _tl251535252421_
                                                     _e251540252424_
                                                     _hd251539252427_
                                                     _tl251538252429_
                                                     _e251543252432_
                                                     _hd251542252435_
                                                     _tl251541252437_
                                                     _e251546252440_
                                                     _hd251545252443_
                                                     _tl251544252445_
                                                     _e251549252448_
                                                     _hd251548252451_
                                                     _tl251547252453_
                                                     _e251552252456_
                                                     _hd251551252459_
                                                     _tl251550252461_))))
                                            (___match262162262163_
                                             _e251531252400_
                                             _hd251530252403_
                                             _tl251529252405_
                                             _e251534252408_
                                             _hd251533252411_
                                             _tl251532252413_
                                             _e251537252416_
                                             _hd251536252419_
                                             _tl251535252421_
                                             _e251540252424_
                                             _hd251539252427_
                                             _tl251538252429_
                                             _e251543252432_
                                             _hd251542252435_
                                             _tl251541252437_
                                             _e251546252440_
                                             _hd251545252443_
                                             _tl251544252445_
                                             _e251549252448_
                                             _hd251548252451_
                                             _tl251547252453_
                                             _e251552252456_
                                             _hd251551252459_
                                             _tl251550252461_))
                                        (___match261838261839_
                                         _e251531252400_
                                         _hd251530252403_
                                         _tl251529252405_
                                         _e251534252408_
                                         _hd251533252411_
                                         _tl251532252413_
                                         _e251537252416_
                                         _hd251536252419_
                                         _tl251535252421_
                                         _e251540252424_
                                         _hd251539252427_
                                         _tl251538252429_
                                         _e251543252432_
                                         _hd251542252435_
                                         _tl251541252437_
                                         _e251546252440_
                                         _hd251545252443_
                                         _tl251544252445_
                                         _e251549252448_
                                         _hd251548252451_
                                         _tl251547252453_
                                         _e251552252456_
                                         _hd251551252459_
                                         _tl251550252461_
                                         _e251555252464_
                                         _hd251554252467_
                                         _tl251553252469_))
                                    (___match262162262163_
                                     _e251531252400_
                                     _hd251530252403_
                                     _tl251529252405_
                                     _e251534252408_
                                     _hd251533252411_
                                     _tl251532252413_
                                     _e251537252416_
                                     _hd251536252419_
                                     _tl251535252421_
                                     _e251540252424_
                                     _hd251539252427_
                                     _tl251538252429_
                                     _e251543252432_
                                     _hd251542252435_
                                     _tl251541252437_
                                     _e251546252440_
                                     _hd251545252443_
                                     _tl251544252445_
                                     _e251549252448_
                                     _hd251548252451_
                                     _tl251547252453_
                                     _e251552252456_
                                     _hd251551252459_
                                     _tl251550252461_))))
                            (___match262162262163_
                             _e251531252400_
                             _hd251530252403_
                             _tl251529252405_
                             _e251534252408_
                             _hd251533252411_
                             _tl251532252413_
                             _e251537252416_
                             _hd251536252419_
                             _tl251535252421_
                             _e251540252424_
                             _hd251539252427_
                             _tl251538252429_
                             _e251543252432_
                             _hd251542252435_
                             _tl251541252437_
                             _e251546252440_
                             _hd251545252443_
                             _tl251544252445_
                             _e251549252448_
                             _hd251548252451_
                             _tl251547252453_
                             _e251552252456_
                             _hd251551252459_
                             _tl251550252461_))))
                    (___match262100262101_
                     _e251531252400_
                     _hd251530252403_
                     _tl251529252405_
                     _e251534252408_
                     _hd251533252411_
                     _tl251532252413_
                     _e251537252416_
                     _hd251536252419_
                     _tl251535252421_
                     _e251540252424_
                     _hd251539252427_
                     _tl251538252429_
                     _e251543252432_
                     _hd251542252435_
                     _tl251541252437_
                     _e251546252440_
                     _hd251545252443_
                     _tl251544252445_
                     _e251549252448_
                     _hd251548252451_
                     _tl251547252453_))
                (___kont261683261684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont261683261684_))
                                            (___kont261683261684_))
                                        (___kont261683261684_))))
                                (___kont261683261684_))))
                        (___kont261683261684_))
                    (___kont261683261684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261683261684_))
                                                (___kont261683261684_))
                                            (___kont261683261684_))))
                                    (___kont261683261684_))))
                            (___kont261683261684_))))
                    (___kont261683261684_))))))))))
