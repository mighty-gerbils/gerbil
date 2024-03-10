(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710064752)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl131065_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp132193 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl131065_ __tmp132193))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131065_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131065_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131065_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131065_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl131065_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx131048_ . _args131050_)
        (let ((__tmp132195
               (lambda ()
                 (declare (not safe))
                 (if (null? _args131050_)
                     (gxc#compile-e__0 _stx131048_)
                     (let ((_arg1131055_ (car _args131050_))
                           (_rest131057_ (cdr _args131050_)))
                       (if (null? _rest131057_)
                           (gxc#compile-e__1 _stx131048_ _arg1131055_)
                           (let ((_arg2131060_ (car _rest131057_))
                                 (_rest131062_ (cdr _rest131057_)))
                             (if (null? _rest131062_)
                                 (gxc#compile-e__2
                                  _stx131048_
                                  _arg1131055_
                                  _arg2131060_)
                                 (apply gxc#compile-e
                                        _stx131048_
                                        _arg1131055_
                                        _arg2131060_
                                        _rest131062_))))))))
              (__tmp132194 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp132195
           gxc#current-compile-methods
           __tmp132194))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl131045_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp132196 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl131045_ __tmp132196))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131045_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl131045_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl131045_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx131028_ . _args131030_)
        (let ((__tmp132198
               (lambda ()
                 (declare (not safe))
                 (if (null? _args131030_)
                     (gxc#compile-e__0 _stx131028_)
                     (let ((_arg1131035_ (car _args131030_))
                           (_rest131037_ (cdr _args131030_)))
                       (if (null? _rest131037_)
                           (gxc#compile-e__1 _stx131028_ _arg1131035_)
                           (let ((_arg2131040_ (car _rest131037_))
                                 (_rest131042_ (cdr _rest131037_)))
                             (if (null? _rest131042_)
                                 (gxc#compile-e__2
                                  _stx131028_
                                  _arg1131035_
                                  _arg2131040_)
                                 (apply gxc#compile-e
                                        _stx131028_
                                        _arg1131035_
                                        _arg2131040_
                                        _rest131042_))))))))
              (__tmp132197 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp132198
           gxc#current-compile-methods
           __tmp132197))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl131025_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp132199 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl131025_ __tmp132199))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131025_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl131025_ '%#call gxc#subst-object-refs-call%))
           _tbl131025_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx131008_ . _args131010_)
        (let ((__tmp132201
               (lambda ()
                 (declare (not safe))
                 (if (null? _args131010_)
                     (gxc#compile-e__0 _stx131008_)
                     (let ((_arg1131015_ (car _args131010_))
                           (_rest131017_ (cdr _args131010_)))
                       (if (null? _rest131017_)
                           (gxc#compile-e__1 _stx131008_ _arg1131015_)
                           (let ((_arg2131020_ (car _rest131017_))
                                 (_rest131022_ (cdr _rest131017_)))
                             (if (null? _rest131022_)
                                 (gxc#compile-e__2
                                  _stx131008_
                                  _arg1131015_
                                  _arg2131020_)
                                 (apply gxc#compile-e
                                        _stx131008_
                                        _arg1131015_
                                        _arg2131020_
                                        _rest131022_))))))))
              (__tmp132200 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp132201
           gxc#current-compile-methods
           __tmp132200))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx128220_)
        (letrec ((_generate-method-bind128222_
                  (lambda (_$klass131001_
                           _$method-table131002_
                           _id131003_
                           _$id131004_)
                    (let ((_$tmp131006_
                           (let ((__tmp132202 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp132202))))
                      (let ((__tmp132250
                             (let ()
                               (declare (not safe))
                               (cons _$id131004_ '())))
                            (__tmp132203
                             (let ((__tmp132204
                                    (let ((__tmp132205
                                           (let ((__tmp132248
                                                  (let ((__tmp132249
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp132249)))
                                                 (__tmp132206
                                                  (let ((__tmp132207
                                                         (let ((__tmp132208
                                                                (let ((__tmp132209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp132210
                                      (let ((__tmp132211
                                             (let ((__tmp132231
                                                    (let ((__tmp132232
                                                           (let ((__tmp132247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp131006_ '())))
                         (__tmp132233
                          (let ((__tmp132234
                                 (let ((__tmp132235
                                        (let ((__tmp132245
                                               (let ((__tmp132246
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp132246)))
                                              (__tmp132236
                                               (let ((__tmp132243
                                                      (let ((__tmp132244
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table131002_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp132244)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132237
                                                      (let ((__tmp132241
                                                             (let ((__tmp132242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id131003_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp132242)))
                    (__tmp132238
                     (let ((__tmp132239
                            (let ((__tmp132240
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp132240))))
                       (declare (not safe))
                       (cons __tmp132239 '()))))
                (declare (not safe))
                (cons __tmp132241 __tmp132238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp132243
                                                       __tmp132237))))
                                          (declare (not safe))
                                          (cons __tmp132245 __tmp132236))))
                                   (declare (not safe))
                                   (cons '%#call __tmp132235))))
                            (declare (not safe))
                            (cons __tmp132234 '()))))
                     (declare (not safe))
                     (cons __tmp132247 __tmp132233))))
              (declare (not safe))
              (cons __tmp132232 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132212
                                                    (let ((__tmp132213
                                                           (let ((__tmp132214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132229
                                 (let ((__tmp132230
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp131006_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp132230)))
                                (__tmp132215
                                 (let ((__tmp132227
                                        (let ((__tmp132228
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp131006_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp132228)))
                                       (__tmp132216
                                        (let ((__tmp132217
                                               (let ((__tmp132218
                                                      (let ((__tmp132225
                                                             (let ((__tmp132226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp132226)))
                    (__tmp132219
                     (let ((__tmp132223
                            (let ((__tmp132224
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp132224)))
                           (__tmp132220
                            (let ((__tmp132221
                                   (let ((__tmp132222
                                          (let ()
                                            (declare (not safe))
                                            (cons _id131003_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp132222))))
                              (declare (not safe))
                              (cons __tmp132221 '()))))
                       (declare (not safe))
                       (cons __tmp132223 __tmp132220))))
                (declare (not safe))
                (cons __tmp132225 __tmp132219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp132218))))
                                          (declare (not safe))
                                          (cons __tmp132217 '()))))
                                   (declare (not safe))
                                   (cons __tmp132227 __tmp132216))))
                            (declare (not safe))
                            (cons __tmp132229 __tmp132215))))
                     (declare (not safe))
                     (cons '%#if __tmp132214))))
              (declare (not safe))
              (cons __tmp132213 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp132231
                                                     __tmp132212))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp132211))))
                                 (declare (not safe))
                                 (cons __tmp132210 '()))))
                          (declare (not safe))
                          (cons '() __tmp132209))))
                   (declare (not safe))
                   (cons '%#lambda __tmp132208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132207 '()))))
                                             (declare (not safe))
                                             (cons __tmp132248 __tmp132206))))
                                      (declare (not safe))
                                      (cons '%#call __tmp132205))))
                               (declare (not safe))
                               (cons __tmp132204 '()))))
                        (declare (not safe))
                        (cons __tmp132250 __tmp132203)))))
                 (_generate-slot-bind128223_
                  (lambda (_$klass130995_ _id130996_ _$id130997_)
                    (let ((_$tmp130999_
                           (let ((__tmp132251 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp132251))))
                      (let ((__tmp132288
                             (let ()
                               (declare (not safe))
                               (cons _$id130997_ '())))
                            (__tmp132252
                             (let ((__tmp132253
                                    (let ((__tmp132254
                                           (let ((__tmp132274
                                                  (let ((__tmp132275
                                                         (let ((__tmp132287
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp130999_ '())))
                       (__tmp132276
                        (let ((__tmp132277
                               (let ((__tmp132278
                                      (let ((__tmp132285
                                             (let ((__tmp132286
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp132286)))
                                            (__tmp132279
                                             (let ((__tmp132283
                                                    (let ((__tmp132284
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass130995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp132284)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132280
                                                    (let ((__tmp132281
                                                           (let ((__tmp132282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id130996_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp132282))))
              (declare (not safe))
              (cons __tmp132281 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp132283
                                                     __tmp132280))))
                                        (declare (not safe))
                                        (cons __tmp132285 __tmp132279))))
                                 (declare (not safe))
                                 (cons '%#call __tmp132278))))
                          (declare (not safe))
                          (cons __tmp132277 '()))))
                   (declare (not safe))
                   (cons __tmp132287 __tmp132276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132275 '())))
                                                 (__tmp132255
                                                  (let ((__tmp132256
                                                         (let ((__tmp132257
                                                                (let ((__tmp132272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp132273
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp130999_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp132273)))
                              (__tmp132258
                               (let ((__tmp132270
                                      (let ((__tmp132271
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp130999_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp132271)))
                                     (__tmp132259
                                      (let ((__tmp132260
                                             (let ((__tmp132261
                                                    (let ((__tmp132268
                                                           (let ((__tmp132269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp132269)))
                  (__tmp132262
                   (let ((__tmp132266
                          (let ((__tmp132267
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp132267)))
                         (__tmp132263
                          (let ((__tmp132264
                                 (let ((__tmp132265
                                        (let ()
                                          (declare (not safe))
                                          (cons _id130996_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp132265))))
                            (declare (not safe))
                            (cons __tmp132264 '()))))
                     (declare (not safe))
                     (cons __tmp132266 __tmp132263))))
              (declare (not safe))
              (cons __tmp132268 __tmp132262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp132261))))
                                        (declare (not safe))
                                        (cons __tmp132260 '()))))
                                 (declare (not safe))
                                 (cons __tmp132270 __tmp132259))))
                          (declare (not safe))
                          (cons __tmp132272 __tmp132258))))
                   (declare (not safe))
                   (cons '%#if __tmp132257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132256 '()))))
                                             (declare (not safe))
                                             (cons __tmp132274 __tmp132255))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp132254))))
                               (declare (not safe))
                               (cons __tmp132253 '()))))
                        (declare (not safe))
                        (cons __tmp132288 __tmp132252)))))
                 (_generate-specializer-impl128224_
                  (lambda (_$klass130989_
                           _$method-table130990_
                           _methods-bind130991_
                           _slots-bind130992_
                           _specializer-impl130993_)
                    (let ((__tmp132289
                           (let ((__tmp132290
                                  (let ((__tmp132296
                                         (let ((__tmp132297
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table130990_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass130989_ __tmp132297)))
                                        (__tmp132291
                                         (let ((__tmp132292
                                                (let ((__tmp132293
                                                       (let ((__tmp132295
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind130992_ _methods-bind130991_)))
                     (__tmp132294
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl130993_ '()))))
                 (declare (not safe))
                 (cons __tmp132295 __tmp132294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp132293))))
                                           (declare (not safe))
                                           (cons __tmp132292 '()))))
                                    (declare (not safe))
                                    (cons __tmp132296 __tmp132291))))
                             (declare (not safe))
                             (cons '%#lambda __tmp132290))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp132289 _stx128220_))))
                 (_generate-specializer-def128225_
                  (lambda (_id130985_
                           _specializer-id130986_
                           _specializer-impl130987_)
                    (let ((__tmp132298
                           (let ((__tmp132299
                                  (let ((__tmp132300
                                         (let ((__tmp132313
                                                (let ((__tmp132314
                                                       (let ((__tmp132315
                                                              (let ((__tmp132317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id130986_ '())))
                            (__tmp132316
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl130987_ '()))))
                        (declare (not safe))
                        (cons __tmp132317 __tmp132316))))
                 (declare (not safe))
                 (cons '%#define-values __tmp132315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp132314
                                                   _stx128220_)))
                                               (__tmp132301
                                                (let ((__tmp132302
                                                       (let ((__tmp132303
                                                              (let ((__tmp132304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp132311
                                    (let ((__tmp132312
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp132312)))
                                   (__tmp132305
                                    (let ((__tmp132309
                                           (let ((__tmp132310
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id130985_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp132310)))
                                          (__tmp132306
                                           (let ((__tmp132307
                                                  (let ((__tmp132308
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id130986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp132308))))
                                             (declare (not safe))
                                             (cons __tmp132307 '()))))
                                      (declare (not safe))
                                      (cons __tmp132309 __tmp132306))))
                               (declare (not safe))
                               (cons __tmp132311 __tmp132305))))
                        (declare (not safe))
                        (cons '%#call __tmp132304))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp132303 _stx128220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp132302 '()))))
                                           (declare (not safe))
                                           (cons __tmp132313 __tmp132301))))
                                    (declare (not safe))
                                    (cons _stx128220_ __tmp132300))))
                             (declare (not safe))
                             (cons '%#begin __tmp132299))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp132298 _stx128220_)))))
          (let* ((___stx131154131155_ _stx128220_)
                 (_g128228128248_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx131154131155_)))))
            (let ((___kont131156131157_
                   (lambda (_L128292_ _L128293_)
                     (let ((_method-calls128312_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs128313_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty128314_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?128316_
                                 (lambda ()
                                   (if (let ((__tmp132318
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls128312_))))
                                         (declare (not safe))
                                         (fxzero? __tmp132318))
                                       (let ((__tmp132319
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs128313_))))
                                         (declare (not safe))
                                         (fxzero? __tmp132319))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L128292_))
                             (let* ((___stx131068131069_ _L128292_)
                                    (_g128703128721_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx131068131069_)))))
                               (let ((___kont131070131071_
                                      (lambda (_L128757_ _L128758_ _L128759_)
                                        (for-each
                                         (lambda (_g128774128776_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g128774128776_
                                              _L128759_
                                              _method-calls128312_
                                              _slot-refs128313_)))
                                         _L128757_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?128316_))
                                            _stx128220_
                                            (let* ((_specializer-id128785_
                                                    (let* ((_id128779_
                                                            (let ((__tmp132320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L128293_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp132320 '"::specialize")))
                   (_specializer-id128782_
                    (let ((__tmp132321
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx128220_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id128779_ __tmp132321))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id128782_))
              _specializer-id128782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass128787_
                                                    (let ((__tmp132322
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp132322)))
                                                   (_$method-table128789_
                                                    (let ((__tmp132323
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp132323)))
                                                   (_methods128791_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls128312_)))
                                                   (_$methods128795_
                                                    (map (lambda (_id128793_)
                                                           (let ((__tmp132324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id128793_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp132324)))
                 _methods128791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g132325_
                                                    (for-each
                                                     (lambda (_g128796128799_
                                                              _g128797128801_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls128312_
                                                          _g128796128799_
                                                          _g128797128801_)))
                                                     _methods128791_
                                                     _$methods128795_))
                                                   (_methods-bind128812_
                                                    (map (lambda (_g128804128807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g128805128809_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind128222_
                      _$klass128787_
                      _$method-table128789_
                      _g128804128807_
                      _g128805128809_)))
                 _methods128791_
                 _$methods128795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots128814_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs128313_)))
                                                   (_$slots128818_
                                                    (map (lambda (_id128816_)
                                                           (let ((__tmp132326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id128816_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp132326)))
                 _slots128814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g132327_
                                                    (for-each
                                                     (lambda (_g128819128822_
                                                              _g128820128824_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs128313_
                                                          _g128819128822_
                                                          _g128820128824_)))
                                                     _slots128814_
                                                     _$slots128818_))
                                                   (_slots-bind128835_
                                                    (map (lambda (_g128827128830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g128828128832_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind128223_
                      _$klass128787_
                      _g128827128830_
                      _g128828128832_)))
                 _slots128814_
                 _$slots128818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body128841_
                                                    (map (lambda (_g128836128838_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g128836128838_
                                                              _L128759_
                                                              _$klass128787_
                                                              _method-calls128312_
                                                              _slot-refs128313_)))
                                                         _L128757_))
                                                   (_specializer-impl128843_
                                                    (let ((__tmp132328
                                                           (let ((__tmp132329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132330
                                 (let ()
                                   (declare (not safe))
                                   (cons _L128759_ _L128758_))))
                            (declare (not safe))
                            (cons __tmp132330 _specializer-body128841_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp132329))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp132328 _stx128220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl128845_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl128224_
                                                       _$klass128787_
                                                       _$method-table128789_
                                                       _methods-bind128812_
                                                       _slots-bind128835_
                                                       _specializer-impl128843_))))
                                              (let ((__tmp132332
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L128293_)))
                                                    (__tmp132331
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id128785_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp132332
                                                 '" => "
                                                 __tmp132331))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def128225_
                                                 _L128293_
                                                 _specializer-id128785_
                                                 _specializer-impl128845_))))))
                                     (___kont131072131073_
                                      (lambda () _stx128220_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx131068131069_))
                                     (let ((_e128708128733_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx131068131069_))))
                                       (let ((_tl128710128738_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e128708128733_)))
                                             (_hd128709128736_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e128708128733_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl128710128738_))
                                             (let ((_e128711128741_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl128710128738_))))
                                               (let ((_tl128713128746_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e128711128741_)))
                                                     (_hd128712128744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e128711128741_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd128712128744_))
                                                     (let ((_e128714128749_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd128712128744_))))
                                                       (let ((_tl128716128754_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128714128749_)))
                     (_hd128715128752_
                      (let () (declare (not safe)) (##car _e128714128749_))))
                 (___kont131070131071_
                  _tl128713128746_
                  _tl128716128754_
                  _hd128715128752_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont131072131073_))))
                                             (___kont131072131073_))))
                                     (___kont131072131073_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L128292_))
                                 (let* ((_g128851128870_
                                         (lambda (_g128852128867_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g128852128867_))))
                                        (_g128850129153_
                                         (lambda (_g128852128873_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g128852128873_))
                                               (let ((_e128854128875_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g128852128873_))))
                                                 (let ((_hd128855128878_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e128854128875_)))
                                                       (_tl128856128880_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e128854128875_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl128856128880_))
                                                       (let ((_g132333_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl128856128880_ '0))))
                 (begin
                   (let ((_g132334_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g132333_)
                                (##vector-length _g132333_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g132334_ 2)))
                         (error "Context expects 2 values" _g132334_)))
                   (let ((_target128857128883_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g132333_ 0)))
                         (_tl128859128885_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g132333_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl128859128885_))
                         (letrec ((_loop128860128888_
                                   (lambda (_hd128858128891_
                                            _clause128864128893_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd128858128891_))
                                         (let ((_e128861128896_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd128858128891_))))
                                           (let ((_lp-hd128862128899_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128861128896_)))
                                                 (_lp-tl128863128901_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128861128896_))))
                                             (let ((__tmp132335
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd128862128899_
                                                            _clause128864128893_))))
                                               (declare (not safe))
                                               (_loop128860128888_
                                                _lp-tl128863128901_
                                                __tmp132335))))
                                         (let ((_clause128865128904_
                                                (reverse _clause128864128893_)))
                                           ((lambda (_L128907_)
                                              (for-each
                                               (lambda (_clause128920_)
                                                 (let* ((___stx131094131095_
                                                         _clause128920_)
                                                        (_g128923128938_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx131094131095_)))))
                                                   (let ((___kont131096131097_
                                                          (lambda (_L128966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128967_
                           _L128968_)
                    (for-each
                     (lambda (_g128983128985_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g128983128985_
                          _L128968_
                          _method-calls128312_
                          _slot-refs128313_)))
                     _L128966_)))
                 (___kont131098131099_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx131094131095_))
                                                         (let ((_e128928128950_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx131094131095_))))
                   (let ((_tl128930128955_
                          (let ()
                            (declare (not safe))
                            (##cdr _e128928128950_)))
                         (_hd128929128953_
                          (let ()
                            (declare (not safe))
                            (##car _e128928128950_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd128929128953_))
                         (let ((_e128931128958_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd128929128953_))))
                           (let ((_tl128933128963_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e128931128958_)))
                                 (_hd128932128961_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e128931128958_))))
                             (___kont131096131097_
                              _tl128930128955_
                              _tl128933128963_
                              _hd128932128961_)))
                         (___kont131098131099_))))
                 (___kont131098131099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp132336
                                                      (lambda (_g128990128993_
                                                               _g128991128995_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g128990128993_
                                                                _g128991128995_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp132336
                                                         '()
                                                         _L128907_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?128316_))
                                                  _stx128220_
                                                  (let* ((_specializer-id129004_
                                                          (let* ((_id128998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132337
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L128293_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp132337 '"::specialize")))
                         (_specializer-id129001_
                          (let ((__tmp132338
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx128220_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id128998_ __tmp132338))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id129001_))
                    _specializer-id129001_))
                 (_$klass129006_
                  (let ((__tmp132339 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132339)))
                 (_$method-table129008_
                  (let ((__tmp132340 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132340)))
                 (_methods129010_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls128312_)))
                 (_$methods129014_
                  (map (lambda (_id129012_)
                         (let ((__tmp132341 (gensym _id129012_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132341)))
                       _methods129010_))
                 (_g132342_
                  (for-each
                   (lambda (_g129015129018_ _g129016129020_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls128312_
                        _g129015129018_
                        _g129016129020_)))
                   _methods129010_
                   _$methods129014_))
                 (_methods-bind129031_
                  (map (lambda (_g129023129026_ _g129024129028_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind128222_
                            _$klass129006_
                            _$method-table129008_
                            _g129023129026_
                            _g129024129028_)))
                       _methods129010_
                       _$methods129014_))
                 (_slots129033_
                  (let () (declare (not safe)) (hash-keys _slot-refs128313_)))
                 (_$slots129037_
                  (map (lambda (_id129035_)
                         (let ((__tmp132343 (gensym _id129035_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132343)))
                       _slots129033_))
                 (_g132344_
                  (for-each
                   (lambda (_g129038129041_ _g129039129043_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs128313_
                        _g129038129041_
                        _g129039129043_)))
                   _slots129033_
                   _$slots129037_))
                 (_slots-bind129054_
                  (map (lambda (_g129046129049_ _g129047129051_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind128223_
                            _$klass129006_
                            _g129046129049_
                            _g129047129051_)))
                       _slots129033_
                       _$slots129037_))
                 (_specializer-clauses129146_
                  (map (lambda (_clause129056_)
                         (let* ((___stx131114131115_ _clause129056_)
                                (_g129059129074_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx131114131115_)))))
                           (let ((___kont131116131117_
                                  (lambda (_L129102_ _L129103_ _L129104_)
                                    (let* ((_body129134_
                                            (map (lambda (_g129129129131_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g129129129131_
                                                      _L129104_
                                                      _$klass129006_
                                                      _method-calls128312_
                                                      _slot-refs128313_)))
                                                 _L129102_))
                                           (__tmp132345
                                            (let ()
                                              (declare (not safe))
                                              (cons _L129104_ _L129103_))))
                                      (declare (not safe))
                                      (cons __tmp132345 _body129134_))))
                                 (___kont131118131119_
                                  (lambda () _clause129056_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx131114131115_))
                                 (let ((_e129064129086_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx131114131115_))))
                                   (let ((_tl129066129091_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e129064129086_)))
                                         (_hd129065129089_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e129064129086_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd129065129089_))
                                         (let ((_e129067129094_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd129065129089_))))
                                           (let ((_tl129069129099_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129067129094_)))
                                                 (_hd129068129097_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129067129094_))))
                                             (___kont131116131117_
                                              _tl129066129091_
                                              _tl129069129099_
                                              _hd129068129097_)))
                                         (___kont131118131119_))))
                                 (___kont131118131119_)))))
                       (let ((__tmp132346
                              (lambda (_g129138129141_ _g129139129143_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g129138129141_ _g129139129143_)))))
                         (declare (not safe))
                         (foldr1 __tmp132346 '() _L128907_))))
                 (_specializer-impl129148_
                  (let ((__tmp132347
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses129146_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp132347 _stx128220_)))
                 (_specializer-impl129150_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl128224_
                     _$klass129006_
                     _$method-table129008_
                     _methods-bind129031_
                     _slots-bind129054_
                     _specializer-impl129148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp132349
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L128293_)))
                                                          (__tmp132348
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id129004_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp132349
                                                       '" => "
                                                       __tmp132348))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def128225_
                                                       _L128293_
                                                       _specializer-id129004_
                                                       _specializer-impl129150_)))))
                                            _clause128865128904_))))))
                           (let ()
                             (declare (not safe))
                             (_loop128860128888_ _target128857128883_ '())))
                         (let ()
                           (declare (not safe))
                           (_g128851128870_ _g128852128873_))))))
               (let ()
                 (declare (not safe))
                 (_g128851128870_ _g128852128873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g128851128870_
                                                  _g128852128873_))))))
                                   (declare (not safe))
                                   (_g128850129153_ _L128292_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L128292_))
                                     (let* ((_g129156129186_
                                             (lambda (_g129157129183_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g129157129183_))))
                                            (_g129155129791_
                                             (lambda (_g129157129189_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g129157129189_))
                                                   (let ((_e129161129191_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g129157129189_))))
                                                     (let ((_hd129162129194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e129161129191_)))
                                                           (_tl129163129196_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e129161129191_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl129163129196_))
                                                           (let ((_e129164129199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl129163129196_))))
                     (let ((_hd129165129202_
                            (let ()
                              (declare (not safe))
                              (##car _e129164129199_)))
                           (_tl129166129204_
                            (let ()
                              (declare (not safe))
                              (##cdr _e129164129199_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd129165129202_))
                           (let ((_e129167129207_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd129165129202_))))
                             (let ((_hd129168129210_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e129167129207_)))
                                   (_tl129169129212_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e129167129207_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd129168129210_))
                                   (let ((_e129170129215_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd129168129210_))))
                                     (let ((_hd129171129218_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e129170129215_)))
                                           (_tl129172129220_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e129170129215_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd129171129218_))
                                           (let ((_e129173129223_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd129171129218_))))
                                             (let ((_hd129174129226_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e129173129223_)))
                                                   (_tl129175129228_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e129173129223_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl129175129228_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl129172129220_))
                                                       (let ((_e129176129231_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl129172129220_))))
                 (let ((_hd129177129234_
                        (let () (declare (not safe)) (##car _e129176129231_)))
                       (_tl129178129236_
                        (let () (declare (not safe)) (##cdr _e129176129231_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl129178129236_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl129169129212_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl129166129204_))
                               (let ((_e129179129239_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl129166129204_))))
                                 (let ((_hd129180129242_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e129179129239_)))
                                       (_tl129181129244_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e129179129239_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl129181129244_))
                                       ((lambda (_L129247_ _L129248_ _L129249_)
                                          (let* ((_g129272129290_
                                                  (lambda (_g129273129287_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g129273129287_))))
                                                 (_g129271129341_
                                                  (lambda (_g129273129293_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g129273129293_))
                                                        (let ((_e129277129295_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g129273129293_))))
                  (let ((_hd129278129298_
                         (let () (declare (not safe)) (##car _e129277129295_)))
                        (_tl129279129300_
                         (let ()
                           (declare (not safe))
                           (##cdr _e129277129295_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129279129300_))
                        (let ((_e129280129303_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129279129300_))))
                          (let ((_hd129281129306_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129280129303_)))
                                (_tl129282129308_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129280129303_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129281129306_))
                                (let ((_e129283129311_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129281129306_))))
                                  (let ((_hd129284129314_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129283129311_)))
                                        (_tl129285129316_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129283129311_))))
                                    ((lambda (_L129319_ _L129320_ _L129321_)
                                       (for-each
                                        (lambda (_g129336129338_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g129336129338_
                                             _L129321_
                                             _method-calls128312_
                                             _slot-refs128313_)))
                                        _L129319_))
                                     _tl129282129308_
                                     _tl129285129316_
                                     _hd129284129314_)))
                                (let ()
                                  (declare (not safe))
                                  (_g129272129290_ _g129273129293_)))))
                        (let ()
                          (declare (not safe))
                          (_g129272129290_ _g129273129293_)))))
                (let ()
                  (declare (not safe))
                  (_g129272129290_ _g129273129293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g129271129341_ _L129248_))
                                          (let* ((_g129344129363_
                                                  (lambda (_g129345129360_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g129345129360_))))
                                                 (_g129343129482_
                                                  (lambda (_g129345129366_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g129345129366_))
                                                        (let ((_e129347129368_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g129345129366_))))
                  (let ((_hd129348129371_
                         (let () (declare (not safe)) (##car _e129347129368_)))
                        (_tl129349129373_
                         (let ()
                           (declare (not safe))
                           (##cdr _e129347129368_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl129349129373_))
                        (let ((_g132350_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl129349129373_
                                  '0))))
                          (begin
                            (let ((_g132351_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g132350_)
                                         (##vector-length _g132350_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g132351_ 2)))
                                  (error "Context expects 2 values"
                                         _g132351_)))
                            (let ((_target129350129376_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132350_ 0)))
                                  (_tl129352129378_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132350_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129352129378_))
                                  (letrec ((_loop129353129381_
                                            (lambda (_hd129351129384_
                                                     _clause129357129386_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129351129384_))
                                                  (let ((_e129354129389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129351129384_))))
                                                    (let ((_lp-hd129355129392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129354129389_)))
                                                          (_lp-tl129356129394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129354129389_))))
                                                      (let ((__tmp132352
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd129355129392_ _clause129357129386_))))
                (declare (not safe))
                (_loop129353129381_ _lp-tl129356129394_ __tmp132352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause129358129397_
                                                         (reverse _clause129357129386_)))
                                                    ((lambda (_L129400_)
                                                       (for-each
                                                        (lambda (_clause129413_)
                                                          (let* ((_g129415129430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g129416129427_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129416129427_))))
                         (_g129414129472_
                          (lambda (_g129416129433_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g129416129433_))
                                (let ((_e129420129435_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g129416129433_))))
                                  (let ((_hd129421129438_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129420129435_)))
                                        (_tl129422129440_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129420129435_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129421129438_))
                                        (let ((_e129423129443_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129421129438_))))
                                          (let ((_hd129424129446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129423129443_)))
                                                (_tl129425129448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129423129443_))))
                                            ((lambda (_L129451_
                                                      _L129452_
                                                      _L129453_)
                                               (for-each
                                                (lambda (_g129467129469_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g129467129469_
                                                     _L129453_
                                                     _method-calls128312_
                                                     _slot-refs128313_)))
                                                _L129451_))
                                             _tl129422129440_
                                             _tl129425129448_
                                             _hd129424129446_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g129415129430_ _g129416129433_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g129415129430_ _g129416129433_))))))
                    (declare (not safe))
                    (_g129414129472_ _clause129413_)))
                (let ((__tmp132353
                       (lambda (_g129474129477_ _g129475129479_)
                         (let ()
                           (declare (not safe))
                           (cons _g129474129477_ _g129475129479_)))))
                  (declare (not safe))
                  (foldr1 __tmp132353 '() _L129400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause129358129397_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop129353129381_
                                       _target129350129376_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g129344129363_ _g129345129366_))))))
                        (let ()
                          (declare (not safe))
                          (_g129344129363_ _g129345129366_)))))
                (let ()
                  (declare (not safe))
                  (_g129344129363_ _g129345129366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g129343129482_ _L129247_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?128316_))
                                              _stx128220_
                                              (let* ((_specializer-id129491_
                                                      (let* ((_id129485_
                                                              (let ((__tmp132354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L128293_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp132354 '"::specialize")))
                     (_specializer-id129488_
                      (let ((__tmp132355
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx128220_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id129485_ __tmp132355))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id129488_))
                _specializer-id129488_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass129493_
                                                      (let ((__tmp132356
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp132356)))
                                                     (_$method-table129495_
                                                      (let ((__tmp132357
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp132357)))
                                                     (_methods129497_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls128312_)))
                                                     (_$methods129501_
                                                      (map (lambda (_id129499_)
                                                             (let ((__tmp132358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id129499_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp132358)))
                   _methods129497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g132359_
                                                      (for-each
                                                       (lambda (_g129502129505_
                                                                _g129503129507_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls128312_
                                                            _g129502129505_
                                                            _g129503129507_)))
                                                       _methods129497_
                                                       _$methods129501_))
                                                     (_methods-bind129518_
                                                      (map (lambda (_g129510129513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g129511129515_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind128222_
                        _$klass129493_
                        _$method-table129495_
                        _g129510129513_
                        _g129511129515_)))
                   _methods129497_
                   _$methods129501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots129520_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs128313_)))
                                                     (_$slots129524_
                                                      (map (lambda (_id129522_)
                                                             (let ((__tmp132360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id129522_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp132360)))
                   _slots129520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g132361_
                                                      (for-each
                                                       (lambda (_g129525129528_
                                                                _g129526129530_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs128313_
                                                            _g129525129528_
                                                            _g129526129530_)))
                                                       _slots129520_
                                                       _$slots129524_))
                                                     (_slots-bind129541_
                                                      (map (lambda (_g129533129536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g129534129538_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind128223_
                        _$klass129493_
                        _g129533129536_
                        _g129534129538_)))
                   _slots129520_
                   _$slots129524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr129627_
                                                      (let* ((_g129543129561_
                                                              (lambda (_g129544129558_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129544129558_))))
                     (_g129542129624_
                      (lambda (_g129544129564_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g129544129564_))
                            (let ((_e129548129566_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g129544129564_))))
                              (let ((_hd129549129569_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129548129566_)))
                                    (_tl129550129571_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129548129566_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl129550129571_))
                                    (let ((_e129551129574_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl129550129571_))))
                                      (let ((_hd129552129577_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129551129574_)))
                                            (_tl129553129579_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129551129574_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd129552129577_))
                                            (let ((_e129554129582_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd129552129577_))))
                                              (let ((_hd129555129585_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129554129582_)))
                                                    (_tl129556129587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129554129582_))))
                                                ((lambda (_L129590_
                                                          _L129591_
                                                          _L129592_)
                                                   (let* ((_body129622_
                                                           (map (lambda (_g129617129619_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g129617129619_
                             _L129592_
                             _$klass129493_
                             _method-calls128312_
                             _slot-refs128313_)))
                        _L129590_))
                  (__tmp132362
                   (let ((__tmp132363
                          (let ((__tmp132364
                                 (let ()
                                   (declare (not safe))
                                   (cons _L129592_ _L129591_))))
                            (declare (not safe))
                            (cons __tmp132364 _body129622_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp132363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp132362
                                                      _L129248_)))
                                                 _tl129553129579_
                                                 _tl129556129587_
                                                 _hd129555129585_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g129543129561_
                                               _g129544129564_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g129543129561_ _g129544129564_)))))
                            (let ()
                              (declare (not safe))
                              (_g129543129561_ _g129544129564_))))))
                (declare (not safe))
                (_g129542129624_ _L129248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr129784_
                                                      (let* ((_g129629129648_
                                                              (lambda (_g129630129645_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129630129645_))))
                     (_g129628129781_
                      (lambda (_g129630129651_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g129630129651_))
                            (let ((_e129632129653_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g129630129651_))))
                              (let ((_hd129633129656_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129632129653_)))
                                    (_tl129634129658_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129632129653_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl129634129658_))
                                    (let ((_g132365_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl129634129658_
                                              '0))))
                                      (begin
                                        (let ((_g132366_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g132365_)
                                                     (##vector-length
                                                      _g132365_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g132366_ 2)))
                                              (error "Context expects 2 values"
                                                     _g132366_)))
                                        (let ((_target129635129661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g132365_ 0)))
                                              (_tl129637129663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g132365_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129637129663_))
                                              (letrec ((_loop129638129666_
                                                        (lambda (_hd129636129669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause129642129671_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd129636129669_))
                      (let ((_e129639129674_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd129636129669_))))
                        (let ((_lp-hd129640129677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129639129674_)))
                              (_lp-tl129641129679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129639129674_))))
                          (let ((__tmp132367
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd129640129677_
                                         _clause129642129671_))))
                            (declare (not safe))
                            (_loop129638129666_
                             _lp-tl129641129679_
                             __tmp132367))))
                      (let ((_clause129643129682_
                             (reverse _clause129642129671_)))
                        ((lambda (_L129685_)
                           (let* ((_clauses129779_
                                   (map (lambda (_clause129699_)
                                          (let* ((___stx131134131135_
                                                  _clause129699_)
                                                 (_g129702129717_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx131134131135_)))))
                                            (let ((___kont131136131137_
                                                   (lambda (_L129745_
                                                            _L129746_
                                                            _L129747_)
                                                     (let* ((_body129767_
                                                             (map (lambda (_g129762129764_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g129762129764_
                               _L129747_
                               _$klass129493_
                               _method-calls128312_
                               _slot-refs128313_)))
                          _L129745_))
                    (__tmp132368
                     (let () (declare (not safe)) (cons _L129747_ _L129746_))))
               (declare (not safe))
               (cons __tmp132368 _body129767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont131138131139_
                                                   (lambda () _clause129699_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx131134131135_))
                                                  (let ((_e129707129729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx131134131135_))))
                                                    (let ((_tl129709129734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129707129729_)))
                                                          (_hd129708129732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129707129729_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd129708129732_))
                                                          (let ((_e129710129737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd129708129732_))))
                    (let ((_tl129712129742_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129710129737_)))
                          (_hd129711129740_
                           (let ()
                             (declare (not safe))
                             (##car _e129710129737_))))
                      (___kont131136131137_
                       _tl129709129734_
                       _tl129712129742_
                       _hd129711129740_)))
                  (___kont131138131139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont131138131139_)))))
                                        (let ((__tmp132369
                                               (lambda (_g129771129774_
                                                        _g129772129776_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g129771129774_
                                                         _g129772129776_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp132369 '() _L129685_))))
                                  (__tmp132370
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses129779_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp132370 _L129247_)))
                         _clause129643129682_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop129638129666_
                                                   _target129635129661_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g129629129648_
                                                 _g129630129651_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g129629129648_ _g129630129651_)))))
                            (let ()
                              (declare (not safe))
                              (_g129629129648_ _g129630129651_))))))
                (declare (not safe))
                (_g129628129781_ _L129247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl129786_
                                                      (let ((__tmp132371
                                                             (let ((__tmp132372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp132374
                                   (let ((__tmp132375
                                          (let ((__tmp132377
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L129249_ '())))
                                                (__tmp132376
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr129627_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp132377 __tmp132376))))
                                     (declare (not safe))
                                     (cons __tmp132375 '())))
                                  (__tmp132373
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr129784_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp132374 __tmp132373))))
                       (declare (not safe))
                       (cons '%#let-values __tmp132372))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp132371 _stx128220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl129788_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl128224_
                                                         _$klass129493_
                                                         _$method-table129495_
                                                         _methods-bind129518_
                                                         _slots-bind129541_
                                                         _specializer-impl129786_))))
                                                (let ((__tmp132379
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L128293_)))
                                                      (__tmp132378
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id129491_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp132379
                                                   '" => "
                                                   __tmp132378))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def128225_
                                                   _L128293_
                                                   _specializer-id129491_
                                                   _specializer-impl129788_)))))
                                        _hd129180129242_
                                        _hd129177129234_
                                        _hd129174129226_)
                                       (let ()
                                         (declare (not safe))
                                         (_g129156129186_ _g129157129189_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g129156129186_ _g129157129189_)))
                           (let ()
                             (declare (not safe))
                             (_g129156129186_ _g129157129189_)))
                       (let ()
                         (declare (not safe))
                         (_g129156129186_ _g129157129189_)))))
               (let () (declare (not safe)) (_g129156129186_ _g129157129189_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129156129186_
                                                      _g129157129189_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g129156129186_
                                              _g129157129189_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g129156129186_ _g129157129189_)))))
                           (let ()
                             (declare (not safe))
                             (_g129156129186_ _g129157129189_)))))
                   (let ()
                     (declare (not safe))
                     (_g129156129186_ _g129157129189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129156129186_
                                                      _g129157129189_))))))
                                       (declare (not safe))
                                       (_g129155129791_ _L128292_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L128292_))
                                         (let* ((_g129794129847_
                                                 (lambda (_g129795129844_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g129795129844_))))
                                                (_g129793130978_
                                                 (lambda (_g129795129850_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g129795129850_))
                                                       (let ((_e129801129852_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g129795129850_))))
                 (let ((_hd129802129855_
                        (let () (declare (not safe)) (##car _e129801129852_)))
                       (_tl129803129857_
                        (let () (declare (not safe)) (##cdr _e129801129852_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd129802129855_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd129802129855_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl129803129857_))
                               (let ((_e129804129860_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl129803129857_))))
                                 (let ((_hd129805129863_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e129804129860_)))
                                       (_tl129806129865_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e129804129860_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd129805129863_))
                                       (let ((_e129807129868_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd129805129863_))))
                                         (let ((_hd129808129871_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e129807129868_)))
                                               (_tl129809129873_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e129807129868_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd129808129871_))
                                               (let ((_e129810129876_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd129808129871_))))
                                                 (let ((_hd129811129879_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e129810129876_)))
                                                       (_tl129812129881_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e129810129876_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd129811129879_))
                                                       (let ((_e129813129884_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd129811129879_))))
                 (let ((_hd129814129887_
                        (let () (declare (not safe)) (##car _e129813129884_)))
                       (_tl129815129889_
                        (let () (declare (not safe)) (##cdr _e129813129884_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl129815129889_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl129812129881_))
                           (let ((_e129816129892_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl129812129881_))))
                             (let ((_hd129817129895_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e129816129892_)))
                                   (_tl129818129897_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e129816129892_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd129817129895_))
                                   (let ((_e129819129900_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd129817129895_))))
                                     (let ((_hd129820129903_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e129819129900_)))
                                           (_tl129821129905_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e129819129900_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd129820129903_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd129820129903_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl129821129905_))
                                                   (let ((_e129822129908_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl129821129905_))))
                                                     (let ((_hd129823129911_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e129822129908_)))
                                                           (_tl129824129913_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e129822129908_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd129823129911_))
                                                           (let ((_e129825129916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd129823129911_))))
                     (let ((_hd129826129919_
                            (let ()
                              (declare (not safe))
                              (##car _e129825129916_)))
                           (_tl129827129921_
                            (let ()
                              (declare (not safe))
                              (##cdr _e129825129916_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd129826129919_))
                           (let ((_e129828129924_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd129826129919_))))
                             (let ((_hd129829129927_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e129828129924_)))
                                   (_tl129830129929_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e129828129924_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd129829129927_))
                                   (let ((_e129831129932_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd129829129927_))))
                                     (let ((_hd129832129935_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e129831129932_)))
                                           (_tl129833129937_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e129831129932_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl129833129937_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl129830129929_))
                                               (let ((_e129834129940_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl129830129929_))))
                                                 (let ((_hd129835129943_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e129834129940_)))
                                                       (_tl129836129945_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e129834129940_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl129836129945_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl129827129921_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl129824129913_))
                       (let ((_e129837129948_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl129824129913_))))
                         (let ((_hd129838129951_
                                (let ()
                                  (declare (not safe))
                                  (##car _e129837129948_)))
                               (_tl129839129953_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e129837129948_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl129839129953_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl129818129897_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl129809129873_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl129806129865_))
                                           (let ((_e129840129956_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl129806129865_))))
                                             (let ((_hd129841129959_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e129840129956_)))
                                                   (_tl129842129961_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e129840129956_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl129842129961_))
                                                   ((lambda (_L129964_
                                                             _L129965_
                                                             _L129966_
                                                             _L129967_
                                                             _L129968_)
                                                      (let* ((_g130007130069_
                                                              (lambda (_g130008130066_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130008130066_))))
                     (_g130006130975_
                      (lambda (_g130008130072_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g130008130072_))
                            (let ((_e130014130074_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g130008130072_))))
                              (let ((_hd130015130077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130014130074_)))
                                    (_tl130016130079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130014130074_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd130015130077_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd130015130077_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130016130079_))
                                            (let ((_e130017130082_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130016130079_))))
                                              (let ((_hd130018130085_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130017130082_)))
                                                    (_tl130019130087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130017130082_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl130019130087_))
                                                    (let ((_e130020130090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl130019130087_))))
                                                      (let ((_hd130021130093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e130020130090_)))
                    (_tl130022130095_
                     (let () (declare (not safe)) (##cdr _e130020130090_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd130021130093_))
                    (let ((_e130023130098_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd130021130093_))))
                      (let ((_hd130024130101_
                             (let ()
                               (declare (not safe))
                               (##car _e130023130098_)))
                            (_tl130025130103_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130023130098_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd130024130101_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd130024130101_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl130025130103_))
                                    (let ((_e130026130106_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl130025130103_))))
                                      (let ((_hd130027130109_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130026130106_)))
                                            (_tl130028130111_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130026130106_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd130027130109_))
                                            (let ((_e130029130114_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd130027130109_))))
                                              (let ((_hd130030130117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130029130114_)))
                                                    (_tl130031130119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130029130114_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd130030130117_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd130030130117_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl130031130119_))
                                                            (let ((_e130032130122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl130031130119_))))
                      (let ((_hd130033130125_
                             (let ()
                               (declare (not safe))
                               (##car _e130032130122_)))
                            (_tl130034130127_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130032130122_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130034130127_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130028130111_))
                                (let ((_e130035130130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130028130111_))))
                                  (let ((_hd130036130133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130035130130_)))
                                        (_tl130037130135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130035130130_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130036130133_))
                                        (let ((_e130038130138_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130036130133_))))
                                          (let ((_hd130039130141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130038130138_)))
                                                (_tl130040130143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130038130138_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd130039130141_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd130039130141_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl130040130143_))
                                                        (let ((_e130041130146_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl130040130143_))))
                  (let ((_hd130042130149_
                         (let () (declare (not safe)) (##car _e130041130146_)))
                        (_tl130043130151_
                         (let ()
                           (declare (not safe))
                           (##cdr _e130041130146_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl130043130151_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130037130135_))
                            (let ((_e130044130154_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130037130135_))))
                              (let ((_hd130045130157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130044130154_)))
                                    (_tl130046130159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130044130154_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130045130157_))
                                    (let ((_e130047130162_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130045130157_))))
                                      (let ((_hd130048130165_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130047130162_)))
                                            (_tl130049130167_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130047130162_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd130048130165_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd130048130165_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl130049130167_))
                                                    (let ((_e130050130170_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl130049130167_))))
                                                      (let ((_hd130051130173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e130050130170_)))
                    (_tl130052130175_
                     (let () (declare (not safe)) (##cdr _e130050130170_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl130052130175_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl130046130159_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl130046130159_))
                                  '1)
                            (let ((_g132380_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl130046130159_
                                      '1))))
                              (begin
                                (let ((_g132381_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g132380_)
                                             (##vector-length _g132380_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g132381_ 2)))
                                      (error "Context expects 2 values"
                                             _g132381_)))
                                (let ((_target130053130178_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132380_ 0)))
                                      (_tl130055130180_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132380_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl130055130180_))
                                      (let ((_e130062130183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl130055130180_))))
                                        (let ((_hd130063130186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130062130183_)))
                                              (_tl130064130188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130062130183_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130064130188_))
                                              (letrec ((_loop130056130191_
                                                        (lambda (_hd130054130194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref130060130196_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd130054130194_))
                      (let ((_e130057130199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd130054130194_))))
                        (let ((_lp-hd130058130202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130057130199_)))
                              (_lp-tl130059130204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130057130199_))))
                          (let ((__tmp132382
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd130058130202_
                                         _kw-ref130060130196_))))
                            (declare (not safe))
                            (_loop130056130191_
                             _lp-tl130059130204_
                             __tmp132382))))
                      (let ((_kw-ref130061130207_
                             (reverse _kw-ref130060130196_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130022130095_))
                            ((lambda (_L130210_
                                      _L130211_
                                      _L130212_
                                      _L130213_
                                      _L130214_)
                               (let* ((_kw-count130265_
                                       (length (let ((__tmp132383
                                                      (lambda (_g130257130260_
                                                               _g130258130262_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g130257130260_
                                                                _g130258130262_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp132383
                                                         '()
                                                         _L130211_))))
                                      (_self-index130267_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count130265_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L129966_))
                                     (let* ((_g130270130284_
                                             (lambda (_g130271130281_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g130271130281_))))
                                            (_g130269130397_
                                             (lambda (_g130271130287_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g130271130287_))
                                                   (let ((_e130274130289_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g130271130287_))))
                                                     (let ((_hd130275130292_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e130274130289_)))
                                                           (_tl130276130294_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e130274130289_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl130276130294_))
                                                           (let ((_e130277130297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl130276130294_))))
                     (let ((_hd130278130300_
                            (let ()
                              (declare (not safe))
                              (##car _e130277130297_)))
                           (_tl130279130302_
                            (let ()
                              (declare (not safe))
                              (##cdr _e130277130297_))))
                       ((lambda (_L130305_ _L130306_)
                          (let ((_self130322_
                                 (list-ref _L130306_ _self-index130267_)))
                            (for-each
                             (lambda (_g130323130325_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g130323130325_
                                  _self130322_
                                  _method-calls128312_
                                  _slot-refs128313_)))
                             _L130305_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?128316_))
                                _stx128220_
                                (let* ((_specializer-id130334_
                                        (let* ((_id130328_
                                                (let ((__tmp132384
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L128293_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp132384
                                                   '"::specialize")))
                                               (_specializer-id130331_
                                                (let ((__tmp132385
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx128220_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id130328_
                                                   __tmp132385))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id130331_))
                                          _specializer-id130331_))
                                       (_$klass130336_
                                        (let ((__tmp132386 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp132386)))
                                       (_$method-table130338_
                                        (let ((__tmp132387
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp132387)))
                                       (_methods130340_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls128312_)))
                                       (_$methods130344_
                                        (map (lambda (_id130342_)
                                               (let ((__tmp132388
                                                      (gensym _id130342_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp132388)))
                                             _methods130340_))
                                       (_g132389_
                                        (for-each
                                         (lambda (_g130345130348_
                                                  _g130346130350_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls128312_
                                              _g130345130348_
                                              _g130346130350_)))
                                         _methods130340_
                                         _$methods130344_))
                                       (_methods-bind130361_
                                        (map (lambda (_g130353130356_
                                                      _g130354130358_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind128222_
                                                  _$klass130336_
                                                  _$method-table130338_
                                                  _g130353130356_
                                                  _g130354130358_)))
                                             _methods130340_
                                             _$methods130344_))
                                       (_slots130363_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs128313_)))
                                       (_$slots130367_
                                        (map (lambda (_id130365_)
                                               (let ((__tmp132390
                                                      (gensym _id130365_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp132390)))
                                             _slots130363_))
                                       (_g132391_
                                        (for-each
                                         (lambda (_g130368130371_
                                                  _g130369130373_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs128313_
                                              _g130368130371_
                                              _g130369130373_)))
                                         _slots130363_
                                         _$slots130367_))
                                       (_slots-bind130384_
                                        (map (lambda (_g130376130379_
                                                      _g130377130381_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind128223_
                                                  _$klass130336_
                                                  _g130376130379_
                                                  _g130377130381_)))
                                             _slots130363_
                                             _$slots130367_))
                                       (_specializer-impl130392_
                                        (let* ((_specializer-body130390_
                                                (map (lambda (_g130385130387_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g130385130387_
                                                          _self130322_
                                                          _$klass130336_
                                                          _method-calls128312_
                                                          _slot-refs128313_)))
                                                     _L130305_))
                                               (__tmp132392
                                                (let ((__tmp132393
                                                       (let ((__tmp132395
                                                              (let ((__tmp132396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp132408
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129968_ '())))
                                   (__tmp132397
                                    (let ((__tmp132398
                                           (let ((__tmp132399
                                                  (let ((__tmp132401
                                                         (let ((__tmp132402
                                                                (let ((__tmp132407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129967_ '())))
                              (__tmp132403
                               (let ((__tmp132404
                                      (let ((__tmp132405
                                             (let ((__tmp132406
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L130306_
                                                            _specializer-body130390_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp132406))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp132405
                                         _L129966_))))
                                 (declare (not safe))
                                 (cons __tmp132404 '()))))
                          (declare (not safe))
                          (cons __tmp132407 __tmp132403))))
                   (declare (not safe))
                   (cons __tmp132402 '())))
                (__tmp132400
                 (let () (declare (not safe)) (cons _L129965_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132401
                                                          __tmp132400))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp132399))))
                                      (declare (not safe))
                                      (cons __tmp132398 '()))))
                               (declare (not safe))
                               (cons __tmp132408 __tmp132397))))
                        (declare (not safe))
                        (cons __tmp132396 '())))
                     (__tmp132394
                      (let () (declare (not safe)) (cons _L129964_ '()))))
                 (declare (not safe))
                 (cons __tmp132395 __tmp132394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp132393))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp132392
                                           _stx128220_)))
                                       (_specializer-impl130394_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl128224_
                                           _$klass130336_
                                           _$method-table130338_
                                           _methods-bind130361_
                                           _slots-bind130384_
                                           _specializer-impl130392_))))
                                  (let ((__tmp132410
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L128293_)))
                                        (__tmp132409
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id130334_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp132410
                                     '" => "
                                     __tmp132409))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def128225_
                                     _L128293_
                                     _specializer-id130334_
                                     _specializer-impl130394_))))))
                        _tl130279130302_
                        _hd130278130300_)))
                   (let ()
                     (declare (not safe))
                     (_g130270130284_ _g130271130287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g130270130284_
                                                      _g130271130287_))))))
                                       (declare (not safe))
                                       (_g130269130397_ _L129966_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L129966_))
                                         (let* ((_g130400130430_
                                                 (lambda (_g130401130427_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g130401130427_))))
                                                (_g130399130972_
                                                 (lambda (_g130401130433_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g130401130433_))
                                                       (let ((_e130405130435_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g130401130433_))))
                 (let ((_hd130406130438_
                        (let () (declare (not safe)) (##car _e130405130435_)))
                       (_tl130407130440_
                        (let () (declare (not safe)) (##cdr _e130405130435_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl130407130440_))
                       (let ((_e130408130443_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl130407130440_))))
                         (let ((_hd130409130446_
                                (let ()
                                  (declare (not safe))
                                  (##car _e130408130443_)))
                               (_tl130410130448_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e130408130443_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd130409130446_))
                               (let ((_e130411130451_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd130409130446_))))
                                 (let ((_hd130412130454_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e130411130451_)))
                                       (_tl130413130456_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e130411130451_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd130412130454_))
                                       (let ((_e130414130459_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd130412130454_))))
                                         (let ((_hd130415130462_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e130414130459_)))
                                               (_tl130416130464_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e130414130459_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd130415130462_))
                                               (let ((_e130417130467_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd130415130462_))))
                                                 (let ((_hd130418130470_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e130417130467_)))
                                                       (_tl130419130472_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e130417130467_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl130419130472_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl130416130464_))
                                                           (let ((_e130420130475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl130416130464_))))
                     (let ((_hd130421130478_
                            (let ()
                              (declare (not safe))
                              (##car _e130420130475_)))
                           (_tl130422130480_
                            (let ()
                              (declare (not safe))
                              (##cdr _e130420130475_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl130422130480_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl130413130456_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl130410130448_))
                                   (let ((_e130423130483_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl130410130448_))))
                                     (let ((_hd130424130486_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e130423130483_)))
                                           (_tl130425130488_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e130423130483_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl130425130488_))
                                           ((lambda (_L130491_
                                                     _L130492_
                                                     _L130493_)
                                              (let* ((_g130516130530_
                                                      (lambda (_g130517130527_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g130517130527_))))
                                                     (_g130515130571_
                                                      (lambda (_g130517130533_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g130517130533_))
                                                            (let ((_e130520130535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g130517130533_))))
                      (let ((_hd130521130538_
                             (let ()
                               (declare (not safe))
                               (##car _e130520130535_)))
                            (_tl130522130540_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130520130535_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130522130540_))
                            (let ((_e130523130543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130522130540_))))
                              (let ((_hd130524130546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130523130543_)))
                                    (_tl130525130548_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130523130543_))))
                                ((lambda (_L130551_ _L130552_)
                                   (let ((_self130565_
                                          (list-ref
                                           _L130552_
                                           _self-index130267_)))
                                     (for-each
                                      (lambda (_g130566130568_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g130566130568_
                                           _self130565_
                                           _method-calls128312_
                                           _slot-refs128313_)))
                                      _L130551_)))
                                 _tl130525130548_
                                 _hd130524130546_)))
                            (let ()
                              (declare (not safe))
                              (_g130516130530_ _g130517130533_)))))
                    (let ()
                      (declare (not safe))
                      (_g130516130530_ _g130517130533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g130515130571_ _L130492_))
                                              (let* ((_g130574130593_
                                                      (lambda (_g130575130590_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g130575130590_))))
                                                     (_g130573130698_
                                                      (lambda (_g130575130596_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g130575130596_))
                                                            (let ((_e130577130598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g130575130596_))))
                      (let ((_hd130578130601_
                             (let ()
                               (declare (not safe))
                               (##car _e130577130598_)))
                            (_tl130579130603_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130577130598_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl130579130603_))
                            (let ((_g132411_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl130579130603_
                                      '0))))
                              (begin
                                (let ((_g132412_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g132411_)
                                             (##vector-length _g132411_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g132412_ 2)))
                                      (error "Context expects 2 values"
                                             _g132412_)))
                                (let ((_target130580130606_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132411_ 0)))
                                      (_tl130582130608_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132411_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130582130608_))
                                      (letrec ((_loop130583130611_
                                                (lambda (_hd130581130614_
                                                         _clause130587130616_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd130581130614_))
                                                      (let ((_e130584130619_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd130581130614_))))
                (let ((_lp-hd130585130622_
                       (let () (declare (not safe)) (##car _e130584130619_)))
                      (_lp-tl130586130624_
                       (let () (declare (not safe)) (##cdr _e130584130619_))))
                  (let ((__tmp132413
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd130585130622_ _clause130587130616_))))
                    (declare (not safe))
                    (_loop130583130611_ _lp-tl130586130624_ __tmp132413))))
              (let ((_clause130588130627_ (reverse _clause130587130616_)))
                ((lambda (_L130630_)
                   (for-each
                    (lambda (_clause130643_)
                      (let* ((_g130645130656_
                              (lambda (_g130646130653_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g130646130653_))))
                             (_g130644130688_
                              (lambda (_g130646130659_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g130646130659_))
                                    (let ((_e130649130661_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g130646130659_))))
                                      (let ((_hd130650130664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130649130661_)))
                                            (_tl130651130666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130649130661_))))
                                        ((lambda (_L130669_ _L130670_)
                                           (let ((_self130682_
                                                  (list-ref
                                                   _L130670_
                                                   _self-index130267_)))
                                             (for-each
                                              (lambda (_g130683130685_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g130683130685_
                                                   _self130682_
                                                   _method-calls128312_
                                                   _slot-refs128313_)))
                                              _L130669_)))
                                         _tl130651130666_
                                         _hd130650130664_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g130645130656_ _g130646130659_))))))
                        (declare (not safe))
                        (_g130644130688_ _clause130643_)))
                    (let ((__tmp132414
                           (lambda (_g130690130693_ _g130691130695_)
                             (let ()
                               (declare (not safe))
                               (cons _g130690130693_ _g130691130695_)))))
                      (declare (not safe))
                      (foldr1 __tmp132414 '() _L130630_))))
                 _clause130588130627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop130583130611_
                                           _target130580130606_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g130574130593_ _g130575130596_))))))
                            (let ()
                              (declare (not safe))
                              (_g130574130593_ _g130575130596_)))))
                    (let ()
                      (declare (not safe))
                      (_g130574130593_ _g130575130596_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g130573130698_ _L130491_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?128316_))
                                                  _stx128220_
                                                  (let* ((_specializer-id130707_
                                                          (let* ((_id130701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132415
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L128293_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp132415 '"::specialize")))
                         (_specializer-id130704_
                          (let ((__tmp132416
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx128220_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id130701_ __tmp132416))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id130704_))
                    _specializer-id130704_))
                 (_$klass130709_
                  (let ((__tmp132417 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132417)))
                 (_$method-table130711_
                  (let ((__tmp132418 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132418)))
                 (_methods130713_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls128312_)))
                 (_$methods130717_
                  (map (lambda (_id130715_)
                         (let ((__tmp132419 (gensym _id130715_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132419)))
                       _methods130713_))
                 (_g132420_
                  (for-each
                   (lambda (_g130718130721_ _g130719130723_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls128312_
                        _g130718130721_
                        _g130719130723_)))
                   _methods130713_
                   _$methods130717_))
                 (_methods-bind130734_
                  (map (lambda (_g130726130729_ _g130727130731_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind128222_
                            _$klass130709_
                            _$method-table130711_
                            _g130726130729_
                            _g130727130731_)))
                       _methods130713_
                       _$methods130717_))
                 (_slots130736_
                  (let () (declare (not safe)) (hash-keys _slot-refs128313_)))
                 (_$slots130740_
                  (map (lambda (_id130738_)
                         (let ((__tmp132421 (gensym _id130738_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132421)))
                       _slots130736_))
                 (_g132422_
                  (for-each
                   (lambda (_g130741130744_ _g130742130746_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs128313_
                        _g130741130744_
                        _g130742130746_)))
                   _slots130736_
                   _$slots130740_))
                 (_slots-bind130757_
                  (map (lambda (_g130749130752_ _g130750130754_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind128223_
                            _$klass130709_
                            _g130749130752_
                            _g130750130754_)))
                       _slots130736_
                       _$slots130740_))
                 (_specializer-lambda-expr130830_
                  (let* ((_g130759130773_
                          (lambda (_g130760130770_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130760130770_))))
                         (_g130758130827_
                          (lambda (_g130760130776_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g130760130776_))
                                (let ((_e130763130778_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g130760130776_))))
                                  (let ((_hd130764130781_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130763130778_)))
                                        (_tl130765130783_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130763130778_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl130765130783_))
                                        (let ((_e130766130786_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl130765130783_))))
                                          (let ((_hd130767130789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130766130786_)))
                                                (_tl130768130791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130766130786_))))
                                            ((lambda (_L130794_ _L130795_)
                                               (let* ((_self130818_
                                                       (list-ref
                                                        _L130795_
                                                        _self-index130267_))
                                                      (_body130824_
                                                       (map (lambda (_g130819130821_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g130819130821_
                         _self130818_
                         _$klass130709_
                         _method-calls128312_
                         _slot-refs128313_)))
                    _L130794_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp132423
                                                        (let ((__tmp132424
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L130795_ _body130824_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp132424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp132423
                                                    _L130492_))))
                                             _tl130768130791_
                                             _hd130767130789_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g130759130773_ _g130760130776_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g130759130773_ _g130760130776_))))))
                    (declare (not safe))
                    (_g130758130827_ _L130492_)))
                 (_specializer-case-lambda-expr130965_
                  (let* ((_g130832130851_
                          (lambda (_g130833130848_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130833130848_))))
                         (_g130831130962_
                          (lambda (_g130833130854_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g130833130854_))
                                (let ((_e130835130856_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g130833130854_))))
                                  (let ((_hd130836130859_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130835130856_)))
                                        (_tl130837130861_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130835130856_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl130837130861_))
                                        (let ((_g132425_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl130837130861_
                                                  '0))))
                                          (begin
                                            (let ((_g132426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g132425_)
                                                         (##vector-length
                                                          _g132425_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g132426_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g132426_)))
                                            (let ((_target130838130864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g132425_
                                                      0)))
                                                  (_tl130840130866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g132425_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130840130866_))
                                                  (letrec ((_loop130841130869_
                                                            (lambda (_hd130839130872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause130845130874_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130839130872_))
                          (let ((_e130842130877_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130839130872_))))
                            (let ((_lp-hd130843130880_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130842130877_)))
                                  (_lp-tl130844130882_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130842130877_))))
                              (let ((__tmp132427
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd130843130880_
                                             _clause130845130874_))))
                                (declare (not safe))
                                (_loop130841130869_
                                 _lp-tl130844130882_
                                 __tmp132427))))
                          (let ((_clause130846130885_
                                 (reverse _clause130845130874_)))
                            ((lambda (_L130888_)
                               (let* ((_clauses130960_
                                       (map (lambda (_clause130902_)
                                              (let* ((_g130904130915_
                                                      (lambda (_g130905130912_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g130905130912_))))
                                                     (_g130903130950_
                                                      (lambda (_g130905130918_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g130905130918_))
                                                            (let ((_e130908130920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g130905130918_))))
                      (let ((_hd130909130923_
                             (let ()
                               (declare (not safe))
                               (##car _e130908130920_)))
                            (_tl130910130925_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130908130920_))))
                        ((lambda (_L130928_ _L130929_)
                           (let* ((_self130941_
                                   (list-ref _L130929_ _self-index130267_))
                                  (_body130947_
                                   (map (lambda (_g130942130944_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g130942130944_
                                             _self130941_
                                             _$klass130709_
                                             _method-calls128312_
                                             _slot-refs128313_)))
                                        _L130928_)))
                             (let ()
                               (declare (not safe))
                               (cons _L130929_ _body130947_))))
                         _tl130910130925_
                         _hd130909130923_)))
                    (let ()
                      (declare (not safe))
                      (_g130904130915_ _g130905130918_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g130903130950_
                                                 _clause130902_)))
                                            (let ((__tmp132428
                                                   (lambda (_g130952130955_
                                                            _g130953130957_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g130952130955_
                                                             _g130953130957_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp132428
                                                      '()
                                                      _L130888_))))
                                      (__tmp132429
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses130960_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp132429
                                  _L130491_)))
                             _clause130846130885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop130841130869_
                                                       _target130838130864_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g130832130851_
                                                     _g130833130854_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g130832130851_ _g130833130854_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g130832130851_ _g130833130854_))))))
                    (declare (not safe))
                    (_g130831130962_ _L130491_)))
                 (_specializer-impl130967_
                  (let ((__tmp132430
                         (let ((__tmp132431
                                (let ((__tmp132433
                                       (let ((__tmp132434
                                              (let ((__tmp132451
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L129968_ '())))
                                                    (__tmp132435
                                                     (let ((__tmp132436
                                                            (let ((__tmp132437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp132439
                                  (let ((__tmp132440
                                         (let ((__tmp132450
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129967_ '())))
                                               (__tmp132441
                                                (let ((__tmp132442
                                                       (let ((__tmp132443
                                                              (let ((__tmp132444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp132446
                                    (let ((__tmp132447
                                           (let ((__tmp132449
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130493_ '())))
                                                 (__tmp132448
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr130830_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp132449 __tmp132448))))
                                      (declare (not safe))
                                      (cons __tmp132447 '())))
                                   (__tmp132445
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr130965_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp132446 __tmp132445))))
                        (declare (not safe))
                        (cons '%#let-values __tmp132444))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp132443 _stx128220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp132442 '()))))
                                           (declare (not safe))
                                           (cons __tmp132450 __tmp132441))))
                                    (declare (not safe))
                                    (cons __tmp132440 '())))
                                 (__tmp132438
                                  (let ()
                                    (declare (not safe))
                                    (cons _L129965_ '()))))
                             (declare (not safe))
                             (cons __tmp132439 __tmp132438))))
                      (declare (not safe))
                      (cons '%#let-values __tmp132437))))
               (declare (not safe))
               (cons __tmp132436 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp132451
                                                      __tmp132435))))
                                         (declare (not safe))
                                         (cons __tmp132434 '())))
                                      (__tmp132432
                                       (let ()
                                         (declare (not safe))
                                         (cons _L129964_ '()))))
                                  (declare (not safe))
                                  (cons __tmp132433 __tmp132432))))
                           (declare (not safe))
                           (cons '%#let-values __tmp132431))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp132430 _stx128220_)))
                 (_specializer-impl130969_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl128224_
                     _$klass130709_
                     _$method-table130711_
                     _methods-bind130734_
                     _slots-bind130757_
                     _specializer-impl130967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp132453
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L128293_)))
                                                          (__tmp132452
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id130707_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp132453
                                                       '" => "
                                                       __tmp132452))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def128225_
                                                       _L128293_
                                                       _specializer-id130707_
                                                       _specializer-impl130969_)))))
                                            _hd130424130486_
                                            _hd130421130478_
                                            _hd130418130470_)
                                           (let ()
                                             (declare (not safe))
                                             (_g130400130430_
                                              _g130401130433_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g130400130430_ _g130401130433_)))
                               (let ()
                                 (declare (not safe))
                                 (_g130400130430_ _g130401130433_)))
                           (let ()
                             (declare (not safe))
                             (_g130400130430_ _g130401130433_)))))
                   (let ()
                     (declare (not safe))
                     (_g130400130430_ _g130401130433_)))
               (let ()
                 (declare (not safe))
                 (_g130400130430_ _g130401130433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g130400130430_
                                                  _g130401130433_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g130400130430_ _g130401130433_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g130400130430_ _g130401130433_)))))
                       (let ()
                         (declare (not safe))
                         (_g130400130430_ _g130401130433_)))))
               (let ()
                 (declare (not safe))
                 (_g130400130430_ _g130401130433_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g130399130972_ _L129966_))
                                         _stx128220_))))
                             _hd130063130186_
                             _kw-ref130061130207_
                             _hd130051130173_
                             _hd130042130149_
                             _hd130033130125_)
                            (let ()
                              (declare (not safe))
                              (_g130007130069_ _g130008130072_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop130056130191_
                                                   _target130053130178_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g130007130069_
                                                 _g130008130072_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g130007130069_ _g130008130072_))))))
                            (let ()
                              (declare (not safe))
                              (_g130007130069_ _g130008130072_)))
                        (let ()
                          (declare (not safe))
                          (_g130007130069_ _g130008130072_)))
                    (let ()
                      (declare (not safe))
                      (_g130007130069_ _g130008130072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g130007130069_
                                                       _g130008130072_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g130007130069_
                                                   _g130008130072_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g130007130069_
                                               _g130008130072_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g130007130069_ _g130008130072_)))))
                            (let ()
                              (declare (not safe))
                              (_g130007130069_ _g130008130072_)))
                        (let ()
                          (declare (not safe))
                          (_g130007130069_ _g130008130072_)))))
                (let ()
                  (declare (not safe))
                  (_g130007130069_ _g130008130072_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g130007130069_
                                                       _g130008130072_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g130007130069_
                                                   _g130008130072_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g130007130069_ _g130008130072_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g130007130069_ _g130008130072_)))
                            (let ()
                              (declare (not safe))
                              (_g130007130069_ _g130008130072_)))))
                    (let ()
                      (declare (not safe))
                      (_g130007130069_ _g130008130072_)))
                (let ()
                  (declare (not safe))
                  (_g130007130069_ _g130008130072_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g130007130069_
                                                       _g130008130072_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g130007130069_
                                               _g130008130072_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g130007130069_ _g130008130072_)))
                                (let ()
                                  (declare (not safe))
                                  (_g130007130069_ _g130008130072_)))
                            (let ()
                              (declare (not safe))
                              (_g130007130069_ _g130008130072_)))))
                    (let ()
                      (declare (not safe))
                      (_g130007130069_ _g130008130072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g130007130069_
                                                       _g130008130072_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g130007130069_
                                               _g130008130072_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g130007130069_ _g130008130072_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g130007130069_ _g130008130072_)))))
                            (let ()
                              (declare (not safe))
                              (_g130007130069_ _g130008130072_))))))
                (declare (not safe))
                (_g130006130975_ _L129965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd129841129959_
                                                    _hd129838129951_
                                                    _hd129835129943_
                                                    _hd129832129935_
                                                    _hd129814129887_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129794129847_
                                                      _g129795129850_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g129794129847_
                                              _g129795129850_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g129794129847_ _g129795129850_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g129794129847_ _g129795129850_)))
                               (let ()
                                 (declare (not safe))
                                 (_g129794129847_ _g129795129850_)))))
                       (let ()
                         (declare (not safe))
                         (_g129794129847_ _g129795129850_)))
                   (let ()
                     (declare (not safe))
                     (_g129794129847_ _g129795129850_)))
               (let ()
                 (declare (not safe))
                 (_g129794129847_ _g129795129850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g129794129847_
                                                  _g129795129850_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g129794129847_
                                              _g129795129850_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g129794129847_ _g129795129850_)))))
                           (let ()
                             (declare (not safe))
                             (_g129794129847_ _g129795129850_)))))
                   (let ()
                     (declare (not safe))
                     (_g129794129847_ _g129795129850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129794129847_
                                                      _g129795129850_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g129794129847_
                                                  _g129795129850_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g129794129847_
                                              _g129795129850_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g129794129847_ _g129795129850_)))))
                           (let ()
                             (declare (not safe))
                             (_g129794129847_ _g129795129850_)))
                       (let ()
                         (declare (not safe))
                         (_g129794129847_ _g129795129850_)))))
               (let ()
                 (declare (not safe))
                 (_g129794129847_ _g129795129850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g129794129847_
                                                  _g129795129850_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g129794129847_ _g129795129850_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g129794129847_ _g129795129850_)))
                           (let ()
                             (declare (not safe))
                             (_g129794129847_ _g129795129850_)))
                       (let ()
                         (declare (not safe))
                         (_g129794129847_ _g129795129850_)))))
               (let ()
                 (declare (not safe))
                 (_g129794129847_ _g129795129850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g129793130978_ _L128292_))
                                         _stx128220_))))))))
                  (___kont131158131159_ (lambda () _stx128220_)))
              (let ((___match131187131188_
                     (lambda (_e128232128260_
                              _hd128233128263_
                              _tl128234128265_
                              _e128235128268_
                              _hd128236128271_
                              _tl128237128273_
                              _e128238128276_
                              _hd128239128279_
                              _tl128240128281_
                              _e128241128284_
                              _hd128242128287_
                              _tl128243128289_)
                       (let ((_L128292_ _hd128242128287_)
                             (_L128293_ _hd128239128279_))
                         (if (let ((__tmp132454
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128293_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp132454))
                             (___kont131156131157_ _L128292_ _L128293_)
                             (___kont131158131159_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx131154131155_))
                    (let ((_e128232128260_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx131154131155_))))
                      (let ((_tl128234128265_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128232128260_)))
                            (_hd128233128263_
                             (let ()
                               (declare (not safe))
                               (##car _e128232128260_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128234128265_))
                            (let ((_e128235128268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128234128265_))))
                              (let ((_tl128237128273_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128235128268_)))
                                    (_hd128236128271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128235128268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128236128271_))
                                    (let ((_e128238128276_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128236128271_))))
                                      (let ((_tl128240128281_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128238128276_)))
                                            (_hd128239128279_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128238128276_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128240128281_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128237128273_))
                                                (let ((_e128241128284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128237128273_))))
                                                  (let ((_tl128243128289_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128241128284_)))
                                                        (_hd128242128287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128241128284_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128243128289_))
                                                        (___match131187131188_
                                                         _e128232128260_
                                                         _hd128233128263_
                                                         _tl128234128265_
                                                         _e128235128268_
                                                         _hd128236128271_
                                                         _tl128237128273_
                                                         _e128238128276_
                                                         _hd128239128279_
                                                         _tl128240128281_
                                                         _e128241128284_
                                                         _hd128242128287_
                                                         _tl128243128289_)
                                                        (___kont131158131159_))))
                                                (___kont131158131159_))
                                            (___kont131158131159_))))
                                    (___kont131158131159_))))
                            (___kont131158131159_))))
                    (___kont131158131159_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx127179_ _self127180_ _methods127181_ _slots127182_)
        (let* ((___stx131190131191_ _stx127179_)
               (_g127190127412_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx131190131191_)))))
          (let ((___kont131192131193_
                 (lambda (_L128169_ _L128170_ _L128171_ _L128172_)
                   (let ((__tmp132455
                          (let () (declare (not safe)) (gx#stx-e _L128170_))))
                     (declare (not safe))
                     (hash-put! _methods127181_ __tmp132455 '#t))
                   (for-each
                    (lambda (_g128205128207_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g128205128207_
                         _self127180_
                         _methods127181_
                         _slots127182_)))
                    (let ((__tmp132456
                           (lambda (_g128209128212_ _g128210128214_)
                             (let ()
                               (declare (not safe))
                               (cons _g128209128212_ _g128210128214_)))))
                      (declare (not safe))
                      (foldr1 __tmp132456 '() _L128169_)))))
                (___kont131196131197_
                 (lambda (_L128004_ _L128005_ _L128006_ _L128007_ _L128008_)
                   (let ((__tmp132457
                          (let () (declare (not safe)) (gx#stx-e _L128005_))))
                     (declare (not safe))
                     (hash-put! _methods127181_ __tmp132457 '#t))
                   (for-each
                    (lambda (_g128048128050_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g128048128050_
                         _self127180_
                         _methods127181_
                         _slots127182_)))
                    (let ((__tmp132458
                           (lambda (_g128052128055_ _g128053128057_)
                             (let ()
                               (declare (not safe))
                               (cons _g128052128055_ _g128053128057_)))))
                      (declare (not safe))
                      (foldr1 __tmp132458 '() _L128004_)))))
                (___kont131200131201_
                 (lambda (_L127837_ _L127838_ _L127839_)
                   (let ((__tmp132459
                          (let () (declare (not safe)) (gx#stx-e _L127837_))))
                     (declare (not safe))
                     (hash-put! _slots127182_ __tmp132459 '#t))))
                (___kont131202131203_
                 (lambda (_L127714_ _L127715_ _L127716_ _L127717_)
                   (let ((__tmp132460
                          (let () (declare (not safe)) (gx#stx-e _L127715_))))
                     (declare (not safe))
                     (hash-put! _slots127182_ __tmp132460 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L127714_
                      _self127180_
                      _methods127181_
                      _slots127182_))))
                (___kont131204131205_
                 (lambda (_L127588_ _L127589_)
                   (let* ((_accessor127611_
                           (let ((__tmp132461
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L127589_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp132461)))
                          (_klass127613_
                           (let ((__tmp132462
                                  (##structure-ref
                                   _accessor127611_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx127179_
                              __tmp132462)))
                          (_slot127615_
                           (##structure-ref
                            _accessor127611_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp132463
                                     (##structure-ref
                                      _accessor127611_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp132463))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass127613_
                                     _slot127615_))
                                  (##structure-ref
                                   _klass127613_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp132464
                                (##structure-ref
                                 _accessor127611_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots127182_ __tmp132464 '#t))))))
                (___kont131206131207_
                 (lambda (_L127488_ _L127489_ _L127490_)
                   (let* ((_mutator127517_
                           (let ((__tmp132465
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L127490_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp132465)))
                          (_klass127519_
                           (let ((__tmp132466
                                  (##structure-ref
                                   _mutator127517_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx127179_
                              __tmp132466)))
                          (_slot127521_
                           (##structure-ref
                            _mutator127517_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp132467
                                     (##structure-ref
                                      _mutator127517_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp132467))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass127519_
                                     _slot127521_))
                                  (##structure-ref
                                   _klass127519_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots127182_ _slot127521_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L127488_
                        _self127180_
                        _methods127181_
                        _slots127182_)))))
                (___kont131208131209_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx127179_
                      _self127180_
                      _methods127181_
                      _slots127182_)))))
            (let* ((___match131689131690_
                    (lambda (_e127384127424_
                             _hd127385127427_
                             _tl127386127429_
                             _e127387127432_
                             _hd127388127435_
                             _tl127389127437_
                             _e127390127440_
                             _hd127391127443_
                             _tl127392127445_
                             _e127393127448_
                             _hd127394127451_
                             _tl127395127453_
                             _e127396127456_
                             _hd127397127459_
                             _tl127398127461_
                             _e127399127464_
                             _hd127400127467_
                             _tl127401127469_
                             _e127402127472_
                             _hd127403127475_
                             _tl127404127477_
                             _e127405127480_
                             _hd127406127483_
                             _tl127407127485_)
                      (let ((_L127488_ _hd127406127483_)
                            (_L127489_ _hd127403127475_)
                            (_L127490_ _hd127394127451_))
                        (if (and (let ((__tmp132468
                                        (let ((__tmp132469
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L127490_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp132469))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp132468
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127489_
                                    _self127180_)))
                            (___kont131206131207_
                             _L127488_
                             _L127489_
                             _L127490_)
                            (___kont131208131209_)))))
                   (___match131687131688_
                    (lambda (_e127384127424_
                             _hd127385127427_
                             _tl127386127429_
                             _e127387127432_
                             _hd127388127435_
                             _tl127389127437_
                             _e127390127440_
                             _hd127391127443_
                             _tl127392127445_
                             _e127393127448_
                             _hd127394127451_
                             _tl127395127453_
                             _e127396127456_
                             _hd127397127459_
                             _tl127398127461_
                             _e127399127464_
                             _hd127400127467_
                             _tl127401127469_
                             _e127402127472_
                             _hd127403127475_
                             _tl127404127477_
                             _e127405127480_
                             _hd127406127483_
                             _tl127407127485_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127407127485_))
                          (___match131689131690_
                           _e127384127424_
                           _hd127385127427_
                           _tl127386127429_
                           _e127387127432_
                           _hd127388127435_
                           _tl127389127437_
                           _e127390127440_
                           _hd127391127443_
                           _tl127392127445_
                           _e127393127448_
                           _hd127394127451_
                           _tl127395127453_
                           _e127396127456_
                           _hd127397127459_
                           _tl127398127461_
                           _e127399127464_
                           _hd127400127467_
                           _tl127401127469_
                           _e127402127472_
                           _hd127403127475_
                           _tl127404127477_
                           _e127405127480_
                           _hd127406127483_
                           _tl127407127485_)
                          (___kont131208131209_))))
                   (___match131681131682_
                    (lambda (_e127384127424_
                             _hd127385127427_
                             _tl127386127429_
                             _e127387127432_
                             _hd127388127435_
                             _tl127389127437_
                             _e127390127440_
                             _hd127391127443_
                             _tl127392127445_
                             _e127393127448_
                             _hd127394127451_
                             _tl127395127453_
                             _e127396127456_
                             _hd127397127459_
                             _tl127398127461_
                             _e127399127464_
                             _hd127400127467_
                             _tl127401127469_
                             _e127402127472_
                             _hd127403127475_
                             _tl127404127477_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127398127461_))
                          (let ((_e127405127480_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127398127461_))))
                            (let ((_tl127407127485_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127405127480_)))
                                  (_hd127406127483_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127405127480_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127407127485_))
                                  (___match131689131690_
                                   _e127384127424_
                                   _hd127385127427_
                                   _tl127386127429_
                                   _e127387127432_
                                   _hd127388127435_
                                   _tl127389127437_
                                   _e127390127440_
                                   _hd127391127443_
                                   _tl127392127445_
                                   _e127393127448_
                                   _hd127394127451_
                                   _tl127395127453_
                                   _e127396127456_
                                   _hd127397127459_
                                   _tl127398127461_
                                   _e127399127464_
                                   _hd127400127467_
                                   _tl127401127469_
                                   _e127402127472_
                                   _hd127403127475_
                                   _tl127404127477_
                                   _e127405127480_
                                   _hd127406127483_
                                   _tl127407127485_)
                                  (___kont131208131209_))))
                          (___kont131208131209_))))
                   (___match131627131628_
                    (lambda (_e127360127532_
                             _hd127361127535_
                             _tl127362127537_
                             _e127363127540_
                             _hd127364127543_
                             _tl127365127545_
                             _e127366127548_
                             _hd127367127551_
                             _tl127368127553_
                             _e127369127556_
                             _hd127370127559_
                             _tl127371127561_
                             _e127372127564_
                             _hd127373127567_
                             _tl127374127569_
                             _e127375127572_
                             _hd127376127575_
                             _tl127377127577_
                             _e127378127580_
                             _hd127379127583_
                             _tl127380127585_)
                      (let ((_L127588_ _hd127379127583_)
                            (_L127589_ _hd127370127559_))
                        (if (and (let ((__tmp132470
                                        (let ((__tmp132471
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L127589_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp132471))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp132470
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127588_
                                    _self127180_)))
                            (___kont131204131205_ _L127588_ _L127589_)
                            (___kont131208131209_)))))
                   (___match131625131626_
                    (lambda (_e127360127532_
                             _hd127361127535_
                             _tl127362127537_
                             _e127363127540_
                             _hd127364127543_
                             _tl127365127545_
                             _e127366127548_
                             _hd127367127551_
                             _tl127368127553_
                             _e127369127556_
                             _hd127370127559_
                             _tl127371127561_
                             _e127372127564_
                             _hd127373127567_
                             _tl127374127569_
                             _e127375127572_
                             _hd127376127575_
                             _tl127377127577_
                             _e127378127580_
                             _hd127379127583_
                             _tl127380127585_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127374127569_))
                          (___match131627131628_
                           _e127360127532_
                           _hd127361127535_
                           _tl127362127537_
                           _e127363127540_
                           _hd127364127543_
                           _tl127365127545_
                           _e127366127548_
                           _hd127367127551_
                           _tl127368127553_
                           _e127369127556_
                           _hd127370127559_
                           _tl127371127561_
                           _e127372127564_
                           _hd127373127567_
                           _tl127374127569_
                           _e127375127572_
                           _hd127376127575_
                           _tl127377127577_
                           _e127378127580_
                           _hd127379127583_
                           _tl127380127585_)
                          (___match131681131682_
                           _e127360127532_
                           _hd127361127535_
                           _tl127362127537_
                           _e127363127540_
                           _hd127364127543_
                           _tl127365127545_
                           _e127366127548_
                           _hd127367127551_
                           _tl127368127553_
                           _e127369127556_
                           _hd127370127559_
                           _tl127371127561_
                           _e127372127564_
                           _hd127373127567_
                           _tl127374127569_
                           _e127375127572_
                           _hd127376127575_
                           _tl127377127577_
                           _e127378127580_
                           _hd127379127583_
                           _tl127380127585_))))
                   (___match131571131572_
                    (lambda (_e127325127626_
                             _hd127326127629_
                             _tl127327127631_
                             _e127328127634_
                             _hd127329127637_
                             _tl127330127639_
                             _e127331127642_
                             _hd127332127645_
                             _tl127333127647_
                             _e127334127650_
                             _hd127335127653_
                             _tl127336127655_
                             _e127337127658_
                             _hd127338127661_
                             _tl127339127663_
                             _e127340127666_
                             _hd127341127669_
                             _tl127342127671_
                             _e127343127674_
                             _hd127344127677_
                             _tl127345127679_
                             _e127346127682_
                             _hd127347127685_
                             _tl127348127687_
                             _e127349127690_
                             _hd127350127693_
                             _tl127351127695_
                             _e127352127698_
                             _hd127353127701_
                             _tl127354127703_
                             _e127355127706_
                             _hd127356127709_
                             _tl127357127711_)
                      (let ((_L127714_ _hd127356127709_)
                            (_L127715_ _hd127353127701_)
                            (_L127716_ _hd127344127677_)
                            (_L127717_ _hd127335127653_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127717_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127717_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127716_
                                    _self127180_)))
                            (___kont131202131203_
                             _L127714_
                             _L127715_
                             _L127716_
                             _L127717_)
                            (___kont131208131209_)))))
                   (___match131563131564_
                    (lambda (_e127325127626_
                             _hd127326127629_
                             _tl127327127631_
                             _e127328127634_
                             _hd127329127637_
                             _tl127330127639_
                             _e127331127642_
                             _hd127332127645_
                             _tl127333127647_
                             _e127334127650_
                             _hd127335127653_
                             _tl127336127655_
                             _e127337127658_
                             _hd127338127661_
                             _tl127339127663_
                             _e127340127666_
                             _hd127341127669_
                             _tl127342127671_
                             _e127343127674_
                             _hd127344127677_
                             _tl127345127679_
                             _e127346127682_
                             _hd127347127685_
                             _tl127348127687_
                             _e127349127690_
                             _hd127350127693_
                             _tl127351127695_
                             _e127352127698_
                             _hd127353127701_
                             _tl127354127703_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127348127687_))
                          (let ((_e127355127706_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127348127687_))))
                            (let ((_tl127357127711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127355127706_)))
                                  (_hd127356127709_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127355127706_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127357127711_))
                                  (___match131571131572_
                                   _e127325127626_
                                   _hd127326127629_
                                   _tl127327127631_
                                   _e127328127634_
                                   _hd127329127637_
                                   _tl127330127639_
                                   _e127331127642_
                                   _hd127332127645_
                                   _tl127333127647_
                                   _e127334127650_
                                   _hd127335127653_
                                   _tl127336127655_
                                   _e127337127658_
                                   _hd127338127661_
                                   _tl127339127663_
                                   _e127340127666_
                                   _hd127341127669_
                                   _tl127342127671_
                                   _e127343127674_
                                   _hd127344127677_
                                   _tl127345127679_
                                   _e127346127682_
                                   _hd127347127685_
                                   _tl127348127687_
                                   _e127349127690_
                                   _hd127350127693_
                                   _tl127351127695_
                                   _e127352127698_
                                   _hd127353127701_
                                   _tl127354127703_
                                   _e127355127706_
                                   _hd127356127709_
                                   _tl127357127711_)
                                  (___kont131208131209_))))
                          (___match131687131688_
                           _e127325127626_
                           _hd127326127629_
                           _tl127327127631_
                           _e127328127634_
                           _hd127329127637_
                           _tl127330127639_
                           _e127331127642_
                           _hd127332127645_
                           _tl127333127647_
                           _e127334127650_
                           _hd127335127653_
                           _tl127336127655_
                           _e127337127658_
                           _hd127338127661_
                           _tl127339127663_
                           _e127340127666_
                           _hd127341127669_
                           _tl127342127671_
                           _e127343127674_
                           _hd127344127677_
                           _tl127345127679_
                           _e127346127682_
                           _hd127347127685_
                           _tl127348127687_))))
                   (___match131485131486_
                    (lambda (_e127291127757_
                             _hd127292127760_
                             _tl127293127762_
                             _e127294127765_
                             _hd127295127768_
                             _tl127296127770_
                             _e127297127773_
                             _hd127298127776_
                             _tl127299127778_
                             _e127300127781_
                             _hd127301127784_
                             _tl127302127786_
                             _e127303127789_
                             _hd127304127792_
                             _tl127305127794_
                             _e127306127797_
                             _hd127307127800_
                             _tl127308127802_
                             _e127309127805_
                             _hd127310127808_
                             _tl127311127810_
                             _e127312127813_
                             _hd127313127816_
                             _tl127314127818_
                             _e127315127821_
                             _hd127316127824_
                             _tl127317127826_
                             _e127318127829_
                             _hd127319127832_
                             _tl127320127834_)
                      (let ((_L127837_ _hd127319127832_)
                            (_L127838_ _hd127310127808_)
                            (_L127839_ _hd127301127784_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127839_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127839_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127838_
                                    _self127180_)))
                            (___kont131200131201_
                             _L127837_
                             _L127838_
                             _L127839_)
                            (___match131689131690_
                             _e127291127757_
                             _hd127292127760_
                             _tl127293127762_
                             _e127294127765_
                             _hd127295127768_
                             _tl127296127770_
                             _e127297127773_
                             _hd127298127776_
                             _tl127299127778_
                             _e127300127781_
                             _hd127301127784_
                             _tl127302127786_
                             _e127303127789_
                             _hd127304127792_
                             _tl127305127794_
                             _e127306127797_
                             _hd127307127800_
                             _tl127308127802_
                             _e127309127805_
                             _hd127310127808_
                             _tl127311127810_
                             _e127312127813_
                             _hd127313127816_
                             _tl127314127818_)))))
                   (___match131483131484_
                    (lambda (_e127291127757_
                             _hd127292127760_
                             _tl127293127762_
                             _e127294127765_
                             _hd127295127768_
                             _tl127296127770_
                             _e127297127773_
                             _hd127298127776_
                             _tl127299127778_
                             _e127300127781_
                             _hd127301127784_
                             _tl127302127786_
                             _e127303127789_
                             _hd127304127792_
                             _tl127305127794_
                             _e127306127797_
                             _hd127307127800_
                             _tl127308127802_
                             _e127309127805_
                             _hd127310127808_
                             _tl127311127810_
                             _e127312127813_
                             _hd127313127816_
                             _tl127314127818_
                             _e127315127821_
                             _hd127316127824_
                             _tl127317127826_
                             _e127318127829_
                             _hd127319127832_
                             _tl127320127834_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127314127818_))
                          (___match131485131486_
                           _e127291127757_
                           _hd127292127760_
                           _tl127293127762_
                           _e127294127765_
                           _hd127295127768_
                           _tl127296127770_
                           _e127297127773_
                           _hd127298127776_
                           _tl127299127778_
                           _e127300127781_
                           _hd127301127784_
                           _tl127302127786_
                           _e127303127789_
                           _hd127304127792_
                           _tl127305127794_
                           _e127306127797_
                           _hd127307127800_
                           _tl127308127802_
                           _e127309127805_
                           _hd127310127808_
                           _tl127311127810_
                           _e127312127813_
                           _hd127313127816_
                           _tl127314127818_
                           _e127315127821_
                           _hd127316127824_
                           _tl127317127826_
                           _e127318127829_
                           _hd127319127832_
                           _tl127320127834_)
                          (___match131563131564_
                           _e127291127757_
                           _hd127292127760_
                           _tl127293127762_
                           _e127294127765_
                           _hd127295127768_
                           _tl127296127770_
                           _e127297127773_
                           _hd127298127776_
                           _tl127299127778_
                           _e127300127781_
                           _hd127301127784_
                           _tl127302127786_
                           _e127303127789_
                           _hd127304127792_
                           _tl127305127794_
                           _e127306127797_
                           _hd127307127800_
                           _tl127308127802_
                           _e127309127805_
                           _hd127310127808_
                           _tl127311127810_
                           _e127312127813_
                           _hd127313127816_
                           _tl127314127818_
                           _e127315127821_
                           _hd127316127824_
                           _tl127317127826_
                           _e127318127829_
                           _hd127319127832_
                           _tl127320127834_))))
                   (___match131473131474_
                    (lambda (_e127291127757_
                             _hd127292127760_
                             _tl127293127762_
                             _e127294127765_
                             _hd127295127768_
                             _tl127296127770_
                             _e127297127773_
                             _hd127298127776_
                             _tl127299127778_
                             _e127300127781_
                             _hd127301127784_
                             _tl127302127786_
                             _e127303127789_
                             _hd127304127792_
                             _tl127305127794_
                             _e127306127797_
                             _hd127307127800_
                             _tl127308127802_
                             _e127309127805_
                             _hd127310127808_
                             _tl127311127810_
                             _e127312127813_
                             _hd127313127816_
                             _tl127314127818_
                             _e127315127821_
                             _hd127316127824_
                             _tl127317127826_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd127316127824_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127317127826_))
                              (let ((_e127318127829_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127317127826_))))
                                (let ((_tl127320127834_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127318127829_)))
                                      (_hd127319127832_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127318127829_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127320127834_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127314127818_))
                                          (___match131485131486_
                                           _e127291127757_
                                           _hd127292127760_
                                           _tl127293127762_
                                           _e127294127765_
                                           _hd127295127768_
                                           _tl127296127770_
                                           _e127297127773_
                                           _hd127298127776_
                                           _tl127299127778_
                                           _e127300127781_
                                           _hd127301127784_
                                           _tl127302127786_
                                           _e127303127789_
                                           _hd127304127792_
                                           _tl127305127794_
                                           _e127306127797_
                                           _hd127307127800_
                                           _tl127308127802_
                                           _e127309127805_
                                           _hd127310127808_
                                           _tl127311127810_
                                           _e127312127813_
                                           _hd127313127816_
                                           _tl127314127818_
                                           _e127315127821_
                                           _hd127316127824_
                                           _tl127317127826_
                                           _e127318127829_
                                           _hd127319127832_
                                           _tl127320127834_)
                                          (___match131563131564_
                                           _e127291127757_
                                           _hd127292127760_
                                           _tl127293127762_
                                           _e127294127765_
                                           _hd127295127768_
                                           _tl127296127770_
                                           _e127297127773_
                                           _hd127298127776_
                                           _tl127299127778_
                                           _e127300127781_
                                           _hd127301127784_
                                           _tl127302127786_
                                           _e127303127789_
                                           _hd127304127792_
                                           _tl127305127794_
                                           _e127306127797_
                                           _hd127307127800_
                                           _tl127308127802_
                                           _e127309127805_
                                           _hd127310127808_
                                           _tl127311127810_
                                           _e127312127813_
                                           _hd127313127816_
                                           _tl127314127818_
                                           _e127315127821_
                                           _hd127316127824_
                                           _tl127317127826_
                                           _e127318127829_
                                           _hd127319127832_
                                           _tl127320127834_))
                                      (___match131687131688_
                                       _e127291127757_
                                       _hd127292127760_
                                       _tl127293127762_
                                       _e127294127765_
                                       _hd127295127768_
                                       _tl127296127770_
                                       _e127297127773_
                                       _hd127298127776_
                                       _tl127299127778_
                                       _e127300127781_
                                       _hd127301127784_
                                       _tl127302127786_
                                       _e127303127789_
                                       _hd127304127792_
                                       _tl127305127794_
                                       _e127306127797_
                                       _hd127307127800_
                                       _tl127308127802_
                                       _e127309127805_
                                       _hd127310127808_
                                       _tl127311127810_
                                       _e127312127813_
                                       _hd127313127816_
                                       _tl127314127818_))))
                              (___match131687131688_
                               _e127291127757_
                               _hd127292127760_
                               _tl127293127762_
                               _e127294127765_
                               _hd127295127768_
                               _tl127296127770_
                               _e127297127773_
                               _hd127298127776_
                               _tl127299127778_
                               _e127300127781_
                               _hd127301127784_
                               _tl127302127786_
                               _e127303127789_
                               _hd127304127792_
                               _tl127305127794_
                               _e127306127797_
                               _hd127307127800_
                               _tl127308127802_
                               _e127309127805_
                               _hd127310127808_
                               _tl127311127810_
                               _e127312127813_
                               _hd127313127816_
                               _tl127314127818_))
                          (___match131687131688_
                           _e127291127757_
                           _hd127292127760_
                           _tl127293127762_
                           _e127294127765_
                           _hd127295127768_
                           _tl127296127770_
                           _e127297127773_
                           _hd127298127776_
                           _tl127299127778_
                           _e127300127781_
                           _hd127301127784_
                           _tl127302127786_
                           _e127303127789_
                           _hd127304127792_
                           _tl127305127794_
                           _e127306127797_
                           _hd127307127800_
                           _tl127308127802_
                           _e127309127805_
                           _hd127310127808_
                           _tl127311127810_
                           _e127312127813_
                           _hd127313127816_
                           _tl127314127818_))))
                   (___match131405131406_
                    (lambda (_e127240127876_
                             _hd127241127879_
                             _tl127242127881_
                             _e127243127884_
                             _hd127244127887_
                             _tl127245127889_
                             _e127246127892_
                             _hd127247127895_
                             _tl127248127897_
                             _e127249127900_
                             _hd127250127903_
                             _tl127251127905_
                             _e127252127908_
                             _hd127253127911_
                             _tl127254127913_
                             _e127255127916_
                             _hd127256127919_
                             _tl127257127921_
                             _e127258127924_
                             _hd127259127927_
                             _tl127260127929_
                             _e127261127932_
                             _hd127262127935_
                             _tl127263127937_
                             _e127264127940_
                             _hd127265127943_
                             _tl127266127945_
                             _e127267127948_
                             _hd127268127951_
                             _tl127269127953_
                             _e127270127956_
                             _hd127271127959_
                             _tl127272127961_
                             _e127273127964_
                             _hd127274127967_
                             _tl127275127969_
                             _e127276127972_
                             _hd127277127975_
                             _tl127278127977_
                             ___splice131198131199_
                             _target127279127980_
                             _tl127281127982_)
                      (letrec ((_loop127282127985_
                                (lambda (_hd127280127988_ _args127286127990_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127280127988_))
                                      (let ((_e127283127993_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127280127988_))))
                                        (let ((_lp-tl127285127998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127283127993_)))
                                              (_lp-hd127284127996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127283127993_))))
                                          (let ((__tmp132472
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127284127996_
                                                         _args127286127990_))))
                                            (declare (not safe))
                                            (_loop127282127985_
                                             _lp-tl127285127998_
                                             __tmp132472))))
                                      (let ((_args127287128001_
                                             (reverse _args127286127990_)))
                                        (let ((_L128004_ _args127287128001_)
                                              (_L128005_ _hd127277127975_)
                                              (_L128006_ _hd127268127951_)
                                              (_L128007_ _hd127259127927_)
                                              (_L128008_ _hd127250127903_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L128008_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L128007_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L128006_
                                                      _self127180_)))
                                              (___kont131196131197_
                                               _L128004_
                                               _L128005_
                                               _L128006_
                                               _L128007_
                                               _L128008_)
                                              (___kont131208131209_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop127282127985_ _target127279127980_ '())))))
                   (___match131363131364_
                    (lambda (_e127240127876_
                             _hd127241127879_
                             _tl127242127881_
                             _e127243127884_
                             _hd127244127887_
                             _tl127245127889_
                             _e127246127892_
                             _hd127247127895_
                             _tl127248127897_
                             _e127249127900_
                             _hd127250127903_
                             _tl127251127905_
                             _e127252127908_
                             _hd127253127911_
                             _tl127254127913_
                             _e127255127916_
                             _hd127256127919_
                             _tl127257127921_
                             _e127258127924_
                             _hd127259127927_
                             _tl127260127929_
                             _e127261127932_
                             _hd127262127935_
                             _tl127263127937_
                             _e127264127940_
                             _hd127265127943_
                             _tl127266127945_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd127265127943_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127266127945_))
                              (let ((_e127267127948_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127266127945_))))
                                (let ((_tl127269127953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127267127948_)))
                                      (_hd127268127951_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127267127948_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127269127953_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127263127937_))
                                          (let ((_e127270127956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127263127937_))))
                                            (let ((_tl127272127961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127270127956_)))
                                                  (_hd127271127959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127270127956_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd127271127959_))
                                                  (let ((_e127273127964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd127271127959_))))
                                                    (let ((_tl127275127969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127273127964_)))
                                                          (_hd127274127967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127273127964_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd127274127967_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd127274127967_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127275127969_))
                          (let ((_e127276127972_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127275127969_))))
                            (let ((_tl127278127977_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127276127972_)))
                                  (_hd127277127975_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127276127972_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127278127977_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127272127961_))
                                      (let ((___splice131198131199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127272127961_
                                                '0))))
                                        (let ((_tl127281127982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice131198131199_
                                                  '1)))
                                              (_target127279127980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice131198131199_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127281127982_))
                                              (___match131405131406_
                                               _e127240127876_
                                               _hd127241127879_
                                               _tl127242127881_
                                               _e127243127884_
                                               _hd127244127887_
                                               _tl127245127889_
                                               _e127246127892_
                                               _hd127247127895_
                                               _tl127248127897_
                                               _e127249127900_
                                               _hd127250127903_
                                               _tl127251127905_
                                               _e127252127908_
                                               _hd127253127911_
                                               _tl127254127913_
                                               _e127255127916_
                                               _hd127256127919_
                                               _tl127257127921_
                                               _e127258127924_
                                               _hd127259127927_
                                               _tl127260127929_
                                               _e127261127932_
                                               _hd127262127935_
                                               _tl127263127937_
                                               _e127264127940_
                                               _hd127265127943_
                                               _tl127266127945_
                                               _e127267127948_
                                               _hd127268127951_
                                               _tl127269127953_
                                               _e127270127956_
                                               _hd127271127959_
                                               _tl127272127961_
                                               _e127273127964_
                                               _hd127274127967_
                                               _tl127275127969_
                                               _e127276127972_
                                               _hd127277127975_
                                               _tl127278127977_
                                               ___splice131198131199_
                                               _target127279127980_
                                               _tl127281127982_)
                                              (___kont131208131209_))))
                                      (___kont131208131209_))
                                  (___kont131208131209_))))
                          (___kont131208131209_))
                      (___kont131208131209_))
                  (___kont131208131209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont131208131209_))))
                                          (___match131687131688_
                                           _e127240127876_
                                           _hd127241127879_
                                           _tl127242127881_
                                           _e127243127884_
                                           _hd127244127887_
                                           _tl127245127889_
                                           _e127246127892_
                                           _hd127247127895_
                                           _tl127248127897_
                                           _e127249127900_
                                           _hd127250127903_
                                           _tl127251127905_
                                           _e127252127908_
                                           _hd127253127911_
                                           _tl127254127913_
                                           _e127255127916_
                                           _hd127256127919_
                                           _tl127257127921_
                                           _e127258127924_
                                           _hd127259127927_
                                           _tl127260127929_
                                           _e127261127932_
                                           _hd127262127935_
                                           _tl127263127937_))
                                      (___match131687131688_
                                       _e127240127876_
                                       _hd127241127879_
                                       _tl127242127881_
                                       _e127243127884_
                                       _hd127244127887_
                                       _tl127245127889_
                                       _e127246127892_
                                       _hd127247127895_
                                       _tl127248127897_
                                       _e127249127900_
                                       _hd127250127903_
                                       _tl127251127905_
                                       _e127252127908_
                                       _hd127253127911_
                                       _tl127254127913_
                                       _e127255127916_
                                       _hd127256127919_
                                       _tl127257127921_
                                       _e127258127924_
                                       _hd127259127927_
                                       _tl127260127929_
                                       _e127261127932_
                                       _hd127262127935_
                                       _tl127263127937_))))
                              (___match131687131688_
                               _e127240127876_
                               _hd127241127879_
                               _tl127242127881_
                               _e127243127884_
                               _hd127244127887_
                               _tl127245127889_
                               _e127246127892_
                               _hd127247127895_
                               _tl127248127897_
                               _e127249127900_
                               _hd127250127903_
                               _tl127251127905_
                               _e127252127908_
                               _hd127253127911_
                               _tl127254127913_
                               _e127255127916_
                               _hd127256127919_
                               _tl127257127921_
                               _e127258127924_
                               _hd127259127927_
                               _tl127260127929_
                               _e127261127932_
                               _hd127262127935_
                               _tl127263127937_))
                          (___match131473131474_
                           _e127240127876_
                           _hd127241127879_
                           _tl127242127881_
                           _e127243127884_
                           _hd127244127887_
                           _tl127245127889_
                           _e127246127892_
                           _hd127247127895_
                           _tl127248127897_
                           _e127249127900_
                           _hd127250127903_
                           _tl127251127905_
                           _e127252127908_
                           _hd127253127911_
                           _tl127254127913_
                           _e127255127916_
                           _hd127256127919_
                           _tl127257127921_
                           _e127258127924_
                           _hd127259127927_
                           _tl127260127929_
                           _e127261127932_
                           _hd127262127935_
                           _tl127263127937_
                           _e127264127940_
                           _hd127265127943_
                           _tl127266127945_))))
                   (___match131295131296_
                    (lambda (_e127196128065_
                             _hd127197128068_
                             _tl127198128070_
                             _e127199128073_
                             _hd127200128076_
                             _tl127201128078_
                             _e127202128081_
                             _hd127203128084_
                             _tl127204128086_
                             _e127205128089_
                             _hd127206128092_
                             _tl127207128094_
                             _e127208128097_
                             _hd127209128100_
                             _tl127210128102_
                             _e127211128105_
                             _hd127212128108_
                             _tl127213128110_
                             _e127214128113_
                             _hd127215128116_
                             _tl127216128118_
                             _e127217128121_
                             _hd127218128124_
                             _tl127219128126_
                             _e127220128129_
                             _hd127221128132_
                             _tl127222128134_
                             _e127223128137_
                             _hd127224128140_
                             _tl127225128142_
                             ___splice131194131195_
                             _target127226128145_
                             _tl127228128147_)
                      (letrec ((_loop127229128150_
                                (lambda (_hd127227128153_ _args127233128155_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127227128153_))
                                      (let ((_e127230128158_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127227128153_))))
                                        (let ((_lp-tl127232128163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127230128158_)))
                                              (_lp-hd127231128161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127230128158_))))
                                          (let ((__tmp132473
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127231128161_
                                                         _args127233128155_))))
                                            (declare (not safe))
                                            (_loop127229128150_
                                             _lp-tl127232128163_
                                             __tmp132473))))
                                      (let ((_args127234128166_
                                             (reverse _args127233128155_)))
                                        (let ((_L128169_ _args127234128166_)
                                              (_L128170_ _hd127224128140_)
                                              (_L128171_ _hd127215128116_)
                                              (_L128172_ _hd127206128092_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L128172_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L128171_
                                                      _self127180_)))
                                              (___kont131192131193_
                                               _L128169_
                                               _L128170_
                                               _L128171_
                                               _L128172_)
                                              (___match131483131484_
                                               _e127196128065_
                                               _hd127197128068_
                                               _tl127198128070_
                                               _e127199128073_
                                               _hd127200128076_
                                               _tl127201128078_
                                               _e127202128081_
                                               _hd127203128084_
                                               _tl127204128086_
                                               _e127205128089_
                                               _hd127206128092_
                                               _tl127207128094_
                                               _e127208128097_
                                               _hd127209128100_
                                               _tl127210128102_
                                               _e127211128105_
                                               _hd127212128108_
                                               _tl127213128110_
                                               _e127214128113_
                                               _hd127215128116_
                                               _tl127216128118_
                                               _e127217128121_
                                               _hd127218128124_
                                               _tl127219128126_
                                               _e127220128129_
                                               _hd127221128132_
                                               _tl127222128134_
                                               _e127223128137_
                                               _hd127224128140_
                                               _tl127225128142_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop127229128150_ _target127226128145_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx131190131191_))
                  (let ((_e127196128065_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx131190131191_))))
                    (let ((_tl127198128070_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127196128065_)))
                          (_hd127197128068_
                           (let ()
                             (declare (not safe))
                             (##car _e127196128065_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127198128070_))
                          (let ((_e127199128073_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127198128070_))))
                            (let ((_tl127201128078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127199128073_)))
                                  (_hd127200128076_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127199128073_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127200128076_))
                                  (let ((_e127202128081_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127200128076_))))
                                    (let ((_tl127204128086_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127202128081_)))
                                          (_hd127203128084_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127202128081_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127203128084_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127203128084_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127204128086_))
                                                  (let ((_e127205128089_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127204128086_))))
                                                    (let ((_tl127207128094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127205128089_)))
                                                          (_hd127206128092_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127205128089_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127207128094_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127201128078_))
                      (let ((_e127208128097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127201128078_))))
                        (let ((_tl127210128102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127208128097_)))
                              (_hd127209128100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127208128097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127209128100_))
                              (let ((_e127211128105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127209128100_))))
                                (let ((_tl127213128110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127211128105_)))
                                      (_hd127212128108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127211128105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127212128108_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127212128108_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127213128110_))
                                              (let ((_e127214128113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127213128110_))))
                                                (let ((_tl127216128118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127214128113_)))
                                                      (_hd127215128116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127214128113_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127216128118_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127210128102_))
                                                          (let ((_e127217128121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127210128102_))))
                    (let ((_tl127219128126_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127217128121_)))
                          (_hd127218128124_
                           (let ()
                             (declare (not safe))
                             (##car _e127217128121_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127218128124_))
                          (let ((_e127220128129_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127218128124_))))
                            (let ((_tl127222128134_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127220128129_)))
                                  (_hd127221128132_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127220128129_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127221128132_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127221128132_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127222128134_))
                                          (let ((_e127223128137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127222128134_))))
                                            (let ((_tl127225128142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127223128137_)))
                                                  (_hd127224128140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127223128137_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127225128142_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127219128126_))
                                                      (let ((___splice131194131195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127219128126_ '0))))
                (let ((_tl127228128147_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice131194131195_ '1)))
                      (_target127226128145_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice131194131195_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127228128147_))
                      (___match131295131296_
                       _e127196128065_
                       _hd127197128068_
                       _tl127198128070_
                       _e127199128073_
                       _hd127200128076_
                       _tl127201128078_
                       _e127202128081_
                       _hd127203128084_
                       _tl127204128086_
                       _e127205128089_
                       _hd127206128092_
                       _tl127207128094_
                       _e127208128097_
                       _hd127209128100_
                       _tl127210128102_
                       _e127211128105_
                       _hd127212128108_
                       _tl127213128110_
                       _e127214128113_
                       _hd127215128116_
                       _tl127216128118_
                       _e127217128121_
                       _hd127218128124_
                       _tl127219128126_
                       _e127220128129_
                       _hd127221128132_
                       _tl127222128134_
                       _e127223128137_
                       _hd127224128140_
                       _tl127225128142_
                       ___splice131194131195_
                       _target127226128145_
                       _tl127228128147_)
                      (___match131483131484_
                       _e127196128065_
                       _hd127197128068_
                       _tl127198128070_
                       _e127199128073_
                       _hd127200128076_
                       _tl127201128078_
                       _e127202128081_
                       _hd127203128084_
                       _tl127204128086_
                       _e127205128089_
                       _hd127206128092_
                       _tl127207128094_
                       _e127208128097_
                       _hd127209128100_
                       _tl127210128102_
                       _e127211128105_
                       _hd127212128108_
                       _tl127213128110_
                       _e127214128113_
                       _hd127215128116_
                       _tl127216128118_
                       _e127217128121_
                       _hd127218128124_
                       _tl127219128126_
                       _e127220128129_
                       _hd127221128132_
                       _tl127222128134_
                       _e127223128137_
                       _hd127224128140_
                       _tl127225128142_))))
              (___match131483131484_
               _e127196128065_
               _hd127197128068_
               _tl127198128070_
               _e127199128073_
               _hd127200128076_
               _tl127201128078_
               _e127202128081_
               _hd127203128084_
               _tl127204128086_
               _e127205128089_
               _hd127206128092_
               _tl127207128094_
               _e127208128097_
               _hd127209128100_
               _tl127210128102_
               _e127211128105_
               _hd127212128108_
               _tl127213128110_
               _e127214128113_
               _hd127215128116_
               _tl127216128118_
               _e127217128121_
               _hd127218128124_
               _tl127219128126_
               _e127220128129_
               _hd127221128132_
               _tl127222128134_
               _e127223128137_
               _hd127224128140_
               _tl127225128142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match131687131688_
                                                   _e127196128065_
                                                   _hd127197128068_
                                                   _tl127198128070_
                                                   _e127199128073_
                                                   _hd127200128076_
                                                   _tl127201128078_
                                                   _e127202128081_
                                                   _hd127203128084_
                                                   _tl127204128086_
                                                   _e127205128089_
                                                   _hd127206128092_
                                                   _tl127207128094_
                                                   _e127208128097_
                                                   _hd127209128100_
                                                   _tl127210128102_
                                                   _e127211128105_
                                                   _hd127212128108_
                                                   _tl127213128110_
                                                   _e127214128113_
                                                   _hd127215128116_
                                                   _tl127216128118_
                                                   _e127217128121_
                                                   _hd127218128124_
                                                   _tl127219128126_))))
                                          (___match131687131688_
                                           _e127196128065_
                                           _hd127197128068_
                                           _tl127198128070_
                                           _e127199128073_
                                           _hd127200128076_
                                           _tl127201128078_
                                           _e127202128081_
                                           _hd127203128084_
                                           _tl127204128086_
                                           _e127205128089_
                                           _hd127206128092_
                                           _tl127207128094_
                                           _e127208128097_
                                           _hd127209128100_
                                           _tl127210128102_
                                           _e127211128105_
                                           _hd127212128108_
                                           _tl127213128110_
                                           _e127214128113_
                                           _hd127215128116_
                                           _tl127216128118_
                                           _e127217128121_
                                           _hd127218128124_
                                           _tl127219128126_))
                                      (___match131363131364_
                                       _e127196128065_
                                       _hd127197128068_
                                       _tl127198128070_
                                       _e127199128073_
                                       _hd127200128076_
                                       _tl127201128078_
                                       _e127202128081_
                                       _hd127203128084_
                                       _tl127204128086_
                                       _e127205128089_
                                       _hd127206128092_
                                       _tl127207128094_
                                       _e127208128097_
                                       _hd127209128100_
                                       _tl127210128102_
                                       _e127211128105_
                                       _hd127212128108_
                                       _tl127213128110_
                                       _e127214128113_
                                       _hd127215128116_
                                       _tl127216128118_
                                       _e127217128121_
                                       _hd127218128124_
                                       _tl127219128126_
                                       _e127220128129_
                                       _hd127221128132_
                                       _tl127222128134_))
                                  (___match131687131688_
                                   _e127196128065_
                                   _hd127197128068_
                                   _tl127198128070_
                                   _e127199128073_
                                   _hd127200128076_
                                   _tl127201128078_
                                   _e127202128081_
                                   _hd127203128084_
                                   _tl127204128086_
                                   _e127205128089_
                                   _hd127206128092_
                                   _tl127207128094_
                                   _e127208128097_
                                   _hd127209128100_
                                   _tl127210128102_
                                   _e127211128105_
                                   _hd127212128108_
                                   _tl127213128110_
                                   _e127214128113_
                                   _hd127215128116_
                                   _tl127216128118_
                                   _e127217128121_
                                   _hd127218128124_
                                   _tl127219128126_))))
                          (___match131687131688_
                           _e127196128065_
                           _hd127197128068_
                           _tl127198128070_
                           _e127199128073_
                           _hd127200128076_
                           _tl127201128078_
                           _e127202128081_
                           _hd127203128084_
                           _tl127204128086_
                           _e127205128089_
                           _hd127206128092_
                           _tl127207128094_
                           _e127208128097_
                           _hd127209128100_
                           _tl127210128102_
                           _e127211128105_
                           _hd127212128108_
                           _tl127213128110_
                           _e127214128113_
                           _hd127215128116_
                           _tl127216128118_
                           _e127217128121_
                           _hd127218128124_
                           _tl127219128126_))))
                  (___match131625131626_
                   _e127196128065_
                   _hd127197128068_
                   _tl127198128070_
                   _e127199128073_
                   _hd127200128076_
                   _tl127201128078_
                   _e127202128081_
                   _hd127203128084_
                   _tl127204128086_
                   _e127205128089_
                   _hd127206128092_
                   _tl127207128094_
                   _e127208128097_
                   _hd127209128100_
                   _tl127210128102_
                   _e127211128105_
                   _hd127212128108_
                   _tl127213128110_
                   _e127214128113_
                   _hd127215128116_
                   _tl127216128118_))
              (___kont131208131209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont131208131209_))
                                          (___kont131208131209_))
                                      (___kont131208131209_))))
                              (___kont131208131209_))))
                      (___kont131208131209_))
                  (___kont131208131209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont131208131209_))
                                              (___kont131208131209_))
                                          (___kont131208131209_))))
                                  (___kont131208131209_))))
                          (___kont131208131209_))))
                  (___kont131208131209_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx126114_
               _self126115_
               _$klass126116_
               _methods126117_
               _slots126118_)
        (letrec ((_force-e126120_
                  (lambda (_target127177_)
                    (let ((__tmp132474
                           (let ((__tmp132478
                                  (let ((__tmp132479
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp132479)))
                                 (__tmp132475
                                  (let ((__tmp132476
                                         (let ((__tmp132477
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target127177_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp132477))))
                                    (declare (not safe))
                                    (cons __tmp132476 '()))))
                             (declare (not safe))
                             (cons __tmp132478 __tmp132475))))
                      (declare (not safe))
                      (cons '%#call __tmp132474)))))
          (let* ((___stx131692131693_ _stx126114_)
                 (_g126128126350_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx131692131693_)))))
            (let ((___kont131694131695_
                   (lambda (_L127123_ _L127124_ _L127125_ _L127126_)
                     (let ((_$method127171_
                            (let ((__tmp132480
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L127124_))))
                              (declare (not safe))
                              (hash-ref__0 _methods126117_ __tmp132480)))
                           (_args127172_
                            (map (lambda (_g127159127161_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g127159127161_
                                      _self126115_
                                      _$klass126116_
                                      _methods126117_
                                      _slots126118_)))
                                 (let ((__tmp132481
                                        (lambda (_g127163127166_
                                                 _g127164127168_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g127163127166_
                                                  _g127164127168_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp132481 '() _L127123_)))))
                       (let ((__tmp132482
                              (let ((__tmp132483
                                     (let ((__tmp132487
                                            (let ()
                                              (declare (not safe))
                                              (_force-e126120_
                                               _$method127171_)))
                                           (__tmp132484
                                            (let ((__tmp132485
                                                   (let ((__tmp132486
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self126115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp132486))))
                                              (declare (not safe))
                                              (cons __tmp132485
                                                    _args127172_))))
                                       (declare (not safe))
                                       (cons __tmp132487 __tmp132484))))
                                (declare (not safe))
                                (cons '%#call __tmp132483))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp132482 _stx126114_)))))
                  (___kont131698131699_
                   (lambda (_L126955_ _L126956_ _L126957_ _L126958_ _L126959_)
                     (let ((_$method127011_
                            (let ((__tmp132488
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L126956_))))
                              (declare (not safe))
                              (hash-ref__0 _methods126117_ __tmp132488)))
                           (_args127012_
                            (map (lambda (_g126999127001_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g126999127001_
                                      _self126115_
                                      _$klass126116_
                                      _methods126117_
                                      _slots126118_)))
                                 (let ((__tmp132489
                                        (lambda (_g127003127006_
                                                 _g127004127008_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g127003127006_
                                                  _g127004127008_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp132489 '() _L126955_)))))
                       (let ((__tmp132490
                              (let ((__tmp132491
                                     (let ((__tmp132497
                                            (let ((__tmp132498
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp132498)))
                                           (__tmp132492
                                            (let ((__tmp132496
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e126120_
                                                      _$method127011_)))
                                                  (__tmp132493
                                                   (let ((__tmp132494
                                                          (let ((__tmp132495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self126115_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp132495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp132494
                                                           _args127012_))))
                                              (declare (not safe))
                                              (cons __tmp132496 __tmp132493))))
                                       (declare (not safe))
                                       (cons __tmp132497 __tmp132492))))
                                (declare (not safe))
                                (cons '%#call __tmp132491))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp132490 _stx126114_)))))
                  (___kont131702131703_
                   (lambda (_L126786_ _L126787_ _L126788_)
                     (let* ((_$field126820_
                             (let ((__tmp132499
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L126786_))))
                               (declare (not safe))
                               (hash-ref__0 _slots126118_ __tmp132499)))
                            (__tmp132500
                             (let ((__tmp132501
                                    (let ((__tmp132508
                                           (let ((__tmp132509
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass126116_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp132509)))
                                          (__tmp132502
                                           (let ((__tmp132506
                                                  (let ((__tmp132507
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field126820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp132507)))
                                                 (__tmp132503
                                                  (let ((__tmp132504
                                                         (let ((__tmp132505
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self126115_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp132505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132504 '()))))
                                             (declare (not safe))
                                             (cons __tmp132506 __tmp132503))))
                                      (declare (not safe))
                                      (cons __tmp132508 __tmp132502))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp132501))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp132500 _stx126114_))))
                  (___kont131704131705_
                   (lambda (_L126660_ _L126661_ _L126662_ _L126663_)
                     (let ((_$field126698_
                            (let ((__tmp132510
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L126661_))))
                              (declare (not safe))
                              (hash-ref__0 _slots126118_ __tmp132510)))
                           (_expr126699_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L126660_
                               _self126115_
                               _$klass126116_
                               _methods126117_
                               _slots126118_))))
                       (let ((__tmp132511
                              (let ((__tmp132512
                                     (let ((__tmp132520
                                            (let ((__tmp132521
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass126116_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp132521)))
                                           (__tmp132513
                                            (let ((__tmp132518
                                                   (let ((__tmp132519
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field126698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp132519)))
                                                  (__tmp132514
                                                   (let ((__tmp132516
                                                          (let ((__tmp132517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self126115_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp132517)))
                 (__tmp132515
                  (let () (declare (not safe)) (cons _expr126699_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp132516
                                                           __tmp132515))))
                                              (declare (not safe))
                                              (cons __tmp132518 __tmp132514))))
                                       (declare (not safe))
                                       (cons __tmp132520 __tmp132513))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp132512))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp132511 _stx126114_)))))
                  (___kont131706131707_
                   (lambda (_L126532_ _L126533_)
                     (let* ((_accessor126555_
                             (let ((__tmp132522
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L126533_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp132522)))
                            (_klass126557_
                             (let ((__tmp132523
                                    (##structure-ref
                                     _accessor126555_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx126114_
                                __tmp132523)))
                            (_slot126559_
                             (##structure-ref
                              _accessor126555_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp132524
                                       (##structure-ref
                                        _accessor126555_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp132524))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass126557_
                                       _slot126559_))
                                    (##structure-ref
                                     _klass126557_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx126114_
                           (let* ((_$field126565_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots126118_ _slot126559_)))
                                  (__tmp132525
                                   (let ((__tmp132526
                                          (let ((__tmp132533
                                                 (let ((__tmp132534
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass126116_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp132534)))
                                                (__tmp132527
                                                 (let ((__tmp132531
                                                        (let ((__tmp132532
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field126565_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp132532)))
               (__tmp132528
                (let ((__tmp132529
                       (let ((__tmp132530
                              (let ()
                                (declare (not safe))
                                (cons _self126115_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp132530))))
                  (declare (not safe))
                  (cons __tmp132529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp132531
                                                         __tmp132528))))
                                            (declare (not safe))
                                            (cons __tmp132533 __tmp132527))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp132526))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp132525
                              _stx126114_))))))
                  (___kont131708131709_
                   (lambda (_L126426_ _L126427_ _L126428_)
                     (let* ((_mutator126457_
                             (let ((__tmp132535
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L126428_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp132535)))
                            (_klass126459_
                             (let ((__tmp132536
                                    (##structure-ref
                                     _mutator126457_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx126114_
                                __tmp132536)))
                            (_slot126461_
                             (##structure-ref
                              _mutator126457_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr126463_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L126426_
                                _self126115_
                                _$klass126116_
                                _methods126117_
                                _slots126118_))))
                       (if (and (let ((__tmp132537
                                       (##structure-ref
                                        _mutator126457_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp132537))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass126459_
                                       _slot126461_))
                                    (##structure-ref
                                     _klass126459_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp132538
                                  (let ((__tmp132539
                                         (let ((__tmp132545
                                                (let ((__tmp132547
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp132546
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L126428_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp132547
                                                        __tmp132546)))
                                               (__tmp132540
                                                (let ((__tmp132542
                                                       (let ((__tmp132544
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp132543
                      (let () (declare (not safe)) (cons _L126427_ '()))))
                 (declare (not safe))
                 (cons __tmp132544 __tmp132543)))
              (__tmp132541
               (let () (declare (not safe)) (cons _expr126463_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp132542
                                                        __tmp132541))))
                                           (declare (not safe))
                                           (cons __tmp132545 __tmp132540))))
                                    (declare (not safe))
                                    (cons '%#call __tmp132539))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp132538 _stx126114_))
                           (let* ((_$field126469_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots126118_ _slot126461_)))
                                  (__tmp132548
                                   (let ((__tmp132549
                                          (let ((__tmp132557
                                                 (let ((__tmp132558
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass126116_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp132558)))
                                                (__tmp132550
                                                 (let ((__tmp132555
                                                        (let ((__tmp132556
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field126469_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp132556)))
               (__tmp132551
                (let ((__tmp132553
                       (let ((__tmp132554
                              (let ()
                                (declare (not safe))
                                (cons _self126115_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp132554)))
                      (__tmp132552
                       (let () (declare (not safe)) (cons _expr126463_ '()))))
                  (declare (not safe))
                  (cons __tmp132553 __tmp132552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp132555
                                                         __tmp132551))))
                                            (declare (not safe))
                                            (cons __tmp132557 __tmp132550))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp132549))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp132548
                              _stx126114_))))))
                  (___kont131710131711_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx126114_
                        _self126115_
                        _$klass126116_
                        _methods126117_
                        _slots126118_)))))
              (let* ((___match132191132192_
                      (lambda (_e126322126362_
                               _hd126323126365_
                               _tl126324126367_
                               _e126325126370_
                               _hd126326126373_
                               _tl126327126375_
                               _e126328126378_
                               _hd126329126381_
                               _tl126330126383_
                               _e126331126386_
                               _hd126332126389_
                               _tl126333126391_
                               _e126334126394_
                               _hd126335126397_
                               _tl126336126399_
                               _e126337126402_
                               _hd126338126405_
                               _tl126339126407_
                               _e126340126410_
                               _hd126341126413_
                               _tl126342126415_
                               _e126343126418_
                               _hd126344126421_
                               _tl126345126423_)
                        (let ((_L126426_ _hd126344126421_)
                              (_L126427_ _hd126341126413_)
                              (_L126428_ _hd126332126389_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126427_
                                      _self126115_))
                                   (let ((__tmp132559
                                          (let ((__tmp132560
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L126428_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp132560))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp132559
                                      'gxc#!mutator::t)))
                              (___kont131708131709_
                               _L126426_
                               _L126427_
                               _L126428_)
                              (___kont131710131711_)))))
                     (___match132189132190_
                      (lambda (_e126322126362_
                               _hd126323126365_
                               _tl126324126367_
                               _e126325126370_
                               _hd126326126373_
                               _tl126327126375_
                               _e126328126378_
                               _hd126329126381_
                               _tl126330126383_
                               _e126331126386_
                               _hd126332126389_
                               _tl126333126391_
                               _e126334126394_
                               _hd126335126397_
                               _tl126336126399_
                               _e126337126402_
                               _hd126338126405_
                               _tl126339126407_
                               _e126340126410_
                               _hd126341126413_
                               _tl126342126415_
                               _e126343126418_
                               _hd126344126421_
                               _tl126345126423_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl126345126423_))
                            (___match132191132192_
                             _e126322126362_
                             _hd126323126365_
                             _tl126324126367_
                             _e126325126370_
                             _hd126326126373_
                             _tl126327126375_
                             _e126328126378_
                             _hd126329126381_
                             _tl126330126383_
                             _e126331126386_
                             _hd126332126389_
                             _tl126333126391_
                             _e126334126394_
                             _hd126335126397_
                             _tl126336126399_
                             _e126337126402_
                             _hd126338126405_
                             _tl126339126407_
                             _e126340126410_
                             _hd126341126413_
                             _tl126342126415_
                             _e126343126418_
                             _hd126344126421_
                             _tl126345126423_)
                            (___kont131710131711_))))
                     (___match132183132184_
                      (lambda (_e126322126362_
                               _hd126323126365_
                               _tl126324126367_
                               _e126325126370_
                               _hd126326126373_
                               _tl126327126375_
                               _e126328126378_
                               _hd126329126381_
                               _tl126330126383_
                               _e126331126386_
                               _hd126332126389_
                               _tl126333126391_
                               _e126334126394_
                               _hd126335126397_
                               _tl126336126399_
                               _e126337126402_
                               _hd126338126405_
                               _tl126339126407_
                               _e126340126410_
                               _hd126341126413_
                               _tl126342126415_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl126336126399_))
                            (let ((_e126343126418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl126336126399_))))
                              (let ((_tl126345126423_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e126343126418_)))
                                    (_hd126344126421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e126343126418_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl126345126423_))
                                    (___match132191132192_
                                     _e126322126362_
                                     _hd126323126365_
                                     _tl126324126367_
                                     _e126325126370_
                                     _hd126326126373_
                                     _tl126327126375_
                                     _e126328126378_
                                     _hd126329126381_
                                     _tl126330126383_
                                     _e126331126386_
                                     _hd126332126389_
                                     _tl126333126391_
                                     _e126334126394_
                                     _hd126335126397_
                                     _tl126336126399_
                                     _e126337126402_
                                     _hd126338126405_
                                     _tl126339126407_
                                     _e126340126410_
                                     _hd126341126413_
                                     _tl126342126415_
                                     _e126343126418_
                                     _hd126344126421_
                                     _tl126345126423_)
                                    (___kont131710131711_))))
                            (___kont131710131711_))))
                     (___match132129132130_
                      (lambda (_e126298126476_
                               _hd126299126479_
                               _tl126300126481_
                               _e126301126484_
                               _hd126302126487_
                               _tl126303126489_
                               _e126304126492_
                               _hd126305126495_
                               _tl126306126497_
                               _e126307126500_
                               _hd126308126503_
                               _tl126309126505_
                               _e126310126508_
                               _hd126311126511_
                               _tl126312126513_
                               _e126313126516_
                               _hd126314126519_
                               _tl126315126521_
                               _e126316126524_
                               _hd126317126527_
                               _tl126318126529_)
                        (let ((_L126532_ _hd126317126527_)
                              (_L126533_ _hd126308126503_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126532_
                                      _self126115_))
                                   (let ((__tmp132561
                                          (let ((__tmp132562
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L126533_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp132562))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp132561
                                      'gxc#!accessor::t)))
                              (___kont131706131707_ _L126532_ _L126533_)
                              (___kont131710131711_)))))
                     (___match132127132128_
                      (lambda (_e126298126476_
                               _hd126299126479_
                               _tl126300126481_
                               _e126301126484_
                               _hd126302126487_
                               _tl126303126489_
                               _e126304126492_
                               _hd126305126495_
                               _tl126306126497_
                               _e126307126500_
                               _hd126308126503_
                               _tl126309126505_
                               _e126310126508_
                               _hd126311126511_
                               _tl126312126513_
                               _e126313126516_
                               _hd126314126519_
                               _tl126315126521_
                               _e126316126524_
                               _hd126317126527_
                               _tl126318126529_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl126312126513_))
                            (___match132129132130_
                             _e126298126476_
                             _hd126299126479_
                             _tl126300126481_
                             _e126301126484_
                             _hd126302126487_
                             _tl126303126489_
                             _e126304126492_
                             _hd126305126495_
                             _tl126306126497_
                             _e126307126500_
                             _hd126308126503_
                             _tl126309126505_
                             _e126310126508_
                             _hd126311126511_
                             _tl126312126513_
                             _e126313126516_
                             _hd126314126519_
                             _tl126315126521_
                             _e126316126524_
                             _hd126317126527_
                             _tl126318126529_)
                            (___match132183132184_
                             _e126298126476_
                             _hd126299126479_
                             _tl126300126481_
                             _e126301126484_
                             _hd126302126487_
                             _tl126303126489_
                             _e126304126492_
                             _hd126305126495_
                             _tl126306126497_
                             _e126307126500_
                             _hd126308126503_
                             _tl126309126505_
                             _e126310126508_
                             _hd126311126511_
                             _tl126312126513_
                             _e126313126516_
                             _hd126314126519_
                             _tl126315126521_
                             _e126316126524_
                             _hd126317126527_
                             _tl126318126529_))))
                     (___match132073132074_
                      (lambda (_e126263126572_
                               _hd126264126575_
                               _tl126265126577_
                               _e126266126580_
                               _hd126267126583_
                               _tl126268126585_
                               _e126269126588_
                               _hd126270126591_
                               _tl126271126593_
                               _e126272126596_
                               _hd126273126599_
                               _tl126274126601_
                               _e126275126604_
                               _hd126276126607_
                               _tl126277126609_
                               _e126278126612_
                               _hd126279126615_
                               _tl126280126617_
                               _e126281126620_
                               _hd126282126623_
                               _tl126283126625_
                               _e126284126628_
                               _hd126285126631_
                               _tl126286126633_
                               _e126287126636_
                               _hd126288126639_
                               _tl126289126641_
                               _e126290126644_
                               _hd126291126647_
                               _tl126292126649_
                               _e126293126652_
                               _hd126294126655_
                               _tl126295126657_)
                        (let ((_L126660_ _hd126294126655_)
                              (_L126661_ _hd126291126647_)
                              (_L126662_ _hd126282126623_)
                              (_L126663_ _hd126273126599_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126663_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126663_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126662_
                                      _self126115_)))
                              (___kont131704131705_
                               _L126660_
                               _L126661_
                               _L126662_
                               _L126663_)
                              (___kont131710131711_)))))
                     (___match132065132066_
                      (lambda (_e126263126572_
                               _hd126264126575_
                               _tl126265126577_
                               _e126266126580_
                               _hd126267126583_
                               _tl126268126585_
                               _e126269126588_
                               _hd126270126591_
                               _tl126271126593_
                               _e126272126596_
                               _hd126273126599_
                               _tl126274126601_
                               _e126275126604_
                               _hd126276126607_
                               _tl126277126609_
                               _e126278126612_
                               _hd126279126615_
                               _tl126280126617_
                               _e126281126620_
                               _hd126282126623_
                               _tl126283126625_
                               _e126284126628_
                               _hd126285126631_
                               _tl126286126633_
                               _e126287126636_
                               _hd126288126639_
                               _tl126289126641_
                               _e126290126644_
                               _hd126291126647_
                               _tl126292126649_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl126286126633_))
                            (let ((_e126293126652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl126286126633_))))
                              (let ((_tl126295126657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e126293126652_)))
                                    (_hd126294126655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e126293126652_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl126295126657_))
                                    (___match132073132074_
                                     _e126263126572_
                                     _hd126264126575_
                                     _tl126265126577_
                                     _e126266126580_
                                     _hd126267126583_
                                     _tl126268126585_
                                     _e126269126588_
                                     _hd126270126591_
                                     _tl126271126593_
                                     _e126272126596_
                                     _hd126273126599_
                                     _tl126274126601_
                                     _e126275126604_
                                     _hd126276126607_
                                     _tl126277126609_
                                     _e126278126612_
                                     _hd126279126615_
                                     _tl126280126617_
                                     _e126281126620_
                                     _hd126282126623_
                                     _tl126283126625_
                                     _e126284126628_
                                     _hd126285126631_
                                     _tl126286126633_
                                     _e126287126636_
                                     _hd126288126639_
                                     _tl126289126641_
                                     _e126290126644_
                                     _hd126291126647_
                                     _tl126292126649_
                                     _e126293126652_
                                     _hd126294126655_
                                     _tl126295126657_)
                                    (___kont131710131711_))))
                            (___match132189132190_
                             _e126263126572_
                             _hd126264126575_
                             _tl126265126577_
                             _e126266126580_
                             _hd126267126583_
                             _tl126268126585_
                             _e126269126588_
                             _hd126270126591_
                             _tl126271126593_
                             _e126272126596_
                             _hd126273126599_
                             _tl126274126601_
                             _e126275126604_
                             _hd126276126607_
                             _tl126277126609_
                             _e126278126612_
                             _hd126279126615_
                             _tl126280126617_
                             _e126281126620_
                             _hd126282126623_
                             _tl126283126625_
                             _e126284126628_
                             _hd126285126631_
                             _tl126286126633_))))
                     (___match131987131988_
                      (lambda (_e126229126706_
                               _hd126230126709_
                               _tl126231126711_
                               _e126232126714_
                               _hd126233126717_
                               _tl126234126719_
                               _e126235126722_
                               _hd126236126725_
                               _tl126237126727_
                               _e126238126730_
                               _hd126239126733_
                               _tl126240126735_
                               _e126241126738_
                               _hd126242126741_
                               _tl126243126743_
                               _e126244126746_
                               _hd126245126749_
                               _tl126246126751_
                               _e126247126754_
                               _hd126248126757_
                               _tl126249126759_
                               _e126250126762_
                               _hd126251126765_
                               _tl126252126767_
                               _e126253126770_
                               _hd126254126773_
                               _tl126255126775_
                               _e126256126778_
                               _hd126257126781_
                               _tl126258126783_)
                        (let ((_L126786_ _hd126257126781_)
                              (_L126787_ _hd126248126757_)
                              (_L126788_ _hd126239126733_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126788_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126788_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126787_
                                      _self126115_)))
                              (___kont131702131703_
                               _L126786_
                               _L126787_
                               _L126788_)
                              (___match132191132192_
                               _e126229126706_
                               _hd126230126709_
                               _tl126231126711_
                               _e126232126714_
                               _hd126233126717_
                               _tl126234126719_
                               _e126235126722_
                               _hd126236126725_
                               _tl126237126727_
                               _e126238126730_
                               _hd126239126733_
                               _tl126240126735_
                               _e126241126738_
                               _hd126242126741_
                               _tl126243126743_
                               _e126244126746_
                               _hd126245126749_
                               _tl126246126751_
                               _e126247126754_
                               _hd126248126757_
                               _tl126249126759_
                               _e126250126762_
                               _hd126251126765_
                               _tl126252126767_)))))
                     (___match131985131986_
                      (lambda (_e126229126706_
                               _hd126230126709_
                               _tl126231126711_
                               _e126232126714_
                               _hd126233126717_
                               _tl126234126719_
                               _e126235126722_
                               _hd126236126725_
                               _tl126237126727_
                               _e126238126730_
                               _hd126239126733_
                               _tl126240126735_
                               _e126241126738_
                               _hd126242126741_
                               _tl126243126743_
                               _e126244126746_
                               _hd126245126749_
                               _tl126246126751_
                               _e126247126754_
                               _hd126248126757_
                               _tl126249126759_
                               _e126250126762_
                               _hd126251126765_
                               _tl126252126767_
                               _e126253126770_
                               _hd126254126773_
                               _tl126255126775_
                               _e126256126778_
                               _hd126257126781_
                               _tl126258126783_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl126252126767_))
                            (___match131987131988_
                             _e126229126706_
                             _hd126230126709_
                             _tl126231126711_
                             _e126232126714_
                             _hd126233126717_
                             _tl126234126719_
                             _e126235126722_
                             _hd126236126725_
                             _tl126237126727_
                             _e126238126730_
                             _hd126239126733_
                             _tl126240126735_
                             _e126241126738_
                             _hd126242126741_
                             _tl126243126743_
                             _e126244126746_
                             _hd126245126749_
                             _tl126246126751_
                             _e126247126754_
                             _hd126248126757_
                             _tl126249126759_
                             _e126250126762_
                             _hd126251126765_
                             _tl126252126767_
                             _e126253126770_
                             _hd126254126773_
                             _tl126255126775_
                             _e126256126778_
                             _hd126257126781_
                             _tl126258126783_)
                            (___match132065132066_
                             _e126229126706_
                             _hd126230126709_
                             _tl126231126711_
                             _e126232126714_
                             _hd126233126717_
                             _tl126234126719_
                             _e126235126722_
                             _hd126236126725_
                             _tl126237126727_
                             _e126238126730_
                             _hd126239126733_
                             _tl126240126735_
                             _e126241126738_
                             _hd126242126741_
                             _tl126243126743_
                             _e126244126746_
                             _hd126245126749_
                             _tl126246126751_
                             _e126247126754_
                             _hd126248126757_
                             _tl126249126759_
                             _e126250126762_
                             _hd126251126765_
                             _tl126252126767_
                             _e126253126770_
                             _hd126254126773_
                             _tl126255126775_
                             _e126256126778_
                             _hd126257126781_
                             _tl126258126783_))))
                     (___match131975131976_
                      (lambda (_e126229126706_
                               _hd126230126709_
                               _tl126231126711_
                               _e126232126714_
                               _hd126233126717_
                               _tl126234126719_
                               _e126235126722_
                               _hd126236126725_
                               _tl126237126727_
                               _e126238126730_
                               _hd126239126733_
                               _tl126240126735_
                               _e126241126738_
                               _hd126242126741_
                               _tl126243126743_
                               _e126244126746_
                               _hd126245126749_
                               _tl126246126751_
                               _e126247126754_
                               _hd126248126757_
                               _tl126249126759_
                               _e126250126762_
                               _hd126251126765_
                               _tl126252126767_
                               _e126253126770_
                               _hd126254126773_
                               _tl126255126775_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd126254126773_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126255126775_))
                                (let ((_e126256126778_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126255126775_))))
                                  (let ((_tl126258126783_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126256126778_)))
                                        (_hd126257126781_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126256126778_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126258126783_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl126252126767_))
                                            (___match131987131988_
                                             _e126229126706_
                                             _hd126230126709_
                                             _tl126231126711_
                                             _e126232126714_
                                             _hd126233126717_
                                             _tl126234126719_
                                             _e126235126722_
                                             _hd126236126725_
                                             _tl126237126727_
                                             _e126238126730_
                                             _hd126239126733_
                                             _tl126240126735_
                                             _e126241126738_
                                             _hd126242126741_
                                             _tl126243126743_
                                             _e126244126746_
                                             _hd126245126749_
                                             _tl126246126751_
                                             _e126247126754_
                                             _hd126248126757_
                                             _tl126249126759_
                                             _e126250126762_
                                             _hd126251126765_
                                             _tl126252126767_
                                             _e126253126770_
                                             _hd126254126773_
                                             _tl126255126775_
                                             _e126256126778_
                                             _hd126257126781_
                                             _tl126258126783_)
                                            (___match132065132066_
                                             _e126229126706_
                                             _hd126230126709_
                                             _tl126231126711_
                                             _e126232126714_
                                             _hd126233126717_
                                             _tl126234126719_
                                             _e126235126722_
                                             _hd126236126725_
                                             _tl126237126727_
                                             _e126238126730_
                                             _hd126239126733_
                                             _tl126240126735_
                                             _e126241126738_
                                             _hd126242126741_
                                             _tl126243126743_
                                             _e126244126746_
                                             _hd126245126749_
                                             _tl126246126751_
                                             _e126247126754_
                                             _hd126248126757_
                                             _tl126249126759_
                                             _e126250126762_
                                             _hd126251126765_
                                             _tl126252126767_
                                             _e126253126770_
                                             _hd126254126773_
                                             _tl126255126775_
                                             _e126256126778_
                                             _hd126257126781_
                                             _tl126258126783_))
                                        (___match132189132190_
                                         _e126229126706_
                                         _hd126230126709_
                                         _tl126231126711_
                                         _e126232126714_
                                         _hd126233126717_
                                         _tl126234126719_
                                         _e126235126722_
                                         _hd126236126725_
                                         _tl126237126727_
                                         _e126238126730_
                                         _hd126239126733_
                                         _tl126240126735_
                                         _e126241126738_
                                         _hd126242126741_
                                         _tl126243126743_
                                         _e126244126746_
                                         _hd126245126749_
                                         _tl126246126751_
                                         _e126247126754_
                                         _hd126248126757_
                                         _tl126249126759_
                                         _e126250126762_
                                         _hd126251126765_
                                         _tl126252126767_))))
                                (___match132189132190_
                                 _e126229126706_
                                 _hd126230126709_
                                 _tl126231126711_
                                 _e126232126714_
                                 _hd126233126717_
                                 _tl126234126719_
                                 _e126235126722_
                                 _hd126236126725_
                                 _tl126237126727_
                                 _e126238126730_
                                 _hd126239126733_
                                 _tl126240126735_
                                 _e126241126738_
                                 _hd126242126741_
                                 _tl126243126743_
                                 _e126244126746_
                                 _hd126245126749_
                                 _tl126246126751_
                                 _e126247126754_
                                 _hd126248126757_
                                 _tl126249126759_
                                 _e126250126762_
                                 _hd126251126765_
                                 _tl126252126767_))
                            (___match132189132190_
                             _e126229126706_
                             _hd126230126709_
                             _tl126231126711_
                             _e126232126714_
                             _hd126233126717_
                             _tl126234126719_
                             _e126235126722_
                             _hd126236126725_
                             _tl126237126727_
                             _e126238126730_
                             _hd126239126733_
                             _tl126240126735_
                             _e126241126738_
                             _hd126242126741_
                             _tl126243126743_
                             _e126244126746_
                             _hd126245126749_
                             _tl126246126751_
                             _e126247126754_
                             _hd126248126757_
                             _tl126249126759_
                             _e126250126762_
                             _hd126251126765_
                             _tl126252126767_))))
                     (___match131907131908_
                      (lambda (_e126178126827_
                               _hd126179126830_
                               _tl126180126832_
                               _e126181126835_
                               _hd126182126838_
                               _tl126183126840_
                               _e126184126843_
                               _hd126185126846_
                               _tl126186126848_
                               _e126187126851_
                               _hd126188126854_
                               _tl126189126856_
                               _e126190126859_
                               _hd126191126862_
                               _tl126192126864_
                               _e126193126867_
                               _hd126194126870_
                               _tl126195126872_
                               _e126196126875_
                               _hd126197126878_
                               _tl126198126880_
                               _e126199126883_
                               _hd126200126886_
                               _tl126201126888_
                               _e126202126891_
                               _hd126203126894_
                               _tl126204126896_
                               _e126205126899_
                               _hd126206126902_
                               _tl126207126904_
                               _e126208126907_
                               _hd126209126910_
                               _tl126210126912_
                               _e126211126915_
                               _hd126212126918_
                               _tl126213126920_
                               _e126214126923_
                               _hd126215126926_
                               _tl126216126928_
                               ___splice131700131701_
                               _target126217126931_
                               _tl126219126933_)
                        (letrec ((_loop126220126936_
                                  (lambda (_hd126218126939_ _args126224126941_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd126218126939_))
                                        (let ((_e126221126944_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd126218126939_))))
                                          (let ((_lp-tl126223126949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e126221126944_)))
                                                (_lp-hd126222126947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e126221126944_))))
                                            (let ((__tmp132563
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd126222126947_
                                                           _args126224126941_))))
                                              (declare (not safe))
                                              (_loop126220126936_
                                               _lp-tl126223126949_
                                               __tmp132563))))
                                        (let ((_args126225126952_
                                               (reverse _args126224126941_)))
                                          (let ((_L126955_ _args126225126952_)
                                                (_L126956_ _hd126215126926_)
                                                (_L126957_ _hd126206126902_)
                                                (_L126958_ _hd126197126878_)
                                                (_L126959_ _hd126188126854_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L126959_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L126958_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L126957_
                                                        _self126115_)))
                                                (___kont131698131699_
                                                 _L126955_
                                                 _L126956_
                                                 _L126957_
                                                 _L126958_
                                                 _L126959_)
                                                (___kont131710131711_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop126220126936_ _target126217126931_ '())))))
                     (___match131865131866_
                      (lambda (_e126178126827_
                               _hd126179126830_
                               _tl126180126832_
                               _e126181126835_
                               _hd126182126838_
                               _tl126183126840_
                               _e126184126843_
                               _hd126185126846_
                               _tl126186126848_
                               _e126187126851_
                               _hd126188126854_
                               _tl126189126856_
                               _e126190126859_
                               _hd126191126862_
                               _tl126192126864_
                               _e126193126867_
                               _hd126194126870_
                               _tl126195126872_
                               _e126196126875_
                               _hd126197126878_
                               _tl126198126880_
                               _e126199126883_
                               _hd126200126886_
                               _tl126201126888_
                               _e126202126891_
                               _hd126203126894_
                               _tl126204126896_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd126203126894_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126204126896_))
                                (let ((_e126205126899_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126204126896_))))
                                  (let ((_tl126207126904_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126205126899_)))
                                        (_hd126206126902_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126205126899_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126207126904_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl126201126888_))
                                            (let ((_e126208126907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl126201126888_))))
                                              (let ((_tl126210126912_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e126208126907_)))
                                                    (_hd126209126910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e126208126907_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd126209126910_))
                                                    (let ((_e126211126915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd126209126910_))))
                                                      (let ((_tl126213126920_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e126211126915_)))
                    (_hd126212126918_
                     (let () (declare (not safe)) (##car _e126211126915_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd126212126918_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd126212126918_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl126213126920_))
                            (let ((_e126214126923_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl126213126920_))))
                              (let ((_tl126216126928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e126214126923_)))
                                    (_hd126215126926_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e126214126923_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl126216126928_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl126210126912_))
                                        (let ((___splice131700131701_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl126210126912_
                                                  '0))))
                                          (let ((_tl126219126933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice131700131701_
                                                    '1)))
                                                (_target126217126931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice131700131701_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl126219126933_))
                                                (___match131907131908_
                                                 _e126178126827_
                                                 _hd126179126830_
                                                 _tl126180126832_
                                                 _e126181126835_
                                                 _hd126182126838_
                                                 _tl126183126840_
                                                 _e126184126843_
                                                 _hd126185126846_
                                                 _tl126186126848_
                                                 _e126187126851_
                                                 _hd126188126854_
                                                 _tl126189126856_
                                                 _e126190126859_
                                                 _hd126191126862_
                                                 _tl126192126864_
                                                 _e126193126867_
                                                 _hd126194126870_
                                                 _tl126195126872_
                                                 _e126196126875_
                                                 _hd126197126878_
                                                 _tl126198126880_
                                                 _e126199126883_
                                                 _hd126200126886_
                                                 _tl126201126888_
                                                 _e126202126891_
                                                 _hd126203126894_
                                                 _tl126204126896_
                                                 _e126205126899_
                                                 _hd126206126902_
                                                 _tl126207126904_
                                                 _e126208126907_
                                                 _hd126209126910_
                                                 _tl126210126912_
                                                 _e126211126915_
                                                 _hd126212126918_
                                                 _tl126213126920_
                                                 _e126214126923_
                                                 _hd126215126926_
                                                 _tl126216126928_
                                                 ___splice131700131701_
                                                 _target126217126931_
                                                 _tl126219126933_)
                                                (___kont131710131711_))))
                                        (___kont131710131711_))
                                    (___kont131710131711_))))
                            (___kont131710131711_))
                        (___kont131710131711_))
                    (___kont131710131711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont131710131711_))))
                                            (___match132189132190_
                                             _e126178126827_
                                             _hd126179126830_
                                             _tl126180126832_
                                             _e126181126835_
                                             _hd126182126838_
                                             _tl126183126840_
                                             _e126184126843_
                                             _hd126185126846_
                                             _tl126186126848_
                                             _e126187126851_
                                             _hd126188126854_
                                             _tl126189126856_
                                             _e126190126859_
                                             _hd126191126862_
                                             _tl126192126864_
                                             _e126193126867_
                                             _hd126194126870_
                                             _tl126195126872_
                                             _e126196126875_
                                             _hd126197126878_
                                             _tl126198126880_
                                             _e126199126883_
                                             _hd126200126886_
                                             _tl126201126888_))
                                        (___match132189132190_
                                         _e126178126827_
                                         _hd126179126830_
                                         _tl126180126832_
                                         _e126181126835_
                                         _hd126182126838_
                                         _tl126183126840_
                                         _e126184126843_
                                         _hd126185126846_
                                         _tl126186126848_
                                         _e126187126851_
                                         _hd126188126854_
                                         _tl126189126856_
                                         _e126190126859_
                                         _hd126191126862_
                                         _tl126192126864_
                                         _e126193126867_
                                         _hd126194126870_
                                         _tl126195126872_
                                         _e126196126875_
                                         _hd126197126878_
                                         _tl126198126880_
                                         _e126199126883_
                                         _hd126200126886_
                                         _tl126201126888_))))
                                (___match132189132190_
                                 _e126178126827_
                                 _hd126179126830_
                                 _tl126180126832_
                                 _e126181126835_
                                 _hd126182126838_
                                 _tl126183126840_
                                 _e126184126843_
                                 _hd126185126846_
                                 _tl126186126848_
                                 _e126187126851_
                                 _hd126188126854_
                                 _tl126189126856_
                                 _e126190126859_
                                 _hd126191126862_
                                 _tl126192126864_
                                 _e126193126867_
                                 _hd126194126870_
                                 _tl126195126872_
                                 _e126196126875_
                                 _hd126197126878_
                                 _tl126198126880_
                                 _e126199126883_
                                 _hd126200126886_
                                 _tl126201126888_))
                            (___match131975131976_
                             _e126178126827_
                             _hd126179126830_
                             _tl126180126832_
                             _e126181126835_
                             _hd126182126838_
                             _tl126183126840_
                             _e126184126843_
                             _hd126185126846_
                             _tl126186126848_
                             _e126187126851_
                             _hd126188126854_
                             _tl126189126856_
                             _e126190126859_
                             _hd126191126862_
                             _tl126192126864_
                             _e126193126867_
                             _hd126194126870_
                             _tl126195126872_
                             _e126196126875_
                             _hd126197126878_
                             _tl126198126880_
                             _e126199126883_
                             _hd126200126886_
                             _tl126201126888_
                             _e126202126891_
                             _hd126203126894_
                             _tl126204126896_))))
                     (___match131797131798_
                      (lambda (_e126134127019_
                               _hd126135127022_
                               _tl126136127024_
                               _e126137127027_
                               _hd126138127030_
                               _tl126139127032_
                               _e126140127035_
                               _hd126141127038_
                               _tl126142127040_
                               _e126143127043_
                               _hd126144127046_
                               _tl126145127048_
                               _e126146127051_
                               _hd126147127054_
                               _tl126148127056_
                               _e126149127059_
                               _hd126150127062_
                               _tl126151127064_
                               _e126152127067_
                               _hd126153127070_
                               _tl126154127072_
                               _e126155127075_
                               _hd126156127078_
                               _tl126157127080_
                               _e126158127083_
                               _hd126159127086_
                               _tl126160127088_
                               _e126161127091_
                               _hd126162127094_
                               _tl126163127096_
                               ___splice131696131697_
                               _target126164127099_
                               _tl126166127101_)
                        (letrec ((_loop126167127104_
                                  (lambda (_hd126165127107_ _args126171127109_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd126165127107_))
                                        (let ((_e126168127112_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd126165127107_))))
                                          (let ((_lp-tl126170127117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e126168127112_)))
                                                (_lp-hd126169127115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e126168127112_))))
                                            (let ((__tmp132564
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd126169127115_
                                                           _args126171127109_))))
                                              (declare (not safe))
                                              (_loop126167127104_
                                               _lp-tl126170127117_
                                               __tmp132564))))
                                        (let ((_args126172127120_
                                               (reverse _args126171127109_)))
                                          (let ((_L127123_ _args126172127120_)
                                                (_L127124_ _hd126162127094_)
                                                (_L127125_ _hd126153127070_)
                                                (_L127126_ _hd126144127046_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L127126_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L127125_
                                                        _self126115_)))
                                                (___kont131694131695_
                                                 _L127123_
                                                 _L127124_
                                                 _L127125_
                                                 _L127126_)
                                                (___match131985131986_
                                                 _e126134127019_
                                                 _hd126135127022_
                                                 _tl126136127024_
                                                 _e126137127027_
                                                 _hd126138127030_
                                                 _tl126139127032_
                                                 _e126140127035_
                                                 _hd126141127038_
                                                 _tl126142127040_
                                                 _e126143127043_
                                                 _hd126144127046_
                                                 _tl126145127048_
                                                 _e126146127051_
                                                 _hd126147127054_
                                                 _tl126148127056_
                                                 _e126149127059_
                                                 _hd126150127062_
                                                 _tl126151127064_
                                                 _e126152127067_
                                                 _hd126153127070_
                                                 _tl126154127072_
                                                 _e126155127075_
                                                 _hd126156127078_
                                                 _tl126157127080_
                                                 _e126158127083_
                                                 _hd126159127086_
                                                 _tl126160127088_
                                                 _e126161127091_
                                                 _hd126162127094_
                                                 _tl126163127096_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop126167127104_ _target126164127099_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx131692131693_))
                    (let ((_e126134127019_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx131692131693_))))
                      (let ((_tl126136127024_
                             (let ()
                               (declare (not safe))
                               (##cdr _e126134127019_)))
                            (_hd126135127022_
                             (let ()
                               (declare (not safe))
                               (##car _e126134127019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl126136127024_))
                            (let ((_e126137127027_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl126136127024_))))
                              (let ((_tl126139127032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e126137127027_)))
                                    (_hd126138127030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e126137127027_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd126138127030_))
                                    (let ((_e126140127035_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd126138127030_))))
                                      (let ((_tl126142127040_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e126140127035_)))
                                            (_hd126141127038_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e126140127035_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd126141127038_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd126141127038_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl126142127040_))
                                                    (let ((_e126143127043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl126142127040_))))
                                                      (let ((_tl126145127048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e126143127043_)))
                    (_hd126144127046_
                     (let () (declare (not safe)) (##car _e126143127043_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl126145127048_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl126139127032_))
                        (let ((_e126146127051_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl126139127032_))))
                          (let ((_tl126148127056_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126146127051_)))
                                (_hd126147127054_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126146127051_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd126147127054_))
                                (let ((_e126149127059_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd126147127054_))))
                                  (let ((_tl126151127064_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126149127059_)))
                                        (_hd126150127062_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126149127059_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd126150127062_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd126150127062_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl126151127064_))
                                                (let ((_e126152127067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl126151127064_))))
                                                  (let ((_tl126154127072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e126152127067_)))
                                                        (_hd126153127070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e126152127067_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl126154127072_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl126148127056_))
                                                            (let ((_e126155127075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl126148127056_))))
                      (let ((_tl126157127080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e126155127075_)))
                            (_hd126156127078_
                             (let ()
                               (declare (not safe))
                               (##car _e126155127075_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd126156127078_))
                            (let ((_e126158127083_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd126156127078_))))
                              (let ((_tl126160127088_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e126158127083_)))
                                    (_hd126159127086_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e126158127083_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd126159127086_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd126159127086_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl126160127088_))
                                            (let ((_e126161127091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl126160127088_))))
                                              (let ((_tl126163127096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e126161127091_)))
                                                    (_hd126162127094_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e126161127091_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl126163127096_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl126157127080_))
                                                        (let ((___splice131696131697_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl126157127080_ '0))))
                  (let ((_tl126166127101_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice131696131697_ '1)))
                        (_target126164127099_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice131696131697_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl126166127101_))
                        (___match131797131798_
                         _e126134127019_
                         _hd126135127022_
                         _tl126136127024_
                         _e126137127027_
                         _hd126138127030_
                         _tl126139127032_
                         _e126140127035_
                         _hd126141127038_
                         _tl126142127040_
                         _e126143127043_
                         _hd126144127046_
                         _tl126145127048_
                         _e126146127051_
                         _hd126147127054_
                         _tl126148127056_
                         _e126149127059_
                         _hd126150127062_
                         _tl126151127064_
                         _e126152127067_
                         _hd126153127070_
                         _tl126154127072_
                         _e126155127075_
                         _hd126156127078_
                         _tl126157127080_
                         _e126158127083_
                         _hd126159127086_
                         _tl126160127088_
                         _e126161127091_
                         _hd126162127094_
                         _tl126163127096_
                         ___splice131696131697_
                         _target126164127099_
                         _tl126166127101_)
                        (___match131985131986_
                         _e126134127019_
                         _hd126135127022_
                         _tl126136127024_
                         _e126137127027_
                         _hd126138127030_
                         _tl126139127032_
                         _e126140127035_
                         _hd126141127038_
                         _tl126142127040_
                         _e126143127043_
                         _hd126144127046_
                         _tl126145127048_
                         _e126146127051_
                         _hd126147127054_
                         _tl126148127056_
                         _e126149127059_
                         _hd126150127062_
                         _tl126151127064_
                         _e126152127067_
                         _hd126153127070_
                         _tl126154127072_
                         _e126155127075_
                         _hd126156127078_
                         _tl126157127080_
                         _e126158127083_
                         _hd126159127086_
                         _tl126160127088_
                         _e126161127091_
                         _hd126162127094_
                         _tl126163127096_))))
                (___match131985131986_
                 _e126134127019_
                 _hd126135127022_
                 _tl126136127024_
                 _e126137127027_
                 _hd126138127030_
                 _tl126139127032_
                 _e126140127035_
                 _hd126141127038_
                 _tl126142127040_
                 _e126143127043_
                 _hd126144127046_
                 _tl126145127048_
                 _e126146127051_
                 _hd126147127054_
                 _tl126148127056_
                 _e126149127059_
                 _hd126150127062_
                 _tl126151127064_
                 _e126152127067_
                 _hd126153127070_
                 _tl126154127072_
                 _e126155127075_
                 _hd126156127078_
                 _tl126157127080_
                 _e126158127083_
                 _hd126159127086_
                 _tl126160127088_
                 _e126161127091_
                 _hd126162127094_
                 _tl126163127096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match132189132190_
                                                     _e126134127019_
                                                     _hd126135127022_
                                                     _tl126136127024_
                                                     _e126137127027_
                                                     _hd126138127030_
                                                     _tl126139127032_
                                                     _e126140127035_
                                                     _hd126141127038_
                                                     _tl126142127040_
                                                     _e126143127043_
                                                     _hd126144127046_
                                                     _tl126145127048_
                                                     _e126146127051_
                                                     _hd126147127054_
                                                     _tl126148127056_
                                                     _e126149127059_
                                                     _hd126150127062_
                                                     _tl126151127064_
                                                     _e126152127067_
                                                     _hd126153127070_
                                                     _tl126154127072_
                                                     _e126155127075_
                                                     _hd126156127078_
                                                     _tl126157127080_))))
                                            (___match132189132190_
                                             _e126134127019_
                                             _hd126135127022_
                                             _tl126136127024_
                                             _e126137127027_
                                             _hd126138127030_
                                             _tl126139127032_
                                             _e126140127035_
                                             _hd126141127038_
                                             _tl126142127040_
                                             _e126143127043_
                                             _hd126144127046_
                                             _tl126145127048_
                                             _e126146127051_
                                             _hd126147127054_
                                             _tl126148127056_
                                             _e126149127059_
                                             _hd126150127062_
                                             _tl126151127064_
                                             _e126152127067_
                                             _hd126153127070_
                                             _tl126154127072_
                                             _e126155127075_
                                             _hd126156127078_
                                             _tl126157127080_))
                                        (___match131865131866_
                                         _e126134127019_
                                         _hd126135127022_
                                         _tl126136127024_
                                         _e126137127027_
                                         _hd126138127030_
                                         _tl126139127032_
                                         _e126140127035_
                                         _hd126141127038_
                                         _tl126142127040_
                                         _e126143127043_
                                         _hd126144127046_
                                         _tl126145127048_
                                         _e126146127051_
                                         _hd126147127054_
                                         _tl126148127056_
                                         _e126149127059_
                                         _hd126150127062_
                                         _tl126151127064_
                                         _e126152127067_
                                         _hd126153127070_
                                         _tl126154127072_
                                         _e126155127075_
                                         _hd126156127078_
                                         _tl126157127080_
                                         _e126158127083_
                                         _hd126159127086_
                                         _tl126160127088_))
                                    (___match132189132190_
                                     _e126134127019_
                                     _hd126135127022_
                                     _tl126136127024_
                                     _e126137127027_
                                     _hd126138127030_
                                     _tl126139127032_
                                     _e126140127035_
                                     _hd126141127038_
                                     _tl126142127040_
                                     _e126143127043_
                                     _hd126144127046_
                                     _tl126145127048_
                                     _e126146127051_
                                     _hd126147127054_
                                     _tl126148127056_
                                     _e126149127059_
                                     _hd126150127062_
                                     _tl126151127064_
                                     _e126152127067_
                                     _hd126153127070_
                                     _tl126154127072_
                                     _e126155127075_
                                     _hd126156127078_
                                     _tl126157127080_))))
                            (___match132189132190_
                             _e126134127019_
                             _hd126135127022_
                             _tl126136127024_
                             _e126137127027_
                             _hd126138127030_
                             _tl126139127032_
                             _e126140127035_
                             _hd126141127038_
                             _tl126142127040_
                             _e126143127043_
                             _hd126144127046_
                             _tl126145127048_
                             _e126146127051_
                             _hd126147127054_
                             _tl126148127056_
                             _e126149127059_
                             _hd126150127062_
                             _tl126151127064_
                             _e126152127067_
                             _hd126153127070_
                             _tl126154127072_
                             _e126155127075_
                             _hd126156127078_
                             _tl126157127080_))))
                    (___match132127132128_
                     _e126134127019_
                     _hd126135127022_
                     _tl126136127024_
                     _e126137127027_
                     _hd126138127030_
                     _tl126139127032_
                     _e126140127035_
                     _hd126141127038_
                     _tl126142127040_
                     _e126143127043_
                     _hd126144127046_
                     _tl126145127048_
                     _e126146127051_
                     _hd126147127054_
                     _tl126148127056_
                     _e126149127059_
                     _hd126150127062_
                     _tl126151127064_
                     _e126152127067_
                     _hd126153127070_
                     _tl126154127072_))
                (___kont131710131711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont131710131711_))
                                            (___kont131710131711_))
                                        (___kont131710131711_))))
                                (___kont131710131711_))))
                        (___kont131710131711_))
                    (___kont131710131711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont131710131711_))
                                                (___kont131710131711_))
                                            (___kont131710131711_))))
                                    (___kont131710131711_))))
                            (___kont131710131711_))))
                    (___kont131710131711_))))))))))
