(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1695292407)
  (begin
    (define gxc#&generate-method-specializers
      (let ((__tmp45155
             (lambda ()
               (let ((_tbl43551_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp45156
                        (let () (declare (not safe)) (force gxc#&identity))))
                   (declare (not safe))
                   (hash-copy! _tbl43551_ __tmp45156))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43551_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43551_
                    '%#begin-syntax
                    gxc#xform-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43551_ '%#module gxc#xform-module%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43551_
                    '%#define-values
                    gxc#generate-method-specializers-define-values%))
                 _tbl43551_))))
        (declare (not safe))
        (make-promise __tmp45155)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx43544_ . _args43546_)
        (let ((__tmp45158
               (lambda () (apply gxc#compile-e _stx43544_ _args43546_)))
              (__tmp45157
               (let ()
                 (declare (not safe))
                 (force gxc#&generate-method-specializers))))
          (declare (not safe))
          (call-with-parameters
           __tmp45158
           gxc#current-compile-methods
           __tmp45157))))
    (define gxc#&collect-object-refs
      (let ((__tmp45159
             (lambda ()
               (let ((_tbl43541_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp45160
                        (let () (declare (not safe)) (force gxc#&void))))
                   (declare (not safe))
                   (hash-copy! _tbl43541_ __tmp45160))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43541_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#begin-annotation
                    gxc#collect-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43541_ '%#lambda gxc#collect-body-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#case-lambda
                    gxc#collect-body-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#let-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#letrec-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#letrec-values*
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#call
                    gxc#collect-object-refs-call%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43541_ '%#if gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43541_ '%#set! gxc#collect-body-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43541_ '%#struct-ref gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43541_ '%#struct-set! gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#struct-direct-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#struct-direct-set!
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#struct-unchecked-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl43541_
                    '%#struct-unchecked-set!
                    gxc#collect-operands))
                 _tbl43541_))))
        (declare (not safe))
        (make-promise __tmp45159)))
    (define gxc#apply-collect-object-refs
      (lambda (_stx43534_ . _args43536_)
        (let ((__tmp45162
               (lambda () (apply gxc#compile-e _stx43534_ _args43536_)))
              (__tmp45161
               (let () (declare (not safe)) (force gxc#&collect-object-refs))))
          (declare (not safe))
          (call-with-parameters
           __tmp45162
           gxc#current-compile-methods
           __tmp45161))))
    (define gxc#&subst-object-refs
      (let ((__tmp45163
             (lambda ()
               (let ((_tbl43531_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp45164
                        (let ()
                          (declare (not safe))
                          (force gxc#&basic-xform-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl43531_ __tmp45164))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43531_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl43531_ '%#call gxc#subst-object-refs-call%))
                 _tbl43531_))))
        (declare (not safe))
        (make-promise __tmp45163)))
    (define gxc#apply-subst-object-refs
      (lambda (_stx43524_ . _args43526_)
        (let ((__tmp45166
               (lambda () (apply gxc#compile-e _stx43524_ _args43526_)))
              (__tmp45165
               (let () (declare (not safe)) (force gxc#&subst-object-refs))))
          (declare (not safe))
          (call-with-parameters
           __tmp45166
           gxc#current-compile-methods
           __tmp45165))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx40194_)
        (letrec ((_generate-method-bind40196_
                  (lambda (_$t43518_ _id43519_ _$id43520_)
                    (let ((_$tmp43522_
                           (make-symbol
                            (let () (declare (not safe)) (gensym '__tmp)))))
                      (let ((__tmp45211
                             (let ()
                               (declare (not safe))
                               (cons _$id43520_ '())))
                            (__tmp45167
                             (let ((__tmp45168
                                    (let ((__tmp45169
                                           (let ((__tmp45209
                                                  (let ((__tmp45210
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45210)))
                                                 (__tmp45170
                                                  (let ((__tmp45171
                                                         (let ((__tmp45172
                                                                (let ((__tmp45173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45174
                                      (let ((__tmp45175
                                             (let ((__tmp45195
                                                    (let ((__tmp45196
                                                           (let ((__tmp45208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$tmp43522_ '())))
                         (__tmp45197
                          (let ((__tmp45198
                                 (let ((__tmp45199
                                        (let ((__tmp45206
                                               (let ((__tmp45207
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp45207)))
                                              (__tmp45200
                                               (let ((__tmp45204
                                                      (let ((__tmp45205
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t43518_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp45205)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45201
                                                      (let ((__tmp45202
                                                             (let ((__tmp45203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id43519_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp45203))))
                (declare (not safe))
                (cons __tmp45202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45204
                                                       __tmp45201))))
                                          (declare (not safe))
                                          (cons __tmp45206 __tmp45200))))
                                   (declare (not safe))
                                   (cons '%#call __tmp45199))))
                            (declare (not safe))
                            (cons __tmp45198 '()))))
                     (declare (not safe))
                     (cons __tmp45208 __tmp45197))))
              (declare (not safe))
              (cons __tmp45196 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45176
                                                    (let ((__tmp45177
                                                           (let ((__tmp45178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45193
                                 (let ((__tmp45194
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp43522_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp45194)))
                                (__tmp45179
                                 (let ((__tmp45191
                                        (let ((__tmp45192
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp43522_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp45192)))
                                       (__tmp45180
                                        (let ((__tmp45181
                                               (let ((__tmp45182
                                                      (let ((__tmp45189
                                                             (let ((__tmp45190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45190)))
                    (__tmp45183
                     (let ((__tmp45187
                            (let ((__tmp45188
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp45188)))
                           (__tmp45184
                            (let ((__tmp45185
                                   (let ((__tmp45186
                                          (let ()
                                            (declare (not safe))
                                            (cons _id43519_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp45186))))
                              (declare (not safe))
                              (cons __tmp45185 '()))))
                       (declare (not safe))
                       (cons __tmp45187 __tmp45184))))
                (declare (not safe))
                (cons __tmp45189 __tmp45183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp45182))))
                                          (declare (not safe))
                                          (cons __tmp45181 '()))))
                                   (declare (not safe))
                                   (cons __tmp45191 __tmp45180))))
                            (declare (not safe))
                            (cons __tmp45193 __tmp45179))))
                     (declare (not safe))
                     (cons '%#if __tmp45178))))
              (declare (not safe))
              (cons __tmp45177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45195 __tmp45176))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp45175))))
                                 (declare (not safe))
                                 (cons __tmp45174 '()))))
                          (declare (not safe))
                          (cons '() __tmp45173))))
                   (declare (not safe))
                   (cons '%#lambda __tmp45172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45171 '()))))
                                             (declare (not safe))
                                             (cons __tmp45209 __tmp45170))))
                                      (declare (not safe))
                                      (cons '%#call __tmp45169))))
                               (declare (not safe))
                               (cons __tmp45168 '()))))
                        (declare (not safe))
                        (cons __tmp45211 __tmp45167)))))
                 (_generate-slot-bind40197_
                  (lambda (_$t43512_ _id43513_ _$id43514_)
                    (let ((_$tmp43516_
                           (make-symbol
                            (let () (declare (not safe)) (gensym '__tmp)))))
                      (let ((__tmp45256
                             (let ()
                               (declare (not safe))
                               (cons _$id43514_ '())))
                            (__tmp45212
                             (let ((__tmp45213
                                    (let ((__tmp45214
                                           (let ((__tmp45242
                                                  (let ((__tmp45243
                                                         (let ((__tmp45255
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp43516_ '())))
                       (__tmp45244
                        (let ((__tmp45245
                               (let ((__tmp45246
                                      (let ((__tmp45253
                                             (let ((__tmp45254
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp45254)))
                                            (__tmp45247
                                             (let ((__tmp45251
                                                    (let ((__tmp45252
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t43512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45252)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45248
                                                    (let ((__tmp45249
                                                           (let ((__tmp45250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id43513_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp45250))))
              (declare (not safe))
              (cons __tmp45249 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45251 __tmp45248))))
                                        (declare (not safe))
                                        (cons __tmp45253 __tmp45247))))
                                 (declare (not safe))
                                 (cons '%#call __tmp45246))))
                          (declare (not safe))
                          (cons __tmp45245 '()))))
                   (declare (not safe))
                   (cons __tmp45255 __tmp45244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45243 '())))
                                                 (__tmp45215
                                                  (let ((__tmp45216
                                                         (let ((__tmp45217
                                                                (let ((__tmp45240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45241
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp43516_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45241)))
                              (__tmp45218
                               (let ((__tmp45230
                                      (let ((__tmp45231
                                             (let ((__tmp45238
                                                    (let ((__tmp45239
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '##fx+
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45239)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45232
                                                    (let ((__tmp45236
                                                           (let ((__tmp45237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp43516_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45237)))
                  (__tmp45233
                   (let ((__tmp45234
                          (let ((__tmp45235
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45235))))
                     (declare (not safe))
                     (cons __tmp45234 '()))))
              (declare (not safe))
              (cons __tmp45236 __tmp45233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45238 __tmp45232))))
                                        (declare (not safe))
                                        (cons '%#call __tmp45231)))
                                     (__tmp45219
                                      (let ((__tmp45220
                                             (let ((__tmp45221
                                                    (let ((__tmp45228
                                                           (let ((__tmp45229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45229)))
                  (__tmp45222
                   (let ((__tmp45226
                          (let ((__tmp45227
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45227)))
                         (__tmp45223
                          (let ((__tmp45224
                                 (let ((__tmp45225
                                        (let ()
                                          (declare (not safe))
                                          (cons _id43513_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp45225))))
                            (declare (not safe))
                            (cons __tmp45224 '()))))
                     (declare (not safe))
                     (cons __tmp45226 __tmp45223))))
              (declare (not safe))
              (cons __tmp45228 __tmp45222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp45221))))
                                        (declare (not safe))
                                        (cons __tmp45220 '()))))
                                 (declare (not safe))
                                 (cons __tmp45230 __tmp45219))))
                          (declare (not safe))
                          (cons __tmp45240 __tmp45218))))
                   (declare (not safe))
                   (cons '%#if __tmp45217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45216 '()))))
                                             (declare (not safe))
                                             (cons __tmp45242 __tmp45215))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp45214))))
                               (declare (not safe))
                               (cons __tmp45213 '()))))
                        (declare (not safe))
                        (cons __tmp45256 __tmp45212)))))
                 (_generate-class-check-bind40198_
                  (lambda (_$t43508_ _class-type43509_ _$class-type43510_)
                    (let ((__tmp45268
                           (let ()
                             (declare (not safe))
                             (cons _$class-type43510_ '())))
                          (__tmp45257
                           (let ((__tmp45258
                                  (let ((__tmp45259
                                         (let ((__tmp45266
                                                (let ((__tmp45267
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45267)))
                                               (__tmp45260
                                                (let ((__tmp45264
                                                       (let ((__tmp45265
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type43509_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45265)))
              (__tmp45261
               (let ((__tmp45262
                      (let ((__tmp45263
                             (let ()
                               (declare (not safe))
                               (cons _$t43508_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45263))))
                 (declare (not safe))
                 (cons __tmp45262 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45264
                                                        __tmp45261))))
                                           (declare (not safe))
                                           (cons __tmp45266 __tmp45260))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45259))))
                             (declare (not safe))
                             (cons __tmp45258 '()))))
                      (declare (not safe))
                      (cons __tmp45268 __tmp45257))))
                 (_generate-struct-check-bind40199_
                  (lambda (_$t43504_ _class-type43505_ _$class-type43506_)
                    (let ((__tmp45280
                           (let ()
                             (declare (not safe))
                             (cons _$class-type43506_ '())))
                          (__tmp45269
                           (let ((__tmp45270
                                  (let ((__tmp45271
                                         (let ((__tmp45278
                                                (let ((__tmp45279
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45279)))
                                               (__tmp45272
                                                (let ((__tmp45276
                                                       (let ((__tmp45277
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type43505_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45277)))
              (__tmp45273
               (let ((__tmp45274
                      (let ((__tmp45275
                             (let ()
                               (declare (not safe))
                               (cons _$t43504_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45275))))
                 (declare (not safe))
                 (cons __tmp45274 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45276
                                                        __tmp45273))))
                                           (declare (not safe))
                                           (cons __tmp45278 __tmp45272))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45271))))
                             (declare (not safe))
                             (cons __tmp45270 '()))))
                      (declare (not safe))
                      (cons __tmp45280 __tmp45269))))
                 (_generate-specializer-impl40200_
                  (lambda (_$t43453_
                           _methods-bind43454_
                           _slots-bind43455_
                           _class-check-bind43456_
                           _struct-check-bind43457_
                           _specializer-impl43458_
                           _lifted-specializer-id43459_
                           _unchecked-specializer-impl43460_)
                    (let ((__tmp45281
                           (let ((__tmp45282
                                  (let ((__tmp45307
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t43453_ '())))
                                        (__tmp45283
                                         (let ((__tmp45284
                                                (let ((__tmp45285
                                                       (let ((__tmp45304
                                                              (let ((__tmp45305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45306
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind43457_
                                              _class-check-bind43456_))))
                               (declare (not safe))
                               (foldr1 cons __tmp45306 _slots-bind43455_))))
                        (declare (not safe))
                        (foldr1 cons __tmp45305 _methods-bind43454_)))
                     (__tmp45286
                      (let ((__tmp45287
                             (if (or _lifted-specializer-id43459_
                                     _unchecked-specializer-impl43460_)
                                 (let* ((_$specializer43465_
                                         (make-symbol
                                          (let ()
                                            (declare (not safe))
                                            (gensym '__specializer))))
                                        (__tmp45288
                                         (let ((__tmp45300
                                                (let ((__tmp45301
                                                       (let ((__tmp45303
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer43465_ '())))
                     (__tmp45302
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl43458_ '()))))
                 (declare (not safe))
                 (cons __tmp45303 __tmp45302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45301 '())))
                                               (__tmp45289
                                                (let ((__tmp45290
                                                       (let _recur43467_ ((_rest43469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ()
                                     (declare (not safe))
                                     (map caar _struct-check-bind43457_))))
                 (let* ((_rest4347043478_ _rest43469_)
                        (_else4347243486_
                         (lambda ()
                           (if _lifted-specializer-id43459_
                               (let ((__tmp45291
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id43459_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45291))
                               _unchecked-specializer-impl43460_)))
                        (_K4347443492_
                         (lambda (_rest43489_ _checkq43490_)
                           (let ((__tmp45292
                                  (let ((__tmp45298
                                         (let ((__tmp45299
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq43490_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp45299)))
                                        (__tmp45293
                                         (let ((__tmp45297
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur43467_ _rest43489_)))
                                               (__tmp45294
                                                (let ((__tmp45295
                                                       (let ((__tmp45296
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer43465_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45295 '()))))
                                           (declare (not safe))
                                           (cons __tmp45297 __tmp45294))))
                                    (declare (not safe))
                                    (cons __tmp45298 __tmp45293))))
                             (declare (not safe))
                             (cons '%#if __tmp45292)))))
                   (if (let () (declare (not safe)) (##pair? _rest4347043478_))
                       (let ((_hd4347543495_
                              (let ()
                                (declare (not safe))
                                (##car _rest4347043478_)))
                             (_tl4347643497_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest4347043478_))))
                         (let* ((_checkq43500_ _hd4347543495_)
                                (_rest43502_ _tl4347643497_))
                           (declare (not safe))
                           (_K4347443492_ _rest43502_ _checkq43500_)))
                       (let () (declare (not safe)) (_else4347243486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45290 '()))))
                                           (declare (not safe))
                                           (cons __tmp45300 __tmp45289))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp45288))
                                 _specializer-impl43458_)))
                        (declare (not safe))
                        (cons __tmp45287 '()))))
                 (declare (not safe))
                 (cons __tmp45304 __tmp45286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp45285))))
                                           (declare (not safe))
                                           (cons __tmp45284 '()))))
                                    (declare (not safe))
                                    (cons __tmp45307 __tmp45283))))
                             (declare (not safe))
                             (cons '%#lambda __tmp45282))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45281 _stx40194_))))
                 (_generate-specializer-def40201_
                  (lambda (_id43447_
                           _specializer-id43448_
                           _specializer-impl43449_
                           _lifted-specializer-id43450_
                           _unchecked-specializer-impl43451_)
                    (let ((__tmp45308
                           (let ((__tmp45309
                                  (let ((__tmp45310
                                         (let ((__tmp45330
                                                (let ((__tmp45331
                                                       (let ((__tmp45332
                                                              (let ((__tmp45334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id43448_ '())))
                            (__tmp45333
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl43449_ '()))))
                        (declare (not safe))
                        (cons __tmp45334 __tmp45333))))
                 (declare (not safe))
                 (cons '%#define-values __tmp45332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp45331
                                                   _stx40194_)))
                                               (__tmp45311
                                                (let ((__tmp45318
                                                       (let ((__tmp45319
                                                              (let ((__tmp45320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45321
                                    (let ((__tmp45328
                                           (let ((__tmp45329
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp45329)))
                                          (__tmp45322
                                           (let ((__tmp45326
                                                  (let ((__tmp45327
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id43447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45327)))
                                                 (__tmp45323
                                                  (let ((__tmp45324
                                                         (let ((__tmp45325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id43448_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp45325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45324 '()))))
                                             (declare (not safe))
                                             (cons __tmp45326 __tmp45323))))
                                      (declare (not safe))
                                      (cons __tmp45328 __tmp45322))))
                               (declare (not safe))
                               (cons '%#call __tmp45321))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp45320 _stx40194_))))
                 (declare (not safe))
                 (cons __tmp45319 '())))
              (__tmp45312
               (if _lifted-specializer-id43450_
                   (let ((__tmp45313
                          (let ((__tmp45314
                                 (let ((__tmp45315
                                        (let ((__tmp45317
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id43450_
                                                       '())))
                                              (__tmp45316
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl43451_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp45317 __tmp45316))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp45315))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp45314 _stx40194_))))
                     (declare (not safe))
                     (cons __tmp45313 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp45318
                                                          __tmp45312))))
                                           (declare (not safe))
                                           (cons __tmp45330 __tmp45311))))
                                    (declare (not safe))
                                    (cons _stx40194_ __tmp45310))))
                             (declare (not safe))
                             (cons '%#begin __tmp45309))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45308 _stx40194_)))))
          (let* ((___stx4364043641_ _stx40194_)
                 (_g4020440224_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4364043641_)))))
            (let ((___kont4364243643_
                   (lambda (_L40268_ _L40269_)
                     (let ((_method-calls40288_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs40289_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check40290_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check40291_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert40292_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty40293_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?40295_
                                 (lambda ()
                                   (if (let ((__tmp45339
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40288_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45339))
                                       (if (let ((__tmp45338
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40289_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45338))
                                           (if (let ((__tmp45337
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check40290_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp45337))
                                               (if (let ((__tmp45336
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check40291_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45336))
                                                   (let ((__tmp45335
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert40292_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45335))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?40296_
                                 (lambda ()
                                   (let ((_$e43440_
                                          (let ((__tmp45340
                                                 (let ((__tmp45341
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check40291_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp45341))))
                                            (declare (not safe))
                                            (not __tmp45340))))
                                     (if _$e43440_
                                         _$e43440_
                                         (let ((__tmp45342
                                                (let ((__tmp45343
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert40292_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp45343))))
                                           (declare (not safe))
                                           (not __tmp45342))))))
                                (_lift-unchecked-specializer?40297_
                                 (lambda ()
                                   (if (let ((__tmp45346
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40288_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45346))
                                       (if (let ((__tmp45345
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40289_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45345))
                                           (let ((__tmp45344
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check40290_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45344))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L40268_))
                             (let* ((___stx4355443555_ _L40268_)
                                    (_g4081040828_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4355443555_)))))
                               (let ((___kont4355643557_
                                      (lambda (_L40864_ _L40865_ _L40866_)
                                        (let ((__tmp45540
                                               (lambda (_g4088140883_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-collect-object-refs
                                                    _g4088140883_
                                                    _L40866_
                                                    _method-calls40288_
                                                    _slot-refs40289_
                                                    _class-type-check40290_
                                                    _struct-type-check40291_
                                                    _struct-type-assert40292_)))))
                                          (declare (not safe))
                                          (for-each __tmp45540 _L40864_))
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?40295_))
                                            _stx40194_
                                            (let* ((_specializer-id40892_
                                                    (let* ((_id40886_
                                                            (make-symbol
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L40269_))
                     '"::specialize"))
                   (_specializer-id40889_
                    (let ((__tmp45541
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx40194_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id40886_ __tmp45541))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id40889_))
              _specializer-id40889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id40899_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?40297_))
                                                        (let* ((_id40894_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (gx#stx-e _L40269_))
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id40896_
                        (let ((__tmp45542
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx40194_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id40894_ __tmp45542))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id40896_))
                  _lifted-specializer-id40896_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t40901_
                                                    (make-symbol
                                                     (let ()
                                                       (declare (not safe))
                                                       (gensym '__t))))
                                                   (_methods40903_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls40288_)))
                                                   (_$methods40907_
                                                    (let ((__tmp45543
                                                           (lambda (_id40905_)
                                                             (make-symbol
                                                              '"__"
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gensym _id40905_))))))
              (declare (not safe))
              (map __tmp45543 _methods40903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45545_
                                                    (let ((__tmp45544
                                                           (lambda (_g4090840911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4090940913_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40288_
                        _g4090840911_
                        _g4090940913_)))))
              (declare (not safe))
              (for-each __tmp45544 _methods40903_ _$methods40907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_methods-bind40924_
                                                    (let ((__tmp45546
                                                           (lambda (_g4091640919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4091740921_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind40196_
                        _$t40901_
                        _g4091640919_
                        _g4091740921_)))))
              (declare (not safe))
              (map __tmp45546 _methods40903_ _$methods40907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots40926_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs40289_)))
                                                   (_$slots40930_
                                                    (let ((__tmp45547
                                                           (lambda (_id40928_)
                                                             (make-symbol
                                                              '"__"
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gensym _id40928_))))))
              (declare (not safe))
              (map __tmp45547 _slots40926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45549_
                                                    (let ((__tmp45548
                                                           (lambda (_g4093140934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4093240936_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40289_
                        _g4093140934_
                        _g4093240936_)))))
              (declare (not safe))
              (for-each __tmp45548 _slots40926_ _$slots40930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots-bind40947_
                                                    (let ((__tmp45550
                                                           (lambda (_g4093940942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4094040944_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind40197_
                        _$t40901_
                        _g4093940942_
                        _g4094040944_)))))
              (declare (not safe))
              (map __tmp45550 _slots40926_ _$slots40930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check40949_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check40290_)))
                                                   (_$class-check40952_
                                                    (let ((__tmp45551
                                                           (lambda (_g45552_)
                                                             (make-symbol
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gensym '__class))))))
              (declare (not safe))
              (map __tmp45551 _class-check40949_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45554_
                                                    (let ((__tmp45553
                                                           (lambda (_g4095340956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4095440958_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40290_
                        _g4095340956_
                        _g4095440958_)))))
              (declare (not safe))
              (for-each __tmp45553 _class-check40949_ _$class-check40952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check-bind40969_
                                                    (let ((__tmp45555
                                                           (lambda (_g4096140964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4096240966_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind40198_
                        _$t40901_
                        _g4096140964_
                        _g4096240966_)))))
              (declare (not safe))
              (map __tmp45555 _class-check40949_ _$class-check40952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all40971_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check40291_
                                                       _struct-type-assert40292_)))
                                                   (_struct-check40973_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all40971_)))
                                                   (_$struct-check40976_
                                                    (let ((__tmp45556
                                                           (lambda (_g45557_)
                                                             (make-symbol
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gensym '__class))))))
              (declare (not safe))
              (map __tmp45556 _struct-check40973_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45559_
                                                    (let ((__tmp45558
                                                           (lambda (_g4097740980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4097840982_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all40971_
                        _g4097740980_
                        _g4097840982_)))))
              (declare (not safe))
              (for-each __tmp45558 _struct-check40973_ _$struct-check40976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-bind40993_
                                                    (let ((__tmp45560
                                                           (lambda (_g4098540988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4098640990_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind40199_
                        _$t40901_
                        _g4098540988_
                        _g4098640990_)))))
              (declare (not safe))
              (map __tmp45560 _struct-check40973_ _$struct-check40976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl41004_
                                                    (lambda (_struct-type-check140995_
                                                             _struct-type-check240996_)
                                                      (let* ((_specializer-body41002_
                                                              (let ((__tmp45561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g4099740999_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-subst-object-refs
                                  _g4099740999_
                                  _L40866_
                                  _$t40901_
                                  _method-calls40288_
                                  _slot-refs40289_
                                  _class-type-check40290_
                                  _struct-type-check140995_
                                  _struct-type-check240996_)))))
                        (declare (not safe))
                        (map __tmp45561 _L40864_)))
                     (__tmp45562
                      (let ((__tmp45563
                             (let ((__tmp45564
                                    (let ()
                                      (declare (not safe))
                                      (cons _L40866_ _L40865_))))
                               (declare (not safe))
                               (cons __tmp45564 _specializer-body41002_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp45563))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp45562 _stx40194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl41006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl41004_
                                                       _struct-check-all40971_
                                                       _empty40293_)))
                                                   (_unchecked-specializer-impl41008_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?40296_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl41004_
                                                           _empty40293_
                                                           _struct-check-all40971_))
                                                        '#f))
                                                   (_specializer-impl41010_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl40200_
                                                       _$t40901_
                                                       _methods-bind40924_
                                                       _slots-bind40947_
                                                       _class-check-bind40969_
                                                       _struct-check-bind40993_
                                                       _specializer-impl41006_
                                                       _lifted-specializer-id40899_
                                                       _unchecked-specializer-impl41008_))))
                                              (let ((__tmp45566
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40269_)))
                                                    (__tmp45565
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id40892_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp45566
                                                 '" => "
                                                 __tmp45565))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def40201_
                                                 _L40269_
                                                 _specializer-id40892_
                                                 _specializer-impl41010_
                                                 _lifted-specializer-id40899_
                                                 _unchecked-specializer-impl41008_))))))
                                     (___kont4355843559_
                                      (lambda () _stx40194_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx4355443555_))
                                     (let ((_e4081740840_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx4355443555_))))
                                       (let ((_tl4081540845_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4081740840_)))
                                             (_hd4081640843_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4081740840_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl4081540845_))
                                             (let ((_e4082040848_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl4081540845_))))
                                               (let ((_tl4081840853_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4082040848_)))
                                                     (_hd4081940851_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4082040848_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd4081940851_))
                                                     (let ((_e4082340856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd4081940851_))))
                                                       (let ((_tl4082140861_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4082340856_)))
                     (_hd4082240859_
                      (let () (declare (not safe)) (##car _e4082340856_))))
                 (___kont4355643557_
                  _tl4081840853_
                  _tl4082140861_
                  _hd4082240859_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4355843559_))))
                                             (___kont4355843559_))))
                                     (___kont4355843559_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L40268_))
                                 (let* ((_g4101641035_
                                         (lambda (_g4101741032_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g4101741032_))))
                                        (_g4101541386_
                                         (lambda (_g4101741038_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _g4101741038_))
                                               (let ((_e4102141040_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g4101741038_))))
                                                 (let ((_hd4102041043_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4102141040_)))
                                                       (_tl4101941045_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4102141040_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl4101941045_))
                                                       (let ((_g45505_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl4101941045_ '0))))
                 (begin
                   (let ((_g45506_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g45505_)
                                (##vector-length _g45505_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g45506_ 2)))
                         (error "Context expects 2 values" _g45506_)))
                   (let ((_target4102241048_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g45505_ 0)))
                         (_tl4102441050_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g45505_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl4102441050_))
                         (letrec ((_loop4102541053_
                                   (lambda (_hd4102341056_ _clause4102941058_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd4102341056_))
                                         (let ((_e4102641061_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd4102341056_))))
                                           (let ((_lp-hd4102741064_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4102641061_)))
                                                 (_lp-tl4102841066_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4102641061_))))
                                             (let ((__tmp45539
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd4102741064_
                                                            _clause4102941058_))))
                                               (declare (not safe))
                                               (_loop4102541053_
                                                _lp-tl4102841066_
                                                __tmp45539))))
                                         (let ((_clause4103041069_
                                                (let ()
                                                  (declare (not safe))
                                                  (reverse _clause4102941058_))))
                                           ((lambda (_L41072_)
                                              (let ((__tmp45509
                                                     (lambda (_clause41085_)
                                                       (let* ((___stx4358043581_
                                                               _clause41085_)
                                                              (_g4108841103_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            ___stx4358043581_)))))
                 (let ((___kont4358243583_
                        (lambda (_L41131_ _L41132_ _L41133_)
                          (let ((__tmp45510
                                 (lambda (_g4114841150_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs
                                      _g4114841150_
                                      _L41133_
                                      _method-calls40288_
                                      _slot-refs40289_
                                      _class-type-check40290_
                                      _struct-type-check40291_
                                      _struct-type-assert40292_)))))
                            (declare (not safe))
                            (for-each __tmp45510 _L41131_))))
                       (___kont4358443585_ (lambda () '#!void)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx4358043581_))
                       (let ((_e4109541115_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx4358043581_))))
                         (let ((_tl4109341120_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4109541115_)))
                               (_hd4109441118_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4109541115_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd4109441118_))
                               (let ((_e4109841123_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd4109441118_))))
                                 (let ((_tl4109641128_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4109841123_)))
                                       (_hd4109741126_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4109841123_))))
                                   (___kont4358243583_
                                    _tl4109341120_
                                    _tl4109641128_
                                    _hd4109741126_)))
                               (___kont4358443585_))))
                       (___kont4358443585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45507
                                                     (let ((__tmp45508
                                                            (lambda (_g4115541158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g4115641160_)
                      (let ()
                        (declare (not safe))
                        (cons _g4115541158_ _g4115641160_)))))
               (declare (not safe))
               (foldr1 __tmp45508 '() _L41072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (for-each
                                                 __tmp45509
                                                 __tmp45507))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40295_))
                                                  _stx40194_
                                                  (let* ((_specializer-id41169_
                                                          (let* ((_id41163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40269_))
                           '"::specialize"))
                         (_specializer-id41166_
                          (let ((__tmp45511
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40194_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id41163_ __tmp45511))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id41166_))
                    _specializer-id41166_))
                 (_lifted-specializer-id41176_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40297_))
                      (let* ((_id41171_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40269_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id41173_
                              (let ((__tmp45512
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40194_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id41171_
                                 __tmp45512))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id41173_))
                        _lifted-specializer-id41173_)
                      '#f))
                 (_$t41178_
                  (make-symbol (let () (declare (not safe)) (gensym '__t))))
                 (_methods41180_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40288_)))
                 (_$methods41184_
                  (let ((__tmp45513
                         (lambda (_id41182_)
                           (make-symbol
                            '"__"
                            (let ()
                              (declare (not safe))
                              (gensym _id41182_))))))
                    (declare (not safe))
                    (map __tmp45513 _methods41180_)))
                 (_g45515_
                  (let ((__tmp45514
                         (lambda (_g4118541188_ _g4118641190_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _method-calls40288_
                              _g4118541188_
                              _g4118641190_)))))
                    (declare (not safe))
                    (for-each __tmp45514 _methods41180_ _$methods41184_)))
                 (_methods-bind41201_
                  (let ((__tmp45516
                         (lambda (_g4119341196_ _g4119441198_)
                           (let ()
                             (declare (not safe))
                             (_generate-method-bind40196_
                              _$t41178_
                              _g4119341196_
                              _g4119441198_)))))
                    (declare (not safe))
                    (map __tmp45516 _methods41180_ _$methods41184_)))
                 (_slots41203_
                  (let () (declare (not safe)) (hash-keys _slot-refs40289_)))
                 (_$slots41207_
                  (let ((__tmp45517
                         (lambda (_id41205_)
                           (make-symbol
                            '"__"
                            (let ()
                              (declare (not safe))
                              (gensym _id41205_))))))
                    (declare (not safe))
                    (map __tmp45517 _slots41203_)))
                 (_g45519_
                  (let ((__tmp45518
                         (lambda (_g4120841211_ _g4120941213_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _slot-refs40289_
                              _g4120841211_
                              _g4120941213_)))))
                    (declare (not safe))
                    (for-each __tmp45518 _slots41203_ _$slots41207_)))
                 (_slots-bind41224_
                  (let ((__tmp45520
                         (lambda (_g4121641219_ _g4121741221_)
                           (let ()
                             (declare (not safe))
                             (_generate-slot-bind40197_
                              _$t41178_
                              _g4121641219_
                              _g4121741221_)))))
                    (declare (not safe))
                    (map __tmp45520 _slots41203_ _$slots41207_)))
                 (_class-check41226_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40290_)))
                 (_$class-check41229_
                  (let ((__tmp45521
                         (lambda (_g45522_)
                           (make-symbol
                            (let () (declare (not safe)) (gensym '__class))))))
                    (declare (not safe))
                    (map __tmp45521 _class-check41226_)))
                 (_g45524_
                  (let ((__tmp45523
                         (lambda (_g4123041233_ _g4123141235_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _class-type-check40290_
                              _g4123041233_
                              _g4123141235_)))))
                    (declare (not safe))
                    (for-each
                     __tmp45523
                     _class-check41226_
                     _$class-check41229_)))
                 (_class-check-bind41246_
                  (let ((__tmp45525
                         (lambda (_g4123841241_ _g4123941243_)
                           (let ()
                             (declare (not safe))
                             (_generate-class-check-bind40198_
                              _$t41178_
                              _g4123841241_
                              _g4123941243_)))))
                    (declare (not safe))
                    (map __tmp45525 _class-check41226_ _$class-check41229_)))
                 (_struct-check-all41248_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40291_
                     _struct-type-assert40292_)))
                 (_struct-check41250_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all41248_)))
                 (_$struct-check41253_
                  (let ((__tmp45526
                         (lambda (_g45527_)
                           (make-symbol
                            (let () (declare (not safe)) (gensym '__class))))))
                    (declare (not safe))
                    (map __tmp45526 _struct-check41250_)))
                 (_g45529_
                  (let ((__tmp45528
                         (lambda (_g4125441257_ _g4125541259_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _struct-check-all41248_
                              _g4125441257_
                              _g4125541259_)))))
                    (declare (not safe))
                    (for-each
                     __tmp45528
                     _struct-check41250_
                     _$struct-check41253_)))
                 (_struct-check-bind41270_
                  (let ((__tmp45530
                         (lambda (_g4126241265_ _g4126341267_)
                           (let ()
                             (declare (not safe))
                             (_generate-struct-check-bind40199_
                              _$t41178_
                              _g4126241265_
                              _g4126341267_)))))
                    (declare (not safe))
                    (map __tmp45530 _struct-check41250_ _$struct-check41253_)))
                 (_make-specializer-impl41377_
                  (lambda (_struct-type-check141272_ _struct-type-check241273_)
                    (let* ((_specializer-clauses41375_
                            (let ((__tmp45533
                                   (lambda (_clause41275_)
                                     (let* ((___stx4360043601_ _clause41275_)
                                            (_g4127841293_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx4360043601_)))))
                                       (let ((___kont4360243603_
                                              (lambda (_L41321_
                                                       _L41322_
                                                       _L41323_)
                                                (let* ((_body41363_
                                                        (let ((__tmp45534
                                                               (lambda (_g4135841360_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gxc#apply-subst-object-refs
                            _g4135841360_
                            _L41323_
                            _$t41178_
                            _method-calls40288_
                            _slot-refs40289_
                            _class-type-check40290_
                            _struct-type-check141272_
                            _struct-type-check241273_)))))
                  (declare (not safe))
                  (map __tmp45534 _L41321_)))
               (__tmp45535
                (let () (declare (not safe)) (cons _L41323_ _L41322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45535
                                                        _body41363_))))
                                             (___kont4360443605_
                                              (lambda () _clause41275_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx4360043601_))
                                             (let ((_e4128541305_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx4360043601_))))
                                               (let ((_tl4128341310_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4128541305_)))
                                                     (_hd4128441308_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4128541305_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd4128441308_))
                                                     (let ((_e4128841313_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd4128441308_))))
                                                       (let ((_tl4128641318_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4128841313_)))
                     (_hd4128741316_
                      (let () (declare (not safe)) (##car _e4128841313_))))
                 (___kont4360243603_
                  _tl4128341310_
                  _tl4128641318_
                  _hd4128741316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4360443605_))))
                                             (___kont4360443605_))))))
                                  (__tmp45531
                                   (let ((__tmp45532
                                          (lambda (_g4136741370_ _g4136841372_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4136741370_
                                                    _g4136841372_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp45532 '() _L41072_))))
                              (declare (not safe))
                              (map __tmp45533 __tmp45531)))
                           (__tmp45536
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses41375_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45536 _stx40194_))))
                 (_specializer-impl41379_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl41377_
                     _struct-check-all41248_
                     _empty40293_)))
                 (_unchecked-specializer-impl41381_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40296_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl41377_
                         _empty40293_
                         _struct-check-all41248_))
                      '#f))
                 (_specializer-impl41383_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40200_
                     _$t41178_
                     _methods-bind41201_
                     _slots-bind41224_
                     _class-check-bind41246_
                     _struct-check-bind41270_
                     _specializer-impl41379_
                     _lifted-specializer-id41176_
                     _unchecked-specializer-impl41381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp45538
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40269_)))
                                                          (__tmp45537
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id41169_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp45538
                                                       '" => "
                                                       __tmp45537))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40201_
                                                       _L40269_
                                                       _specializer-id41169_
                                                       _specializer-impl41383_
                                                       _lifted-specializer-id41176_
                                                       _unchecked-specializer-impl41381_)))))
                                            _clause4103041069_))))))
                           (let ()
                             (declare (not safe))
                             (_loop4102541053_ _target4102241048_ '())))
                         (let ()
                           (declare (not safe))
                           (_g4101641035_ _g4101741038_))))))
               (let () (declare (not safe)) (_g4101641035_ _g4101741038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4101641035_
                                                  _g4101741038_))))))
                                   (declare (not safe))
                                   (_g4101541386_ _L40268_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L40268_))
                                     (let* ((_g4138941419_
                                             (lambda (_g4139041416_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4139041416_))))
                                            (_g4138842107_
                                             (lambda (_g4139041422_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4139041422_))
                                                   (let ((_e4139641424_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4139041422_))))
                                                     (let ((_hd4139541427_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4139641424_)))
                                                           (_tl4139441429_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4139641424_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4139441429_))
                                                           (let ((_e4139941432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4139441429_))))
                     (let ((_hd4139841435_
                            (let ()
                              (declare (not safe))
                              (##car _e4139941432_)))
                           (_tl4139741437_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4139941432_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4139841435_))
                           (let ((_e4140241440_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4139841435_))))
                             (let ((_hd4140141443_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4140241440_)))
                                   (_tl4140041445_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4140241440_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4140141443_))
                                   (let ((_e4140541448_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4140141443_))))
                                     (let ((_hd4140441451_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4140541448_)))
                                           (_tl4140341453_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4140541448_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd4140441451_))
                                           (let ((_e4140841456_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd4140441451_))))
                                             (let ((_hd4140741459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4140841456_)))
                                                   (_tl4140641461_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4140841456_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4140641461_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl4140341453_))
                                                       (let ((_e4141141464_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl4140341453_))))
                 (let ((_hd4141041467_
                        (let () (declare (not safe)) (##car _e4141141464_)))
                       (_tl4140941469_
                        (let () (declare (not safe)) (##cdr _e4141141464_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4140941469_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4140041445_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4139741437_))
                               (let ((_e4141441472_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4139741437_))))
                                 (let ((_hd4141341475_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4141441472_)))
                                       (_tl4141241477_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4141441472_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4141241477_))
                                       ((lambda (_L41480_ _L41481_ _L41482_)
                                          (let* ((_g4150541523_
                                                  (lambda (_g4150641520_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4150641520_))))
                                                 (_g4150441574_
                                                  (lambda (_g4150641526_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4150641526_))
                                                        (let ((_e4151241528_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4150641526_))))
                  (let ((_hd4151141531_
                         (let () (declare (not safe)) (##car _e4151241528_)))
                        (_tl4151041533_
                         (let () (declare (not safe)) (##cdr _e4151241528_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl4151041533_))
                        (let ((_e4151541536_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl4151041533_))))
                          (let ((_hd4151441539_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4151541536_)))
                                (_tl4151341541_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4151541536_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd4151441539_))
                                (let ((_e4151841544_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd4151441539_))))
                                  (let ((_hd4151741547_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4151841544_)))
                                        (_tl4151641549_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4151841544_))))
                                    ((lambda (_L41552_ _L41553_ _L41554_)
                                       (let ((__tmp45455
                                              (lambda (_g4156941571_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g4156941571_
                                                   _L41554_
                                                   _method-calls40288_
                                                   _slot-refs40289_
                                                   _class-type-check40290_
                                                   _struct-type-check40291_
                                                   _struct-type-assert40292_)))))
                                         (declare (not safe))
                                         (for-each __tmp45455 _L41552_)))
                                     _tl4151341541_
                                     _tl4151641549_
                                     _hd4151741547_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4150541523_ _g4150641526_)))))
                        (let ()
                          (declare (not safe))
                          (_g4150541523_ _g4150641526_)))))
                (let () (declare (not safe)) (_g4150541523_ _g4150641526_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4150441574_ _L41481_))
                                          (let* ((_g4157741596_
                                                  (lambda (_g4157841593_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4157841593_))))
                                                 (_g4157641715_
                                                  (lambda (_g4157841599_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4157841599_))
                                                        (let ((_e4158241601_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4157841599_))))
                  (let ((_hd4158141604_
                         (let () (declare (not safe)) (##car _e4158241601_)))
                        (_tl4158041606_
                         (let () (declare (not safe)) (##cdr _e4158241601_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4158041606_))
                        (let ((_g45456_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl4158041606_ '0))))
                          (begin
                            (let ((_g45457_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g45456_)
                                         (##vector-length _g45456_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g45457_ 2)))
                                  (error "Context expects 2 values" _g45457_)))
                            (let ((_target4158341609_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g45456_ 0)))
                                  (_tl4158541611_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g45456_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4158541611_))
                                  (letrec ((_loop4158641614_
                                            (lambda (_hd4158441617_
                                                     _clause4159041619_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd4158441617_))
                                                  (let ((_e4158741622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd4158441617_))))
                                                    (let ((_lp-hd4158841625_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4158741622_)))
                                                          (_lp-tl4158941627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4158741622_))))
                                                      (let ((__tmp45462
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd4158841625_ _clause4159041619_))))
                (declare (not safe))
                (_loop4158641614_ _lp-tl4158941627_ __tmp45462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause4159141630_
                                                         (let ()
                                                           (declare (not safe))
                                                           (reverse _clause4159041619_))))
                                                    ((lambda (_L41633_)
                                                       (let ((__tmp45460
                                                              (lambda (_clause41646_)
                                                                (let* ((_g4164841663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g4164941660_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g4164941660_))))
                               (_g4164741705_
                                (lambda (_g4164941666_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g4164941666_))
                                      (let ((_e4165541668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g4164941666_))))
                                        (let ((_hd4165441671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4165541668_)))
                                              (_tl4165341673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4165541668_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd4165441671_))
                                              (let ((_e4165841676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd4165441671_))))
                                                (let ((_hd4165741679_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4165841676_)))
                                                      (_tl4165641681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4165841676_))))
                                                  ((lambda (_L41684_
                                                            _L41685_
                                                            _L41686_)
                                                     (let ((__tmp45461
                                                            (lambda (_g4170041702_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-collect-object-refs
                         _g4170041702_
                         _L41686_
                         _method-calls40288_
                         _slot-refs40289_
                         _class-type-check40290_
                         _struct-type-check40291_
                         _struct-type-assert40292_)))))
               (declare (not safe))
               (for-each __tmp45461 _L41684_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl4165341673_
                                                   _tl4165641681_
                                                   _hd4165741679_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4164841663_
                                                 _g4164941666_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4164841663_ _g4164941666_))))))
                          (declare (not safe))
                          (_g4164741705_ _clause41646_))))
                     (__tmp45458
                      (let ((__tmp45459
                             (lambda (_g4170741710_ _g4170841712_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g4170741710_ _g4170841712_)))))
                        (declare (not safe))
                        (foldr1 __tmp45459 '() _L41633_))))
                 (declare (not safe))
                 (for-each __tmp45460 __tmp45458)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause4159141630_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop4158641614_
                                       _target4158341609_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g4157741596_ _g4157841599_))))))
                        (let ()
                          (declare (not safe))
                          (_g4157741596_ _g4157841599_)))))
                (let () (declare (not safe)) (_g4157741596_ _g4157841599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4157641715_ _L41480_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?40295_))
                                              _stx40194_
                                              (let* ((_specializer-id41724_
                                                      (let* ((_id41718_
                                                              (make-symbol
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L40269_))
                       '"::specialize"))
                     (_specializer-id41721_
                      (let ((__tmp45463
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx40194_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id41718_ __tmp45463))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id41721_))
                _specializer-id41721_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id41731_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?40297_))
                                                          (let* ((_id41726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40269_))
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id41728_
                          (let ((__tmp45464
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40194_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id41726_ __tmp45464))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id41728_))
                    _lifted-specializer-id41728_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t41733_
                                                      (make-symbol
                                                       (let ()
                                                         (declare (not safe))
                                                         (gensym '__t))))
                                                     (_methods41735_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls40288_)))
                                                     (_$methods41739_
                                                      (let ((__tmp45465
                                                             (lambda (_id41737_)
                                                               (make-symbol
                                                                '"__"
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gensym _id41737_))))))
                (declare (not safe))
                (map __tmp45465 _methods41735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45467_
                                                      (let ((__tmp45466
                                                             (lambda (_g4174041743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4174141745_)
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _method-calls40288_
                          _g4174041743_
                          _g4174141745_)))))
                (declare (not safe))
                (for-each __tmp45466 _methods41735_ _$methods41739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_methods-bind41756_
                                                      (let ((__tmp45468
                                                             (lambda (_g4174841751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4174941753_)
                       (let ()
                         (declare (not safe))
                         (_generate-method-bind40196_
                          _$t41733_
                          _g4174841751_
                          _g4174941753_)))))
                (declare (not safe))
                (map __tmp45468 _methods41735_ _$methods41739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots41758_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs40289_)))
                                                     (_$slots41762_
                                                      (let ((__tmp45469
                                                             (lambda (_id41760_)
                                                               (make-symbol
                                                                '"__"
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gensym _id41760_))))))
                (declare (not safe))
                (map __tmp45469 _slots41758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45471_
                                                      (let ((__tmp45470
                                                             (lambda (_g4176341766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4176441768_)
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _slot-refs40289_
                          _g4176341766_
                          _g4176441768_)))))
                (declare (not safe))
                (for-each __tmp45470 _slots41758_ _$slots41762_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots-bind41779_
                                                      (let ((__tmp45472
                                                             (lambda (_g4177141774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4177241776_)
                       (let ()
                         (declare (not safe))
                         (_generate-slot-bind40197_
                          _$t41733_
                          _g4177141774_
                          _g4177241776_)))))
                (declare (not safe))
                (map __tmp45472 _slots41758_ _$slots41762_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check41781_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check40290_)))
                                                     (_$class-check41784_
                                                      (let ((__tmp45473
                                                             (lambda (_g45474_)
                                                               (make-symbol
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gensym '__class))))))
                (declare (not safe))
                (map __tmp45473 _class-check41781_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45476_
                                                      (let ((__tmp45475
                                                             (lambda (_g4178541788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4178641790_)
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _class-type-check40290_
                          _g4178541788_
                          _g4178641790_)))))
                (declare (not safe))
                (for-each __tmp45475 _class-check41781_ _$class-check41784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check-bind41801_
                                                      (let ((__tmp45477
                                                             (lambda (_g4179341796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4179441798_)
                       (let ()
                         (declare (not safe))
                         (_generate-class-check-bind40198_
                          _$t41733_
                          _g4179341796_
                          _g4179441798_)))))
                (declare (not safe))
                (map __tmp45477 _class-check41781_ _$class-check41784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all41803_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check40291_
                                                         _struct-type-assert40292_)))
                                                     (_struct-check41805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all41803_)))
                                                     (_$struct-check41808_
                                                      (let ((__tmp45478
                                                             (lambda (_g45479_)
                                                               (make-symbol
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gensym '__class))))))
                (declare (not safe))
                (map __tmp45478 _struct-check41805_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45481_
                                                      (let ((__tmp45480
                                                             (lambda (_g4180941812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4181041814_)
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _struct-check-all41803_
                          _g4180941812_
                          _g4181041814_)))))
                (declare (not safe))
                (for-each
                 __tmp45480
                 _struct-check41805_
                 _$struct-check41808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-bind41825_
                                                      (let ((__tmp45482
                                                             (lambda (_g4181741820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4181841822_)
                       (let ()
                         (declare (not safe))
                         (_generate-struct-check-bind40199_
                          _$t41733_
                          _g4181741820_
                          _g4181841822_)))))
                (declare (not safe))
                (map __tmp45482 _struct-check41805_ _$struct-check41808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr41924_
                                                      (lambda (_struct-type-check141827_
                                                               _struct-type-check241828_)
                                                        (let* ((_g4183041848_
                                                                (lambda (_g4183141845_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4183141845_))))
                       (_g4182941921_
                        (lambda (_g4183141851_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4183141851_))
                              (let ((_e4183741853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4183141851_))))
                                (let ((_hd4183641856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4183741853_)))
                                      (_tl4183541858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4183741853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4183541858_))
                                      (let ((_e4184041861_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4183541858_))))
                                        (let ((_hd4183941864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4184041861_)))
                                              (_tl4183841866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4184041861_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd4183941864_))
                                              (let ((_e4184341869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd4183941864_))))
                                                (let ((_hd4184241872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4184341869_)))
                                                      (_tl4184141874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4184341869_))))
                                                  ((lambda (_L41877_
                                                            _L41878_
                                                            _L41879_)
                                                     (let* ((_body41919_
                                                             (let ((__tmp45483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g4191441916_)
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g4191441916_
                                 _L41879_
                                 _$t41733_
                                 _method-calls40288_
                                 _slot-refs40289_
                                 _class-type-check40290_
                                 _struct-type-check141827_
                                 _struct-type-check241828_)))))
                       (declare (not safe))
                       (map __tmp45483 _L41877_)))
                    (__tmp45484
                     (let ((__tmp45485
                            (let ((__tmp45486
                                   (let ()
                                     (declare (not safe))
                                     (cons _L41879_ _L41878_))))
                              (declare (not safe))
                              (cons __tmp45486 _body41919_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp45485))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp45484 _L41481_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl4183841866_
                                                   _tl4184141874_
                                                   _hd4184241872_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4183041848_
                                                 _g4183141851_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4183041848_ _g4183141851_)))))
                              (let ()
                                (declare (not safe))
                                (_g4183041848_ _g4183141851_))))))
                  (declare (not safe))
                  (_g4182941921_ _L41481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr42085_
                                                      (lambda (_struct-type-check141926_
                                                               _struct-type-check241927_)
                                                        (let* ((_g4192941948_
                                                                (lambda (_g4193041945_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4193041945_))))
                       (_g4192842082_
                        (lambda (_g4193041951_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4193041951_))
                              (let ((_e4193441953_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4193041951_))))
                                (let ((_hd4193341956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4193441953_)))
                                      (_tl4193241958_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4193441953_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl4193241958_))
                                      (let ((_g45487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl4193241958_
                                                '0))))
                                        (begin
                                          (let ((_g45488_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45487_)
                                                       (##vector-length
                                                        _g45487_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45488_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45488_)))
                                          (let ((_target4193541961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45487_ 0)))
                                                (_tl4193741963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45487_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl4193741963_))
                                                (letrec ((_loop4193841966_
                                                          (lambda (_hd4193641969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause4194241971_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd4193641969_))
                        (let ((_e4193941974_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd4193641969_))))
                          (let ((_lp-hd4194041977_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4193941974_)))
                                (_lp-tl4194141979_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4193941974_))))
                            (let ((__tmp45495
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4194041977_
                                           _clause4194241971_))))
                              (declare (not safe))
                              (_loop4193841966_
                               _lp-tl4194141979_
                               __tmp45495))))
                        (let ((_clause4194341982_
                               (let ()
                                 (declare (not safe))
                                 (reverse _clause4194241971_))))
                          ((lambda (_L41985_)
                             (let* ((_clauses42080_
                                     (let ((__tmp45491
                                            (lambda (_clause42000_)
                                              (let* ((___stx4362043621_
                                                      _clause42000_)
                                                     (_g4200342018_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           ___stx4362043621_)))))
                                                (let ((___kont4362243623_
                                                       (lambda (_L42046_
                                                                _L42047_
                                                                _L42048_)
                                                         (let* ((_body42068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45492
                                (lambda (_g4206342065_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-subst-object-refs
                                     _g4206342065_
                                     _L42048_
                                     _$t41733_
                                     _method-calls40288_
                                     _slot-refs40289_
                                     _class-type-check40290_
                                     _struct-type-check141926_
                                     _struct-type-check241927_)))))
                           (declare (not safe))
                           (map __tmp45492 _L42046_)))
                        (__tmp45493
                         (let ()
                           (declare (not safe))
                           (cons _L42048_ _L42047_))))
                   (declare (not safe))
                   (cons __tmp45493 _body42068_))))
              (___kont4362443625_ (lambda () _clause42000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx4362043621_))
                                                      (let ((_e4201042030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx4362043621_))))
                (let ((_tl4200842035_
                       (let () (declare (not safe)) (##cdr _e4201042030_)))
                      (_hd4200942033_
                       (let () (declare (not safe)) (##car _e4201042030_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd4200942033_))
                      (let ((_e4201342038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd4200942033_))))
                        (let ((_tl4201142043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4201342038_)))
                              (_hd4201242041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4201342038_))))
                          (___kont4362243623_
                           _tl4200842035_
                           _tl4201142043_
                           _hd4201242041_)))
                      (___kont4362443625_))))
              (___kont4362443625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp45489
                                            (let ((__tmp45490
                                                   (lambda (_g4207242075_
                                                            _g4207342077_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g4207242075_
                                                             _g4207342077_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp45490
                                                      '()
                                                      _L41985_))))
                                       (declare (not safe))
                                       (map __tmp45491 __tmp45489)))
                                    (__tmp45494
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses42080_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp45494 _L41480_)))
                           _clause4194341982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop4193841966_
                                                     _target4193541961_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4192941948_
                                                   _g4193041951_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4192941948_ _g4193041951_)))))
                              (let ()
                                (declare (not safe))
                                (_g4192941948_ _g4193041951_))))))
                  (declare (not safe))
                  (_g4192842082_ _L41480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl42090_
                                                      (lambda (_specializer-lambda-expr42087_
                                                               _specializer-case-lambda-expr42088_)
                                                        (let ((__tmp45496
                                                               (let ((__tmp45497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45499
                                     (let ((__tmp45500
                                            (let ((__tmp45502
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L41482_ '())))
                                                  (__tmp45501
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr42087_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp45502 __tmp45501))))
                                       (declare (not safe))
                                       (cons __tmp45500 '())))
                                    (__tmp45498
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr42088_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp45499 __tmp45498))))
                         (declare (not safe))
                         (cons '%#let-values __tmp45497))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp45496 _stx40194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr42092_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr41924_
                                                         _struct-check-all41803_
                                                         _empty40293_)))
                                                     (_specializer-case-lambda-expr42094_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr42085_
                                                         _struct-check-all41803_
                                                         _empty40293_)))
                                                     (_specializer-impl42096_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl42090_
                                                         _specializer-lambda-expr42092_
                                                         _specializer-case-lambda-expr42094_)))
                                                     (_unchecked-specializer-lambda-expr42098_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40296_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr41924_
                                                             _empty40293_
                                                             _struct-check-all41803_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr42100_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40296_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr42085_
                                                             _empty40293_
                                                             _struct-check-all41803_))
                                                          '#f))
                                                     (_unchecked-specializer-impl42102_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40296_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl42090_
                                                             _unchecked-specializer-lambda-expr42098_
                                                             _unchecked-specializer-case-lambda-expr42100_))
                                                          '#f))
                                                     (_specializer-impl42104_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl40200_
                                                         _$t41733_
                                                         _methods-bind41756_
                                                         _slots-bind41779_
                                                         _class-check-bind41801_
                                                         _struct-check-bind41825_
                                                         _specializer-impl42096_
                                                         _lifted-specializer-id41731_
                                                         _unchecked-specializer-impl42102_))))
                                                (let ((__tmp45504
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L40269_)))
                                                      (__tmp45503
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id41724_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp45504
                                                   '" => "
                                                   __tmp45503))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def40201_
                                                   _L40269_
                                                   _specializer-id41724_
                                                   _specializer-impl42104_
                                                   _lifted-specializer-id41731_
                                                   _unchecked-specializer-impl42102_)))))
                                        _hd4141341475_
                                        _hd4141041467_
                                        _hd4140741459_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4138941419_ _g4139041422_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4138941419_ _g4139041422_)))
                           (let ()
                             (declare (not safe))
                             (_g4138941419_ _g4139041422_)))
                       (let ()
                         (declare (not safe))
                         (_g4138941419_ _g4139041422_)))))
               (let () (declare (not safe)) (_g4138941419_ _g4139041422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4138941419_
                                                      _g4139041422_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4138941419_ _g4139041422_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4138941419_ _g4139041422_)))))
                           (let ()
                             (declare (not safe))
                             (_g4138941419_ _g4139041422_)))))
                   (let ()
                     (declare (not safe))
                     (_g4138941419_ _g4139041422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4138941419_
                                                      _g4139041422_))))))
                                       (declare (not safe))
                                       (_g4138842107_ _L40268_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L40268_))
                                         (let* ((_g4211042163_
                                                 (lambda (_g4211142160_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4211142160_))))
                                                (_g4210943435_
                                                 (lambda (_g4211142166_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4211142166_))
                                                       (let ((_e4211942168_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4211142166_))))
                 (let ((_hd4211842171_
                        (let () (declare (not safe)) (##car _e4211942168_)))
                       (_tl4211742173_
                        (let () (declare (not safe)) (##cdr _e4211942168_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd4211842171_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd4211842171_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4211742173_))
                               (let ((_e4212242176_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4211742173_))))
                                 (let ((_hd4212142179_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4212242176_)))
                                       (_tl4212042181_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4212242176_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4212142179_))
                                       (let ((_e4212542184_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4212142179_))))
                                         (let ((_hd4212442187_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4212542184_)))
                                               (_tl4212342189_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4212542184_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4212442187_))
                                               (let ((_e4212842192_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4212442187_))))
                                                 (let ((_hd4212742195_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4212842192_)))
                                                       (_tl4212642197_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4212842192_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd4212742195_))
                                                       (let ((_e4213142200_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd4212742195_))))
                 (let ((_hd4213042203_
                        (let () (declare (not safe)) (##car _e4213142200_)))
                       (_tl4212942205_
                        (let () (declare (not safe)) (##cdr _e4213142200_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4212942205_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl4212642197_))
                           (let ((_e4213442208_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl4212642197_))))
                             (let ((_hd4213342211_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4213442208_)))
                                   (_tl4213242213_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4213442208_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4213342211_))
                                   (let ((_e4213742216_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4213342211_))))
                                     (let ((_hd4213642219_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4213742216_)))
                                           (_tl4213542221_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4213742216_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd4213642219_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd4213642219_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl4213542221_))
                                                   (let ((_e4214042224_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl4213542221_))))
                                                     (let ((_hd4213942227_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4214042224_)))
                                                           (_tl4213842229_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4214042224_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd4213942227_))
                                                           (let ((_e4214342232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd4213942227_))))
                     (let ((_hd4214242235_
                            (let ()
                              (declare (not safe))
                              (##car _e4214342232_)))
                           (_tl4214142237_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4214342232_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4214242235_))
                           (let ((_e4214642240_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4214242235_))))
                             (let ((_hd4214542243_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4214642240_)))
                                   (_tl4214442245_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4214642240_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4214542243_))
                                   (let ((_e4214942248_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4214542243_))))
                                     (let ((_hd4214842251_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4214942248_)))
                                           (_tl4214742253_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4214942248_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4214742253_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _tl4214442245_))
                                               (let ((_e4215242256_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl4214442245_))))
                                                 (let ((_hd4215142259_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4215242256_)))
                                                       (_tl4215042261_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4215242256_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4215042261_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl4214142237_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl4213842229_))
                       (let ((_e4215542264_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4213842229_))))
                         (let ((_hd4215442267_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4215542264_)))
                               (_tl4215342269_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4215542264_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4215342269_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl4213242213_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4212342189_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl4212042181_))
                                           (let ((_e4215842272_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl4212042181_))))
                                             (let ((_hd4215742275_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4215842272_)))
                                                   (_tl4215642277_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4215842272_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4215642277_))
                                                   ((lambda (_L42280_
                                                             _L42281_
                                                             _L42282_
                                                             _L42283_
                                                             _L42284_)
                                                      (let* ((_g4232342385_
                                                              (lambda (_g4232442382_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g4232442382_))))
                     (_g4232243432_
                      (lambda (_g4232442388_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g4232442388_))
                            (let ((_e4233242390_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g4232442388_))))
                              (let ((_hd4233142393_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4233242390_)))
                                    (_tl4233042395_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4233242390_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd4233142393_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd4233142393_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl4233042395_))
                                            (let ((_e4233542398_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl4233042395_))))
                                              (let ((_hd4233442401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4233542398_)))
                                                    (_tl4233342403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4233542398_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4233342403_))
                                                    (let ((_e4233842406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4233342403_))))
                                                      (let ((_hd4233742409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4233842406_)))
                    (_tl4233642411_
                     (let () (declare (not safe)) (##cdr _e4233842406_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4233742409_))
                    (let ((_e4234142414_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4233742409_))))
                      (let ((_hd4234042417_
                             (let ()
                               (declare (not safe))
                               (##car _e4234142414_)))
                            (_tl4233942419_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4234142414_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd4234042417_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd4234042417_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl4233942419_))
                                    (let ((_e4234442422_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl4233942419_))))
                                      (let ((_hd4234342425_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4234442422_)))
                                            (_tl4234242427_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4234442422_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd4234342425_))
                                            (let ((_e4234742430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd4234342425_))))
                                              (let ((_hd4234642433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4234742430_)))
                                                    (_tl4234542435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4234742430_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd4234642433_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd4234642433_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl4234542435_))
                                                            (let ((_e4235042438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl4234542435_))))
                      (let ((_hd4234942441_
                             (let ()
                               (declare (not safe))
                               (##car _e4235042438_)))
                            (_tl4234842443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4235042438_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4234842443_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl4234242427_))
                                (let ((_e4235342446_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl4234242427_))))
                                  (let ((_hd4235242449_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4235342446_)))
                                        (_tl4235142451_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4235342446_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4235242449_))
                                        (let ((_e4235642454_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4235242449_))))
                                          (let ((_hd4235542457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4235642454_)))
                                                (_tl4235442459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4235642454_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd4235542457_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd4235542457_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl4235442459_))
                                                        (let ((_e4235942462_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl4235442459_))))
                  (let ((_hd4235842465_
                         (let () (declare (not safe)) (##car _e4235942462_)))
                        (_tl4235742467_
                         (let () (declare (not safe)) (##cdr _e4235942462_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl4235742467_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4235142451_))
                            (let ((_e4236242470_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4235142451_))))
                              (let ((_hd4236142473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4236242470_)))
                                    (_tl4236042475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4236242470_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4236142473_))
                                    (let ((_e4236542478_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4236142473_))))
                                      (let ((_hd4236442481_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4236542478_)))
                                            (_tl4236342483_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4236542478_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd4236442481_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd4236442481_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4236342483_))
                                                    (let ((_e4236842486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4236342483_))))
                                                      (let ((_hd4236742489_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4236842486_)))
                    (_tl4236642491_
                     (let () (declare (not safe)) (##cdr _e4236842486_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl4236642491_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4236042475_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl4236042475_))
                                  '1)
                            (let ((_g45347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4236042475_
                                      '1))))
                              (begin
                                (let ((_g45348_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g45347_)
                                             (##vector-length _g45347_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g45348_ 2)))
                                      (error "Context expects 2 values"
                                             _g45348_)))
                                (let ((_target4236942494_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45347_ 0)))
                                      (_tl4237142496_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45347_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4237142496_))
                                      (let ((_e4238042499_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4237142496_))))
                                        (let ((_hd4237942502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4238042499_)))
                                              (_tl4237842504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4238042499_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl4237842504_))
                                              (letrec ((_loop4237242507_
                                                        (lambda (_hd4237042510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref4237642512_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd4237042510_))
                      (let ((_e4237342515_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd4237042510_))))
                        (let ((_lp-hd4237442518_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4237342515_)))
                              (_lp-tl4237542520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4237342515_))))
                          (let ((__tmp45454
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4237442518_
                                         _kw-ref4237642512_))))
                            (declare (not safe))
                            (_loop4237242507_ _lp-tl4237542520_ __tmp45454))))
                      (let ((_kw-ref4237742523_
                             (let ()
                               (declare (not safe))
                               (reverse _kw-ref4237642512_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4233642411_))
                            ((lambda (_L42526_
                                      _L42527_
                                      _L42528_
                                      _L42529_
                                      _L42530_)
                               (let* ((_kw-count42581_
                                       (length (let ((__tmp45349
                                                      (lambda (_g4257342576_
                                                               _g4257442578_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4257342576_
                                                                _g4257442578_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp45349
                                                         '()
                                                         _L42527_))))
                                      (_self-index42583_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count42581_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L42282_))
                                     (let* ((_g4258642600_
                                             (lambda (_g4258742597_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4258742597_))))
                                            (_g4258542771_
                                             (lambda (_g4258742603_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4258742603_))
                                                   (let ((_e4259242605_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4258742603_))))
                                                     (let ((_hd4259142608_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4259242605_)))
                                                           (_tl4259042610_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4259242605_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4259042610_))
                                                           (let ((_e4259542613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4259042610_))))
                     (let ((_hd4259442616_
                            (let ()
                              (declare (not safe))
                              (##car _e4259542613_)))
                           (_tl4259342618_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4259542613_))))
                       ((lambda (_L42621_ _L42622_)
                          (let ((_self42638_
                                 (let ()
                                   (declare (not safe))
                                   (list-ref _L42622_ _self-index42583_))))
                            (let ((__tmp45413
                                   (lambda (_g4263942641_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-collect-object-refs
                                        _g4263942641_
                                        _self42638_
                                        _method-calls40288_
                                        _slot-refs40289_
                                        _class-type-check40290_
                                        _struct-type-check40291_
                                        _struct-type-assert40292_)))))
                              (declare (not safe))
                              (for-each __tmp45413 _L42621_))
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?40295_))
                                _stx40194_
                                (let* ((_specializer-id42650_
                                        (let* ((_id42644_
                                                (make-symbol
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _L40269_))
                                                 '"::specialize"))
                                               (_specializer-id42647_
                                                (let ((__tmp45414
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx40194_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id42644_
                                                   __tmp45414))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id42647_))
                                          _specializer-id42647_))
                                       (_lifted-specializer-id42657_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?40297_))
                                            (let* ((_id42652_
                                                    (make-symbol
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40269_))
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id42654_
                                                    (let ((__tmp45415
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx40194_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id42652_
                                                       __tmp45415))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id42654_))
                                              _lifted-specializer-id42654_)
                                            '#f))
                                       (_$t42659_
                                        (make-symbol
                                         (let ()
                                           (declare (not safe))
                                           (gensym '__t))))
                                       (_methods42661_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls40288_)))
                                       (_$methods42665_
                                        (let ((__tmp45416
                                               (lambda (_id42663_)
                                                 (make-symbol
                                                  '"__"
                                                  (let ()
                                                    (declare (not safe))
                                                    (gensym _id42663_))))))
                                          (declare (not safe))
                                          (map __tmp45416 _methods42661_)))
                                       (_g45418_
                                        (let ((__tmp45417
                                               (lambda (_g4266642669_
                                                        _g4266742671_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _method-calls40288_
                                                    _g4266642669_
                                                    _g4266742671_)))))
                                          (declare (not safe))
                                          (for-each
                                           __tmp45417
                                           _methods42661_
                                           _$methods42665_)))
                                       (_methods-bind42682_
                                        (let ((__tmp45419
                                               (lambda (_g4267442677_
                                                        _g4267542679_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_generate-method-bind40196_
                                                    _$t42659_
                                                    _g4267442677_
                                                    _g4267542679_)))))
                                          (declare (not safe))
                                          (map __tmp45419
                                               _methods42661_
                                               _$methods42665_)))
                                       (_slots42684_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs40289_)))
                                       (_$slots42688_
                                        (let ((__tmp45420
                                               (lambda (_id42686_)
                                                 (make-symbol
                                                  '"__"
                                                  (let ()
                                                    (declare (not safe))
                                                    (gensym _id42686_))))))
                                          (declare (not safe))
                                          (map __tmp45420 _slots42684_)))
                                       (_g45422_
                                        (let ((__tmp45421
                                               (lambda (_g4268942692_
                                                        _g4269042694_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _slot-refs40289_
                                                    _g4268942692_
                                                    _g4269042694_)))))
                                          (declare (not safe))
                                          (for-each
                                           __tmp45421
                                           _slots42684_
                                           _$slots42688_)))
                                       (_slots-bind42705_
                                        (let ((__tmp45423
                                               (lambda (_g4269742700_
                                                        _g4269842702_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_generate-slot-bind40197_
                                                    _$t42659_
                                                    _g4269742700_
                                                    _g4269842702_)))))
                                          (declare (not safe))
                                          (map __tmp45423
                                               _slots42684_
                                               _$slots42688_)))
                                       (_class-check42707_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _class-type-check40290_)))
                                       (_$class-check42710_
                                        (let ((__tmp45424
                                               (lambda (_g45425_)
                                                 (make-symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gensym '__class))))))
                                          (declare (not safe))
                                          (map __tmp45424 _class-check42707_)))
                                       (_g45427_
                                        (let ((__tmp45426
                                               (lambda (_g4271142714_
                                                        _g4271242716_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _class-type-check40290_
                                                    _g4271142714_
                                                    _g4271242716_)))))
                                          (declare (not safe))
                                          (for-each
                                           __tmp45426
                                           _class-check42707_
                                           _$class-check42710_)))
                                       (_class-check-bind42727_
                                        (let ((__tmp45428
                                               (lambda (_g4271942722_
                                                        _g4272042724_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_generate-class-check-bind40198_
                                                    _$t42659_
                                                    _g4271942722_
                                                    _g4272042724_)))))
                                          (declare (not safe))
                                          (map __tmp45428
                                               _class-check42707_
                                               _$class-check42710_)))
                                       (_struct-check-all42729_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check40291_
                                           _struct-type-assert40292_)))
                                       (_struct-check42731_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _struct-check-all42729_)))
                                       (_$struct-check42734_
                                        (let ((__tmp45429
                                               (lambda (_g45430_)
                                                 (make-symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gensym '__class))))))
                                          (declare (not safe))
                                          (map __tmp45429
                                               _struct-check42731_)))
                                       (_g45432_
                                        (let ((__tmp45431
                                               (lambda (_g4273542738_
                                                        _g4273642740_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _struct-check-all42729_
                                                    _g4273542738_
                                                    _g4273642740_)))))
                                          (declare (not safe))
                                          (for-each
                                           __tmp45431
                                           _struct-check42731_
                                           _$struct-check42734_)))
                                       (_struct-check-bind42751_
                                        (let ((__tmp45433
                                               (lambda (_g4274342746_
                                                        _g4274442748_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_generate-struct-check-bind40199_
                                                    _$t42659_
                                                    _g4274342746_
                                                    _g4274442748_)))))
                                          (declare (not safe))
                                          (map __tmp45433
                                               _struct-check42731_
                                               _$struct-check42734_)))
                                       (_make-specializer-impl42762_
                                        (lambda (_struct-type-check142753_
                                                 _struct-type-check242754_)
                                          (let* ((_specializer-body42760_
                                                  (let ((__tmp45434
                                                         (lambda (_g4275542757_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g4275542757_
                                                              _self42638_
                                                              _$t42659_
                                                              _method-calls40288_
                                                              _slot-refs40289_
                                                              _class-type-check40290_
                                                              _struct-type-check142753_
                                                              _struct-type-check242754_)))))
                                                    (declare (not safe))
                                                    (map __tmp45434 _L42621_)))
                                                 (__tmp45435
                                                  (let ((__tmp45436
                                                         (let ((__tmp45438
                                                                (let ((__tmp45439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45451
                                      (let ()
                                        (declare (not safe))
                                        (cons _L42284_ '())))
                                     (__tmp45440
                                      (let ((__tmp45441
                                             (let ((__tmp45442
                                                    (let ((__tmp45444
                                                           (let ((__tmp45445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45450
                                 (let ()
                                   (declare (not safe))
                                   (cons _L42283_ '())))
                                (__tmp45446
                                 (let ((__tmp45447
                                        (let ((__tmp45448
                                               (let ((__tmp45449
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L42622_
                                                              _specializer-body42760_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda __tmp45449))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp45448
                                           _L42282_))))
                                   (declare (not safe))
                                   (cons __tmp45447 '()))))
                            (declare (not safe))
                            (cons __tmp45450 __tmp45446))))
                     (declare (not safe))
                     (cons __tmp45445 '())))
                  (__tmp45443
                   (let () (declare (not safe)) (cons _L42281_ '()))))
              (declare (not safe))
              (cons __tmp45444 __tmp45443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp45442))))
                                        (declare (not safe))
                                        (cons __tmp45441 '()))))
                                 (declare (not safe))
                                 (cons __tmp45451 __tmp45440))))
                          (declare (not safe))
                          (cons __tmp45439 '())))
                       (__tmp45437
                        (let () (declare (not safe)) (cons _L42280_ '()))))
                   (declare (not safe))
                   (cons __tmp45438 __tmp45437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp45436))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp45435
                                             _stx40194_))))
                                       (_specializer-impl42764_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl42762_
                                           _struct-check-all42729_
                                           _empty40293_)))
                                       (_unchecked-specializer-impl42766_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?40296_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl42762_
                                               _empty40293_
                                               _struct-check-all42729_))
                                            '#f))
                                       (_specializer-impl42768_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl40200_
                                           _$t42659_
                                           _methods-bind42682_
                                           _slots-bind42705_
                                           _class-check-bind42727_
                                           _struct-check-bind42751_
                                           _specializer-impl42764_
                                           _lifted-specializer-id42657_
                                           _unchecked-specializer-impl42766_))))
                                  (let ((__tmp45453
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L40269_)))
                                        (__tmp45452
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id42650_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp45453
                                     '" => "
                                     __tmp45452))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def40201_
                                     _L40269_
                                     _specializer-id42650_
                                     _specializer-impl42768_
                                     _lifted-specializer-id42657_
                                     _unchecked-specializer-impl42766_))))))
                        _tl4259342618_
                        _hd4259442616_)))
                   (let ()
                     (declare (not safe))
                     (_g4258642600_ _g4258742603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4258642600_
                                                      _g4258742603_))))))
                                       (declare (not safe))
                                       (_g4258542771_ _L42282_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L42282_))
                                         (let* ((_g4277442804_
                                                 (lambda (_g4277542801_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4277542801_))))
                                                (_g4277343429_
                                                 (lambda (_g4277542807_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4277542807_))
                                                       (let ((_e4278142809_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4277542807_))))
                 (let ((_hd4278042812_
                        (let () (declare (not safe)) (##car _e4278142809_)))
                       (_tl4277942814_
                        (let () (declare (not safe)) (##cdr _e4278142809_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl4277942814_))
                       (let ((_e4278442817_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4277942814_))))
                         (let ((_hd4278342820_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4278442817_)))
                               (_tl4278242822_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4278442817_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd4278342820_))
                               (let ((_e4278742825_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd4278342820_))))
                                 (let ((_hd4278642828_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4278742825_)))
                                       (_tl4278542830_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4278742825_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4278642828_))
                                       (let ((_e4279042833_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4278642828_))))
                                         (let ((_hd4278942836_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4279042833_)))
                                               (_tl4278842838_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4279042833_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4278942836_))
                                               (let ((_e4279342841_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4278942836_))))
                                                 (let ((_hd4279242844_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4279342841_)))
                                                       (_tl4279142846_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4279342841_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4279142846_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4278842838_))
                                                           (let ((_e4279642849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4278842838_))))
                     (let ((_hd4279542852_
                            (let ()
                              (declare (not safe))
                              (##car _e4279642849_)))
                           (_tl4279442854_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4279642849_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4279442854_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4278542830_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl4278242822_))
                                   (let ((_e4279942857_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl4278242822_))))
                                     (let ((_hd4279842860_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4279942857_)))
                                           (_tl4279742862_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4279942857_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4279742862_))
                                           ((lambda (_L42865_
                                                     _L42866_
                                                     _L42867_)
                                              (let* ((_g4289042904_
                                                      (lambda (_g4289142901_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4289142901_))))
                                                     (_g4288942945_
                                                      (lambda (_g4289142907_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4289142907_))
                                                            (let ((_e4289642909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4289142907_))))
                      (let ((_hd4289542912_
                             (let ()
                               (declare (not safe))
                               (##car _e4289642909_)))
                            (_tl4289442914_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4289642909_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4289442914_))
                            (let ((_e4289942917_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4289442914_))))
                              (let ((_hd4289842920_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4289942917_)))
                                    (_tl4289742922_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4289942917_))))
                                ((lambda (_L42925_ _L42926_)
                                   (let* ((_self42939_
                                           (let ()
                                             (declare (not safe))
                                             (list-ref
                                              _L42926_
                                              _self-index42583_)))
                                          (__tmp45350
                                           (lambda (_g4294042942_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs
                                                _g4294042942_
                                                _self42939_
                                                _method-calls40288_
                                                _slot-refs40289_
                                                _class-type-check40290_
                                                _struct-type-check40291_
                                                _struct-type-assert40292_)))))
                                     (declare (not safe))
                                     (for-each __tmp45350 _L42925_)))
                                 _tl4289742922_
                                 _hd4289842920_)))
                            (let ()
                              (declare (not safe))
                              (_g4289042904_ _g4289142907_)))))
                    (let ()
                      (declare (not safe))
                      (_g4289042904_ _g4289142907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4288942945_ _L42866_))
                                              (let* ((_g4294842967_
                                                      (lambda (_g4294942964_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4294942964_))))
                                                     (_g4294743072_
                                                      (lambda (_g4294942970_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4294942970_))
                                                            (let ((_e4295342972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4294942970_))))
                      (let ((_hd4295242975_
                             (let ()
                               (declare (not safe))
                               (##car _e4295342972_)))
                            (_tl4295142977_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4295342972_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl4295142977_))
                            (let ((_g45351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4295142977_
                                      '0))))
                              (begin
                                (let ((_g45352_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g45351_)
                                             (##vector-length _g45351_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g45352_ 2)))
                                      (error "Context expects 2 values"
                                             _g45352_)))
                                (let ((_target4295442980_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45351_ 0)))
                                      (_tl4295642982_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45351_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4295642982_))
                                      (letrec ((_loop4295742985_
                                                (lambda (_hd4295542988_
                                                         _clause4296142990_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd4295542988_))
                                                      (let ((_e4295842993_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd4295542988_))))
                (let ((_lp-hd4295942996_
                       (let () (declare (not safe)) (##car _e4295842993_)))
                      (_lp-tl4296042998_
                       (let () (declare (not safe)) (##cdr _e4295842993_))))
                  (let ((__tmp45357
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd4295942996_ _clause4296142990_))))
                    (declare (not safe))
                    (_loop4295742985_ _lp-tl4296042998_ __tmp45357))))
              (let ((_clause4296243001_
                     (let ()
                       (declare (not safe))
                       (reverse _clause4296142990_))))
                ((lambda (_L43004_)
                   (let ((__tmp45355
                          (lambda (_clause43017_)
                            (let* ((_g4301943030_
                                    (lambda (_g4302043027_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g4302043027_))))
                                   (_g4301843062_
                                    (lambda (_g4302043033_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _g4302043033_))
                                          (let ((_e4302543035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _g4302043033_))))
                                            (let ((_hd4302443038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4302543035_)))
                                                  (_tl4302343040_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4302543035_))))
                                              ((lambda (_L43043_ _L43044_)
                                                 (let* ((_self43056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (list-ref
                                                            _L43044_
                                                            _self-index42583_)))
                                                        (__tmp45356
                                                         (lambda (_g4305743059_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-collect-object-refs
                                                              _g4305743059_
                                                              _self43056_
                                                              _method-calls40288_
                                                              _slot-refs40289_
                                                              _class-type-check40290_
                                                              _struct-type-check40291_
                                                              _struct-type-assert40292_)))))
                                                   (declare (not safe))
                                                   (for-each
                                                    __tmp45356
                                                    _L43043_)))
                                               _tl4302343040_
                                               _hd4302443038_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4301943030_ _g4302043033_))))))
                              (declare (not safe))
                              (_g4301843062_ _clause43017_))))
                         (__tmp45353
                          (let ((__tmp45354
                                 (lambda (_g4306443067_ _g4306543069_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4306443067_ _g4306543069_)))))
                            (declare (not safe))
                            (foldr1 __tmp45354 '() _L43004_))))
                     (declare (not safe))
                     (for-each __tmp45355 __tmp45353)))
                 _clause4296243001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop4295742985_
                                           _target4295442980_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g4294842967_ _g4294942970_))))))
                            (let ()
                              (declare (not safe))
                              (_g4294842967_ _g4294942970_)))))
                    (let ()
                      (declare (not safe))
                      (_g4294842967_ _g4294942970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4294743072_ _L42865_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40295_))
                                                  _stx40194_
                                                  (let* ((_specializer-id43081_
                                                          (let* ((_id43075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40269_))
                           '"::specialize"))
                         (_specializer-id43078_
                          (let ((__tmp45358
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40194_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id43075_ __tmp45358))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id43078_))
                    _specializer-id43078_))
                 (_lifted-specializer-id43088_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40297_))
                      (let* ((_id43083_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40269_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id43085_
                              (let ((__tmp45359
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40194_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id43083_
                                 __tmp45359))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id43085_))
                        _lifted-specializer-id43085_)
                      '#f))
                 (_$t43090_
                  (make-symbol (let () (declare (not safe)) (gensym '__t))))
                 (_methods43092_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40288_)))
                 (_$methods43096_
                  (let ((__tmp45360
                         (lambda (_id43094_)
                           (make-symbol
                            '"__"
                            (let ()
                              (declare (not safe))
                              (gensym _id43094_))))))
                    (declare (not safe))
                    (map __tmp45360 _methods43092_)))
                 (_g45362_
                  (let ((__tmp45361
                         (lambda (_g4309743100_ _g4309843102_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _method-calls40288_
                              _g4309743100_
                              _g4309843102_)))))
                    (declare (not safe))
                    (for-each __tmp45361 _methods43092_ _$methods43096_)))
                 (_methods-bind43113_
                  (let ((__tmp45363
                         (lambda (_g4310543108_ _g4310643110_)
                           (let ()
                             (declare (not safe))
                             (_generate-method-bind40196_
                              _$t43090_
                              _g4310543108_
                              _g4310643110_)))))
                    (declare (not safe))
                    (map __tmp45363 _methods43092_ _$methods43096_)))
                 (_slots43115_
                  (let () (declare (not safe)) (hash-keys _slot-refs40289_)))
                 (_$slots43119_
                  (let ((__tmp45364
                         (lambda (_id43117_)
                           (make-symbol
                            '"__"
                            (let ()
                              (declare (not safe))
                              (gensym _id43117_))))))
                    (declare (not safe))
                    (map __tmp45364 _slots43115_)))
                 (_g45366_
                  (let ((__tmp45365
                         (lambda (_g4312043123_ _g4312143125_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _slot-refs40289_
                              _g4312043123_
                              _g4312143125_)))))
                    (declare (not safe))
                    (for-each __tmp45365 _slots43115_ _$slots43119_)))
                 (_slots-bind43136_
                  (let ((__tmp45367
                         (lambda (_g4312843131_ _g4312943133_)
                           (let ()
                             (declare (not safe))
                             (_generate-slot-bind40197_
                              _$t43090_
                              _g4312843131_
                              _g4312943133_)))))
                    (declare (not safe))
                    (map __tmp45367 _slots43115_ _$slots43119_)))
                 (_class-check43138_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40290_)))
                 (_$class-check43141_
                  (let ((__tmp45368
                         (lambda (_g45369_)
                           (make-symbol
                            (let () (declare (not safe)) (gensym '__class))))))
                    (declare (not safe))
                    (map __tmp45368 _class-check43138_)))
                 (_g45371_
                  (let ((__tmp45370
                         (lambda (_g4314243145_ _g4314343147_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _class-type-check40290_
                              _g4314243145_
                              _g4314343147_)))))
                    (declare (not safe))
                    (for-each
                     __tmp45370
                     _class-check43138_
                     _$class-check43141_)))
                 (_class-check-bind43158_
                  (let ((__tmp45372
                         (lambda (_g4315043153_ _g4315143155_)
                           (let ()
                             (declare (not safe))
                             (_generate-class-check-bind40198_
                              _$t43090_
                              _g4315043153_
                              _g4315143155_)))))
                    (declare (not safe))
                    (map __tmp45372 _class-check43138_ _$class-check43141_)))
                 (_struct-check-all43160_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40291_
                     _struct-type-assert40292_)))
                 (_struct-check43162_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all43160_)))
                 (_$struct-check43165_
                  (let ((__tmp45373
                         (lambda (_g45374_)
                           (make-symbol
                            (let () (declare (not safe)) (gensym '__class))))))
                    (declare (not safe))
                    (map __tmp45373 _struct-check43162_)))
                 (_g45376_
                  (let ((__tmp45375
                         (lambda (_g4316643169_ _g4316743171_)
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _struct-check-all43160_
                              _g4316643169_
                              _g4316743171_)))))
                    (declare (not safe))
                    (for-each
                     __tmp45375
                     _struct-check43162_
                     _$struct-check43165_)))
                 (_struct-check-bind43182_
                  (let ((__tmp45377
                         (lambda (_g4317443177_ _g4317543179_)
                           (let ()
                             (declare (not safe))
                             (_generate-struct-check-bind40199_
                              _$t43090_
                              _g4317443177_
                              _g4317543179_)))))
                    (declare (not safe))
                    (map __tmp45377 _struct-check43162_ _$struct-check43165_)))
                 (_make-specializer-lambda-expr43268_
                  (lambda (_struct-type-check143184_ _struct-type-check243185_)
                    (let* ((_g4318743201_
                            (lambda (_g4318843198_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4318843198_))))
                           (_g4318643265_
                            (lambda (_g4318843204_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4318843204_))
                                  (let ((_e4319343206_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4318843204_))))
                                    (let ((_hd4319243209_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4319343206_)))
                                          (_tl4319143211_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4319343206_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4319143211_))
                                          (let ((_e4319643214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4319143211_))))
                                            (let ((_hd4319543217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4319643214_)))
                                                  (_tl4319443219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4319643214_))))
                                              ((lambda (_L43222_ _L43223_)
                                                 (let* ((_self43256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (list-ref
                                                            _L43223_
                                                            _self-index42583_)))
                                                        (_body43262_
                                                         (let ((__tmp45378
                                                                (lambda (_g4325743259_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g4325743259_
                             _self43256_
                             _$t43090_
                             _method-calls40288_
                             _slot-refs40289_
                             _class-type-check40290_
                             _struct-type-check143184_
                             _struct-type-check243185_)))))
                   (declare (not safe))
                   (map __tmp45378 _L43222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp45379
                                                          (let ((__tmp45380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L43223_ _body43262_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp45380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp45379
                                                      _L42866_))))
                                               _tl4319443219_
                                               _hd4319543217_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4318743201_ _g4318843204_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4318743201_ _g4318843204_))))))
                      (declare (not safe))
                      (_g4318643265_ _L42866_))))
                 (_make-specializer-case-lambda-expr43407_
                  (lambda (_struct-type-check143270_ _struct-type-check243271_)
                    (let* ((_g4327343292_
                            (lambda (_g4327443289_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4327443289_))))
                           (_g4327243404_
                            (lambda (_g4327443295_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4327443295_))
                                  (let ((_e4327843297_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4327443295_))))
                                    (let ((_hd4327743300_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4327843297_)))
                                          (_tl4327643302_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4327843297_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl4327643302_))
                                          (let ((_g45381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl4327643302_
                                                    '0))))
                                            (begin
                                              (let ((_g45382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g45381_)
                                                           (##vector-length
                                                            _g45381_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g45382_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g45382_)))
                                              (let ((_target4327943305_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g45381_
                                                        0)))
                                                    (_tl4328143307_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g45381_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl4328143307_))
                                                    (letrec ((_loop4328243310_
                                                              (lambda (_hd4328043313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4328643315_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd4328043313_))
                            (let ((_e4328343318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd4328043313_))))
                              (let ((_lp-hd4328443321_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4328343318_)))
                                    (_lp-tl4328543323_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4328343318_))))
                                (let ((__tmp45388
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd4328443321_
                                               _clause4328643315_))))
                                  (declare (not safe))
                                  (_loop4328243310_
                                   _lp-tl4328543323_
                                   __tmp45388))))
                            (let ((_clause4328743326_
                                   (let ()
                                     (declare (not safe))
                                     (reverse _clause4328643315_))))
                              ((lambda (_L43329_)
                                 (let* ((_clauses43402_
                                         (let ((__tmp45385
                                                (lambda (_clause43344_)
                                                  (let* ((_g4334643357_
                                                          (lambda (_g4334743354_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g4334743354_))))
                                                         (_g4334543392_
                                                          (lambda (_g4334743360_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _g4334743360_))
                        (let ((_e4335243362_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g4334743360_))))
                          (let ((_hd4335143365_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4335243362_)))
                                (_tl4335043367_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4335243362_))))
                            ((lambda (_L43370_ _L43371_)
                               (let* ((_self43383_
                                       (let ()
                                         (declare (not safe))
                                         (list-ref
                                          _L43371_
                                          _self-index42583_)))
                                      (_body43389_
                                       (let ((__tmp45386
                                              (lambda (_g4338443386_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-subst-object-refs
                                                   _g4338443386_
                                                   _self43383_
                                                   _$t43090_
                                                   _method-calls40288_
                                                   _slot-refs40289_
                                                   _class-type-check40290_
                                                   _struct-type-check143270_
                                                   _struct-type-check243271_)))))
                                         (declare (not safe))
                                         (map __tmp45386 _L43370_))))
                                 (let ()
                                   (declare (not safe))
                                   (cons _L43371_ _body43389_))))
                             _tl4335043367_
                             _hd4335143365_)))
                        (let ()
                          (declare (not safe))
                          (_g4334643357_ _g4334743360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g4334543392_
                                                     _clause43344_))))
                                               (__tmp45383
                                                (let ((__tmp45384
                                                       (lambda (_g4339443397_
                                                                _g4339543399_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g4339443397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g4339543399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp45384
                                                          '()
                                                          _L43329_))))
                                           (declare (not safe))
                                           (map __tmp45385 __tmp45383)))
                                        (__tmp45387
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses43402_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp45387
                                    _L42865_)))
                               _clause4328743326_))))))
              (let ()
                (declare (not safe))
                (_loop4328243310_ _target4327943305_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4327343292_
                                                       _g4327443295_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4327343292_ _g4327443295_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4327343292_ _g4327443295_))))))
                      (declare (not safe))
                      (_g4327243404_ _L42865_))))
                 (_make-specializer-impl43412_
                  (lambda (_specializer-lambda-expr43409_
                           _specializer-case-lambda-expr43410_)
                    (let ((__tmp45389
                           (let ((__tmp45390
                                  (let ((__tmp45392
                                         (let ((__tmp45393
                                                (let ((__tmp45410
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L42284_ '())))
                                                      (__tmp45394
                                                       (let ((__tmp45395
                                                              (let ((__tmp45396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45398
                                    (let ((__tmp45399
                                           (let ((__tmp45409
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L42283_ '())))
                                                 (__tmp45400
                                                  (let ((__tmp45401
                                                         (let ((__tmp45402
                                                                (let ((__tmp45403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45405
                                      (let ((__tmp45406
                                             (let ((__tmp45408
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L42867_ '())))
                                                   (__tmp45407
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr43409_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp45408 __tmp45407))))
                                        (declare (not safe))
                                        (cons __tmp45406 '())))
                                     (__tmp45404
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr43410_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp45405 __tmp45404))))
                          (declare (not safe))
                          (cons '%#let-values __tmp45403))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp45402 _stx40194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45401 '()))))
                                             (declare (not safe))
                                             (cons __tmp45409 __tmp45400))))
                                      (declare (not safe))
                                      (cons __tmp45399 '())))
                                   (__tmp45397
                                    (let ()
                                      (declare (not safe))
                                      (cons _L42281_ '()))))
                               (declare (not safe))
                               (cons __tmp45398 __tmp45397))))
                        (declare (not safe))
                        (cons '%#let-values __tmp45396))))
                 (declare (not safe))
                 (cons __tmp45395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45410
                                                        __tmp45394))))
                                           (declare (not safe))
                                           (cons __tmp45393 '())))
                                        (__tmp45391
                                         (let ()
                                           (declare (not safe))
                                           (cons _L42280_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45392 __tmp45391))))
                             (declare (not safe))
                             (cons '%#let-values __tmp45390))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45389 _stx40194_))))
                 (_specializer-lambda-expr43414_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr43268_
                     _struct-check-all43160_
                     _empty40293_)))
                 (_specializer-case-lambda-expr43416_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr43407_
                     _struct-check-all43160_
                     _empty40293_)))
                 (_specializer-impl43418_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl43412_
                     _specializer-lambda-expr43414_
                     _specializer-case-lambda-expr43416_)))
                 (_unchecked-specializer-lambda-expr43420_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40296_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr43268_
                         _empty40293_
                         _struct-check-all43160_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr43422_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40296_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr43407_
                         _empty40293_
                         _struct-check-all43160_))
                      '#f))
                 (_unchecked-specializer-impl43424_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40296_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl43412_
                         _unchecked-specializer-lambda-expr43420_
                         _unchecked-specializer-case-lambda-expr43422_))
                      '#f))
                 (_specializer-impl43426_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40200_
                     _$t43090_
                     _methods-bind43113_
                     _slots-bind43136_
                     _class-check-bind43158_
                     _struct-check-bind43182_
                     _specializer-impl43418_
                     _lifted-specializer-id43088_
                     _unchecked-specializer-impl43424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp45412
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40269_)))
                                                          (__tmp45411
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id43081_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp45412
                                                       '" => "
                                                       __tmp45411))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40201_
                                                       _L40269_
                                                       _specializer-id43081_
                                                       _specializer-impl43426_
                                                       _lifted-specializer-id43088_
                                                       _unchecked-specializer-impl43424_)))))
                                            _hd4279842860_
                                            _hd4279542852_
                                            _hd4279242844_)
                                           (let ()
                                             (declare (not safe))
                                             (_g4277442804_ _g4277542807_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4277442804_ _g4277542807_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4277442804_ _g4277542807_)))
                           (let ()
                             (declare (not safe))
                             (_g4277442804_ _g4277542807_)))))
                   (let () (declare (not safe)) (_g4277442804_ _g4277542807_)))
               (let () (declare (not safe)) (_g4277442804_ _g4277542807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4277442804_
                                                  _g4277542807_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4277442804_ _g4277542807_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4277442804_ _g4277542807_)))))
                       (let ()
                         (declare (not safe))
                         (_g4277442804_ _g4277542807_)))))
               (let () (declare (not safe)) (_g4277442804_ _g4277542807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4277343429_ _L42282_))
                                         _stx40194_))))
                             _hd4237942502_
                             _kw-ref4237742523_
                             _hd4236742489_
                             _hd4235842465_
                             _hd4234942441_)
                            (let ()
                              (declare (not safe))
                              (_g4232342385_ _g4232442388_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop4237242507_
                                                   _target4236942494_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g4232342385_
                                                 _g4232442388_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4232342385_ _g4232442388_))))))
                            (let ()
                              (declare (not safe))
                              (_g4232342385_ _g4232442388_)))
                        (let ()
                          (declare (not safe))
                          (_g4232342385_ _g4232442388_)))
                    (let ()
                      (declare (not safe))
                      (_g4232342385_ _g4232442388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4232342385_
                                                       _g4232442388_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4232342385_
                                                   _g4232442388_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4232342385_ _g4232442388_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4232342385_ _g4232442388_)))))
                            (let ()
                              (declare (not safe))
                              (_g4232342385_ _g4232442388_)))
                        (let ()
                          (declare (not safe))
                          (_g4232342385_ _g4232442388_)))))
                (let () (declare (not safe)) (_g4232342385_ _g4232442388_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4232342385_
                                                       _g4232442388_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4232342385_
                                                   _g4232442388_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4232342385_ _g4232442388_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4232342385_ _g4232442388_)))
                            (let ()
                              (declare (not safe))
                              (_g4232342385_ _g4232442388_)))))
                    (let ()
                      (declare (not safe))
                      (_g4232342385_ _g4232442388_)))
                (let () (declare (not safe)) (_g4232342385_ _g4232442388_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4232342385_
                                                       _g4232442388_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4232342385_ _g4232442388_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4232342385_ _g4232442388_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4232342385_ _g4232442388_)))
                            (let ()
                              (declare (not safe))
                              (_g4232342385_ _g4232442388_)))))
                    (let ()
                      (declare (not safe))
                      (_g4232342385_ _g4232442388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4232342385_
                                                       _g4232442388_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4232342385_ _g4232442388_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4232342385_ _g4232442388_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4232342385_ _g4232442388_)))))
                            (let ()
                              (declare (not safe))
                              (_g4232342385_ _g4232442388_))))))
                (declare (not safe))
                (_g4232243432_ _L42281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd4215742275_
                                                    _hd4215442267_
                                                    _hd4215142259_
                                                    _hd4214842251_
                                                    _hd4213042203_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4211042163_
                                                      _g4211142166_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4211042163_ _g4211142166_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g4211042163_ _g4211142166_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g4211042163_ _g4211142166_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4211042163_ _g4211142166_)))))
                       (let ()
                         (declare (not safe))
                         (_g4211042163_ _g4211142166_)))
                   (let () (declare (not safe)) (_g4211042163_ _g4211142166_)))
               (let () (declare (not safe)) (_g4211042163_ _g4211142166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4211042163_
                                                  _g4211142166_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4211042163_ _g4211142166_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4211042163_ _g4211142166_)))))
                           (let ()
                             (declare (not safe))
                             (_g4211042163_ _g4211142166_)))))
                   (let ()
                     (declare (not safe))
                     (_g4211042163_ _g4211142166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4211042163_
                                                      _g4211142166_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4211042163_
                                                  _g4211142166_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4211042163_ _g4211142166_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4211042163_ _g4211142166_)))))
                           (let ()
                             (declare (not safe))
                             (_g4211042163_ _g4211142166_)))
                       (let ()
                         (declare (not safe))
                         (_g4211042163_ _g4211142166_)))))
               (let () (declare (not safe)) (_g4211042163_ _g4211142166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4211042163_
                                                  _g4211142166_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4211042163_ _g4211142166_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4211042163_ _g4211142166_)))
                           (let ()
                             (declare (not safe))
                             (_g4211042163_ _g4211142166_)))
                       (let ()
                         (declare (not safe))
                         (_g4211042163_ _g4211142166_)))))
               (let () (declare (not safe)) (_g4211042163_ _g4211142166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4210943435_ _L40268_))
                                         _stx40194_))))))))
                  (___kont4364443645_ (lambda () _stx40194_)))
              (let ((___match4367343674_
                     (lambda (_e4021040236_
                              _hd4020940239_
                              _tl4020840241_
                              _e4021340244_
                              _hd4021240247_
                              _tl4021140249_
                              _e4021640252_
                              _hd4021540255_
                              _tl4021440257_
                              _e4021940260_
                              _hd4021840263_
                              _tl4021740265_)
                       (let ((_L40268_ _hd4021840263_)
                             (_L40269_ _hd4021540255_))
                         (if (let ((__tmp45567
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L40269_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp45567))
                             (___kont4364243643_ _L40268_ _L40269_)
                             (___kont4364443645_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4364043641_))
                    (let ((_e4021040236_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4364043641_))))
                      (let ((_tl4020840241_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4021040236_)))
                            (_hd4020940239_
                             (let ()
                               (declare (not safe))
                               (##car _e4021040236_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4020840241_))
                            (let ((_e4021340244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4020840241_))))
                              (let ((_tl4021140249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4021340244_)))
                                    (_hd4021240247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4021340244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4021240247_))
                                    (let ((_e4021640252_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4021240247_))))
                                      (let ((_tl4021440257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4021640252_)))
                                            (_hd4021540255_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4021640252_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl4021440257_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl4021140249_))
                                                (let ((_e4021940260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl4021140249_))))
                                                  (let ((_tl4021740265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4021940260_)))
                                                        (_hd4021840263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4021940260_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl4021740265_))
                                                        (___match4367343674_
                                                         _e4021040236_
                                                         _hd4020940239_
                                                         _tl4020840241_
                                                         _e4021340244_
                                                         _hd4021240247_
                                                         _tl4021140249_
                                                         _e4021640252_
                                                         _hd4021540255_
                                                         _tl4021440257_
                                                         _e4021940260_
                                                         _hd4021840263_
                                                         _tl4021740265_)
                                                        (___kont4364443645_))))
                                                (___kont4364443645_))
                                            (___kont4364443645_))))
                                    (___kont4364443645_))))
                            (___kont4364443645_))))
                    (___kont4364443645_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx38696_
               _self38697_
               _methods38698_
               _slots38699_
               _class-check38700_
               _struct-check38701_
               _struct-assert38702_)
        (let* ((___stx4367643677_ _stx38696_)
               (_g3871439032_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4367643677_)))))
          (let ((___kont4367843679_
                 (lambda (_L40143_ _L40144_ _L40145_ _L40146_)
                   (let ((__tmp45568
                          (let () (declare (not safe)) (gx#stx-e _L40144_))))
                     (declare (not safe))
                     (table-set! _methods38698_ __tmp45568 '#t))
                   (let ((__tmp45571
                          (lambda (_g4017940181_)
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e
                               _g4017940181_
                               _self38697_
                               _methods38698_
                               _slots38699_
                               _class-check38700_
                               _struct-check38701_
                               _struct-assert38702_))))
                         (__tmp45569
                          (let ((__tmp45570
                                 (lambda (_g4018340186_ _g4018440188_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4018340186_ _g4018440188_)))))
                            (declare (not safe))
                            (foldr1 __tmp45570 '() _L40143_))))
                     (declare (not safe))
                     (for-each __tmp45571 __tmp45569))))
                (___kont4368243683_
                 (lambda (_L39978_ _L39979_ _L39980_ _L39981_ _L39982_)
                   (let ((__tmp45572
                          (let () (declare (not safe)) (gx#stx-e _L39979_))))
                     (declare (not safe))
                     (table-set! _methods38698_ __tmp45572 '#t))
                   (let ((__tmp45575
                          (lambda (_g4002240024_)
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e
                               _g4002240024_
                               _self38697_
                               _methods38698_
                               _slots38699_
                               _class-check38700_
                               _struct-check38701_
                               _struct-assert38702_))))
                         (__tmp45573
                          (let ((__tmp45574
                                 (lambda (_g4002640029_ _g4002740031_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4002640029_ _g4002740031_)))))
                            (declare (not safe))
                            (foldr1 __tmp45574 '() _L39978_))))
                     (declare (not safe))
                     (for-each __tmp45575 __tmp45573))))
                (___kont4368643687_
                 (lambda (_L39811_ _L39812_ _L39813_)
                   (let ((__tmp45576
                          (let () (declare (not safe)) (gx#stx-e _L39811_))))
                     (declare (not safe))
                     (table-set! _slots38699_ __tmp45576 '#t))))
                (___kont4368843689_
                 (lambda (_L39688_ _L39689_ _L39690_ _L39691_)
                   (let ((__tmp45577
                          (let () (declare (not safe)) (gx#stx-e _L39689_))))
                     (declare (not safe))
                     (table-set! _slots38699_ __tmp45577 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L39688_
                      _self38697_
                      _methods38698_
                      _slots38699_
                      _class-check38700_
                      _struct-check38701_
                      _struct-assert38702_))))
                (___kont4369043691_
                 (lambda (_L39572_ _L39573_)
                   (let ((__tmp45578
                          (##structure-ref
                           (let ((__tmp45579
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39573_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp45579))
                           '2
                           gxc#!class-getf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots38699_ __tmp45578 '#t))))
                (___kont4369243693_
                 (lambda (_L39484_ _L39485_ _L39486_)
                   (let ((__tmp45580
                          (##structure-ref
                           (let ((__tmp45581
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39486_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp45581))
                           '2
                           gxc#!class-setf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots38699_ __tmp45580 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L39484_
                      _self38697_
                      _methods38698_
                      _slots38699_
                      _class-check38700_
                      _struct-check38701_
                      _struct-assert38702_))))
                (___kont4369443695_
                 (lambda (_L39392_ _L39393_)
                   (let ((__tmp45582
                          (##structure-ref
                           (let ((__tmp45583
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39393_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp45583))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _class-check38700_ __tmp45582 '#t))))
                (___kont4369643697_
                 (lambda (_L39308_ _L39309_)
                   (let ((__tmp45584
                          (##structure-ref
                           (let ((__tmp45585
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39309_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp45585))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _struct-check38701_ __tmp45584 '#t))))
                (___kont4369843699_
                 (lambda (_L39211_ _L39212_)
                   (let ((_getf39245_
                          (let ((__tmp45586
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39212_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp45586))))
                     (if (##structure-ref
                          _getf39245_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (let ((__tmp45587
                                (##structure-ref
                                 _getf39245_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set!
                            _struct-assert38702_
                            __tmp45587
                            '#t))))))
                (___kont4370043701_
                 (lambda (_L39108_ _L39109_ _L39110_)
                   (let ((_setf39148_
                          (let ((__tmp45588
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39110_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp45588))))
                     (if (##structure-ref
                          _setf39148_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (let ((__tmp45589
                                (##structure-ref
                                 _setf39148_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set! _struct-assert38702_ __tmp45589 '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e
                        _L39108_
                        _self38697_
                        _methods38698_
                        _slots38699_
                        _class-check38700_
                        _struct-check38701_
                        _struct-assert38702_)))))
                (___kont4370243703_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx38696_
                      _self38697_
                      _methods38698_
                      _slots38699_
                      _class-check38700_
                      _struct-check38701_
                      _struct-assert38702_)))))
            (let* ((___match4441344414_
                    (lambda (_e3900639044_
                             _hd3900539047_
                             _tl3900439049_
                             _e3900939052_
                             _hd3900839055_
                             _tl3900739057_
                             _e3901239060_
                             _hd3901139063_
                             _tl3901039065_
                             _e3901539068_
                             _hd3901439071_
                             _tl3901339073_
                             _e3901839076_
                             _hd3901739079_
                             _tl3901639081_
                             _e3902139084_
                             _hd3902039087_
                             _tl3901939089_
                             _e3902439092_
                             _hd3902339095_
                             _tl3902239097_
                             _e3902739100_
                             _hd3902639103_
                             _tl3902539105_)
                      (let ((_L39108_ _hd3902639103_)
                            (_L39109_ _hd3902339095_)
                            (_L39110_ _hd3901439071_))
                        (if (if (let ((__tmp45592
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39109_
                                          _self38697_))))
                                  (declare (not safe))
                                  (not __tmp45592))
                                '#f
                                (let ((_$e39137_
                                       (let ((__tmp45590
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39110_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp45590))))
                                  (and _$e39137_
                                       ((lambda (_t39140_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39140_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t3914139143_
                                                      (let ((__tmp45591
                                                             (##structure-ref
                                                              _t39140_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp45591))))
                                                 (and _struct-t3914139143_
                                                      (let ((_struct-t39146_
                                                             _struct-t3914139143_))
                                                        (##structure-ref
                                                         _struct-t39146_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39137_))))
                            (___kont4370043701_ _L39108_ _L39109_ _L39110_)
                            (___kont4370243703_)))))
                   (___match4440544406_
                    (lambda (_e3900639044_
                             _hd3900539047_
                             _tl3900439049_
                             _e3900939052_
                             _hd3900839055_
                             _tl3900739057_
                             _e3901239060_
                             _hd3901139063_
                             _tl3901039065_
                             _e3901539068_
                             _hd3901439071_
                             _tl3901339073_
                             _e3901839076_
                             _hd3901739079_
                             _tl3901639081_
                             _e3902139084_
                             _hd3902039087_
                             _tl3901939089_
                             _e3902439092_
                             _hd3902339095_
                             _tl3902239097_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3901639081_))
                          (let ((_e3902739100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3901639081_))))
                            (let ((_tl3902539105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3902739100_)))
                                  (_hd3902639103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3902739100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3902539105_))
                                  (___match4441344414_
                                   _e3900639044_
                                   _hd3900539047_
                                   _tl3900439049_
                                   _e3900939052_
                                   _hd3900839055_
                                   _tl3900739057_
                                   _e3901239060_
                                   _hd3901139063_
                                   _tl3901039065_
                                   _e3901539068_
                                   _hd3901439071_
                                   _tl3901339073_
                                   _e3901839076_
                                   _hd3901739079_
                                   _tl3901639081_
                                   _e3902139084_
                                   _hd3902039087_
                                   _tl3901939089_
                                   _e3902439092_
                                   _hd3902339095_
                                   _tl3902239097_
                                   _e3902739100_
                                   _hd3902639103_
                                   _tl3902539105_)
                                  (___kont4370243703_))))
                          (___kont4370243703_))))
                   (___match4435144352_
                    (lambda (_e3898239155_
                             _hd3898139158_
                             _tl3898039160_
                             _e3898539163_
                             _hd3898439166_
                             _tl3898339168_
                             _e3898839171_
                             _hd3898739174_
                             _tl3898639176_
                             _e3899139179_
                             _hd3899039182_
                             _tl3898939184_
                             _e3899439187_
                             _hd3899339190_
                             _tl3899239192_
                             _e3899739195_
                             _hd3899639198_
                             _tl3899539200_
                             _e3900039203_
                             _hd3899939206_
                             _tl3899839208_)
                      (let ((_L39211_ _hd3899939206_)
                            (_L39212_ _hd3899039182_))
                        (if (if (let ((__tmp45595
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39211_
                                          _self38697_))))
                                  (declare (not safe))
                                  (not __tmp45595))
                                '#f
                                (let ((_$e39234_
                                       (let ((__tmp45593
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39212_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp45593))))
                                  (and _$e39234_
                                       ((lambda (_t39237_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39237_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t3923839240_
                                                      (let ((__tmp45594
                                                             (##structure-ref
                                                              _t39237_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp45594))))
                                                 (and _struct-t3923839240_
                                                      (let ((_struct-t39243_
                                                             _struct-t3923839240_))
                                                        (##structure-ref
                                                         _struct-t39243_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39234_))))
                            (___kont4369843699_ _L39211_ _L39212_)
                            (___kont4370243703_)))))
                   (___match4429544296_
                    (lambda (_e3895939252_
                             _hd3895839255_
                             _tl3895739257_
                             _e3896239260_
                             _hd3896139263_
                             _tl3896039265_
                             _e3896539268_
                             _hd3896439271_
                             _tl3896339273_
                             _e3896839276_
                             _hd3896739279_
                             _tl3896639281_
                             _e3897139284_
                             _hd3897039287_
                             _tl3896939289_
                             _e3897439292_
                             _hd3897339295_
                             _tl3897239297_
                             _e3897739300_
                             _hd3897639303_
                             _tl3897539305_)
                      (let ((_L39308_ _hd3897639303_)
                            (_L39309_ _hd3896739279_))
                        (if (and (let ((__tmp45596
                                        (let ((__tmp45597
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39309_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp45597))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp45596
                                    'gxc#!struct-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39308_
                                    _self38697_)))
                            (___kont4369643697_ _L39308_ _L39309_)
                            (___match4435144352_
                             _e3895939252_
                             _hd3895839255_
                             _tl3895739257_
                             _e3896239260_
                             _hd3896139263_
                             _tl3896039265_
                             _e3896539268_
                             _hd3896439271_
                             _tl3896339273_
                             _e3896839276_
                             _hd3896739279_
                             _tl3896639281_
                             _e3897139284_
                             _hd3897039287_
                             _tl3896939289_
                             _e3897439292_
                             _hd3897339295_
                             _tl3897239297_
                             _e3897739300_
                             _hd3897639303_
                             _tl3897539305_)))))
                   (___match4423944240_
                    (lambda (_e3893639336_
                             _hd3893539339_
                             _tl3893439341_
                             _e3893939344_
                             _hd3893839347_
                             _tl3893739349_
                             _e3894239352_
                             _hd3894139355_
                             _tl3894039357_
                             _e3894539360_
                             _hd3894439363_
                             _tl3894339365_
                             _e3894839368_
                             _hd3894739371_
                             _tl3894639373_
                             _e3895139376_
                             _hd3895039379_
                             _tl3894939381_
                             _e3895439384_
                             _hd3895339387_
                             _tl3895239389_)
                      (let ((_L39392_ _hd3895339387_)
                            (_L39393_ _hd3894439363_))
                        (if (and (let ((__tmp45598
                                        (let ((__tmp45599
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39393_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp45599))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp45598
                                    'gxc#!class-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39392_
                                    _self38697_)))
                            (___kont4369443695_ _L39392_ _L39393_)
                            (___match4429544296_
                             _e3893639336_
                             _hd3893539339_
                             _tl3893439341_
                             _e3893939344_
                             _hd3893839347_
                             _tl3893739349_
                             _e3894239352_
                             _hd3894139355_
                             _tl3894039357_
                             _e3894539360_
                             _hd3894439363_
                             _tl3894339365_
                             _e3894839368_
                             _hd3894739371_
                             _tl3894639373_
                             _e3895139376_
                             _hd3895039379_
                             _tl3894939381_
                             _e3895439384_
                             _hd3895339387_
                             _tl3895239389_)))))
                   (___match4423744238_
                    (lambda (_e3893639336_
                             _hd3893539339_
                             _tl3893439341_
                             _e3893939344_
                             _hd3893839347_
                             _tl3893739349_
                             _e3894239352_
                             _hd3894139355_
                             _tl3894039357_
                             _e3894539360_
                             _hd3894439363_
                             _tl3894339365_
                             _e3894839368_
                             _hd3894739371_
                             _tl3894639373_
                             _e3895139376_
                             _hd3895039379_
                             _tl3894939381_
                             _e3895439384_
                             _hd3895339387_
                             _tl3895239389_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3894639373_))
                          (___match4423944240_
                           _e3893639336_
                           _hd3893539339_
                           _tl3893439341_
                           _e3893939344_
                           _hd3893839347_
                           _tl3893739349_
                           _e3894239352_
                           _hd3894139355_
                           _tl3894039357_
                           _e3894539360_
                           _hd3894439363_
                           _tl3894339365_
                           _e3894839368_
                           _hd3894739371_
                           _tl3894639373_
                           _e3895139376_
                           _hd3895039379_
                           _tl3894939381_
                           _e3895439384_
                           _hd3895339387_
                           _tl3895239389_)
                          (___match4440544406_
                           _e3893639336_
                           _hd3893539339_
                           _tl3893439341_
                           _e3893939344_
                           _hd3893839347_
                           _tl3893739349_
                           _e3894239352_
                           _hd3894139355_
                           _tl3894039357_
                           _e3894539360_
                           _hd3894439363_
                           _tl3894339365_
                           _e3894839368_
                           _hd3894739371_
                           _tl3894639373_
                           _e3895139376_
                           _hd3895039379_
                           _tl3894939381_
                           _e3895439384_
                           _hd3895339387_
                           _tl3895239389_))))
                   (___match4418344184_
                    (lambda (_e3891039420_
                             _hd3890939423_
                             _tl3890839425_
                             _e3891339428_
                             _hd3891239431_
                             _tl3891139433_
                             _e3891639436_
                             _hd3891539439_
                             _tl3891439441_
                             _e3891939444_
                             _hd3891839447_
                             _tl3891739449_
                             _e3892239452_
                             _hd3892139455_
                             _tl3892039457_
                             _e3892539460_
                             _hd3892439463_
                             _tl3892339465_
                             _e3892839468_
                             _hd3892739471_
                             _tl3892639473_
                             _e3893139476_
                             _hd3893039479_
                             _tl3892939481_)
                      (let ((_L39484_ _hd3893039479_)
                            (_L39485_ _hd3892739471_)
                            (_L39486_ _hd3891839447_))
                        (if (and (let ((__tmp45600
                                        (let ((__tmp45601
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39486_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp45601))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp45600
                                    'gxc#!class-setf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39485_
                                    _self38697_)))
                            (___kont4369243693_ _L39484_ _L39485_ _L39486_)
                            (___match4441344414_
                             _e3891039420_
                             _hd3890939423_
                             _tl3890839425_
                             _e3891339428_
                             _hd3891239431_
                             _tl3891139433_
                             _e3891639436_
                             _hd3891539439_
                             _tl3891439441_
                             _e3891939444_
                             _hd3891839447_
                             _tl3891739449_
                             _e3892239452_
                             _hd3892139455_
                             _tl3892039457_
                             _e3892539460_
                             _hd3892439463_
                             _tl3892339465_
                             _e3892839468_
                             _hd3892739471_
                             _tl3892639473_
                             _e3893139476_
                             _hd3893039479_
                             _tl3892939481_)))))
                   (___match4418144182_
                    (lambda (_e3891039420_
                             _hd3890939423_
                             _tl3890839425_
                             _e3891339428_
                             _hd3891239431_
                             _tl3891139433_
                             _e3891639436_
                             _hd3891539439_
                             _tl3891439441_
                             _e3891939444_
                             _hd3891839447_
                             _tl3891739449_
                             _e3892239452_
                             _hd3892139455_
                             _tl3892039457_
                             _e3892539460_
                             _hd3892439463_
                             _tl3892339465_
                             _e3892839468_
                             _hd3892739471_
                             _tl3892639473_
                             _e3893139476_
                             _hd3893039479_
                             _tl3892939481_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3892939481_))
                          (___match4418344184_
                           _e3891039420_
                           _hd3890939423_
                           _tl3890839425_
                           _e3891339428_
                           _hd3891239431_
                           _tl3891139433_
                           _e3891639436_
                           _hd3891539439_
                           _tl3891439441_
                           _e3891939444_
                           _hd3891839447_
                           _tl3891739449_
                           _e3892239452_
                           _hd3892139455_
                           _tl3892039457_
                           _e3892539460_
                           _hd3892439463_
                           _tl3892339465_
                           _e3892839468_
                           _hd3892739471_
                           _tl3892639473_
                           _e3893139476_
                           _hd3893039479_
                           _tl3892939481_)
                          (___kont4370243703_))))
                   (___match4417544176_
                    (lambda (_e3891039420_
                             _hd3890939423_
                             _tl3890839425_
                             _e3891339428_
                             _hd3891239431_
                             _tl3891139433_
                             _e3891639436_
                             _hd3891539439_
                             _tl3891439441_
                             _e3891939444_
                             _hd3891839447_
                             _tl3891739449_
                             _e3892239452_
                             _hd3892139455_
                             _tl3892039457_
                             _e3892539460_
                             _hd3892439463_
                             _tl3892339465_
                             _e3892839468_
                             _hd3892739471_
                             _tl3892639473_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3892039457_))
                          (let ((_e3893139476_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3892039457_))))
                            (let ((_tl3892939481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3893139476_)))
                                  (_hd3893039479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3893139476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3892939481_))
                                  (___match4418344184_
                                   _e3891039420_
                                   _hd3890939423_
                                   _tl3890839425_
                                   _e3891339428_
                                   _hd3891239431_
                                   _tl3891139433_
                                   _e3891639436_
                                   _hd3891539439_
                                   _tl3891439441_
                                   _e3891939444_
                                   _hd3891839447_
                                   _tl3891739449_
                                   _e3892239452_
                                   _hd3892139455_
                                   _tl3892039457_
                                   _e3892539460_
                                   _hd3892439463_
                                   _tl3892339465_
                                   _e3892839468_
                                   _hd3892739471_
                                   _tl3892639473_
                                   _e3893139476_
                                   _hd3893039479_
                                   _tl3892939481_)
                                  (___kont4370243703_))))
                          (___match4423744238_
                           _e3891039420_
                           _hd3890939423_
                           _tl3890839425_
                           _e3891339428_
                           _hd3891239431_
                           _tl3891139433_
                           _e3891639436_
                           _hd3891539439_
                           _tl3891439441_
                           _e3891939444_
                           _hd3891839447_
                           _tl3891739449_
                           _e3892239452_
                           _hd3892139455_
                           _tl3892039457_
                           _e3892539460_
                           _hd3892439463_
                           _tl3892339465_
                           _e3892839468_
                           _hd3892739471_
                           _tl3892639473_))))
                   (___match4412144122_
                    (lambda (_e3888639516_
                             _hd3888539519_
                             _tl3888439521_
                             _e3888939524_
                             _hd3888839527_
                             _tl3888739529_
                             _e3889239532_
                             _hd3889139535_
                             _tl3889039537_
                             _e3889539540_
                             _hd3889439543_
                             _tl3889339545_
                             _e3889839548_
                             _hd3889739551_
                             _tl3889639553_
                             _e3890139556_
                             _hd3890039559_
                             _tl3889939561_
                             _e3890439564_
                             _hd3890339567_
                             _tl3890239569_)
                      (let ((_L39572_ _hd3890339567_)
                            (_L39573_ _hd3889439543_))
                        (if (and (let ((__tmp45602
                                        (let ((__tmp45603
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39573_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp45603))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp45602
                                    'gxc#!class-getf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39572_
                                    _self38697_)))
                            (___kont4369043691_ _L39572_ _L39573_)
                            (___match4423944240_
                             _e3888639516_
                             _hd3888539519_
                             _tl3888439521_
                             _e3888939524_
                             _hd3888839527_
                             _tl3888739529_
                             _e3889239532_
                             _hd3889139535_
                             _tl3889039537_
                             _e3889539540_
                             _hd3889439543_
                             _tl3889339545_
                             _e3889839548_
                             _hd3889739551_
                             _tl3889639553_
                             _e3890139556_
                             _hd3890039559_
                             _tl3889939561_
                             _e3890439564_
                             _hd3890339567_
                             _tl3890239569_)))))
                   (___match4411944120_
                    (lambda (_e3888639516_
                             _hd3888539519_
                             _tl3888439521_
                             _e3888939524_
                             _hd3888839527_
                             _tl3888739529_
                             _e3889239532_
                             _hd3889139535_
                             _tl3889039537_
                             _e3889539540_
                             _hd3889439543_
                             _tl3889339545_
                             _e3889839548_
                             _hd3889739551_
                             _tl3889639553_
                             _e3890139556_
                             _hd3890039559_
                             _tl3889939561_
                             _e3890439564_
                             _hd3890339567_
                             _tl3890239569_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3889639553_))
                          (___match4412144122_
                           _e3888639516_
                           _hd3888539519_
                           _tl3888439521_
                           _e3888939524_
                           _hd3888839527_
                           _tl3888739529_
                           _e3889239532_
                           _hd3889139535_
                           _tl3889039537_
                           _e3889539540_
                           _hd3889439543_
                           _tl3889339545_
                           _e3889839548_
                           _hd3889739551_
                           _tl3889639553_
                           _e3890139556_
                           _hd3890039559_
                           _tl3889939561_
                           _e3890439564_
                           _hd3890339567_
                           _tl3890239569_)
                          (___match4417544176_
                           _e3888639516_
                           _hd3888539519_
                           _tl3888439521_
                           _e3888939524_
                           _hd3888839527_
                           _tl3888739529_
                           _e3889239532_
                           _hd3889139535_
                           _tl3889039537_
                           _e3889539540_
                           _hd3889439543_
                           _tl3889339545_
                           _e3889839548_
                           _hd3889739551_
                           _tl3889639553_
                           _e3890139556_
                           _hd3890039559_
                           _tl3889939561_
                           _e3890439564_
                           _hd3890339567_
                           _tl3890239569_))))
                   (___match4406544066_
                    (lambda (_e3885139600_
                             _hd3885039603_
                             _tl3884939605_
                             _e3885439608_
                             _hd3885339611_
                             _tl3885239613_
                             _e3885739616_
                             _hd3885639619_
                             _tl3885539621_
                             _e3886039624_
                             _hd3885939627_
                             _tl3885839629_
                             _e3886339632_
                             _hd3886239635_
                             _tl3886139637_
                             _e3886639640_
                             _hd3886539643_
                             _tl3886439645_
                             _e3886939648_
                             _hd3886839651_
                             _tl3886739653_
                             _e3887239656_
                             _hd3887139659_
                             _tl3887039661_
                             _e3887539664_
                             _hd3887439667_
                             _tl3887339669_
                             _e3887839672_
                             _hd3887739675_
                             _tl3887639677_
                             _e3888139680_
                             _hd3888039683_
                             _tl3887939685_)
                      (let ((_L39688_ _hd3888039683_)
                            (_L39689_ _hd3887739675_)
                            (_L39690_ _hd3886839651_)
                            (_L39691_ _hd3885939627_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L39691_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L39691_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39690_
                                    _self38697_)))
                            (___kont4368843689_
                             _L39688_
                             _L39689_
                             _L39690_
                             _L39691_)
                            (___kont4370243703_)))))
                   (___match4405744058_
                    (lambda (_e3885139600_
                             _hd3885039603_
                             _tl3884939605_
                             _e3885439608_
                             _hd3885339611_
                             _tl3885239613_
                             _e3885739616_
                             _hd3885639619_
                             _tl3885539621_
                             _e3886039624_
                             _hd3885939627_
                             _tl3885839629_
                             _e3886339632_
                             _hd3886239635_
                             _tl3886139637_
                             _e3886639640_
                             _hd3886539643_
                             _tl3886439645_
                             _e3886939648_
                             _hd3886839651_
                             _tl3886739653_
                             _e3887239656_
                             _hd3887139659_
                             _tl3887039661_
                             _e3887539664_
                             _hd3887439667_
                             _tl3887339669_
                             _e3887839672_
                             _hd3887739675_
                             _tl3887639677_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3887039661_))
                          (let ((_e3888139680_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3887039661_))))
                            (let ((_tl3887939685_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3888139680_)))
                                  (_hd3888039683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3888139680_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3887939685_))
                                  (___match4406544066_
                                   _e3885139600_
                                   _hd3885039603_
                                   _tl3884939605_
                                   _e3885439608_
                                   _hd3885339611_
                                   _tl3885239613_
                                   _e3885739616_
                                   _hd3885639619_
                                   _tl3885539621_
                                   _e3886039624_
                                   _hd3885939627_
                                   _tl3885839629_
                                   _e3886339632_
                                   _hd3886239635_
                                   _tl3886139637_
                                   _e3886639640_
                                   _hd3886539643_
                                   _tl3886439645_
                                   _e3886939648_
                                   _hd3886839651_
                                   _tl3886739653_
                                   _e3887239656_
                                   _hd3887139659_
                                   _tl3887039661_
                                   _e3887539664_
                                   _hd3887439667_
                                   _tl3887339669_
                                   _e3887839672_
                                   _hd3887739675_
                                   _tl3887639677_
                                   _e3888139680_
                                   _hd3888039683_
                                   _tl3887939685_)
                                  (___kont4370243703_))))
                          (___match4418144182_
                           _e3885139600_
                           _hd3885039603_
                           _tl3884939605_
                           _e3885439608_
                           _hd3885339611_
                           _tl3885239613_
                           _e3885739616_
                           _hd3885639619_
                           _tl3885539621_
                           _e3886039624_
                           _hd3885939627_
                           _tl3885839629_
                           _e3886339632_
                           _hd3886239635_
                           _tl3886139637_
                           _e3886639640_
                           _hd3886539643_
                           _tl3886439645_
                           _e3886939648_
                           _hd3886839651_
                           _tl3886739653_
                           _e3887239656_
                           _hd3887139659_
                           _tl3887039661_))))
                   (___match4397943980_
                    (lambda (_e3881739731_
                             _hd3881639734_
                             _tl3881539736_
                             _e3882039739_
                             _hd3881939742_
                             _tl3881839744_
                             _e3882339747_
                             _hd3882239750_
                             _tl3882139752_
                             _e3882639755_
                             _hd3882539758_
                             _tl3882439760_
                             _e3882939763_
                             _hd3882839766_
                             _tl3882739768_
                             _e3883239771_
                             _hd3883139774_
                             _tl3883039776_
                             _e3883539779_
                             _hd3883439782_
                             _tl3883339784_
                             _e3883839787_
                             _hd3883739790_
                             _tl3883639792_
                             _e3884139795_
                             _hd3884039798_
                             _tl3883939800_
                             _e3884439803_
                             _hd3884339806_
                             _tl3884239808_)
                      (let ((_L39811_ _hd3884339806_)
                            (_L39812_ _hd3883439782_)
                            (_L39813_ _hd3882539758_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L39813_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L39813_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39812_
                                    _self38697_)))
                            (___kont4368643687_ _L39811_ _L39812_ _L39813_)
                            (___match4418344184_
                             _e3881739731_
                             _hd3881639734_
                             _tl3881539736_
                             _e3882039739_
                             _hd3881939742_
                             _tl3881839744_
                             _e3882339747_
                             _hd3882239750_
                             _tl3882139752_
                             _e3882639755_
                             _hd3882539758_
                             _tl3882439760_
                             _e3882939763_
                             _hd3882839766_
                             _tl3882739768_
                             _e3883239771_
                             _hd3883139774_
                             _tl3883039776_
                             _e3883539779_
                             _hd3883439782_
                             _tl3883339784_
                             _e3883839787_
                             _hd3883739790_
                             _tl3883639792_)))))
                   (___match4397743978_
                    (lambda (_e3881739731_
                             _hd3881639734_
                             _tl3881539736_
                             _e3882039739_
                             _hd3881939742_
                             _tl3881839744_
                             _e3882339747_
                             _hd3882239750_
                             _tl3882139752_
                             _e3882639755_
                             _hd3882539758_
                             _tl3882439760_
                             _e3882939763_
                             _hd3882839766_
                             _tl3882739768_
                             _e3883239771_
                             _hd3883139774_
                             _tl3883039776_
                             _e3883539779_
                             _hd3883439782_
                             _tl3883339784_
                             _e3883839787_
                             _hd3883739790_
                             _tl3883639792_
                             _e3884139795_
                             _hd3884039798_
                             _tl3883939800_
                             _e3884439803_
                             _hd3884339806_
                             _tl3884239808_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3883639792_))
                          (___match4397943980_
                           _e3881739731_
                           _hd3881639734_
                           _tl3881539736_
                           _e3882039739_
                           _hd3881939742_
                           _tl3881839744_
                           _e3882339747_
                           _hd3882239750_
                           _tl3882139752_
                           _e3882639755_
                           _hd3882539758_
                           _tl3882439760_
                           _e3882939763_
                           _hd3882839766_
                           _tl3882739768_
                           _e3883239771_
                           _hd3883139774_
                           _tl3883039776_
                           _e3883539779_
                           _hd3883439782_
                           _tl3883339784_
                           _e3883839787_
                           _hd3883739790_
                           _tl3883639792_
                           _e3884139795_
                           _hd3884039798_
                           _tl3883939800_
                           _e3884439803_
                           _hd3884339806_
                           _tl3884239808_)
                          (___match4405744058_
                           _e3881739731_
                           _hd3881639734_
                           _tl3881539736_
                           _e3882039739_
                           _hd3881939742_
                           _tl3881839744_
                           _e3882339747_
                           _hd3882239750_
                           _tl3882139752_
                           _e3882639755_
                           _hd3882539758_
                           _tl3882439760_
                           _e3882939763_
                           _hd3882839766_
                           _tl3882739768_
                           _e3883239771_
                           _hd3883139774_
                           _tl3883039776_
                           _e3883539779_
                           _hd3883439782_
                           _tl3883339784_
                           _e3883839787_
                           _hd3883739790_
                           _tl3883639792_
                           _e3884139795_
                           _hd3884039798_
                           _tl3883939800_
                           _e3884439803_
                           _hd3884339806_
                           _tl3884239808_))))
                   (___match4396743968_
                    (lambda (_e3881739731_
                             _hd3881639734_
                             _tl3881539736_
                             _e3882039739_
                             _hd3881939742_
                             _tl3881839744_
                             _e3882339747_
                             _hd3882239750_
                             _tl3882139752_
                             _e3882639755_
                             _hd3882539758_
                             _tl3882439760_
                             _e3882939763_
                             _hd3882839766_
                             _tl3882739768_
                             _e3883239771_
                             _hd3883139774_
                             _tl3883039776_
                             _e3883539779_
                             _hd3883439782_
                             _tl3883339784_
                             _e3883839787_
                             _hd3883739790_
                             _tl3883639792_
                             _e3884139795_
                             _hd3884039798_
                             _tl3883939800_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd3884039798_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3883939800_))
                              (let ((_e3884439803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3883939800_))))
                                (let ((_tl3884239808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3884439803_)))
                                      (_hd3884339806_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3884439803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3884239808_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl3883639792_))
                                          (___match4397943980_
                                           _e3881739731_
                                           _hd3881639734_
                                           _tl3881539736_
                                           _e3882039739_
                                           _hd3881939742_
                                           _tl3881839744_
                                           _e3882339747_
                                           _hd3882239750_
                                           _tl3882139752_
                                           _e3882639755_
                                           _hd3882539758_
                                           _tl3882439760_
                                           _e3882939763_
                                           _hd3882839766_
                                           _tl3882739768_
                                           _e3883239771_
                                           _hd3883139774_
                                           _tl3883039776_
                                           _e3883539779_
                                           _hd3883439782_
                                           _tl3883339784_
                                           _e3883839787_
                                           _hd3883739790_
                                           _tl3883639792_
                                           _e3884139795_
                                           _hd3884039798_
                                           _tl3883939800_
                                           _e3884439803_
                                           _hd3884339806_
                                           _tl3884239808_)
                                          (___match4405744058_
                                           _e3881739731_
                                           _hd3881639734_
                                           _tl3881539736_
                                           _e3882039739_
                                           _hd3881939742_
                                           _tl3881839744_
                                           _e3882339747_
                                           _hd3882239750_
                                           _tl3882139752_
                                           _e3882639755_
                                           _hd3882539758_
                                           _tl3882439760_
                                           _e3882939763_
                                           _hd3882839766_
                                           _tl3882739768_
                                           _e3883239771_
                                           _hd3883139774_
                                           _tl3883039776_
                                           _e3883539779_
                                           _hd3883439782_
                                           _tl3883339784_
                                           _e3883839787_
                                           _hd3883739790_
                                           _tl3883639792_
                                           _e3884139795_
                                           _hd3884039798_
                                           _tl3883939800_
                                           _e3884439803_
                                           _hd3884339806_
                                           _tl3884239808_))
                                      (___match4418144182_
                                       _e3881739731_
                                       _hd3881639734_
                                       _tl3881539736_
                                       _e3882039739_
                                       _hd3881939742_
                                       _tl3881839744_
                                       _e3882339747_
                                       _hd3882239750_
                                       _tl3882139752_
                                       _e3882639755_
                                       _hd3882539758_
                                       _tl3882439760_
                                       _e3882939763_
                                       _hd3882839766_
                                       _tl3882739768_
                                       _e3883239771_
                                       _hd3883139774_
                                       _tl3883039776_
                                       _e3883539779_
                                       _hd3883439782_
                                       _tl3883339784_
                                       _e3883839787_
                                       _hd3883739790_
                                       _tl3883639792_))))
                              (___match4418144182_
                               _e3881739731_
                               _hd3881639734_
                               _tl3881539736_
                               _e3882039739_
                               _hd3881939742_
                               _tl3881839744_
                               _e3882339747_
                               _hd3882239750_
                               _tl3882139752_
                               _e3882639755_
                               _hd3882539758_
                               _tl3882439760_
                               _e3882939763_
                               _hd3882839766_
                               _tl3882739768_
                               _e3883239771_
                               _hd3883139774_
                               _tl3883039776_
                               _e3883539779_
                               _hd3883439782_
                               _tl3883339784_
                               _e3883839787_
                               _hd3883739790_
                               _tl3883639792_))
                          (___match4418144182_
                           _e3881739731_
                           _hd3881639734_
                           _tl3881539736_
                           _e3882039739_
                           _hd3881939742_
                           _tl3881839744_
                           _e3882339747_
                           _hd3882239750_
                           _tl3882139752_
                           _e3882639755_
                           _hd3882539758_
                           _tl3882439760_
                           _e3882939763_
                           _hd3882839766_
                           _tl3882739768_
                           _e3883239771_
                           _hd3883139774_
                           _tl3883039776_
                           _e3883539779_
                           _hd3883439782_
                           _tl3883339784_
                           _e3883839787_
                           _hd3883739790_
                           _tl3883639792_))))
                   (___match4389943900_
                    (lambda (_e3876639850_
                             _hd3876539853_
                             _tl3876439855_
                             _e3876939858_
                             _hd3876839861_
                             _tl3876739863_
                             _e3877239866_
                             _hd3877139869_
                             _tl3877039871_
                             _e3877539874_
                             _hd3877439877_
                             _tl3877339879_
                             _e3877839882_
                             _hd3877739885_
                             _tl3877639887_
                             _e3878139890_
                             _hd3878039893_
                             _tl3877939895_
                             _e3878439898_
                             _hd3878339901_
                             _tl3878239903_
                             _e3878739906_
                             _hd3878639909_
                             _tl3878539911_
                             _e3879039914_
                             _hd3878939917_
                             _tl3878839919_
                             _e3879339922_
                             _hd3879239925_
                             _tl3879139927_
                             _e3879639930_
                             _hd3879539933_
                             _tl3879439935_
                             _e3879939938_
                             _hd3879839941_
                             _tl3879739943_
                             _e3880239946_
                             _hd3880139949_
                             _tl3880039951_
                             ___splice4368443685_
                             _target3880339954_
                             _tl3880539956_)
                      (letrec ((_loop3880639959_
                                (lambda (_hd3880439962_ _args3881039964_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3880439962_))
                                      (let ((_e3880739967_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3880439962_))))
                                        (let ((_lp-tl3880939972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3880739967_)))
                                              (_lp-hd3880839970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3880739967_))))
                                          (let ((__tmp45604
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3880839970_
                                                         _args3881039964_))))
                                            (declare (not safe))
                                            (_loop3880639959_
                                             _lp-tl3880939972_
                                             __tmp45604))))
                                      (let ((_args3881139975_
                                             (let ()
                                               (declare (not safe))
                                               (reverse _args3881039964_))))
                                        (let ((_L39978_ _args3881139975_)
                                              (_L39979_ _hd3880139949_)
                                              (_L39980_ _hd3879239925_)
                                              (_L39981_ _hd3878339901_)
                                              (_L39982_ _hd3877439877_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L39982_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L39981_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L39980_
                                                      _self38697_)))
                                              (___kont4368243683_
                                               _L39978_
                                               _L39979_
                                               _L39980_
                                               _L39981_
                                               _L39982_)
                                              (___kont4370243703_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3880639959_ _target3880339954_ '())))))
                   (___match4385743858_
                    (lambda (_e3876639850_
                             _hd3876539853_
                             _tl3876439855_
                             _e3876939858_
                             _hd3876839861_
                             _tl3876739863_
                             _e3877239866_
                             _hd3877139869_
                             _tl3877039871_
                             _e3877539874_
                             _hd3877439877_
                             _tl3877339879_
                             _e3877839882_
                             _hd3877739885_
                             _tl3877639887_
                             _e3878139890_
                             _hd3878039893_
                             _tl3877939895_
                             _e3878439898_
                             _hd3878339901_
                             _tl3878239903_
                             _e3878739906_
                             _hd3878639909_
                             _tl3878539911_
                             _e3879039914_
                             _hd3878939917_
                             _tl3878839919_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd3878939917_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3878839919_))
                              (let ((_e3879339922_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3878839919_))))
                                (let ((_tl3879139927_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3879339922_)))
                                      (_hd3879239925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3879339922_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3879139927_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3878539911_))
                                          (let ((_e3879639930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3878539911_))))
                                            (let ((_tl3879439935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3879639930_)))
                                                  (_hd3879539933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3879639930_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd3879539933_))
                                                  (let ((_e3879939938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd3879539933_))))
                                                    (let ((_tl3879739943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3879939938_)))
                                                          (_hd3879839941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3879939938_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd3879839941_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd3879839941_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3879739943_))
                          (let ((_e3880239946_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3879739943_))))
                            (let ((_tl3880039951_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3880239946_)))
                                  (_hd3880139949_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3880239946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3880039951_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl3879439935_))
                                      (let ((___splice4368443685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl3879439935_
                                                '0))))
                                        (let ((_tl3880539956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4368443685_
                                                  '1)))
                                              (_target3880339954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4368443685_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl3880539956_))
                                              (___match4389943900_
                                               _e3876639850_
                                               _hd3876539853_
                                               _tl3876439855_
                                               _e3876939858_
                                               _hd3876839861_
                                               _tl3876739863_
                                               _e3877239866_
                                               _hd3877139869_
                                               _tl3877039871_
                                               _e3877539874_
                                               _hd3877439877_
                                               _tl3877339879_
                                               _e3877839882_
                                               _hd3877739885_
                                               _tl3877639887_
                                               _e3878139890_
                                               _hd3878039893_
                                               _tl3877939895_
                                               _e3878439898_
                                               _hd3878339901_
                                               _tl3878239903_
                                               _e3878739906_
                                               _hd3878639909_
                                               _tl3878539911_
                                               _e3879039914_
                                               _hd3878939917_
                                               _tl3878839919_
                                               _e3879339922_
                                               _hd3879239925_
                                               _tl3879139927_
                                               _e3879639930_
                                               _hd3879539933_
                                               _tl3879439935_
                                               _e3879939938_
                                               _hd3879839941_
                                               _tl3879739943_
                                               _e3880239946_
                                               _hd3880139949_
                                               _tl3880039951_
                                               ___splice4368443685_
                                               _target3880339954_
                                               _tl3880539956_)
                                              (___kont4370243703_))))
                                      (___kont4370243703_))
                                  (___kont4370243703_))))
                          (___kont4370243703_))
                      (___kont4370243703_))
                  (___kont4370243703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4370243703_))))
                                          (___match4418144182_
                                           _e3876639850_
                                           _hd3876539853_
                                           _tl3876439855_
                                           _e3876939858_
                                           _hd3876839861_
                                           _tl3876739863_
                                           _e3877239866_
                                           _hd3877139869_
                                           _tl3877039871_
                                           _e3877539874_
                                           _hd3877439877_
                                           _tl3877339879_
                                           _e3877839882_
                                           _hd3877739885_
                                           _tl3877639887_
                                           _e3878139890_
                                           _hd3878039893_
                                           _tl3877939895_
                                           _e3878439898_
                                           _hd3878339901_
                                           _tl3878239903_
                                           _e3878739906_
                                           _hd3878639909_
                                           _tl3878539911_))
                                      (___match4418144182_
                                       _e3876639850_
                                       _hd3876539853_
                                       _tl3876439855_
                                       _e3876939858_
                                       _hd3876839861_
                                       _tl3876739863_
                                       _e3877239866_
                                       _hd3877139869_
                                       _tl3877039871_
                                       _e3877539874_
                                       _hd3877439877_
                                       _tl3877339879_
                                       _e3877839882_
                                       _hd3877739885_
                                       _tl3877639887_
                                       _e3878139890_
                                       _hd3878039893_
                                       _tl3877939895_
                                       _e3878439898_
                                       _hd3878339901_
                                       _tl3878239903_
                                       _e3878739906_
                                       _hd3878639909_
                                       _tl3878539911_))))
                              (___match4418144182_
                               _e3876639850_
                               _hd3876539853_
                               _tl3876439855_
                               _e3876939858_
                               _hd3876839861_
                               _tl3876739863_
                               _e3877239866_
                               _hd3877139869_
                               _tl3877039871_
                               _e3877539874_
                               _hd3877439877_
                               _tl3877339879_
                               _e3877839882_
                               _hd3877739885_
                               _tl3877639887_
                               _e3878139890_
                               _hd3878039893_
                               _tl3877939895_
                               _e3878439898_
                               _hd3878339901_
                               _tl3878239903_
                               _e3878739906_
                               _hd3878639909_
                               _tl3878539911_))
                          (___match4396743968_
                           _e3876639850_
                           _hd3876539853_
                           _tl3876439855_
                           _e3876939858_
                           _hd3876839861_
                           _tl3876739863_
                           _e3877239866_
                           _hd3877139869_
                           _tl3877039871_
                           _e3877539874_
                           _hd3877439877_
                           _tl3877339879_
                           _e3877839882_
                           _hd3877739885_
                           _tl3877639887_
                           _e3878139890_
                           _hd3878039893_
                           _tl3877939895_
                           _e3878439898_
                           _hd3878339901_
                           _tl3878239903_
                           _e3878739906_
                           _hd3878639909_
                           _tl3878539911_
                           _e3879039914_
                           _hd3878939917_
                           _tl3878839919_))))
                   (___match4378943790_
                    (lambda (_e3872240039_
                             _hd3872140042_
                             _tl3872040044_
                             _e3872540047_
                             _hd3872440050_
                             _tl3872340052_
                             _e3872840055_
                             _hd3872740058_
                             _tl3872640060_
                             _e3873140063_
                             _hd3873040066_
                             _tl3872940068_
                             _e3873440071_
                             _hd3873340074_
                             _tl3873240076_
                             _e3873740079_
                             _hd3873640082_
                             _tl3873540084_
                             _e3874040087_
                             _hd3873940090_
                             _tl3873840092_
                             _e3874340095_
                             _hd3874240098_
                             _tl3874140100_
                             _e3874640103_
                             _hd3874540106_
                             _tl3874440108_
                             _e3874940111_
                             _hd3874840114_
                             _tl3874740116_
                             ___splice4368043681_
                             _target3875040119_
                             _tl3875240121_)
                      (letrec ((_loop3875340124_
                                (lambda (_hd3875140127_ _args3875740129_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3875140127_))
                                      (let ((_e3875440132_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3875140127_))))
                                        (let ((_lp-tl3875640137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3875440132_)))
                                              (_lp-hd3875540135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3875440132_))))
                                          (let ((__tmp45605
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3875540135_
                                                         _args3875740129_))))
                                            (declare (not safe))
                                            (_loop3875340124_
                                             _lp-tl3875640137_
                                             __tmp45605))))
                                      (let ((_args3875840140_
                                             (let ()
                                               (declare (not safe))
                                               (reverse _args3875740129_))))
                                        (let ((_L40143_ _args3875840140_)
                                              (_L40144_ _hd3874840114_)
                                              (_L40145_ _hd3873940090_)
                                              (_L40146_ _hd3873040066_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40146_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40145_
                                                      _self38697_)))
                                              (___kont4367843679_
                                               _L40143_
                                               _L40144_
                                               _L40145_
                                               _L40146_)
                                              (___match4397743978_
                                               _e3872240039_
                                               _hd3872140042_
                                               _tl3872040044_
                                               _e3872540047_
                                               _hd3872440050_
                                               _tl3872340052_
                                               _e3872840055_
                                               _hd3872740058_
                                               _tl3872640060_
                                               _e3873140063_
                                               _hd3873040066_
                                               _tl3872940068_
                                               _e3873440071_
                                               _hd3873340074_
                                               _tl3873240076_
                                               _e3873740079_
                                               _hd3873640082_
                                               _tl3873540084_
                                               _e3874040087_
                                               _hd3873940090_
                                               _tl3873840092_
                                               _e3874340095_
                                               _hd3874240098_
                                               _tl3874140100_
                                               _e3874640103_
                                               _hd3874540106_
                                               _tl3874440108_
                                               _e3874940111_
                                               _hd3874840114_
                                               _tl3874740116_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3875340124_ _target3875040119_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx4367643677_))
                  (let ((_e3872240039_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx4367643677_))))
                    (let ((_tl3872040044_
                           (let () (declare (not safe)) (##cdr _e3872240039_)))
                          (_hd3872140042_
                           (let ()
                             (declare (not safe))
                             (##car _e3872240039_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3872040044_))
                          (let ((_e3872540047_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3872040044_))))
                            (let ((_tl3872340052_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3872540047_)))
                                  (_hd3872440050_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3872540047_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd3872440050_))
                                  (let ((_e3872840055_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd3872440050_))))
                                    (let ((_tl3872640060_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3872840055_)))
                                          (_hd3872740058_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3872840055_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd3872740058_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd3872740058_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl3872640060_))
                                                  (let ((_e3873140063_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl3872640060_))))
                                                    (let ((_tl3872940068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3873140063_)))
                                                          (_hd3873040066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3873140063_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl3872940068_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl3872340052_))
                      (let ((_e3873440071_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl3872340052_))))
                        (let ((_tl3873240076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3873440071_)))
                              (_hd3873340074_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3873440071_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd3873340074_))
                              (let ((_e3873740079_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd3873340074_))))
                                (let ((_tl3873540084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3873740079_)))
                                      (_hd3873640082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3873740079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd3873640082_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd3873640082_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl3873540084_))
                                              (let ((_e3874040087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl3873540084_))))
                                                (let ((_tl3873840092_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3874040087_)))
                                                      (_hd3873940090_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3874040087_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl3873840092_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl3873240076_))
                                                          (let ((_e3874340095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl3873240076_))))
                    (let ((_tl3874140100_
                           (let () (declare (not safe)) (##cdr _e3874340095_)))
                          (_hd3874240098_
                           (let ()
                             (declare (not safe))
                             (##car _e3874340095_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd3874240098_))
                          (let ((_e3874640103_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd3874240098_))))
                            (let ((_tl3874440108_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3874640103_)))
                                  (_hd3874540106_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3874640103_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd3874540106_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd3874540106_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3874440108_))
                                          (let ((_e3874940111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3874440108_))))
                                            (let ((_tl3874740116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3874940111_)))
                                                  (_hd3874840114_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3874940111_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl3874740116_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl3874140100_))
                                                      (let ((___splice4368043681_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl3874140100_ '0))))
                (let ((_tl3875240121_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4368043681_ '1)))
                      (_target3875040119_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4368043681_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl3875240121_))
                      (___match4378943790_
                       _e3872240039_
                       _hd3872140042_
                       _tl3872040044_
                       _e3872540047_
                       _hd3872440050_
                       _tl3872340052_
                       _e3872840055_
                       _hd3872740058_
                       _tl3872640060_
                       _e3873140063_
                       _hd3873040066_
                       _tl3872940068_
                       _e3873440071_
                       _hd3873340074_
                       _tl3873240076_
                       _e3873740079_
                       _hd3873640082_
                       _tl3873540084_
                       _e3874040087_
                       _hd3873940090_
                       _tl3873840092_
                       _e3874340095_
                       _hd3874240098_
                       _tl3874140100_
                       _e3874640103_
                       _hd3874540106_
                       _tl3874440108_
                       _e3874940111_
                       _hd3874840114_
                       _tl3874740116_
                       ___splice4368043681_
                       _target3875040119_
                       _tl3875240121_)
                      (___match4397743978_
                       _e3872240039_
                       _hd3872140042_
                       _tl3872040044_
                       _e3872540047_
                       _hd3872440050_
                       _tl3872340052_
                       _e3872840055_
                       _hd3872740058_
                       _tl3872640060_
                       _e3873140063_
                       _hd3873040066_
                       _tl3872940068_
                       _e3873440071_
                       _hd3873340074_
                       _tl3873240076_
                       _e3873740079_
                       _hd3873640082_
                       _tl3873540084_
                       _e3874040087_
                       _hd3873940090_
                       _tl3873840092_
                       _e3874340095_
                       _hd3874240098_
                       _tl3874140100_
                       _e3874640103_
                       _hd3874540106_
                       _tl3874440108_
                       _e3874940111_
                       _hd3874840114_
                       _tl3874740116_))))
              (___match4397743978_
               _e3872240039_
               _hd3872140042_
               _tl3872040044_
               _e3872540047_
               _hd3872440050_
               _tl3872340052_
               _e3872840055_
               _hd3872740058_
               _tl3872640060_
               _e3873140063_
               _hd3873040066_
               _tl3872940068_
               _e3873440071_
               _hd3873340074_
               _tl3873240076_
               _e3873740079_
               _hd3873640082_
               _tl3873540084_
               _e3874040087_
               _hd3873940090_
               _tl3873840092_
               _e3874340095_
               _hd3874240098_
               _tl3874140100_
               _e3874640103_
               _hd3874540106_
               _tl3874440108_
               _e3874940111_
               _hd3874840114_
               _tl3874740116_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4418144182_
                                                   _e3872240039_
                                                   _hd3872140042_
                                                   _tl3872040044_
                                                   _e3872540047_
                                                   _hd3872440050_
                                                   _tl3872340052_
                                                   _e3872840055_
                                                   _hd3872740058_
                                                   _tl3872640060_
                                                   _e3873140063_
                                                   _hd3873040066_
                                                   _tl3872940068_
                                                   _e3873440071_
                                                   _hd3873340074_
                                                   _tl3873240076_
                                                   _e3873740079_
                                                   _hd3873640082_
                                                   _tl3873540084_
                                                   _e3874040087_
                                                   _hd3873940090_
                                                   _tl3873840092_
                                                   _e3874340095_
                                                   _hd3874240098_
                                                   _tl3874140100_))))
                                          (___match4418144182_
                                           _e3872240039_
                                           _hd3872140042_
                                           _tl3872040044_
                                           _e3872540047_
                                           _hd3872440050_
                                           _tl3872340052_
                                           _e3872840055_
                                           _hd3872740058_
                                           _tl3872640060_
                                           _e3873140063_
                                           _hd3873040066_
                                           _tl3872940068_
                                           _e3873440071_
                                           _hd3873340074_
                                           _tl3873240076_
                                           _e3873740079_
                                           _hd3873640082_
                                           _tl3873540084_
                                           _e3874040087_
                                           _hd3873940090_
                                           _tl3873840092_
                                           _e3874340095_
                                           _hd3874240098_
                                           _tl3874140100_))
                                      (___match4385743858_
                                       _e3872240039_
                                       _hd3872140042_
                                       _tl3872040044_
                                       _e3872540047_
                                       _hd3872440050_
                                       _tl3872340052_
                                       _e3872840055_
                                       _hd3872740058_
                                       _tl3872640060_
                                       _e3873140063_
                                       _hd3873040066_
                                       _tl3872940068_
                                       _e3873440071_
                                       _hd3873340074_
                                       _tl3873240076_
                                       _e3873740079_
                                       _hd3873640082_
                                       _tl3873540084_
                                       _e3874040087_
                                       _hd3873940090_
                                       _tl3873840092_
                                       _e3874340095_
                                       _hd3874240098_
                                       _tl3874140100_
                                       _e3874640103_
                                       _hd3874540106_
                                       _tl3874440108_))
                                  (___match4418144182_
                                   _e3872240039_
                                   _hd3872140042_
                                   _tl3872040044_
                                   _e3872540047_
                                   _hd3872440050_
                                   _tl3872340052_
                                   _e3872840055_
                                   _hd3872740058_
                                   _tl3872640060_
                                   _e3873140063_
                                   _hd3873040066_
                                   _tl3872940068_
                                   _e3873440071_
                                   _hd3873340074_
                                   _tl3873240076_
                                   _e3873740079_
                                   _hd3873640082_
                                   _tl3873540084_
                                   _e3874040087_
                                   _hd3873940090_
                                   _tl3873840092_
                                   _e3874340095_
                                   _hd3874240098_
                                   _tl3874140100_))))
                          (___match4418144182_
                           _e3872240039_
                           _hd3872140042_
                           _tl3872040044_
                           _e3872540047_
                           _hd3872440050_
                           _tl3872340052_
                           _e3872840055_
                           _hd3872740058_
                           _tl3872640060_
                           _e3873140063_
                           _hd3873040066_
                           _tl3872940068_
                           _e3873440071_
                           _hd3873340074_
                           _tl3873240076_
                           _e3873740079_
                           _hd3873640082_
                           _tl3873540084_
                           _e3874040087_
                           _hd3873940090_
                           _tl3873840092_
                           _e3874340095_
                           _hd3874240098_
                           _tl3874140100_))))
                  (___match4411944120_
                   _e3872240039_
                   _hd3872140042_
                   _tl3872040044_
                   _e3872540047_
                   _hd3872440050_
                   _tl3872340052_
                   _e3872840055_
                   _hd3872740058_
                   _tl3872640060_
                   _e3873140063_
                   _hd3873040066_
                   _tl3872940068_
                   _e3873440071_
                   _hd3873340074_
                   _tl3873240076_
                   _e3873740079_
                   _hd3873640082_
                   _tl3873540084_
                   _e3874040087_
                   _hd3873940090_
                   _tl3873840092_))
              (___kont4370243703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4370243703_))
                                          (___kont4370243703_))
                                      (___kont4370243703_))))
                              (___kont4370243703_))))
                      (___kont4370243703_))
                  (___kont4370243703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4370243703_))
                                              (___kont4370243703_))
                                          (___kont4370243703_))))
                                  (___kont4370243703_))))
                          (___kont4370243703_))))
                  (___kont4370243703_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx37123_
               _self37124_
               _$t37125_
               _methods37126_
               _slots37127_
               _class-check37128_
               _struct-check37129_
               _struct-assert37130_)
        (letrec ((_force-e37132_
                  (lambda (_what38694_)
                    (let ((__tmp45606
                           (let ((__tmp45610
                                  (let ((__tmp45611
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp45611)))
                                 (__tmp45607
                                  (let ((__tmp45608
                                         (let ((__tmp45609
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what38694_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp45609))))
                                    (declare (not safe))
                                    (cons __tmp45608 '()))))
                             (declare (not safe))
                             (cons __tmp45610 __tmp45607))))
                      (declare (not safe))
                      (cons '%#call __tmp45606)))))
          (let* ((___stx4441644417_ _stx37123_)
                 (_g3714437462_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4441644417_)))))
            (let ((___kont4441844419_
                   (lambda (_L38640_ _L38641_ _L38642_ _L38643_)
                     (let ((_$method38688_
                            (let ((__tmp45612
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38641_))))
                              (declare (not safe))
                              (table-ref _methods37126_ __tmp45612)))
                           (_args38689_
                            (let ((__tmp45615
                                   (lambda (_g3867638678_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e
                                        _g3867638678_
                                        _self37124_
                                        _$t37125_
                                        _methods37126_
                                        _slots37127_
                                        _class-check37128_
                                        _struct-check37129_
                                        _struct-assert37130_))))
                                  (__tmp45613
                                   (let ((__tmp45614
                                          (lambda (_g3868038683_ _g3868138685_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3868038683_
                                                    _g3868138685_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp45614 '() _L38640_))))
                              (declare (not safe))
                              (map __tmp45615 __tmp45613))))
                       (let ((__tmp45616
                              (let ((__tmp45617
                                     (let ((__tmp45621
                                            (let ()
                                              (declare (not safe))
                                              (_force-e37132_ _$method38688_)))
                                           (__tmp45618
                                            (let ((__tmp45619
                                                   (let ((__tmp45620
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp45620))))
                                              (declare (not safe))
                                              (cons __tmp45619 _args38689_))))
                                       (declare (not safe))
                                       (cons __tmp45621 __tmp45618))))
                                (declare (not safe))
                                (cons '%#call __tmp45617))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp45616 _stx37123_)))))
                  (___kont4442244423_
                   (lambda (_L38472_ _L38473_ _L38474_ _L38475_ _L38476_)
                     (let ((_$method38528_
                            (let ((__tmp45622
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38473_))))
                              (declare (not safe))
                              (table-ref _methods37126_ __tmp45622)))
                           (_args38529_
                            (let ((__tmp45625
                                   (lambda (_g3851638518_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e
                                        _g3851638518_
                                        _self37124_
                                        _$t37125_
                                        _methods37126_
                                        _slots37127_
                                        _class-check37128_
                                        _struct-check37129_
                                        _struct-assert37130_))))
                                  (__tmp45623
                                   (let ((__tmp45624
                                          (lambda (_g3852038523_ _g3852138525_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3852038523_
                                                    _g3852138525_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp45624 '() _L38472_))))
                              (declare (not safe))
                              (map __tmp45625 __tmp45623))))
                       (let ((__tmp45626
                              (let ((__tmp45627
                                     (let ((__tmp45633
                                            (let ((__tmp45634
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp45634)))
                                           (__tmp45628
                                            (let ((__tmp45632
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e37132_
                                                      _$method38528_)))
                                                  (__tmp45629
                                                   (let ((__tmp45630
                                                          (let ((__tmp45631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37124_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp45631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45630
                                                           _args38529_))))
                                              (declare (not safe))
                                              (cons __tmp45632 __tmp45629))))
                                       (declare (not safe))
                                       (cons __tmp45633 __tmp45628))))
                                (declare (not safe))
                                (cons '%#call __tmp45627))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp45626 _stx37123_)))))
                  (___kont4442644427_
                   (lambda (_L38303_ _L38304_ _L38305_)
                     (let* ((_$field38337_
                             (let ((__tmp45635
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L38303_))))
                               (declare (not safe))
                               (table-ref _slots37127_ __tmp45635)))
                            (__tmp45636
                             (let ((__tmp45637
                                    (let ((__tmp45644
                                           (let ((__tmp45645
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t37125_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp45645)))
                                          (__tmp45638
                                           (let ((__tmp45642
                                                  (let ((__tmp45643
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field38337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45643)))
                                                 (__tmp45639
                                                  (let ((__tmp45640
                                                         (let ((__tmp45641
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self37124_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp45641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45640 '()))))
                                             (declare (not safe))
                                             (cons __tmp45642 __tmp45639))))
                                      (declare (not safe))
                                      (cons __tmp45644 __tmp45638))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp45637))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp45636 _stx37123_))))
                  (___kont4442844429_
                   (lambda (_L38177_ _L38178_ _L38179_ _L38180_)
                     (let ((_$field38215_
                            (let ((__tmp45646
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38178_))))
                              (declare (not safe))
                              (table-ref _slots37127_ __tmp45646)))
                           (_expr38216_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e
                               _L38177_
                               _self37124_
                               _$t37125_
                               _methods37126_
                               _slots37127_
                               _class-check37128_
                               _struct-check37129_
                               _struct-assert37130_))))
                       (let ((__tmp45647
                              (let ((__tmp45648
                                     (let ((__tmp45656
                                            (let ((__tmp45657
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37125_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp45657)))
                                           (__tmp45649
                                            (let ((__tmp45654
                                                   (let ((__tmp45655
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp45655)))
                                                  (__tmp45650
                                                   (let ((__tmp45652
                                                          (let ((__tmp45653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37124_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp45653)))
                 (__tmp45651
                  (let () (declare (not safe)) (cons _expr38216_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45652
                                                           __tmp45651))))
                                              (declare (not safe))
                                              (cons __tmp45654 __tmp45650))))
                                       (declare (not safe))
                                       (cons __tmp45656 __tmp45649))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp45648))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp45647 _stx37123_)))))
                  (___kont4443044431_
                   (lambda (_L38056_ _L38057_)
                     (let* ((_slot38079_
                             (##structure-ref
                              (let ((__tmp45658
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L38057_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp45658))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field38081_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37127_ _slot38079_))))
                       (let ((__tmp45659
                              (let ((__tmp45660
                                     (let ((__tmp45667
                                            (let ((__tmp45668
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37125_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp45668)))
                                           (__tmp45661
                                            (let ((__tmp45665
                                                   (let ((__tmp45666
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp45666)))
                                                  (__tmp45662
                                                   (let ((__tmp45663
                                                          (let ((__tmp45664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37124_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp45664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45663 '()))))
                                              (declare (not safe))
                                              (cons __tmp45665 __tmp45662))))
                                       (declare (not safe))
                                       (cons __tmp45667 __tmp45661))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp45660))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp45659 _stx37123_)))))
                  (___kont4443244433_
                   (lambda (_L37961_ _L37962_ _L37963_)
                     (let* ((_slot37988_
                             (##structure-ref
                              (let ((__tmp45669
                                     (let ((__tmp45670
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'getf))))
                                       (declare (not safe))
                                       (gxc#identifier-symbol __tmp45670))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp45669))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field37990_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37127_ _slot37988_)))
                            (_expr37992_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L37961_
                                _self37124_
                                _$t37125_
                                _methods37126_
                                _slots37127_
                                _class-check37128_
                                _struct-check37129_
                                _struct-assert37130_))))
                       (let ((__tmp45671
                              (let ((__tmp45672
                                     (let ((__tmp45680
                                            (let ((__tmp45681
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37125_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp45681)))
                                           (__tmp45673
                                            (let ((__tmp45678
                                                   (let ((__tmp45679
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field37990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp45679)))
                                                  (__tmp45674
                                                   (let ((__tmp45676
                                                          (let ((__tmp45677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37124_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp45677)))
                 (__tmp45675
                  (let () (declare (not safe)) (cons _expr37992_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45676
                                                           __tmp45675))))
                                              (declare (not safe))
                                              (cons __tmp45678 __tmp45674))))
                                       (declare (not safe))
                                       (cons __tmp45680 __tmp45673))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp45672))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp45671 _stx37123_)))))
                  (___kont4443444435_
                   (lambda (_L37869_ _L37870_)
                     (let ((__tmp45682
                            (let ((__tmp45683
                                   (let ((__tmp45684
                                          (##structure-ref
                                           (let ((__tmp45685
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L37870_))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-type
                                              __tmp45685))
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (table-ref
                                      _class-check37128_
                                      __tmp45684))))
                              (declare (not safe))
                              (cons __tmp45683 '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45682))))
                  (___kont4443644437_
                   (lambda (_L37778_ _L37779_)
                     (let ((_t37801_
                            (##structure-ref
                             (let ((__tmp45686
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L37779_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp45686))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (table-ref _struct-assert37130_ _t37801_ '#f))
                           '(%#quote #t)
                           (let ((_$e37803_
                                  (let ()
                                    (declare (not safe))
                                    (table-ref
                                     _struct-check37129_
                                     _t37801_
                                     '#f))))
                             (if _$e37803_
                                 ((lambda (_checkq37806_)
                                    (let ((__tmp45687
                                           (let ()
                                             (declare (not safe))
                                             (cons _checkq37806_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp45687)))
                                  _$e37803_)
                                 _stx37123_))))))
                  (___kont4443844439_
                   (lambda (_L37663_ _L37664_)
                     (let* ((_getf37697_
                             (let ((__tmp45688
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L37664_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp45688)))
                            (_t37699_
                             (##structure-ref
                              _getf37697_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf37697_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx37123_
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37130_ _t37699_ '#f))
                               (let* ((_struct-t37702_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t37699_)))
                                      (_off37704_
                                       (fx+ (##structure-ref
                                             _getf37697_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t37702_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp45717
                                        (let ((__tmp45724
                                               (let ((__tmp45725
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t37699_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp45725)))
                                              (__tmp45718
                                               (let ((__tmp45722
                                                      (let ((__tmp45723
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off37704_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp45723)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45719
                                                      (let ((__tmp45720
                                                             (let ((__tmp45721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37124_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45721))))
                (declare (not safe))
                (cons __tmp45720 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45722
                                                       __tmp45719))))
                                          (declare (not safe))
                                          (cons __tmp45724 __tmp45718))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-ref __tmp45717)))
                               (let ((_$e37707_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37129_
                                         _t37699_
                                         '#f))))
                                 (if _$e37707_
                                     ((lambda (_checkq37710_)
                                        (let* ((_struct-t37712_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t37699_)))
                                               (_off37714_
                                                (fx+ (##structure-ref
                                                      _getf37697_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t37712_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp45689
                                                 (let ((__tmp45715
                                                        (let ((__tmp45716
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq37710_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp45716)))
               (__tmp45690
                (let ((__tmp45705
                       (let ((__tmp45706
                              (let ((__tmp45713
                                     (let ((__tmp45714
                                            (let ()
                                              (declare (not safe))
                                              (cons _t37699_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp45714)))
                                    (__tmp45707
                                     (let ((__tmp45711
                                            (let ((__tmp45712
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off37714_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp45712)))
                                           (__tmp45708
                                            (let ((__tmp45709
                                                   (let ((__tmp45710
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp45710))))
                                              (declare (not safe))
                                              (cons __tmp45709 '()))))
                                       (declare (not safe))
                                       (cons __tmp45711 __tmp45708))))
                                (declare (not safe))
                                (cons __tmp45713 __tmp45707))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp45706)))
                      (__tmp45691
                       (let ((__tmp45692
                              (let ((__tmp45693
                                     (let ((__tmp45703
                                            (let ((__tmp45704
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp45704)))
                                           (__tmp45694
                                            (let ((__tmp45701
                                                   (let ((__tmp45702
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp45702)))
                                                  (__tmp45695
                                                   (let ((__tmp45699
                                                          (let ((__tmp45700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t37699_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp45700)))
                 (__tmp45696
                  (let ((__tmp45697
                         (let ((__tmp45698
                                (let ()
                                  (declare (not safe))
                                  (cons _self37124_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp45698))))
                    (declare (not safe))
                    (cons __tmp45697 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45699
                                                           __tmp45696))))
                                              (declare (not safe))
                                              (cons __tmp45701 __tmp45695))))
                                       (declare (not safe))
                                       (cons __tmp45703 __tmp45694))))
                                (declare (not safe))
                                (cons '%#call __tmp45693))))
                         (declare (not safe))
                         (cons __tmp45692 '()))))
                  (declare (not safe))
                  (cons __tmp45705 __tmp45691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45715
                                                         __tmp45690))))
                                            (declare (not safe))
                                            (cons '%#if __tmp45689))))
                                      _$e37707_)
                                     _stx37123_)))))))
                  (___kont4444044441_
                   (lambda (_L37538_ _L37539_ _L37540_)
                     (let* ((_setf37580_
                             (let ((__tmp45726
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L37540_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp45726)))
                            (_t37582_
                             (##structure-ref _setf37580_ '1 gxc#!type::t '#f))
                            (_expr37584_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L37538_
                                _self37124_
                                _$t37125_
                                _methods37126_
                                _slots37127_
                                _class-check37128_
                                _struct-check37129_
                                _struct-assert37130_))))
                       (if (##structure-ref
                            _setf37580_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (let ((__tmp45776
                                  (let ((__tmp45782
                                         (let ((__tmp45785
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#ref)))
                                               (__tmp45783
                                                (let ((__tmp45784
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'setf))))
                                                  (declare (not safe))
                                                  (cons __tmp45784 '()))))
                                           (declare (not safe))
                                           (cons __tmp45785 __tmp45783)))
                                        (__tmp45777
                                         (let ((__tmp45779
                                                (let ((__tmp45781
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp45780
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L37539_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp45781
                                                        __tmp45780)))
                                               (__tmp45778
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _expr37584_ '()))))
                                           (declare (not safe))
                                           (cons __tmp45779 __tmp45778))))
                                    (declare (not safe))
                                    (cons __tmp45782 __tmp45777))))
                             (declare (not safe))
                             (cons '%#call __tmp45776))
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37130_ _t37582_ '#f))
                               (let* ((_struct-t37587_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t37582_)))
                                      (_off37589_
                                       (fx+ (##structure-ref
                                             _setf37580_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t37587_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp45766
                                        (let ((__tmp45774
                                               (let ((__tmp45775
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t37582_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp45775)))
                                              (__tmp45767
                                               (let ((__tmp45772
                                                      (let ((__tmp45773
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off37589_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp45773)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45768
                                                      (let ((__tmp45770
                                                             (let ((__tmp45771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37124_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45771)))
                    (__tmp45769
                     (let () (declare (not safe)) (cons _expr37584_ '()))))
                (declare (not safe))
                (cons __tmp45770 __tmp45769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45772
                                                       __tmp45768))))
                                          (declare (not safe))
                                          (cons __tmp45774 __tmp45767))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-set! __tmp45766)))
                               (let ((_$e37592_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37129_
                                         _t37582_
                                         '#f))))
                                 (if _$e37592_
                                     ((lambda (_checkq37595_)
                                        (let* ((_struct-t37597_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t37582_)))
                                               (_off37599_
                                                (fx+ (##structure-ref
                                                      _setf37580_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t37597_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp45737
                                                 (let ((__tmp45764
                                                        (let ((__tmp45765
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq37595_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp45765)))
               (__tmp45738
                (let ((__tmp45753
                       (let ((__tmp45754
                              (let ((__tmp45762
                                     (let ((__tmp45763
                                            (let ()
                                              (declare (not safe))
                                              (cons _t37582_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp45763)))
                                    (__tmp45755
                                     (let ((__tmp45760
                                            (let ((__tmp45761
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off37599_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp45761)))
                                           (__tmp45756
                                            (let ((__tmp45758
                                                   (let ((__tmp45759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp45759)))
                                                  (__tmp45757
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr37584_ '()))))
                                              (declare (not safe))
                                              (cons __tmp45758 __tmp45757))))
                                       (declare (not safe))
                                       (cons __tmp45760 __tmp45756))))
                                (declare (not safe))
                                (cons __tmp45762 __tmp45755))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp45754)))
                      (__tmp45739
                       (let ((__tmp45740
                              (let ((__tmp45741
                                     (let ((__tmp45751
                                            (let ((__tmp45752
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp45752)))
                                           (__tmp45742
                                            (let ((__tmp45749
                                                   (let ((__tmp45750
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp45750)))
                                                  (__tmp45743
                                                   (let ((__tmp45747
                                                          (let ((__tmp45748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t37582_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp45748)))
                 (__tmp45744
                  (let ((__tmp45745
                         (let ((__tmp45746
                                (let ()
                                  (declare (not safe))
                                  (cons _self37124_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp45746))))
                    (declare (not safe))
                    (cons __tmp45745 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45747
                                                           __tmp45744))))
                                              (declare (not safe))
                                              (cons __tmp45749 __tmp45743))))
                                       (declare (not safe))
                                       (cons __tmp45751 __tmp45742))))
                                (declare (not safe))
                                (cons '%#call __tmp45741))))
                         (declare (not safe))
                         (cons __tmp45740 '()))))
                  (declare (not safe))
                  (cons __tmp45753 __tmp45739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45764
                                                         __tmp45738))))
                                            (declare (not safe))
                                            (cons '%#if __tmp45737))))
                                      _$e37592_)
                                     (let ((__tmp45727
                                            (let ((__tmp45733
                                                   (let ((__tmp45736
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)))
                                                         (__tmp45734
                                                          (let ((__tmp45735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'setf))))
                    (declare (not safe))
                    (cons __tmp45735 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45736
                                                           __tmp45734)))
                                                  (__tmp45728
                                                   (let ((__tmp45730
                                                          (let ((__tmp45732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref)))
                        (__tmp45731
                         (let () (declare (not safe)) (cons _L37539_ '()))))
                    (declare (not safe))
                    (cons __tmp45732 __tmp45731)))
                 (__tmp45729
                  (let () (declare (not safe)) (cons _expr37584_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45730
                                                           __tmp45729))))
                                              (declare (not safe))
                                              (cons __tmp45733 __tmp45728))))
                                       (declare (not safe))
                                       (cons '%#call __tmp45727)))))))))
                  (___kont4444244443_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx37123_
                        _self37124_
                        _$t37125_
                        _methods37126_
                        _slots37127_
                        _class-check37128_
                        _struct-check37129_
                        _struct-assert37130_)))))
              (let* ((___match4515345154_
                      (lambda (_e3743637474_
                               _hd3743537477_
                               _tl3743437479_
                               _e3743937482_
                               _hd3743837485_
                               _tl3743737487_
                               _e3744237490_
                               _hd3744137493_
                               _tl3744037495_
                               _e3744537498_
                               _hd3744437501_
                               _tl3744337503_
                               _e3744837506_
                               _hd3744737509_
                               _tl3744637511_
                               _e3745137514_
                               _hd3745037517_
                               _tl3744937519_
                               _e3745437522_
                               _hd3745337525_
                               _tl3745237527_
                               _e3745737530_
                               _hd3745637533_
                               _tl3745537535_)
                        (let ((_L37538_ _hd3745637533_)
                              (_L37539_ _hd3745337525_)
                              (_L37540_ _hd3744437501_))
                          (if (if (let ((__tmp45788
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L37539_
                                            _self37124_))))
                                    (declare (not safe))
                                    (not __tmp45788))
                                  '#f
                                  (let ((_$e37569_
                                         (let ((__tmp45786
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L37540_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp45786))))
                                    (and _$e37569_
                                         ((lambda (_t37572_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t37572_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3757337575_
                                                        (let ((__tmp45787
                                                               (##structure-ref
                                                                _t37572_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp45787))))
                                                   (and _struct-t3757337575_
                                                        (let ((_struct-t37578_
                                                               _struct-t3757337575_))
                                                          (##structure-ref
                                                           _struct-t37578_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e37569_))))
                              (___kont4444044441_ _L37538_ _L37539_ _L37540_)
                              (___kont4444244443_)))))
                     (___match4514545146_
                      (lambda (_e3743637474_
                               _hd3743537477_
                               _tl3743437479_
                               _e3743937482_
                               _hd3743837485_
                               _tl3743737487_
                               _e3744237490_
                               _hd3744137493_
                               _tl3744037495_
                               _e3744537498_
                               _hd3744437501_
                               _tl3744337503_
                               _e3744837506_
                               _hd3744737509_
                               _tl3744637511_
                               _e3745137514_
                               _hd3745037517_
                               _tl3744937519_
                               _e3745437522_
                               _hd3745337525_
                               _tl3745237527_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3744637511_))
                            (let ((_e3745737530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3744637511_))))
                              (let ((_tl3745537535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3745737530_)))
                                    (_hd3745637533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3745737530_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3745537535_))
                                    (___match4515345154_
                                     _e3743637474_
                                     _hd3743537477_
                                     _tl3743437479_
                                     _e3743937482_
                                     _hd3743837485_
                                     _tl3743737487_
                                     _e3744237490_
                                     _hd3744137493_
                                     _tl3744037495_
                                     _e3744537498_
                                     _hd3744437501_
                                     _tl3744337503_
                                     _e3744837506_
                                     _hd3744737509_
                                     _tl3744637511_
                                     _e3745137514_
                                     _hd3745037517_
                                     _tl3744937519_
                                     _e3745437522_
                                     _hd3745337525_
                                     _tl3745237527_
                                     _e3745737530_
                                     _hd3745637533_
                                     _tl3745537535_)
                                    (___kont4444244443_))))
                            (___kont4444244443_))))
                     (___match4509145092_
                      (lambda (_e3741237607_
                               _hd3741137610_
                               _tl3741037612_
                               _e3741537615_
                               _hd3741437618_
                               _tl3741337620_
                               _e3741837623_
                               _hd3741737626_
                               _tl3741637628_
                               _e3742137631_
                               _hd3742037634_
                               _tl3741937636_
                               _e3742437639_
                               _hd3742337642_
                               _tl3742237644_
                               _e3742737647_
                               _hd3742637650_
                               _tl3742537652_
                               _e3743037655_
                               _hd3742937658_
                               _tl3742837660_)
                        (let ((_L37663_ _hd3742937658_)
                              (_L37664_ _hd3742037634_))
                          (if (if (let ((__tmp45791
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L37663_
                                            _self37124_))))
                                    (declare (not safe))
                                    (not __tmp45791))
                                  '#f
                                  (let ((_$e37686_
                                         (let ((__tmp45789
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L37664_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp45789))))
                                    (and _$e37686_
                                         ((lambda (_t37689_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t37689_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3769037692_
                                                        (let ((__tmp45790
                                                               (##structure-ref
                                                                _t37689_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp45790))))
                                                   (and _struct-t3769037692_
                                                        (let ((_struct-t37695_
                                                               _struct-t3769037692_))
                                                          (##structure-ref
                                                           _struct-t37695_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e37686_))))
                              (___kont4443844439_ _L37663_ _L37664_)
                              (___kont4444244443_)))))
                     (___match4503545036_
                      (lambda (_e3738937722_
                               _hd3738837725_
                               _tl3738737727_
                               _e3739237730_
                               _hd3739137733_
                               _tl3739037735_
                               _e3739537738_
                               _hd3739437741_
                               _tl3739337743_
                               _e3739837746_
                               _hd3739737749_
                               _tl3739637751_
                               _e3740137754_
                               _hd3740037757_
                               _tl3739937759_
                               _e3740437762_
                               _hd3740337765_
                               _tl3740237767_
                               _e3740737770_
                               _hd3740637773_
                               _tl3740537775_)
                        (let ((_L37778_ _hd3740637773_)
                              (_L37779_ _hd3739737749_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L37778_
                                      _self37124_))
                                   (let ((__tmp45792
                                          (let ((__tmp45793
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L37779_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp45793))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp45792
                                      'gxc#!struct-pred::t)))
                              (___kont4443644437_ _L37778_ _L37779_)
                              (___match4509145092_
                               _e3738937722_
                               _hd3738837725_
                               _tl3738737727_
                               _e3739237730_
                               _hd3739137733_
                               _tl3739037735_
                               _e3739537738_
                               _hd3739437741_
                               _tl3739337743_
                               _e3739837746_
                               _hd3739737749_
                               _tl3739637751_
                               _e3740137754_
                               _hd3740037757_
                               _tl3739937759_
                               _e3740437762_
                               _hd3740337765_
                               _tl3740237767_
                               _e3740737770_
                               _hd3740637773_
                               _tl3740537775_)))))
                     (___match4497944980_
                      (lambda (_e3736637813_
                               _hd3736537816_
                               _tl3736437818_
                               _e3736937821_
                               _hd3736837824_
                               _tl3736737826_
                               _e3737237829_
                               _hd3737137832_
                               _tl3737037834_
                               _e3737537837_
                               _hd3737437840_
                               _tl3737337842_
                               _e3737837845_
                               _hd3737737848_
                               _tl3737637850_
                               _e3738137853_
                               _hd3738037856_
                               _tl3737937858_
                               _e3738437861_
                               _hd3738337864_
                               _tl3738237866_)
                        (let ((_L37869_ _hd3738337864_)
                              (_L37870_ _hd3737437840_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L37869_
                                      _self37124_))
                                   (let ((__tmp45794
                                          (let ((__tmp45795
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L37870_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp45795))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp45794
                                      'gxc#!class-pred::t)))
                              (___kont4443444435_ _L37869_ _L37870_)
                              (___match4503545036_
                               _e3736637813_
                               _hd3736537816_
                               _tl3736437818_
                               _e3736937821_
                               _hd3736837824_
                               _tl3736737826_
                               _e3737237829_
                               _hd3737137832_
                               _tl3737037834_
                               _e3737537837_
                               _hd3737437840_
                               _tl3737337842_
                               _e3737837845_
                               _hd3737737848_
                               _tl3737637850_
                               _e3738137853_
                               _hd3738037856_
                               _tl3737937858_
                               _e3738437861_
                               _hd3738337864_
                               _tl3738237866_)))))
                     (___match4497744978_
                      (lambda (_e3736637813_
                               _hd3736537816_
                               _tl3736437818_
                               _e3736937821_
                               _hd3736837824_
                               _tl3736737826_
                               _e3737237829_
                               _hd3737137832_
                               _tl3737037834_
                               _e3737537837_
                               _hd3737437840_
                               _tl3737337842_
                               _e3737837845_
                               _hd3737737848_
                               _tl3737637850_
                               _e3738137853_
                               _hd3738037856_
                               _tl3737937858_
                               _e3738437861_
                               _hd3738337864_
                               _tl3738237866_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3737637850_))
                            (___match4497944980_
                             _e3736637813_
                             _hd3736537816_
                             _tl3736437818_
                             _e3736937821_
                             _hd3736837824_
                             _tl3736737826_
                             _e3737237829_
                             _hd3737137832_
                             _tl3737037834_
                             _e3737537837_
                             _hd3737437840_
                             _tl3737337842_
                             _e3737837845_
                             _hd3737737848_
                             _tl3737637850_
                             _e3738137853_
                             _hd3738037856_
                             _tl3737937858_
                             _e3738437861_
                             _hd3738337864_
                             _tl3738237866_)
                            (___match4514545146_
                             _e3736637813_
                             _hd3736537816_
                             _tl3736437818_
                             _e3736937821_
                             _hd3736837824_
                             _tl3736737826_
                             _e3737237829_
                             _hd3737137832_
                             _tl3737037834_
                             _e3737537837_
                             _hd3737437840_
                             _tl3737337842_
                             _e3737837845_
                             _hd3737737848_
                             _tl3737637850_
                             _e3738137853_
                             _hd3738037856_
                             _tl3737937858_
                             _e3738437861_
                             _hd3738337864_
                             _tl3738237866_))))
                     (___match4492344924_
                      (lambda (_e3734037897_
                               _hd3733937900_
                               _tl3733837902_
                               _e3734337905_
                               _hd3734237908_
                               _tl3734137910_
                               _e3734637913_
                               _hd3734537916_
                               _tl3734437918_
                               _e3734937921_
                               _hd3734837924_
                               _tl3734737926_
                               _e3735237929_
                               _hd3735137932_
                               _tl3735037934_
                               _e3735537937_
                               _hd3735437940_
                               _tl3735337942_
                               _e3735837945_
                               _hd3735737948_
                               _tl3735637950_
                               _e3736137953_
                               _hd3736037956_
                               _tl3735937958_)
                        (let ((_L37961_ _hd3736037956_)
                              (_L37962_ _hd3735737948_)
                              (_L37963_ _hd3734837924_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L37962_
                                      _self37124_))
                                   (let ((__tmp45796
                                          (let ((__tmp45797
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L37963_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp45797))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp45796
                                      'gxc#!class-setf::t)))
                              (___kont4443244433_ _L37961_ _L37962_ _L37963_)
                              (___match4515345154_
                               _e3734037897_
                               _hd3733937900_
                               _tl3733837902_
                               _e3734337905_
                               _hd3734237908_
                               _tl3734137910_
                               _e3734637913_
                               _hd3734537916_
                               _tl3734437918_
                               _e3734937921_
                               _hd3734837924_
                               _tl3734737926_
                               _e3735237929_
                               _hd3735137932_
                               _tl3735037934_
                               _e3735537937_
                               _hd3735437940_
                               _tl3735337942_
                               _e3735837945_
                               _hd3735737948_
                               _tl3735637950_
                               _e3736137953_
                               _hd3736037956_
                               _tl3735937958_)))))
                     (___match4492144922_
                      (lambda (_e3734037897_
                               _hd3733937900_
                               _tl3733837902_
                               _e3734337905_
                               _hd3734237908_
                               _tl3734137910_
                               _e3734637913_
                               _hd3734537916_
                               _tl3734437918_
                               _e3734937921_
                               _hd3734837924_
                               _tl3734737926_
                               _e3735237929_
                               _hd3735137932_
                               _tl3735037934_
                               _e3735537937_
                               _hd3735437940_
                               _tl3735337942_
                               _e3735837945_
                               _hd3735737948_
                               _tl3735637950_
                               _e3736137953_
                               _hd3736037956_
                               _tl3735937958_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3735937958_))
                            (___match4492344924_
                             _e3734037897_
                             _hd3733937900_
                             _tl3733837902_
                             _e3734337905_
                             _hd3734237908_
                             _tl3734137910_
                             _e3734637913_
                             _hd3734537916_
                             _tl3734437918_
                             _e3734937921_
                             _hd3734837924_
                             _tl3734737926_
                             _e3735237929_
                             _hd3735137932_
                             _tl3735037934_
                             _e3735537937_
                             _hd3735437940_
                             _tl3735337942_
                             _e3735837945_
                             _hd3735737948_
                             _tl3735637950_
                             _e3736137953_
                             _hd3736037956_
                             _tl3735937958_)
                            (___kont4444244443_))))
                     (___match4491544916_
                      (lambda (_e3734037897_
                               _hd3733937900_
                               _tl3733837902_
                               _e3734337905_
                               _hd3734237908_
                               _tl3734137910_
                               _e3734637913_
                               _hd3734537916_
                               _tl3734437918_
                               _e3734937921_
                               _hd3734837924_
                               _tl3734737926_
                               _e3735237929_
                               _hd3735137932_
                               _tl3735037934_
                               _e3735537937_
                               _hd3735437940_
                               _tl3735337942_
                               _e3735837945_
                               _hd3735737948_
                               _tl3735637950_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3735037934_))
                            (let ((_e3736137953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3735037934_))))
                              (let ((_tl3735937958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3736137953_)))
                                    (_hd3736037956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3736137953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3735937958_))
                                    (___match4492344924_
                                     _e3734037897_
                                     _hd3733937900_
                                     _tl3733837902_
                                     _e3734337905_
                                     _hd3734237908_
                                     _tl3734137910_
                                     _e3734637913_
                                     _hd3734537916_
                                     _tl3734437918_
                                     _e3734937921_
                                     _hd3734837924_
                                     _tl3734737926_
                                     _e3735237929_
                                     _hd3735137932_
                                     _tl3735037934_
                                     _e3735537937_
                                     _hd3735437940_
                                     _tl3735337942_
                                     _e3735837945_
                                     _hd3735737948_
                                     _tl3735637950_
                                     _e3736137953_
                                     _hd3736037956_
                                     _tl3735937958_)
                                    (___kont4444244443_))))
                            (___match4497744978_
                             _e3734037897_
                             _hd3733937900_
                             _tl3733837902_
                             _e3734337905_
                             _hd3734237908_
                             _tl3734137910_
                             _e3734637913_
                             _hd3734537916_
                             _tl3734437918_
                             _e3734937921_
                             _hd3734837924_
                             _tl3734737926_
                             _e3735237929_
                             _hd3735137932_
                             _tl3735037934_
                             _e3735537937_
                             _hd3735437940_
                             _tl3735337942_
                             _e3735837945_
                             _hd3735737948_
                             _tl3735637950_))))
                     (___match4486144862_
                      (lambda (_e3731638000_
                               _hd3731538003_
                               _tl3731438005_
                               _e3731938008_
                               _hd3731838011_
                               _tl3731738013_
                               _e3732238016_
                               _hd3732138019_
                               _tl3732038021_
                               _e3732538024_
                               _hd3732438027_
                               _tl3732338029_
                               _e3732838032_
                               _hd3732738035_
                               _tl3732638037_
                               _e3733138040_
                               _hd3733038043_
                               _tl3732938045_
                               _e3733438048_
                               _hd3733338051_
                               _tl3733238053_)
                        (let ((_L38056_ _hd3733338051_)
                              (_L38057_ _hd3732438027_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38056_
                                      _self37124_))
                                   (let ((__tmp45798
                                          (let ((__tmp45799
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38057_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp45799))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp45798
                                      'gxc#!class-getf::t)))
                              (___kont4443044431_ _L38056_ _L38057_)
                              (___match4497944980_
                               _e3731638000_
                               _hd3731538003_
                               _tl3731438005_
                               _e3731938008_
                               _hd3731838011_
                               _tl3731738013_
                               _e3732238016_
                               _hd3732138019_
                               _tl3732038021_
                               _e3732538024_
                               _hd3732438027_
                               _tl3732338029_
                               _e3732838032_
                               _hd3732738035_
                               _tl3732638037_
                               _e3733138040_
                               _hd3733038043_
                               _tl3732938045_
                               _e3733438048_
                               _hd3733338051_
                               _tl3733238053_)))))
                     (___match4485944860_
                      (lambda (_e3731638000_
                               _hd3731538003_
                               _tl3731438005_
                               _e3731938008_
                               _hd3731838011_
                               _tl3731738013_
                               _e3732238016_
                               _hd3732138019_
                               _tl3732038021_
                               _e3732538024_
                               _hd3732438027_
                               _tl3732338029_
                               _e3732838032_
                               _hd3732738035_
                               _tl3732638037_
                               _e3733138040_
                               _hd3733038043_
                               _tl3732938045_
                               _e3733438048_
                               _hd3733338051_
                               _tl3733238053_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3732638037_))
                            (___match4486144862_
                             _e3731638000_
                             _hd3731538003_
                             _tl3731438005_
                             _e3731938008_
                             _hd3731838011_
                             _tl3731738013_
                             _e3732238016_
                             _hd3732138019_
                             _tl3732038021_
                             _e3732538024_
                             _hd3732438027_
                             _tl3732338029_
                             _e3732838032_
                             _hd3732738035_
                             _tl3732638037_
                             _e3733138040_
                             _hd3733038043_
                             _tl3732938045_
                             _e3733438048_
                             _hd3733338051_
                             _tl3733238053_)
                            (___match4491544916_
                             _e3731638000_
                             _hd3731538003_
                             _tl3731438005_
                             _e3731938008_
                             _hd3731838011_
                             _tl3731738013_
                             _e3732238016_
                             _hd3732138019_
                             _tl3732038021_
                             _e3732538024_
                             _hd3732438027_
                             _tl3732338029_
                             _e3732838032_
                             _hd3732738035_
                             _tl3732638037_
                             _e3733138040_
                             _hd3733038043_
                             _tl3732938045_
                             _e3733438048_
                             _hd3733338051_
                             _tl3733238053_))))
                     (___match4480544806_
                      (lambda (_e3728138089_
                               _hd3728038092_
                               _tl3727938094_
                               _e3728438097_
                               _hd3728338100_
                               _tl3728238102_
                               _e3728738105_
                               _hd3728638108_
                               _tl3728538110_
                               _e3729038113_
                               _hd3728938116_
                               _tl3728838118_
                               _e3729338121_
                               _hd3729238124_
                               _tl3729138126_
                               _e3729638129_
                               _hd3729538132_
                               _tl3729438134_
                               _e3729938137_
                               _hd3729838140_
                               _tl3729738142_
                               _e3730238145_
                               _hd3730138148_
                               _tl3730038150_
                               _e3730538153_
                               _hd3730438156_
                               _tl3730338158_
                               _e3730838161_
                               _hd3730738164_
                               _tl3730638166_
                               _e3731138169_
                               _hd3731038172_
                               _tl3730938174_)
                        (let ((_L38177_ _hd3731038172_)
                              (_L38178_ _hd3730738164_)
                              (_L38179_ _hd3729838140_)
                              (_L38180_ _hd3728938116_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38180_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38180_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38179_
                                      _self37124_)))
                              (___kont4442844429_
                               _L38177_
                               _L38178_
                               _L38179_
                               _L38180_)
                              (___kont4444244443_)))))
                     (___match4479744798_
                      (lambda (_e3728138089_
                               _hd3728038092_
                               _tl3727938094_
                               _e3728438097_
                               _hd3728338100_
                               _tl3728238102_
                               _e3728738105_
                               _hd3728638108_
                               _tl3728538110_
                               _e3729038113_
                               _hd3728938116_
                               _tl3728838118_
                               _e3729338121_
                               _hd3729238124_
                               _tl3729138126_
                               _e3729638129_
                               _hd3729538132_
                               _tl3729438134_
                               _e3729938137_
                               _hd3729838140_
                               _tl3729738142_
                               _e3730238145_
                               _hd3730138148_
                               _tl3730038150_
                               _e3730538153_
                               _hd3730438156_
                               _tl3730338158_
                               _e3730838161_
                               _hd3730738164_
                               _tl3730638166_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3730038150_))
                            (let ((_e3731138169_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3730038150_))))
                              (let ((_tl3730938174_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3731138169_)))
                                    (_hd3731038172_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3731138169_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3730938174_))
                                    (___match4480544806_
                                     _e3728138089_
                                     _hd3728038092_
                                     _tl3727938094_
                                     _e3728438097_
                                     _hd3728338100_
                                     _tl3728238102_
                                     _e3728738105_
                                     _hd3728638108_
                                     _tl3728538110_
                                     _e3729038113_
                                     _hd3728938116_
                                     _tl3728838118_
                                     _e3729338121_
                                     _hd3729238124_
                                     _tl3729138126_
                                     _e3729638129_
                                     _hd3729538132_
                                     _tl3729438134_
                                     _e3729938137_
                                     _hd3729838140_
                                     _tl3729738142_
                                     _e3730238145_
                                     _hd3730138148_
                                     _tl3730038150_
                                     _e3730538153_
                                     _hd3730438156_
                                     _tl3730338158_
                                     _e3730838161_
                                     _hd3730738164_
                                     _tl3730638166_
                                     _e3731138169_
                                     _hd3731038172_
                                     _tl3730938174_)
                                    (___kont4444244443_))))
                            (___match4492144922_
                             _e3728138089_
                             _hd3728038092_
                             _tl3727938094_
                             _e3728438097_
                             _hd3728338100_
                             _tl3728238102_
                             _e3728738105_
                             _hd3728638108_
                             _tl3728538110_
                             _e3729038113_
                             _hd3728938116_
                             _tl3728838118_
                             _e3729338121_
                             _hd3729238124_
                             _tl3729138126_
                             _e3729638129_
                             _hd3729538132_
                             _tl3729438134_
                             _e3729938137_
                             _hd3729838140_
                             _tl3729738142_
                             _e3730238145_
                             _hd3730138148_
                             _tl3730038150_))))
                     (___match4471944720_
                      (lambda (_e3724738223_
                               _hd3724638226_
                               _tl3724538228_
                               _e3725038231_
                               _hd3724938234_
                               _tl3724838236_
                               _e3725338239_
                               _hd3725238242_
                               _tl3725138244_
                               _e3725638247_
                               _hd3725538250_
                               _tl3725438252_
                               _e3725938255_
                               _hd3725838258_
                               _tl3725738260_
                               _e3726238263_
                               _hd3726138266_
                               _tl3726038268_
                               _e3726538271_
                               _hd3726438274_
                               _tl3726338276_
                               _e3726838279_
                               _hd3726738282_
                               _tl3726638284_
                               _e3727138287_
                               _hd3727038290_
                               _tl3726938292_
                               _e3727438295_
                               _hd3727338298_
                               _tl3727238300_)
                        (let ((_L38303_ _hd3727338298_)
                              (_L38304_ _hd3726438274_)
                              (_L38305_ _hd3725538250_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38305_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38305_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38304_
                                      _self37124_)))
                              (___kont4442644427_ _L38303_ _L38304_ _L38305_)
                              (___match4492344924_
                               _e3724738223_
                               _hd3724638226_
                               _tl3724538228_
                               _e3725038231_
                               _hd3724938234_
                               _tl3724838236_
                               _e3725338239_
                               _hd3725238242_
                               _tl3725138244_
                               _e3725638247_
                               _hd3725538250_
                               _tl3725438252_
                               _e3725938255_
                               _hd3725838258_
                               _tl3725738260_
                               _e3726238263_
                               _hd3726138266_
                               _tl3726038268_
                               _e3726538271_
                               _hd3726438274_
                               _tl3726338276_
                               _e3726838279_
                               _hd3726738282_
                               _tl3726638284_)))))
                     (___match4471744718_
                      (lambda (_e3724738223_
                               _hd3724638226_
                               _tl3724538228_
                               _e3725038231_
                               _hd3724938234_
                               _tl3724838236_
                               _e3725338239_
                               _hd3725238242_
                               _tl3725138244_
                               _e3725638247_
                               _hd3725538250_
                               _tl3725438252_
                               _e3725938255_
                               _hd3725838258_
                               _tl3725738260_
                               _e3726238263_
                               _hd3726138266_
                               _tl3726038268_
                               _e3726538271_
                               _hd3726438274_
                               _tl3726338276_
                               _e3726838279_
                               _hd3726738282_
                               _tl3726638284_
                               _e3727138287_
                               _hd3727038290_
                               _tl3726938292_
                               _e3727438295_
                               _hd3727338298_
                               _tl3727238300_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3726638284_))
                            (___match4471944720_
                             _e3724738223_
                             _hd3724638226_
                             _tl3724538228_
                             _e3725038231_
                             _hd3724938234_
                             _tl3724838236_
                             _e3725338239_
                             _hd3725238242_
                             _tl3725138244_
                             _e3725638247_
                             _hd3725538250_
                             _tl3725438252_
                             _e3725938255_
                             _hd3725838258_
                             _tl3725738260_
                             _e3726238263_
                             _hd3726138266_
                             _tl3726038268_
                             _e3726538271_
                             _hd3726438274_
                             _tl3726338276_
                             _e3726838279_
                             _hd3726738282_
                             _tl3726638284_
                             _e3727138287_
                             _hd3727038290_
                             _tl3726938292_
                             _e3727438295_
                             _hd3727338298_
                             _tl3727238300_)
                            (___match4479744798_
                             _e3724738223_
                             _hd3724638226_
                             _tl3724538228_
                             _e3725038231_
                             _hd3724938234_
                             _tl3724838236_
                             _e3725338239_
                             _hd3725238242_
                             _tl3725138244_
                             _e3725638247_
                             _hd3725538250_
                             _tl3725438252_
                             _e3725938255_
                             _hd3725838258_
                             _tl3725738260_
                             _e3726238263_
                             _hd3726138266_
                             _tl3726038268_
                             _e3726538271_
                             _hd3726438274_
                             _tl3726338276_
                             _e3726838279_
                             _hd3726738282_
                             _tl3726638284_
                             _e3727138287_
                             _hd3727038290_
                             _tl3726938292_
                             _e3727438295_
                             _hd3727338298_
                             _tl3727238300_))))
                     (___match4470744708_
                      (lambda (_e3724738223_
                               _hd3724638226_
                               _tl3724538228_
                               _e3725038231_
                               _hd3724938234_
                               _tl3724838236_
                               _e3725338239_
                               _hd3725238242_
                               _tl3725138244_
                               _e3725638247_
                               _hd3725538250_
                               _tl3725438252_
                               _e3725938255_
                               _hd3725838258_
                               _tl3725738260_
                               _e3726238263_
                               _hd3726138266_
                               _tl3726038268_
                               _e3726538271_
                               _hd3726438274_
                               _tl3726338276_
                               _e3726838279_
                               _hd3726738282_
                               _tl3726638284_
                               _e3727138287_
                               _hd3727038290_
                               _tl3726938292_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd3727038290_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3726938292_))
                                (let ((_e3727438295_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3726938292_))))
                                  (let ((_tl3727238300_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3727438295_)))
                                        (_hd3727338298_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3727438295_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3727238300_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl3726638284_))
                                            (___match4471944720_
                                             _e3724738223_
                                             _hd3724638226_
                                             _tl3724538228_
                                             _e3725038231_
                                             _hd3724938234_
                                             _tl3724838236_
                                             _e3725338239_
                                             _hd3725238242_
                                             _tl3725138244_
                                             _e3725638247_
                                             _hd3725538250_
                                             _tl3725438252_
                                             _e3725938255_
                                             _hd3725838258_
                                             _tl3725738260_
                                             _e3726238263_
                                             _hd3726138266_
                                             _tl3726038268_
                                             _e3726538271_
                                             _hd3726438274_
                                             _tl3726338276_
                                             _e3726838279_
                                             _hd3726738282_
                                             _tl3726638284_
                                             _e3727138287_
                                             _hd3727038290_
                                             _tl3726938292_
                                             _e3727438295_
                                             _hd3727338298_
                                             _tl3727238300_)
                                            (___match4479744798_
                                             _e3724738223_
                                             _hd3724638226_
                                             _tl3724538228_
                                             _e3725038231_
                                             _hd3724938234_
                                             _tl3724838236_
                                             _e3725338239_
                                             _hd3725238242_
                                             _tl3725138244_
                                             _e3725638247_
                                             _hd3725538250_
                                             _tl3725438252_
                                             _e3725938255_
                                             _hd3725838258_
                                             _tl3725738260_
                                             _e3726238263_
                                             _hd3726138266_
                                             _tl3726038268_
                                             _e3726538271_
                                             _hd3726438274_
                                             _tl3726338276_
                                             _e3726838279_
                                             _hd3726738282_
                                             _tl3726638284_
                                             _e3727138287_
                                             _hd3727038290_
                                             _tl3726938292_
                                             _e3727438295_
                                             _hd3727338298_
                                             _tl3727238300_))
                                        (___match4492144922_
                                         _e3724738223_
                                         _hd3724638226_
                                         _tl3724538228_
                                         _e3725038231_
                                         _hd3724938234_
                                         _tl3724838236_
                                         _e3725338239_
                                         _hd3725238242_
                                         _tl3725138244_
                                         _e3725638247_
                                         _hd3725538250_
                                         _tl3725438252_
                                         _e3725938255_
                                         _hd3725838258_
                                         _tl3725738260_
                                         _e3726238263_
                                         _hd3726138266_
                                         _tl3726038268_
                                         _e3726538271_
                                         _hd3726438274_
                                         _tl3726338276_
                                         _e3726838279_
                                         _hd3726738282_
                                         _tl3726638284_))))
                                (___match4492144922_
                                 _e3724738223_
                                 _hd3724638226_
                                 _tl3724538228_
                                 _e3725038231_
                                 _hd3724938234_
                                 _tl3724838236_
                                 _e3725338239_
                                 _hd3725238242_
                                 _tl3725138244_
                                 _e3725638247_
                                 _hd3725538250_
                                 _tl3725438252_
                                 _e3725938255_
                                 _hd3725838258_
                                 _tl3725738260_
                                 _e3726238263_
                                 _hd3726138266_
                                 _tl3726038268_
                                 _e3726538271_
                                 _hd3726438274_
                                 _tl3726338276_
                                 _e3726838279_
                                 _hd3726738282_
                                 _tl3726638284_))
                            (___match4492144922_
                             _e3724738223_
                             _hd3724638226_
                             _tl3724538228_
                             _e3725038231_
                             _hd3724938234_
                             _tl3724838236_
                             _e3725338239_
                             _hd3725238242_
                             _tl3725138244_
                             _e3725638247_
                             _hd3725538250_
                             _tl3725438252_
                             _e3725938255_
                             _hd3725838258_
                             _tl3725738260_
                             _e3726238263_
                             _hd3726138266_
                             _tl3726038268_
                             _e3726538271_
                             _hd3726438274_
                             _tl3726338276_
                             _e3726838279_
                             _hd3726738282_
                             _tl3726638284_))))
                     (___match4463944640_
                      (lambda (_e3719638344_
                               _hd3719538347_
                               _tl3719438349_
                               _e3719938352_
                               _hd3719838355_
                               _tl3719738357_
                               _e3720238360_
                               _hd3720138363_
                               _tl3720038365_
                               _e3720538368_
                               _hd3720438371_
                               _tl3720338373_
                               _e3720838376_
                               _hd3720738379_
                               _tl3720638381_
                               _e3721138384_
                               _hd3721038387_
                               _tl3720938389_
                               _e3721438392_
                               _hd3721338395_
                               _tl3721238397_
                               _e3721738400_
                               _hd3721638403_
                               _tl3721538405_
                               _e3722038408_
                               _hd3721938411_
                               _tl3721838413_
                               _e3722338416_
                               _hd3722238419_
                               _tl3722138421_
                               _e3722638424_
                               _hd3722538427_
                               _tl3722438429_
                               _e3722938432_
                               _hd3722838435_
                               _tl3722738437_
                               _e3723238440_
                               _hd3723138443_
                               _tl3723038445_
                               ___splice4442444425_
                               _target3723338448_
                               _tl3723538450_)
                        (letrec ((_loop3723638453_
                                  (lambda (_hd3723438456_ _args3724038458_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3723438456_))
                                        (let ((_e3723738461_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3723438456_))))
                                          (let ((_lp-tl3723938466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3723738461_)))
                                                (_lp-hd3723838464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3723738461_))))
                                            (let ((__tmp45800
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3723838464_
                                                           _args3724038458_))))
                                              (declare (not safe))
                                              (_loop3723638453_
                                               _lp-tl3723938466_
                                               __tmp45800))))
                                        (let ((_args3724138469_
                                               (let ()
                                                 (declare (not safe))
                                                 (reverse _args3724038458_))))
                                          (let ((_L38472_ _args3724138469_)
                                                (_L38473_ _hd3723138443_)
                                                (_L38474_ _hd3722238419_)
                                                (_L38475_ _hd3721338395_)
                                                (_L38476_ _hd3720438371_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38476_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38475_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L38474_
                                                        _self37124_)))
                                                (___kont4442244423_
                                                 _L38472_
                                                 _L38473_
                                                 _L38474_
                                                 _L38475_
                                                 _L38476_)
                                                (___kont4444244443_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3723638453_ _target3723338448_ '())))))
                     (___match4459744598_
                      (lambda (_e3719638344_
                               _hd3719538347_
                               _tl3719438349_
                               _e3719938352_
                               _hd3719838355_
                               _tl3719738357_
                               _e3720238360_
                               _hd3720138363_
                               _tl3720038365_
                               _e3720538368_
                               _hd3720438371_
                               _tl3720338373_
                               _e3720838376_
                               _hd3720738379_
                               _tl3720638381_
                               _e3721138384_
                               _hd3721038387_
                               _tl3720938389_
                               _e3721438392_
                               _hd3721338395_
                               _tl3721238397_
                               _e3721738400_
                               _hd3721638403_
                               _tl3721538405_
                               _e3722038408_
                               _hd3721938411_
                               _tl3721838413_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd3721938411_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3721838413_))
                                (let ((_e3722338416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3721838413_))))
                                  (let ((_tl3722138421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3722338416_)))
                                        (_hd3722238419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3722338416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3722138421_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3721538405_))
                                            (let ((_e3722638424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3721538405_))))
                                              (let ((_tl3722438429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3722638424_)))
                                                    (_hd3722538427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3722638424_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd3722538427_))
                                                    (let ((_e3722938432_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd3722538427_))))
                                                      (let ((_tl3722738437_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3722938432_)))
                    (_hd3722838435_
                     (let () (declare (not safe)) (##car _e3722938432_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd3722838435_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd3722838435_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3722738437_))
                            (let ((_e3723238440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3722738437_))))
                              (let ((_tl3723038445_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3723238440_)))
                                    (_hd3723138443_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3723238440_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3723038445_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl3722438429_))
                                        (let ((___splice4442444425_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl3722438429_
                                                  '0))))
                                          (let ((_tl3723538450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4442444425_
                                                    '1)))
                                                (_target3723338448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4442444425_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl3723538450_))
                                                (___match4463944640_
                                                 _e3719638344_
                                                 _hd3719538347_
                                                 _tl3719438349_
                                                 _e3719938352_
                                                 _hd3719838355_
                                                 _tl3719738357_
                                                 _e3720238360_
                                                 _hd3720138363_
                                                 _tl3720038365_
                                                 _e3720538368_
                                                 _hd3720438371_
                                                 _tl3720338373_
                                                 _e3720838376_
                                                 _hd3720738379_
                                                 _tl3720638381_
                                                 _e3721138384_
                                                 _hd3721038387_
                                                 _tl3720938389_
                                                 _e3721438392_
                                                 _hd3721338395_
                                                 _tl3721238397_
                                                 _e3721738400_
                                                 _hd3721638403_
                                                 _tl3721538405_
                                                 _e3722038408_
                                                 _hd3721938411_
                                                 _tl3721838413_
                                                 _e3722338416_
                                                 _hd3722238419_
                                                 _tl3722138421_
                                                 _e3722638424_
                                                 _hd3722538427_
                                                 _tl3722438429_
                                                 _e3722938432_
                                                 _hd3722838435_
                                                 _tl3722738437_
                                                 _e3723238440_
                                                 _hd3723138443_
                                                 _tl3723038445_
                                                 ___splice4442444425_
                                                 _target3723338448_
                                                 _tl3723538450_)
                                                (___kont4444244443_))))
                                        (___kont4444244443_))
                                    (___kont4444244443_))))
                            (___kont4444244443_))
                        (___kont4444244443_))
                    (___kont4444244443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4444244443_))))
                                            (___match4492144922_
                                             _e3719638344_
                                             _hd3719538347_
                                             _tl3719438349_
                                             _e3719938352_
                                             _hd3719838355_
                                             _tl3719738357_
                                             _e3720238360_
                                             _hd3720138363_
                                             _tl3720038365_
                                             _e3720538368_
                                             _hd3720438371_
                                             _tl3720338373_
                                             _e3720838376_
                                             _hd3720738379_
                                             _tl3720638381_
                                             _e3721138384_
                                             _hd3721038387_
                                             _tl3720938389_
                                             _e3721438392_
                                             _hd3721338395_
                                             _tl3721238397_
                                             _e3721738400_
                                             _hd3721638403_
                                             _tl3721538405_))
                                        (___match4492144922_
                                         _e3719638344_
                                         _hd3719538347_
                                         _tl3719438349_
                                         _e3719938352_
                                         _hd3719838355_
                                         _tl3719738357_
                                         _e3720238360_
                                         _hd3720138363_
                                         _tl3720038365_
                                         _e3720538368_
                                         _hd3720438371_
                                         _tl3720338373_
                                         _e3720838376_
                                         _hd3720738379_
                                         _tl3720638381_
                                         _e3721138384_
                                         _hd3721038387_
                                         _tl3720938389_
                                         _e3721438392_
                                         _hd3721338395_
                                         _tl3721238397_
                                         _e3721738400_
                                         _hd3721638403_
                                         _tl3721538405_))))
                                (___match4492144922_
                                 _e3719638344_
                                 _hd3719538347_
                                 _tl3719438349_
                                 _e3719938352_
                                 _hd3719838355_
                                 _tl3719738357_
                                 _e3720238360_
                                 _hd3720138363_
                                 _tl3720038365_
                                 _e3720538368_
                                 _hd3720438371_
                                 _tl3720338373_
                                 _e3720838376_
                                 _hd3720738379_
                                 _tl3720638381_
                                 _e3721138384_
                                 _hd3721038387_
                                 _tl3720938389_
                                 _e3721438392_
                                 _hd3721338395_
                                 _tl3721238397_
                                 _e3721738400_
                                 _hd3721638403_
                                 _tl3721538405_))
                            (___match4470744708_
                             _e3719638344_
                             _hd3719538347_
                             _tl3719438349_
                             _e3719938352_
                             _hd3719838355_
                             _tl3719738357_
                             _e3720238360_
                             _hd3720138363_
                             _tl3720038365_
                             _e3720538368_
                             _hd3720438371_
                             _tl3720338373_
                             _e3720838376_
                             _hd3720738379_
                             _tl3720638381_
                             _e3721138384_
                             _hd3721038387_
                             _tl3720938389_
                             _e3721438392_
                             _hd3721338395_
                             _tl3721238397_
                             _e3721738400_
                             _hd3721638403_
                             _tl3721538405_
                             _e3722038408_
                             _hd3721938411_
                             _tl3721838413_))))
                     (___match4452944530_
                      (lambda (_e3715238536_
                               _hd3715138539_
                               _tl3715038541_
                               _e3715538544_
                               _hd3715438547_
                               _tl3715338549_
                               _e3715838552_
                               _hd3715738555_
                               _tl3715638557_
                               _e3716138560_
                               _hd3716038563_
                               _tl3715938565_
                               _e3716438568_
                               _hd3716338571_
                               _tl3716238573_
                               _e3716738576_
                               _hd3716638579_
                               _tl3716538581_
                               _e3717038584_
                               _hd3716938587_
                               _tl3716838589_
                               _e3717338592_
                               _hd3717238595_
                               _tl3717138597_
                               _e3717638600_
                               _hd3717538603_
                               _tl3717438605_
                               _e3717938608_
                               _hd3717838611_
                               _tl3717738613_
                               ___splice4442044421_
                               _target3718038616_
                               _tl3718238618_)
                        (letrec ((_loop3718338621_
                                  (lambda (_hd3718138624_ _args3718738626_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3718138624_))
                                        (let ((_e3718438629_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3718138624_))))
                                          (let ((_lp-tl3718638634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3718438629_)))
                                                (_lp-hd3718538632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3718438629_))))
                                            (let ((__tmp45801
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3718538632_
                                                           _args3718738626_))))
                                              (declare (not safe))
                                              (_loop3718338621_
                                               _lp-tl3718638634_
                                               __tmp45801))))
                                        (let ((_args3718838637_
                                               (let ()
                                                 (declare (not safe))
                                                 (reverse _args3718738626_))))
                                          (let ((_L38640_ _args3718838637_)
                                                (_L38641_ _hd3717838611_)
                                                (_L38642_ _hd3716938587_)
                                                (_L38643_ _hd3716038563_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38643_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L38642_
                                                        _self37124_)))
                                                (___kont4441844419_
                                                 _L38640_
                                                 _L38641_
                                                 _L38642_
                                                 _L38643_)
                                                (___match4471744718_
                                                 _e3715238536_
                                                 _hd3715138539_
                                                 _tl3715038541_
                                                 _e3715538544_
                                                 _hd3715438547_
                                                 _tl3715338549_
                                                 _e3715838552_
                                                 _hd3715738555_
                                                 _tl3715638557_
                                                 _e3716138560_
                                                 _hd3716038563_
                                                 _tl3715938565_
                                                 _e3716438568_
                                                 _hd3716338571_
                                                 _tl3716238573_
                                                 _e3716738576_
                                                 _hd3716638579_
                                                 _tl3716538581_
                                                 _e3717038584_
                                                 _hd3716938587_
                                                 _tl3716838589_
                                                 _e3717338592_
                                                 _hd3717238595_
                                                 _tl3717138597_
                                                 _e3717638600_
                                                 _hd3717538603_
                                                 _tl3717438605_
                                                 _e3717938608_
                                                 _hd3717838611_
                                                 _tl3717738613_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3718338621_ _target3718038616_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4441644417_))
                    (let ((_e3715238536_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4441644417_))))
                      (let ((_tl3715038541_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3715238536_)))
                            (_hd3715138539_
                             (let ()
                               (declare (not safe))
                               (##car _e3715238536_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3715038541_))
                            (let ((_e3715538544_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3715038541_))))
                              (let ((_tl3715338549_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3715538544_)))
                                    (_hd3715438547_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3715538544_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd3715438547_))
                                    (let ((_e3715838552_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd3715438547_))))
                                      (let ((_tl3715638557_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3715838552_)))
                                            (_hd3715738555_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3715838552_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd3715738555_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd3715738555_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl3715638557_))
                                                    (let ((_e3716138560_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl3715638557_))))
                                                      (let ((_tl3715938565_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3716138560_)))
                    (_hd3716038563_
                     (let () (declare (not safe)) (##car _e3716138560_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl3715938565_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl3715338549_))
                        (let ((_e3716438568_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl3715338549_))))
                          (let ((_tl3716238573_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3716438568_)))
                                (_hd3716338571_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3716438568_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd3716338571_))
                                (let ((_e3716738576_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd3716338571_))))
                                  (let ((_tl3716538581_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3716738576_)))
                                        (_hd3716638579_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3716738576_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd3716638579_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd3716638579_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl3716538581_))
                                                (let ((_e3717038584_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl3716538581_))))
                                                  (let ((_tl3716838589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3717038584_)))
                                                        (_hd3716938587_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3717038584_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl3716838589_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl3716238573_))
                                                            (let ((_e3717338592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl3716238573_))))
                      (let ((_tl3717138597_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3717338592_)))
                            (_hd3717238595_
                             (let ()
                               (declare (not safe))
                               (##car _e3717338592_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd3717238595_))
                            (let ((_e3717638600_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd3717238595_))))
                              (let ((_tl3717438605_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3717638600_)))
                                    (_hd3717538603_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3717638600_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd3717538603_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd3717538603_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3717438605_))
                                            (let ((_e3717938608_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3717438605_))))
                                              (let ((_tl3717738613_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3717938608_)))
                                                    (_hd3717838611_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3717938608_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl3717738613_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl3717138597_))
                                                        (let ((___splice4442044421_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl3717138597_ '0))))
                  (let ((_tl3718238618_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4442044421_ '1)))
                        (_target3718038616_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4442044421_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl3718238618_))
                        (___match4452944530_
                         _e3715238536_
                         _hd3715138539_
                         _tl3715038541_
                         _e3715538544_
                         _hd3715438547_
                         _tl3715338549_
                         _e3715838552_
                         _hd3715738555_
                         _tl3715638557_
                         _e3716138560_
                         _hd3716038563_
                         _tl3715938565_
                         _e3716438568_
                         _hd3716338571_
                         _tl3716238573_
                         _e3716738576_
                         _hd3716638579_
                         _tl3716538581_
                         _e3717038584_
                         _hd3716938587_
                         _tl3716838589_
                         _e3717338592_
                         _hd3717238595_
                         _tl3717138597_
                         _e3717638600_
                         _hd3717538603_
                         _tl3717438605_
                         _e3717938608_
                         _hd3717838611_
                         _tl3717738613_
                         ___splice4442044421_
                         _target3718038616_
                         _tl3718238618_)
                        (___match4471744718_
                         _e3715238536_
                         _hd3715138539_
                         _tl3715038541_
                         _e3715538544_
                         _hd3715438547_
                         _tl3715338549_
                         _e3715838552_
                         _hd3715738555_
                         _tl3715638557_
                         _e3716138560_
                         _hd3716038563_
                         _tl3715938565_
                         _e3716438568_
                         _hd3716338571_
                         _tl3716238573_
                         _e3716738576_
                         _hd3716638579_
                         _tl3716538581_
                         _e3717038584_
                         _hd3716938587_
                         _tl3716838589_
                         _e3717338592_
                         _hd3717238595_
                         _tl3717138597_
                         _e3717638600_
                         _hd3717538603_
                         _tl3717438605_
                         _e3717938608_
                         _hd3717838611_
                         _tl3717738613_))))
                (___match4471744718_
                 _e3715238536_
                 _hd3715138539_
                 _tl3715038541_
                 _e3715538544_
                 _hd3715438547_
                 _tl3715338549_
                 _e3715838552_
                 _hd3715738555_
                 _tl3715638557_
                 _e3716138560_
                 _hd3716038563_
                 _tl3715938565_
                 _e3716438568_
                 _hd3716338571_
                 _tl3716238573_
                 _e3716738576_
                 _hd3716638579_
                 _tl3716538581_
                 _e3717038584_
                 _hd3716938587_
                 _tl3716838589_
                 _e3717338592_
                 _hd3717238595_
                 _tl3717138597_
                 _e3717638600_
                 _hd3717538603_
                 _tl3717438605_
                 _e3717938608_
                 _hd3717838611_
                 _tl3717738613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4492144922_
                                                     _e3715238536_
                                                     _hd3715138539_
                                                     _tl3715038541_
                                                     _e3715538544_
                                                     _hd3715438547_
                                                     _tl3715338549_
                                                     _e3715838552_
                                                     _hd3715738555_
                                                     _tl3715638557_
                                                     _e3716138560_
                                                     _hd3716038563_
                                                     _tl3715938565_
                                                     _e3716438568_
                                                     _hd3716338571_
                                                     _tl3716238573_
                                                     _e3716738576_
                                                     _hd3716638579_
                                                     _tl3716538581_
                                                     _e3717038584_
                                                     _hd3716938587_
                                                     _tl3716838589_
                                                     _e3717338592_
                                                     _hd3717238595_
                                                     _tl3717138597_))))
                                            (___match4492144922_
                                             _e3715238536_
                                             _hd3715138539_
                                             _tl3715038541_
                                             _e3715538544_
                                             _hd3715438547_
                                             _tl3715338549_
                                             _e3715838552_
                                             _hd3715738555_
                                             _tl3715638557_
                                             _e3716138560_
                                             _hd3716038563_
                                             _tl3715938565_
                                             _e3716438568_
                                             _hd3716338571_
                                             _tl3716238573_
                                             _e3716738576_
                                             _hd3716638579_
                                             _tl3716538581_
                                             _e3717038584_
                                             _hd3716938587_
                                             _tl3716838589_
                                             _e3717338592_
                                             _hd3717238595_
                                             _tl3717138597_))
                                        (___match4459744598_
                                         _e3715238536_
                                         _hd3715138539_
                                         _tl3715038541_
                                         _e3715538544_
                                         _hd3715438547_
                                         _tl3715338549_
                                         _e3715838552_
                                         _hd3715738555_
                                         _tl3715638557_
                                         _e3716138560_
                                         _hd3716038563_
                                         _tl3715938565_
                                         _e3716438568_
                                         _hd3716338571_
                                         _tl3716238573_
                                         _e3716738576_
                                         _hd3716638579_
                                         _tl3716538581_
                                         _e3717038584_
                                         _hd3716938587_
                                         _tl3716838589_
                                         _e3717338592_
                                         _hd3717238595_
                                         _tl3717138597_
                                         _e3717638600_
                                         _hd3717538603_
                                         _tl3717438605_))
                                    (___match4492144922_
                                     _e3715238536_
                                     _hd3715138539_
                                     _tl3715038541_
                                     _e3715538544_
                                     _hd3715438547_
                                     _tl3715338549_
                                     _e3715838552_
                                     _hd3715738555_
                                     _tl3715638557_
                                     _e3716138560_
                                     _hd3716038563_
                                     _tl3715938565_
                                     _e3716438568_
                                     _hd3716338571_
                                     _tl3716238573_
                                     _e3716738576_
                                     _hd3716638579_
                                     _tl3716538581_
                                     _e3717038584_
                                     _hd3716938587_
                                     _tl3716838589_
                                     _e3717338592_
                                     _hd3717238595_
                                     _tl3717138597_))))
                            (___match4492144922_
                             _e3715238536_
                             _hd3715138539_
                             _tl3715038541_
                             _e3715538544_
                             _hd3715438547_
                             _tl3715338549_
                             _e3715838552_
                             _hd3715738555_
                             _tl3715638557_
                             _e3716138560_
                             _hd3716038563_
                             _tl3715938565_
                             _e3716438568_
                             _hd3716338571_
                             _tl3716238573_
                             _e3716738576_
                             _hd3716638579_
                             _tl3716538581_
                             _e3717038584_
                             _hd3716938587_
                             _tl3716838589_
                             _e3717338592_
                             _hd3717238595_
                             _tl3717138597_))))
                    (___match4485944860_
                     _e3715238536_
                     _hd3715138539_
                     _tl3715038541_
                     _e3715538544_
                     _hd3715438547_
                     _tl3715338549_
                     _e3715838552_
                     _hd3715738555_
                     _tl3715638557_
                     _e3716138560_
                     _hd3716038563_
                     _tl3715938565_
                     _e3716438568_
                     _hd3716338571_
                     _tl3716238573_
                     _e3716738576_
                     _hd3716638579_
                     _tl3716538581_
                     _e3717038584_
                     _hd3716938587_
                     _tl3716838589_))
                (___kont4444244443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4444244443_))
                                            (___kont4444244443_))
                                        (___kont4444244443_))))
                                (___kont4444244443_))))
                        (___kont4444244443_))
                    (___kont4444244443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4444244443_))
                                                (___kont4444244443_))
                                            (___kont4444244443_))))
                                    (___kont4444244443_))))
                            (___kont4444244443_))))
                    (___kont4444244443_))))))))))
