(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707674934)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl249511_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255207 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl249511_ __tmp255207))
           (let ()
             (declare (not safe))
             (table-set! _tbl249511_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249511_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249511_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249511_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl249511_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx249494_ . _args249496_)
        (let ((__tmp255209
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249496_)
                     (gxc#compile-e__0 _stx249494_)
                     (let ((_arg1249501_ (car _args249496_))
                           (_rest249503_ (cdr _args249496_)))
                       (if (null? _rest249503_)
                           (gxc#compile-e__1 _stx249494_ _arg1249501_)
                           (let ((_arg2249506_ (car _rest249503_))
                                 (_rest249508_ (cdr _rest249503_)))
                             (if (null? _rest249508_)
                                 (gxc#compile-e__2
                                  _stx249494_
                                  _arg1249501_
                                  _arg2249506_)
                                 (apply gxc#compile-e
                                        _stx249494_
                                        _arg1249501_
                                        _arg2249506_
                                        _rest249508_))))))))
              (__tmp255208 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp255209
           gxc#current-compile-methods
           __tmp255208))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249491_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255210 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl249491_ __tmp255210))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl249491_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl249491_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl249491_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx249474_ . _args249476_)
        (let ((__tmp255212
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249476_)
                     (gxc#compile-e__0 _stx249474_)
                     (let ((_arg1249481_ (car _args249476_))
                           (_rest249483_ (cdr _args249476_)))
                       (if (null? _rest249483_)
                           (gxc#compile-e__1 _stx249474_ _arg1249481_)
                           (let ((_arg2249486_ (car _rest249483_))
                                 (_rest249488_ (cdr _rest249483_)))
                             (if (null? _rest249488_)
                                 (gxc#compile-e__2
                                  _stx249474_
                                  _arg1249481_
                                  _arg2249486_)
                                 (apply gxc#compile-e
                                        _stx249474_
                                        _arg1249481_
                                        _arg2249486_
                                        _rest249488_))))))))
              (__tmp255211 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255212
           gxc#current-compile-methods
           __tmp255211))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl249471_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255213 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl249471_ __tmp255213))
           (let ()
             (declare (not safe))
             (table-set! _tbl249471_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl249471_ '%#call gxc#subst-object-refs-call%))
           _tbl249471_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx249454_ . _args249456_)
        (let ((__tmp255215
               (lambda ()
                 (declare (not safe))
                 (if (null? _args249456_)
                     (gxc#compile-e__0 _stx249454_)
                     (let ((_arg1249461_ (car _args249456_))
                           (_rest249463_ (cdr _args249456_)))
                       (if (null? _rest249463_)
                           (gxc#compile-e__1 _stx249454_ _arg1249461_)
                           (let ((_arg2249466_ (car _rest249463_))
                                 (_rest249468_ (cdr _rest249463_)))
                             (if (null? _rest249468_)
                                 (gxc#compile-e__2
                                  _stx249454_
                                  _arg1249461_
                                  _arg2249466_)
                                 (apply gxc#compile-e
                                        _stx249454_
                                        _arg1249461_
                                        _arg2249466_
                                        _rest249468_))))))))
              (__tmp255214 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255215
           gxc#current-compile-methods
           __tmp255214))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx246124_)
        (letrec ((_generate-method-bind246126_
                  (lambda (_$t249448_ _id249449_ _$id249450_)
                    (let ((_$tmp249452_
                           (let ((__tmp255216 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255216))))
                      (let ((__tmp255261
                             (let ()
                               (declare (not safe))
                               (cons _$id249450_ '())))
                            (__tmp255217
                             (let ((__tmp255218
                                    (let ((__tmp255219
                                           (let ((__tmp255259
                                                  (let ((__tmp255260
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255260)))
                                                 (__tmp255220
                                                  (let ((__tmp255221
                                                         (let ((__tmp255222
                                                                (let ((__tmp255223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255224
                                      (let ((__tmp255225
                                             (let ((__tmp255245
                                                    (let ((__tmp255246
                                                           (let ((__tmp255258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp249452_ '())))
                         (__tmp255247
                          (let ((__tmp255248
                                 (let ((__tmp255249
                                        (let ((__tmp255256
                                               (let ((__tmp255257
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp255257)))
                                              (__tmp255250
                                               (let ((__tmp255254
                                                      (let ((__tmp255255
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t249448_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp255255)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255251
                                                      (let ((__tmp255252
                                                             (let ((__tmp255253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id249449_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp255253))))
                (declare (not safe))
                (cons __tmp255252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp255254
                                                       __tmp255251))))
                                          (declare (not safe))
                                          (cons __tmp255256 __tmp255250))))
                                   (declare (not safe))
                                   (cons '%#call __tmp255249))))
                            (declare (not safe))
                            (cons __tmp255248 '()))))
                     (declare (not safe))
                     (cons __tmp255258 __tmp255247))))
              (declare (not safe))
              (cons __tmp255246 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255226
                                                    (let ((__tmp255227
                                                           (let ((__tmp255228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255243
                                 (let ((__tmp255244
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp249452_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp255244)))
                                (__tmp255229
                                 (let ((__tmp255241
                                        (let ((__tmp255242
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp249452_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp255242)))
                                       (__tmp255230
                                        (let ((__tmp255231
                                               (let ((__tmp255232
                                                      (let ((__tmp255239
                                                             (let ((__tmp255240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp255240)))
                    (__tmp255233
                     (let ((__tmp255237
                            (let ((__tmp255238
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp255238)))
                           (__tmp255234
                            (let ((__tmp255235
                                   (let ((__tmp255236
                                          (let ()
                                            (declare (not safe))
                                            (cons _id249449_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp255236))))
                              (declare (not safe))
                              (cons __tmp255235 '()))))
                       (declare (not safe))
                       (cons __tmp255237 __tmp255234))))
                (declare (not safe))
                (cons __tmp255239 __tmp255233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp255232))))
                                          (declare (not safe))
                                          (cons __tmp255231 '()))))
                                   (declare (not safe))
                                   (cons __tmp255241 __tmp255230))))
                            (declare (not safe))
                            (cons __tmp255243 __tmp255229))))
                     (declare (not safe))
                     (cons '%#if __tmp255228))))
              (declare (not safe))
              (cons __tmp255227 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255245
                                                     __tmp255226))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp255225))))
                                 (declare (not safe))
                                 (cons __tmp255224 '()))))
                          (declare (not safe))
                          (cons '() __tmp255223))))
                   (declare (not safe))
                   (cons '%#lambda __tmp255222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255221 '()))))
                                             (declare (not safe))
                                             (cons __tmp255259 __tmp255220))))
                                      (declare (not safe))
                                      (cons '%#call __tmp255219))))
                               (declare (not safe))
                               (cons __tmp255218 '()))))
                        (declare (not safe))
                        (cons __tmp255261 __tmp255217)))))
                 (_generate-slot-bind246127_
                  (lambda (_$t249442_ _id249443_ _$id249444_)
                    (let ((_$tmp249446_
                           (let ((__tmp255262 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255262))))
                      (let ((__tmp255299
                             (let ()
                               (declare (not safe))
                               (cons _$id249444_ '())))
                            (__tmp255263
                             (let ((__tmp255264
                                    (let ((__tmp255265
                                           (let ((__tmp255285
                                                  (let ((__tmp255286
                                                         (let ((__tmp255298
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp249446_ '())))
                       (__tmp255287
                        (let ((__tmp255288
                               (let ((__tmp255289
                                      (let ((__tmp255296
                                             (let ((__tmp255297
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp255297)))
                                            (__tmp255290
                                             (let ((__tmp255294
                                                    (let ((__tmp255295
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t249442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp255295)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255291
                                                    (let ((__tmp255292
                                                           (let ((__tmp255293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id249443_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp255293))))
              (declare (not safe))
              (cons __tmp255292 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp255294
                                                     __tmp255291))))
                                        (declare (not safe))
                                        (cons __tmp255296 __tmp255290))))
                                 (declare (not safe))
                                 (cons '%#call __tmp255289))))
                          (declare (not safe))
                          (cons __tmp255288 '()))))
                   (declare (not safe))
                   (cons __tmp255298 __tmp255287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255286 '())))
                                                 (__tmp255266
                                                  (let ((__tmp255267
                                                         (let ((__tmp255268
                                                                (let ((__tmp255283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255284
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp249446_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255284)))
                              (__tmp255269
                               (let ((__tmp255281
                                      (let ((__tmp255282
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp249446_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp255282)))
                                     (__tmp255270
                                      (let ((__tmp255271
                                             (let ((__tmp255272
                                                    (let ((__tmp255279
                                                           (let ((__tmp255280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp255280)))
                  (__tmp255273
                   (let ((__tmp255277
                          (let ((__tmp255278
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp255278)))
                         (__tmp255274
                          (let ((__tmp255275
                                 (let ((__tmp255276
                                        (let ()
                                          (declare (not safe))
                                          (cons _id249443_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp255276))))
                            (declare (not safe))
                            (cons __tmp255275 '()))))
                     (declare (not safe))
                     (cons __tmp255277 __tmp255274))))
              (declare (not safe))
              (cons __tmp255279 __tmp255273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp255272))))
                                        (declare (not safe))
                                        (cons __tmp255271 '()))))
                                 (declare (not safe))
                                 (cons __tmp255281 __tmp255270))))
                          (declare (not safe))
                          (cons __tmp255283 __tmp255269))))
                   (declare (not safe))
                   (cons '%#if __tmp255268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255267 '()))))
                                             (declare (not safe))
                                             (cons __tmp255285 __tmp255266))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp255265))))
                               (declare (not safe))
                               (cons __tmp255264 '()))))
                        (declare (not safe))
                        (cons __tmp255299 __tmp255263)))))
                 (_generate-class-check-bind246128_
                  (lambda (_$t249438_ _class-type249439_ _$class-type249440_)
                    (let ((__tmp255311
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249440_ '())))
                          (__tmp255300
                           (let ((__tmp255301
                                  (let ((__tmp255302
                                         (let ((__tmp255309
                                                (let ((__tmp255310
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255310)))
                                               (__tmp255303
                                                (let ((__tmp255307
                                                       (let ((__tmp255308
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249438_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255308)))
              (__tmp255304
               (let ((__tmp255305
                      (let ((__tmp255306
                             (let ()
                               (declare (not safe))
                               (cons _class-type249439_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255306))))
                 (declare (not safe))
                 (cons __tmp255305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255307
                                                        __tmp255304))))
                                           (declare (not safe))
                                           (cons __tmp255309 __tmp255303))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255302))))
                             (declare (not safe))
                             (cons __tmp255301 '()))))
                      (declare (not safe))
                      (cons __tmp255311 __tmp255300))))
                 (_generate-struct-check-bind246129_
                  (lambda (_$t249434_ _class-type249435_ _$class-type249436_)
                    (let ((__tmp255323
                           (let ()
                             (declare (not safe))
                             (cons _$class-type249436_ '())))
                          (__tmp255312
                           (let ((__tmp255313
                                  (let ((__tmp255314
                                         (let ((__tmp255321
                                                (let ((__tmp255322
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp255322)))
                                               (__tmp255315
                                                (let ((__tmp255319
                                                       (let ((__tmp255320
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t249434_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255320)))
              (__tmp255316
               (let ((__tmp255317
                      (let ((__tmp255318
                             (let ()
                               (declare (not safe))
                               (cons _class-type249435_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp255318))))
                 (declare (not safe))
                 (cons __tmp255317 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255319
                                                        __tmp255316))))
                                           (declare (not safe))
                                           (cons __tmp255321 __tmp255315))))
                                    (declare (not safe))
                                    (cons '%#call __tmp255314))))
                             (declare (not safe))
                             (cons __tmp255313 '()))))
                      (declare (not safe))
                      (cons __tmp255323 __tmp255312))))
                 (_generate-specializer-impl246130_
                  (lambda (_$t249383_
                           _methods-bind249384_
                           _slots-bind249385_
                           _class-check-bind249386_
                           _struct-check-bind249387_
                           _specializer-impl249388_
                           _lifted-specializer-id249389_
                           _unchecked-specializer-impl249390_)
                    (let ((__tmp255324
                           (let ((__tmp255325
                                  (let ((__tmp255351
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t249383_ '())))
                                        (__tmp255326
                                         (let ((__tmp255327
                                                (let ((__tmp255328
                                                       (let ((__tmp255348
                                                              (let ((__tmp255349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255350
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind249387_
                                              _class-check-bind249386_))))
                               (declare (not safe))
                               (foldr1 cons __tmp255350 _slots-bind249385_))))
                        (declare (not safe))
                        (foldr1 cons __tmp255349 _methods-bind249384_)))
                     (__tmp255329
                      (let ((__tmp255330
                             (if (or _lifted-specializer-id249389_
                                     _unchecked-specializer-impl249390_)
                                 (let* ((_$specializer249395_
                                         (let ((__tmp255331
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp255331)))
                                        (__tmp255332
                                         (let ((__tmp255344
                                                (let ((__tmp255345
                                                       (let ((__tmp255347
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249395_ '())))
                     (__tmp255346
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl249388_ '()))))
                 (declare (not safe))
                 (cons __tmp255347 __tmp255346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255345 '())))
                                               (__tmp255333
                                                (let ((__tmp255334
                                                       (let _recur249397_ ((_rest249399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind249387_)))
                 (let* ((_rest249400249408_ _rest249399_)
                        (_else249402249416_
                         (lambda ()
                           (if _lifted-specializer-id249389_
                               (let ((__tmp255335
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id249389_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp255335))
                               _unchecked-specializer-impl249390_)))
                        (_K249404249422_
                         (lambda (_rest249419_ _checkq249420_)
                           (let ((__tmp255336
                                  (let ((__tmp255342
                                         (let ((__tmp255343
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq249420_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255343)))
                                        (__tmp255337
                                         (let ((__tmp255341
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur249397_
                                                   _rest249419_)))
                                               (__tmp255338
                                                (let ((__tmp255339
                                                       (let ((__tmp255340
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer249395_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp255340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255339 '()))))
                                           (declare (not safe))
                                           (cons __tmp255341 __tmp255338))))
                                    (declare (not safe))
                                    (cons __tmp255342 __tmp255337))))
                             (declare (not safe))
                             (cons '%#if __tmp255336)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest249400249408_))
                       (let ((_hd249405249425_
                              (let ()
                                (declare (not safe))
                                (##car _rest249400249408_)))
                             (_tl249406249427_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest249400249408_))))
                         (let* ((_checkq249430_ _hd249405249425_)
                                (_rest249432_ _tl249406249427_))
                           (declare (not safe))
                           (_K249404249422_ _rest249432_ _checkq249430_)))
                       (let () (declare (not safe)) (_else249402249416_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255334 '()))))
                                           (declare (not safe))
                                           (cons __tmp255344 __tmp255333))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp255332))
                                 _specializer-impl249388_)))
                        (declare (not safe))
                        (cons __tmp255330 '()))))
                 (declare (not safe))
                 (cons __tmp255348 __tmp255329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp255328))))
                                           (declare (not safe))
                                           (cons __tmp255327 '()))))
                                    (declare (not safe))
                                    (cons __tmp255351 __tmp255326))))
                             (declare (not safe))
                             (cons '%#lambda __tmp255325))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255324 _stx246124_))))
                 (_generate-specializer-def246131_
                  (lambda (_id249377_
                           _specializer-id249378_
                           _specializer-impl249379_
                           _lifted-specializer-id249380_
                           _unchecked-specializer-impl249381_)
                    (let ((__tmp255352
                           (let ((__tmp255353
                                  (let ((__tmp255354
                                         (let ((__tmp255374
                                                (let ((__tmp255375
                                                       (let ((__tmp255376
                                                              (let ((__tmp255378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id249378_ '())))
                            (__tmp255377
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl249379_ '()))))
                        (declare (not safe))
                        (cons __tmp255378 __tmp255377))))
                 (declare (not safe))
                 (cons '%#define-values __tmp255376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255375
                                                   _stx246124_)))
                                               (__tmp255355
                                                (let ((__tmp255362
                                                       (let ((__tmp255363
                                                              (let ((__tmp255364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255365
                                    (let ((__tmp255372
                                           (let ((__tmp255373
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255373)))
                                          (__tmp255366
                                           (let ((__tmp255370
                                                  (let ((__tmp255371
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id249377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255371)))
                                                 (__tmp255367
                                                  (let ((__tmp255368
                                                         (let ((__tmp255369
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id249378_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255368 '()))))
                                             (declare (not safe))
                                             (cons __tmp255370 __tmp255367))))
                                      (declare (not safe))
                                      (cons __tmp255372 __tmp255366))))
                               (declare (not safe))
                               (cons '%#call __tmp255365))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp255364 _stx246124_))))
                 (declare (not safe))
                 (cons __tmp255363 '())))
              (__tmp255356
               (if _lifted-specializer-id249380_
                   (let ((__tmp255357
                          (let ((__tmp255358
                                 (let ((__tmp255359
                                        (let ((__tmp255361
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id249380_
                                                       '())))
                                              (__tmp255360
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl249381_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp255361 __tmp255360))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp255359))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp255358 _stx246124_))))
                     (declare (not safe))
                     (cons __tmp255357 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp255362
                                                          __tmp255356))))
                                           (declare (not safe))
                                           (cons __tmp255374 __tmp255355))))
                                    (declare (not safe))
                                    (cons _stx246124_ __tmp255354))))
                             (declare (not safe))
                             (cons '%#begin __tmp255353))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255352 _stx246124_)))))
          (let* ((___stx254168254169_ _stx246124_)
                 (_g246134246154_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254168254169_)))))
            (let ((___kont254170254171_
                   (lambda (_L246198_ _L246199_)
                     (let ((_method-calls246218_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs246219_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check246220_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check246221_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert246222_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty246223_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?246225_
                                 (lambda ()
                                   (if (let ((__tmp255383
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246218_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255383))
                                       (if (let ((__tmp255382
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246219_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255382))
                                           (if (let ((__tmp255381
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check246220_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp255381))
                                               (if (let ((__tmp255380
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check246221_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255380))
                                                   (let ((__tmp255379
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert246222_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp255379))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?246226_
                                 (lambda ()
                                   (let ((_$e249370_
                                          (let ((__tmp255384
                                                 (let ((__tmp255385
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check246221_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp255385))))
                                            (declare (not safe))
                                            (not __tmp255384))))
                                     (if _$e249370_
                                         _$e249370_
                                         (let ((__tmp255386
                                                (let ((__tmp255387
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert246222_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp255387))))
                                           (declare (not safe))
                                           (not __tmp255386))))))
                                (_lift-unchecked-specializer?246227_
                                 (lambda ()
                                   (if (let ((__tmp255390
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246218_))))
                                         (declare (not safe))
                                         (fxzero? __tmp255390))
                                       (if (let ((__tmp255389
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246219_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255389))
                                           (let ((__tmp255388
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check246220_))))
                                             (declare (not safe))
                                             (fxzero? __tmp255388))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L246198_))
                             (let* ((___stx254082254083_ _L246198_)
                                    (_g246740246758_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx254082254083_)))))
                               (let ((___kont254084254085_
                                      (lambda (_L246794_ _L246795_ _L246796_)
                                        (for-each
                                         (lambda (_g246811246813_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g246811246813_
                                              _L246796_
                                              _method-calls246218_
                                              _slot-refs246219_
                                              _class-type-check246220_
                                              _struct-type-check246221_
                                              _struct-type-assert246222_)))
                                         _L246794_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?246225_))
                                            _stx246124_
                                            (let* ((_specializer-id246822_
                                                    (let* ((_id246816_
                                                            (let ((__tmp255540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L246199_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp255540 '"::specialize")))
                   (_specializer-id246819_
                    (let ((__tmp255541
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx246124_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id246816_ __tmp255541))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id246819_))
              _specializer-id246819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id246829_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?246227_))
                                                        (let* ((_id246824_
                                                                (let ((__tmp255542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L246199_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp255542
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id246826_
                        (let ((__tmp255543
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx246124_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id246824_ __tmp255543))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id246826_))
                  _lifted-specializer-id246826_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t246831_
                                                    (let ((__tmp255544
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255544)))
                                                   (_methods246833_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls246218_)))
                                                   (_$methods246837_
                                                    (map (lambda (_id246835_)
                                                           (let ((__tmp255545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246835_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255545)))
                 _methods246833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255546_
                                                    (for-each
                                                     (lambda (_g246838246841_
                                                              _g246839246843_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls246218_
                                                          _g246838246841_
                                                          _g246839246843_)))
                                                     _methods246833_
                                                     _$methods246837_))
                                                   (_methods-bind246854_
                                                    (map (lambda (_g246846246849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246847246851_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind246126_
                      _$t246831_
                      _g246846246849_
                      _g246847246851_)))
                 _methods246833_
                 _$methods246837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots246856_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs246219_)))
                                                   (_$slots246860_
                                                    (map (lambda (_id246858_)
                                                           (let ((__tmp255547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id246858_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp255547)))
                 _slots246856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255548_
                                                    (for-each
                                                     (lambda (_g246861246864_
                                                              _g246862246866_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs246219_
                                                          _g246861246864_
                                                          _g246862246866_)))
                                                     _slots246856_
                                                     _$slots246860_))
                                                   (_slots-bind246877_
                                                    (map (lambda (_g246869246872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246870246874_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind246127_
                      _$t246831_
                      _g246869246872_
                      _g246870246874_)))
                 _slots246856_
                 _$slots246860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check246879_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check246220_)))
                                                   (_$class-check246882_
                                                    (map (lambda (_g255549_)
                                                           (let ((__tmp255550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255550)))
                 _class-check246879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255551_
                                                    (for-each
                                                     (lambda (_g246883246886_
                                                              _g246884246888_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check246220_
                                                          _g246883246886_
                                                          _g246884246888_)))
                                                     _class-check246879_
                                                     _$class-check246882_))
                                                   (_class-check-bind246899_
                                                    (map (lambda (_g246891246894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246892246896_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind246128_
                      _$t246831_
                      _g246891246894_
                      _g246892246896_)))
                 _class-check246879_
                 _$class-check246882_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all246901_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check246221_
                                                       _struct-type-assert246222_)))
                                                   (_struct-check246903_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all246901_)))
                                                   (_$struct-check246906_
                                                    (map (lambda (_g255552_)
                                                           (let ((__tmp255553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp255553)))
                 _struct-check246903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g255554_
                                                    (for-each
                                                     (lambda (_g246907246910_
                                                              _g246908246912_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all246901_
                                                          _g246907246910_
                                                          _g246908246912_)))
                                                     _struct-check246903_
                                                     _$struct-check246906_))
                                                   (_struct-check-bind246923_
                                                    (map (lambda (_g246915246918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246916246920_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind246129_
                      _$t246831_
                      _g246915246918_
                      _g246916246920_)))
                 _struct-check246903_
                 _$struct-check246906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl246934_
                                                    (lambda (_struct-type-check1246925_
                                                             _struct-type-check2246926_)
                                                      (let* ((_specializer-body246932_
                                                              (map (lambda (_g246927246929_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g246927246929_
                                _L246796_
                                _$t246831_
                                _method-calls246218_
                                _slot-refs246219_
                                _class-type-check246220_
                                _struct-type-check1246925_
                                _struct-type-check2246926_)))
                           _L246794_))
                     (__tmp255555
                      (let ((__tmp255556
                             (let ((__tmp255557
                                    (let ()
                                      (declare (not safe))
                                      (cons _L246796_ _L246795_))))
                               (declare (not safe))
                               (cons __tmp255557 _specializer-body246932_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp255556))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp255555 _stx246124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl246936_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl246934_
                                                       _struct-check-all246901_
                                                       _empty246223_)))
                                                   (_unchecked-specializer-impl246938_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?246226_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl246934_
                                                           _empty246223_
                                                           _struct-check-all246901_))
                                                        '#f))
                                                   (_specializer-impl246940_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl246130_
                                                       _$t246831_
                                                       _methods-bind246854_
                                                       _slots-bind246877_
                                                       _class-check-bind246899_
                                                       _struct-check-bind246923_
                                                       _specializer-impl246936_
                                                       _lifted-specializer-id246829_
                                                       _unchecked-specializer-impl246938_))))
                                              (let ((__tmp255559
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L246199_)))
                                                    (__tmp255558
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id246822_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp255559
                                                 '" => "
                                                 __tmp255558))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def246131_
                                                 _L246199_
                                                 _specializer-id246822_
                                                 _specializer-impl246940_
                                                 _lifted-specializer-id246829_
                                                 _unchecked-specializer-impl246938_))))))
                                     (___kont254086254087_
                                      (lambda () _stx246124_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx254082254083_))
                                     (let ((_e246747246770_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx254082254083_))))
                                       (let ((_tl246745246775_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e246747246770_)))
                                             (_hd246746246773_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e246747246770_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl246745246775_))
                                             (let ((_e246750246778_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl246745246775_))))
                                               (let ((_tl246748246783_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e246750246778_)))
                                                     (_hd246749246781_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e246750246778_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd246749246781_))
                                                     (let ((_e246753246786_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd246749246781_))))
                                                       (let ((_tl246751246791_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e246753246786_)))
                     (_hd246752246789_
                      (let () (declare (not safe)) (##car _e246753246786_))))
                 (___kont254084254085_
                  _tl246748246783_
                  _tl246751246791_
                  _hd246752246789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont254086254087_))))
                                             (___kont254086254087_))))
                                     (___kont254086254087_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L246198_))
                                 (let* ((_g246946246965_
                                         (lambda (_g246947246962_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g246947246962_))))
                                        (_g246945247316_
                                         (lambda (_g246947246968_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g246947246968_))
                                               (let ((_e246951246970_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g246947246968_))))
                                                 (let ((_hd246950246973_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246951246970_)))
                                                       (_tl246949246975_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246951246970_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl246949246975_))
                                                       (let ((_g255516_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl246949246975_ '0))))
                 (begin
                   (let ((_g255517_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g255516_)
                                (##vector-length _g255516_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g255517_ 2)))
                         (error "Context expects 2 values" _g255517_)))
                   (let ((_target246952246978_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255516_ 0)))
                         (_tl246954246980_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g255516_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl246954246980_))
                         (letrec ((_loop246955246983_
                                   (lambda (_hd246953246986_
                                            _clause246959246988_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd246953246986_))
                                         (let ((_e246956246991_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd246953246986_))))
                                           (let ((_lp-hd246957246994_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e246956246991_)))
                                                 (_lp-tl246958246996_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e246956246991_))))
                                             (let ((__tmp255539
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd246957246994_
                                                            _clause246959246988_))))
                                               (declare (not safe))
                                               (_loop246955246983_
                                                _lp-tl246958246996_
                                                __tmp255539))))
                                         (let ((_clause246960246999_
                                                (reverse _clause246959246988_)))
                                           ((lambda (_L247002_)
                                              (for-each
                                               (lambda (_clause247015_)
                                                 (let* ((___stx254108254109_
                                                         _clause247015_)
                                                        (_g247018247033_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx254108254109_)))))
                                                   (let ((___kont254110254111_
                                                          (lambda (_L247061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L247062_
                           _L247063_)
                    (for-each
                     (lambda (_g247078247080_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g247078247080_
                          _L247063_
                          _method-calls246218_
                          _slot-refs246219_
                          _class-type-check246220_
                          _struct-type-check246221_
                          _struct-type-assert246222_)))
                     _L247061_)))
                 (___kont254112254113_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx254108254109_))
                                                         (let ((_e247025247045_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx254108254109_))))
                   (let ((_tl247023247050_
                          (let ()
                            (declare (not safe))
                            (##cdr _e247025247045_)))
                         (_hd247024247048_
                          (let ()
                            (declare (not safe))
                            (##car _e247025247045_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd247024247048_))
                         (let ((_e247028247053_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd247024247048_))))
                           (let ((_tl247026247058_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e247028247053_)))
                                 (_hd247027247056_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e247028247053_))))
                             (___kont254110254111_
                              _tl247023247050_
                              _tl247026247058_
                              _hd247027247056_)))
                         (___kont254112254113_))))
                 (___kont254112254113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp255518
                                                      (lambda (_g247085247088_
                                                               _g247086247090_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247085247088_
                                                                _g247086247090_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255518
                                                         '()
                                                         _L247002_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246225_))
                                                  _stx246124_
                                                  (let* ((_specializer-id247099_
                                                          (let* ((_id247093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255519
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246199_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255519 '"::specialize")))
                         (_specializer-id247096_
                          (let ((__tmp255520
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246124_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247093_ __tmp255520))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247096_))
                    _specializer-id247096_))
                 (_lifted-specializer-id247106_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246227_))
                      (let* ((_id247101_
                              (let ((__tmp255521
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246199_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255521
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247103_
                              (let ((__tmp255522
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246124_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247101_
                                 __tmp255522))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247103_))
                        _lifted-specializer-id247103_)
                      '#f))
                 (_$t247108_
                  (let ((__tmp255523 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255523)))
                 (_methods247110_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246218_)))
                 (_$methods247114_
                  (map (lambda (_id247112_)
                         (let ((__tmp255524 (gensym _id247112_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255524)))
                       _methods247110_))
                 (_g255525_
                  (for-each
                   (lambda (_g247115247118_ _g247116247120_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246218_
                        _g247115247118_
                        _g247116247120_)))
                   _methods247110_
                   _$methods247114_))
                 (_methods-bind247131_
                  (map (lambda (_g247123247126_ _g247124247128_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246126_
                            _$t247108_
                            _g247123247126_
                            _g247124247128_)))
                       _methods247110_
                       _$methods247114_))
                 (_slots247133_
                  (let () (declare (not safe)) (hash-keys _slot-refs246219_)))
                 (_$slots247137_
                  (map (lambda (_id247135_)
                         (let ((__tmp255526 (gensym _id247135_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255526)))
                       _slots247133_))
                 (_g255527_
                  (for-each
                   (lambda (_g247138247141_ _g247139247143_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246219_
                        _g247138247141_
                        _g247139247143_)))
                   _slots247133_
                   _$slots247137_))
                 (_slots-bind247154_
                  (map (lambda (_g247146247149_ _g247147247151_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246127_
                            _$t247108_
                            _g247146247149_
                            _g247147247151_)))
                       _slots247133_
                       _$slots247137_))
                 (_class-check247156_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246220_)))
                 (_$class-check247159_
                  (map (lambda (_g255528_)
                         (let ((__tmp255529 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255529)))
                       _class-check247156_))
                 (_g255530_
                  (for-each
                   (lambda (_g247160247163_ _g247161247165_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246220_
                        _g247160247163_
                        _g247161247165_)))
                   _class-check247156_
                   _$class-check247159_))
                 (_class-check-bind247176_
                  (map (lambda (_g247168247171_ _g247169247173_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246128_
                            _$t247108_
                            _g247168247171_
                            _g247169247173_)))
                       _class-check247156_
                       _$class-check247159_))
                 (_struct-check-all247178_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246221_
                     _struct-type-assert246222_)))
                 (_struct-check247180_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247178_)))
                 (_$struct-check247183_
                  (map (lambda (_g255531_)
                         (let ((__tmp255532 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255532)))
                       _struct-check247180_))
                 (_g255533_
                  (for-each
                   (lambda (_g247184247187_ _g247185247189_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247178_
                        _g247184247187_
                        _g247185247189_)))
                   _struct-check247180_
                   _$struct-check247183_))
                 (_struct-check-bind247200_
                  (map (lambda (_g247192247195_ _g247193247197_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246129_
                            _$t247108_
                            _g247192247195_
                            _g247193247197_)))
                       _struct-check247180_
                       _$struct-check247183_))
                 (_make-specializer-impl247307_
                  (lambda (_struct-type-check1247202_
                           _struct-type-check2247203_)
                    (let* ((_specializer-clauses247305_
                            (map (lambda (_clause247205_)
                                   (let* ((___stx254128254129_ _clause247205_)
                                          (_g247208247223_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx254128254129_)))))
                                     (let ((___kont254130254131_
                                            (lambda (_L247251_
                                                     _L247252_
                                                     _L247253_)
                                              (let* ((_body247293_
                                                      (map (lambda (_g247288247290_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g247288247290_
                        _L247253_
                        _$t247108_
                        _method-calls246218_
                        _slot-refs246219_
                        _class-type-check246220_
                        _struct-type-check1247202_
                        _struct-type-check2247203_)))
                   _L247251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp255534
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L247253_
                                                              _L247252_))))
                                                (declare (not safe))
                                                (cons __tmp255534
                                                      _body247293_))))
                                           (___kont254132254133_
                                            (lambda () _clause247205_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx254128254129_))
                                           (let ((_e247215247235_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx254128254129_))))
                                             (let ((_tl247213247240_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247215247235_)))
                                                   (_hd247214247238_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247215247235_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd247214247238_))
                                                   (let ((_e247218247243_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd247214247238_))))
                                                     (let ((_tl247216247248_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247218247243_)))
                                                           (_hd247217247246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247218247243_))))
                                                       (___kont254130254131_
                                                        _tl247213247240_
                                                        _tl247216247248_
                                                        _hd247217247246_)))
                                                   (___kont254132254133_))))
                                           (___kont254132254133_)))))
                                 (let ((__tmp255535
                                        (lambda (_g247297247300_
                                                 _g247298247302_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g247297247300_
                                                  _g247298247302_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255535 '() _L247002_))))
                           (__tmp255536
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses247305_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255536 _stx246124_))))
                 (_specializer-impl247309_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl247307_
                     _struct-check-all247178_
                     _empty246223_)))
                 (_unchecked-specializer-impl247311_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246226_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl247307_
                         _empty246223_
                         _struct-check-all247178_))
                      '#f))
                 (_specializer-impl247313_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246130_
                     _$t247108_
                     _methods-bind247131_
                     _slots-bind247154_
                     _class-check-bind247176_
                     _struct-check-bind247200_
                     _specializer-impl247309_
                     _lifted-specializer-id247106_
                     _unchecked-specializer-impl247311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255538
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246199_)))
                                                          (__tmp255537
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247099_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255538
                                                       '" => "
                                                       __tmp255537))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246131_
                                                       _L246199_
                                                       _specializer-id247099_
                                                       _specializer-impl247313_
                                                       _lifted-specializer-id247106_
                                                       _unchecked-specializer-impl247311_)))))
                                            _clause246960246999_))))))
                           (let ()
                             (declare (not safe))
                             (_loop246955246983_ _target246952246978_ '())))
                         (let ()
                           (declare (not safe))
                           (_g246946246965_ _g246947246968_))))))
               (let ()
                 (declare (not safe))
                 (_g246946246965_ _g246947246968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246946246965_
                                                  _g246947246968_))))))
                                   (declare (not safe))
                                   (_g246945247316_ _L246198_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L246198_))
                                     (let* ((_g247319247349_
                                             (lambda (_g247320247346_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g247320247346_))))
                                            (_g247318248037_
                                             (lambda (_g247320247352_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g247320247352_))
                                                   (let ((_e247326247354_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g247320247352_))))
                                                     (let ((_hd247325247357_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247326247354_)))
                                                           (_tl247324247359_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247326247354_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl247324247359_))
                                                           (let ((_e247329247362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl247324247359_))))
                     (let ((_hd247328247365_
                            (let ()
                              (declare (not safe))
                              (##car _e247329247362_)))
                           (_tl247327247367_
                            (let ()
                              (declare (not safe))
                              (##cdr _e247329247362_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd247328247365_))
                           (let ((_e247332247370_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd247328247365_))))
                             (let ((_hd247331247373_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e247332247370_)))
                                   (_tl247330247375_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e247332247370_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd247331247373_))
                                   (let ((_e247335247378_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd247331247373_))))
                                     (let ((_hd247334247381_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e247335247378_)))
                                           (_tl247333247383_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e247335247378_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd247334247381_))
                                           (let ((_e247338247386_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd247334247381_))))
                                             (let ((_hd247337247389_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247338247386_)))
                                                   (_tl247336247391_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247338247386_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl247336247391_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl247333247383_))
                                                       (let ((_e247341247394_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl247333247383_))))
                 (let ((_hd247340247397_
                        (let () (declare (not safe)) (##car _e247341247394_)))
                       (_tl247339247399_
                        (let () (declare (not safe)) (##cdr _e247341247394_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl247339247399_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl247330247375_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl247327247367_))
                               (let ((_e247344247402_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl247327247367_))))
                                 (let ((_hd247343247405_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e247344247402_)))
                                       (_tl247342247407_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e247344247402_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl247342247407_))
                                       ((lambda (_L247410_ _L247411_ _L247412_)
                                          (let* ((_g247435247453_
                                                  (lambda (_g247436247450_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247436247450_))))
                                                 (_g247434247504_
                                                  (lambda (_g247436247456_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247436247456_))
                                                        (let ((_e247442247458_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247436247456_))))
                  (let ((_hd247441247461_
                         (let () (declare (not safe)) (##car _e247442247458_)))
                        (_tl247440247463_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247442247458_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl247440247463_))
                        (let ((_e247445247466_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl247440247463_))))
                          (let ((_hd247444247469_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247445247466_)))
                                (_tl247443247471_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247445247466_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd247444247469_))
                                (let ((_e247448247474_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd247444247469_))))
                                  (let ((_hd247447247477_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247448247474_)))
                                        (_tl247446247479_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247448247474_))))
                                    ((lambda (_L247482_ _L247483_ _L247484_)
                                       (for-each
                                        (lambda (_g247499247501_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g247499247501_
                                             _L247484_
                                             _method-calls246218_
                                             _slot-refs246219_
                                             _class-type-check246220_
                                             _struct-type-check246221_
                                             _struct-type-assert246222_)))
                                        _L247482_))
                                     _tl247443247471_
                                     _tl247446247479_
                                     _hd247447247477_)))
                                (let ()
                                  (declare (not safe))
                                  (_g247435247453_ _g247436247456_)))))
                        (let ()
                          (declare (not safe))
                          (_g247435247453_ _g247436247456_)))))
                (let ()
                  (declare (not safe))
                  (_g247435247453_ _g247436247456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247434247504_ _L247411_))
                                          (let* ((_g247507247526_
                                                  (lambda (_g247508247523_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g247508247523_))))
                                                 (_g247506247645_
                                                  (lambda (_g247508247529_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g247508247529_))
                                                        (let ((_e247512247531_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g247508247529_))))
                  (let ((_hd247511247534_
                         (let () (declare (not safe)) (##car _e247512247531_)))
                        (_tl247510247536_
                         (let ()
                           (declare (not safe))
                           (##cdr _e247512247531_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl247510247536_))
                        (let ((_g255479_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl247510247536_
                                  '0))))
                          (begin
                            (let ((_g255480_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g255479_)
                                         (##vector-length _g255479_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g255480_ 2)))
                                  (error "Context expects 2 values"
                                         _g255480_)))
                            (let ((_target247513247539_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255479_ 0)))
                                  (_tl247515247541_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g255479_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl247515247541_))
                                  (letrec ((_loop247516247544_
                                            (lambda (_hd247514247547_
                                                     _clause247520247549_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd247514247547_))
                                                  (let ((_e247517247552_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd247514247547_))))
                                                    (let ((_lp-hd247518247555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e247517247552_)))
                                                          (_lp-tl247519247557_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e247517247552_))))
                                                      (let ((__tmp255482
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd247518247555_ _clause247520247549_))))
                (declare (not safe))
                (_loop247516247544_ _lp-tl247519247557_ __tmp255482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause247521247560_
                                                         (reverse _clause247520247549_)))
                                                    ((lambda (_L247563_)
                                                       (for-each
                                                        (lambda (_clause247576_)
                                                          (let* ((_g247578247593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g247579247590_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g247579247590_))))
                         (_g247577247635_
                          (lambda (_g247579247596_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g247579247596_))
                                (let ((_e247585247598_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g247579247596_))))
                                  (let ((_hd247584247601_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e247585247598_)))
                                        (_tl247583247603_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e247585247598_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd247584247601_))
                                        (let ((_e247588247606_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd247584247601_))))
                                          (let ((_hd247587247609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e247588247606_)))
                                                (_tl247586247611_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e247588247606_))))
                                            ((lambda (_L247614_
                                                      _L247615_
                                                      _L247616_)
                                               (for-each
                                                (lambda (_g247630247632_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g247630247632_
                                                     _L247616_
                                                     _method-calls246218_
                                                     _slot-refs246219_
                                                     _class-type-check246220_
                                                     _struct-type-check246221_
                                                     _struct-type-assert246222_)))
                                                _L247614_))
                                             _tl247583247603_
                                             _tl247586247611_
                                             _hd247587247609_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g247578247593_ _g247579247596_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g247578247593_ _g247579247596_))))))
                    (declare (not safe))
                    (_g247577247635_ _clause247576_)))
                (let ((__tmp255481
                       (lambda (_g247637247640_ _g247638247642_)
                         (let ()
                           (declare (not safe))
                           (cons _g247637247640_ _g247638247642_)))))
                  (declare (not safe))
                  (foldr1 __tmp255481 '() _L247563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause247521247560_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop247516247544_
                                       _target247513247539_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g247507247526_ _g247508247529_))))))
                        (let ()
                          (declare (not safe))
                          (_g247507247526_ _g247508247529_)))))
                (let ()
                  (declare (not safe))
                  (_g247507247526_ _g247508247529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g247506247645_ _L247410_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?246225_))
                                              _stx246124_
                                              (let* ((_specializer-id247654_
                                                      (let* ((_id247648_
                                                              (let ((__tmp255483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L246199_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp255483 '"::specialize")))
                     (_specializer-id247651_
                      (let ((__tmp255484
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx246124_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id247648_ __tmp255484))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id247651_))
                _specializer-id247651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id247661_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?246227_))
                                                          (let* ((_id247656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255485
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246199_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp255485
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id247658_
                          (let ((__tmp255486
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246124_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247656_ __tmp255486))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id247658_))
                    _lifted-specializer-id247658_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t247663_
                                                      (let ((__tmp255487
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp255487)))
                                                     (_methods247665_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls246218_)))
                                                     (_$methods247669_
                                                      (map (lambda (_id247667_)
                                                             (let ((__tmp255488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247667_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255488)))
                   _methods247665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255489_
                                                      (for-each
                                                       (lambda (_g247670247673_
                                                                _g247671247675_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls246218_
                                                            _g247670247673_
                                                            _g247671247675_)))
                                                       _methods247665_
                                                       _$methods247669_))
                                                     (_methods-bind247686_
                                                      (map (lambda (_g247678247681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247679247683_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind246126_
                        _$t247663_
                        _g247678247681_
                        _g247679247683_)))
                   _methods247665_
                   _$methods247669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots247688_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs246219_)))
                                                     (_$slots247692_
                                                      (map (lambda (_id247690_)
                                                             (let ((__tmp255490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id247690_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp255490)))
                   _slots247688_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255491_
                                                      (for-each
                                                       (lambda (_g247693247696_
                                                                _g247694247698_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs246219_
                                                            _g247693247696_
                                                            _g247694247698_)))
                                                       _slots247688_
                                                       _$slots247692_))
                                                     (_slots-bind247709_
                                                      (map (lambda (_g247701247704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247702247706_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind246127_
                        _$t247663_
                        _g247701247704_
                        _g247702247706_)))
                   _slots247688_
                   _$slots247692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check247711_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check246220_)))
                                                     (_$class-check247714_
                                                      (map (lambda (_g255492_)
                                                             (let ((__tmp255493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255493)))
                   _class-check247711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255494_
                                                      (for-each
                                                       (lambda (_g247715247718_
                                                                _g247716247720_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check246220_
                                                            _g247715247718_
                                                            _g247716247720_)))
                                                       _class-check247711_
                                                       _$class-check247714_))
                                                     (_class-check-bind247731_
                                                      (map (lambda (_g247723247726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247724247728_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind246128_
                        _$t247663_
                        _g247723247726_
                        _g247724247728_)))
                   _class-check247711_
                   _$class-check247714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all247733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check246221_
                                                         _struct-type-assert246222_)))
                                                     (_struct-check247735_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all247733_)))
                                                     (_$struct-check247738_
                                                      (map (lambda (_g255495_)
                                                             (let ((__tmp255496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp255496)))
                   _struct-check247735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g255497_
                                                      (for-each
                                                       (lambda (_g247739247742_
                                                                _g247740247744_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all247733_
                                                            _g247739247742_
                                                            _g247740247744_)))
                                                       _struct-check247735_
                                                       _$struct-check247738_))
                                                     (_struct-check-bind247755_
                                                      (map (lambda (_g247747247750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g247748247752_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind246129_
                        _$t247663_
                        _g247747247750_
                        _g247748247752_)))
                   _struct-check247735_
                   _$struct-check247738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr247854_
                                                      (lambda (_struct-type-check1247757_
                                                               _struct-type-check2247758_)
                                                        (let* ((_g247760247778_
                                                                (lambda (_g247761247775_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247761247775_))))
                       (_g247759247851_
                        (lambda (_g247761247781_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247761247781_))
                              (let ((_e247767247783_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247761247781_))))
                                (let ((_hd247766247786_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247767247783_)))
                                      (_tl247765247788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247767247783_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl247765247788_))
                                      (let ((_e247770247791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl247765247788_))))
                                        (let ((_hd247769247794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e247770247791_)))
                                              (_tl247768247796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e247770247791_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd247769247794_))
                                              (let ((_e247773247799_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd247769247794_))))
                                                (let ((_hd247772247802_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e247773247799_)))
                                                      (_tl247771247804_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e247773247799_))))
                                                  ((lambda (_L247807_
                                                            _L247808_
                                                            _L247809_)
                                                     (let* ((_body247849_
                                                             (map (lambda (_g247844247846_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g247844247846_
                               _L247809_
                               _$t247663_
                               _method-calls246218_
                               _slot-refs246219_
                               _class-type-check246220_
                               _struct-type-check1247757_
                               _struct-type-check2247758_)))
                          _L247807_))
                    (__tmp255498
                     (let ((__tmp255499
                            (let ((__tmp255500
                                   (let ()
                                     (declare (not safe))
                                     (cons _L247809_ _L247808_))))
                              (declare (not safe))
                              (cons __tmp255500 _body247849_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp255499))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255498 _L247411_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl247768247796_
                                                   _tl247771247804_
                                                   _hd247772247802_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g247760247778_
                                                 _g247761247781_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247760247778_ _g247761247781_)))))
                              (let ()
                                (declare (not safe))
                                (_g247760247778_ _g247761247781_))))))
                  (declare (not safe))
                  (_g247759247851_ _L247411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr248015_
                                                      (lambda (_struct-type-check1247856_
                                                               _struct-type-check2247857_)
                                                        (let* ((_g247859247878_
                                                                (lambda (_g247860247875_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g247860247875_))))
                       (_g247858248012_
                        (lambda (_g247860247881_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g247860247881_))
                              (let ((_e247864247883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g247860247881_))))
                                (let ((_hd247863247886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e247864247883_)))
                                      (_tl247862247888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e247864247883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl247862247888_))
                                      (let ((_g255501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl247862247888_
                                                '0))))
                                        (begin
                                          (let ((_g255502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255501_)
                                                       (##vector-length
                                                        _g255501_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255502_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255502_)))
                                          (let ((_target247865247891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g255501_ 0)))
                                                (_tl247867247893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g255501_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl247867247893_))
                                                (letrec ((_loop247868247896_
                                                          (lambda (_hd247866247899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause247872247901_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd247866247899_))
                        (let ((_e247869247904_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd247866247899_))))
                          (let ((_lp-hd247870247907_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e247869247904_)))
                                (_lp-tl247871247909_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e247869247904_))))
                            (let ((__tmp255506
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd247870247907_
                                           _clause247872247901_))))
                              (declare (not safe))
                              (_loop247868247896_
                               _lp-tl247871247909_
                               __tmp255506))))
                        (let ((_clause247873247912_
                               (reverse _clause247872247901_)))
                          ((lambda (_L247915_)
                             (let* ((_clauses248010_
                                     (map (lambda (_clause247930_)
                                            (let* ((___stx254148254149_
                                                    _clause247930_)
                                                   (_g247933247948_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx254148254149_)))))
                                              (let ((___kont254150254151_
                                                     (lambda (_L247976_
                                                              _L247977_
                                                              _L247978_)
                                                       (let* ((_body247998_
                                                               (map (lambda (_g247993247995_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g247993247995_
                                 _L247978_
                                 _$t247663_
                                 _method-calls246218_
                                 _slot-refs246219_
                                 _class-type-check246220_
                                 _struct-type-check1247856_
                                 _struct-type-check2247857_)))
                            _L247976_))
                      (__tmp255503
                       (let ()
                         (declare (not safe))
                         (cons _L247978_ _L247977_))))
                 (declare (not safe))
                 (cons __tmp255503 _body247998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254152254153_
                                                     (lambda ()
                                                       _clause247930_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx254148254149_))
                                                    (let ((_e247940247960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx254148254149_))))
                                                      (let ((_tl247938247965_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e247940247960_)))
                    (_hd247939247963_
                     (let () (declare (not safe)) (##car _e247940247960_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd247939247963_))
                    (let ((_e247943247968_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd247939247963_))))
                      (let ((_tl247941247973_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247943247968_)))
                            (_hd247942247971_
                             (let ()
                               (declare (not safe))
                               (##car _e247943247968_))))
                        (___kont254150254151_
                         _tl247938247965_
                         _tl247941247973_
                         _hd247942247971_)))
                    (___kont254152254153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254152254153_)))))
                                          (let ((__tmp255504
                                                 (lambda (_g248002248005_
                                                          _g248003248007_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g248002248005_
                                                           _g248003248007_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp255504
                                                    '()
                                                    _L247915_))))
                                    (__tmp255505
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses248010_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp255505 _L247410_)))
                           _clause247873247912_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop247868247896_
                                                     _target247865247891_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g247859247878_
                                                   _g247860247881_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g247859247878_ _g247860247881_)))))
                              (let ()
                                (declare (not safe))
                                (_g247859247878_ _g247860247881_))))))
                  (declare (not safe))
                  (_g247858248012_ _L247410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl248020_
                                                      (lambda (_specializer-lambda-expr248017_
                                                               _specializer-case-lambda-expr248018_)
                                                        (let ((__tmp255507
                                                               (let ((__tmp255508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp255510
                                     (let ((__tmp255511
                                            (let ((__tmp255513
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L247412_ '())))
                                                  (__tmp255512
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr248017_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp255513 __tmp255512))))
                                       (declare (not safe))
                                       (cons __tmp255511 '())))
                                    (__tmp255509
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr248018_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp255510 __tmp255509))))
                         (declare (not safe))
                         (cons '%#let-values __tmp255508))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255507 _stx246124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr248022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr247854_
                                                         _struct-check-all247733_
                                                         _empty246223_)))
                                                     (_specializer-case-lambda-expr248024_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr248015_
                                                         _struct-check-all247733_
                                                         _empty246223_)))
                                                     (_specializer-impl248026_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl248020_
                                                         _specializer-lambda-expr248022_
                                                         _specializer-case-lambda-expr248024_)))
                                                     (_unchecked-specializer-lambda-expr248028_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246226_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr247854_
                                                             _empty246223_
                                                             _struct-check-all247733_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr248030_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246226_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr248015_
                                                             _empty246223_
                                                             _struct-check-all247733_))
                                                          '#f))
                                                     (_unchecked-specializer-impl248032_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?246226_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl248020_
                                                             _unchecked-specializer-lambda-expr248028_
                                                             _unchecked-specializer-case-lambda-expr248030_))
                                                          '#f))
                                                     (_specializer-impl248034_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl246130_
                                                         _$t247663_
                                                         _methods-bind247686_
                                                         _slots-bind247709_
                                                         _class-check-bind247731_
                                                         _struct-check-bind247755_
                                                         _specializer-impl248026_
                                                         _lifted-specializer-id247661_
                                                         _unchecked-specializer-impl248032_))))
                                                (let ((__tmp255515
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L246199_)))
                                                      (__tmp255514
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id247654_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp255515
                                                   '" => "
                                                   __tmp255514))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def246131_
                                                   _L246199_
                                                   _specializer-id247654_
                                                   _specializer-impl248034_
                                                   _lifted-specializer-id247661_
                                                   _unchecked-specializer-impl248032_)))))
                                        _hd247343247405_
                                        _hd247340247397_
                                        _hd247337247389_)
                                       (let ()
                                         (declare (not safe))
                                         (_g247319247349_ _g247320247352_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g247319247349_ _g247320247352_)))
                           (let ()
                             (declare (not safe))
                             (_g247319247349_ _g247320247352_)))
                       (let ()
                         (declare (not safe))
                         (_g247319247349_ _g247320247352_)))))
               (let () (declare (not safe)) (_g247319247349_ _g247320247352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247319247349_
                                                      _g247320247352_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g247319247349_
                                              _g247320247352_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g247319247349_ _g247320247352_)))))
                           (let ()
                             (declare (not safe))
                             (_g247319247349_ _g247320247352_)))))
                   (let ()
                     (declare (not safe))
                     (_g247319247349_ _g247320247352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g247319247349_
                                                      _g247320247352_))))))
                                       (declare (not safe))
                                       (_g247318248037_ _L246198_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L246198_))
                                         (let* ((_g248040248093_
                                                 (lambda (_g248041248090_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248041248090_))))
                                                (_g248039249365_
                                                 (lambda (_g248041248096_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248041248096_))
                                                       (let ((_e248049248098_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248041248096_))))
                 (let ((_hd248048248101_
                        (let () (declare (not safe)) (##car _e248049248098_)))
                       (_tl248047248103_
                        (let () (declare (not safe)) (##cdr _e248049248098_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd248048248101_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd248048248101_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248047248103_))
                               (let ((_e248052248106_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248047248103_))))
                                 (let ((_hd248051248109_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248052248106_)))
                                       (_tl248050248111_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248052248106_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248051248109_))
                                       (let ((_e248055248114_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248051248109_))))
                                         (let ((_hd248054248117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248055248114_)))
                                               (_tl248053248119_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248055248114_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248054248117_))
                                               (let ((_e248058248122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248054248117_))))
                                                 (let ((_hd248057248125_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248058248122_)))
                                                       (_tl248056248127_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248058248122_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd248057248125_))
                                                       (let ((_e248061248130_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd248057248125_))))
                 (let ((_hd248060248133_
                        (let () (declare (not safe)) (##car _e248061248130_)))
                       (_tl248059248135_
                        (let () (declare (not safe)) (##cdr _e248061248130_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248059248135_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl248056248127_))
                           (let ((_e248064248138_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl248056248127_))))
                             (let ((_hd248063248141_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248064248138_)))
                                   (_tl248062248143_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248064248138_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248063248141_))
                                   (let ((_e248067248146_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248063248141_))))
                                     (let ((_hd248066248149_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248067248146_)))
                                           (_tl248065248151_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248067248146_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd248066248149_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd248066248149_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl248065248151_))
                                                   (let ((_e248070248154_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl248065248151_))))
                                                     (let ((_hd248069248157_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248070248154_)))
                                                           (_tl248068248159_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248070248154_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd248069248157_))
                                                           (let ((_e248073248162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd248069248157_))))
                     (let ((_hd248072248165_
                            (let ()
                              (declare (not safe))
                              (##car _e248073248162_)))
                           (_tl248071248167_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248073248162_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248072248165_))
                           (let ((_e248076248170_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248072248165_))))
                             (let ((_hd248075248173_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248076248170_)))
                                   (_tl248074248175_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248076248170_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248075248173_))
                                   (let ((_e248079248178_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248075248173_))))
                                     (let ((_hd248078248181_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248079248178_)))
                                           (_tl248077248183_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248079248178_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248077248183_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl248074248175_))
                                               (let ((_e248082248186_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl248074248175_))))
                                                 (let ((_hd248081248189_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248082248186_)))
                                                       (_tl248080248191_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248082248186_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248080248191_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl248071248167_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl248068248159_))
                       (let ((_e248085248194_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248068248159_))))
                         (let ((_hd248084248197_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248085248194_)))
                               (_tl248083248199_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248085248194_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248083248199_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl248062248143_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248053248119_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl248050248111_))
                                           (let ((_e248088248202_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl248050248111_))))
                                             (let ((_hd248087248205_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248088248202_)))
                                                   (_tl248086248207_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248088248202_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248086248207_))
                                                   ((lambda (_L248210_
                                                             _L248211_
                                                             _L248212_
                                                             _L248213_
                                                             _L248214_)
                                                      (let* ((_g248253248315_
                                                              (lambda (_g248254248312_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g248254248312_))))
                     (_g248252249362_
                      (lambda (_g248254248318_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g248254248318_))
                            (let ((_e248262248320_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g248254248318_))))
                              (let ((_hd248261248323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248262248320_)))
                                    (_tl248260248325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248262248320_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd248261248323_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd248261248323_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl248260248325_))
                                            (let ((_e248265248328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl248260248325_))))
                                              (let ((_hd248264248331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248265248328_)))
                                                    (_tl248263248333_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248265248328_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248263248333_))
                                                    (let ((_e248268248336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248263248333_))))
                                                      (let ((_hd248267248339_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248268248336_)))
                    (_tl248266248341_
                     (let () (declare (not safe)) (##cdr _e248268248336_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248267248339_))
                    (let ((_e248271248344_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248267248339_))))
                      (let ((_hd248270248347_
                             (let ()
                               (declare (not safe))
                               (##car _e248271248344_)))
                            (_tl248269248349_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248271248344_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd248270248347_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd248270248347_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl248269248349_))
                                    (let ((_e248274248352_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl248269248349_))))
                                      (let ((_hd248273248355_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248274248352_)))
                                            (_tl248272248357_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248274248352_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd248273248355_))
                                            (let ((_e248277248360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd248273248355_))))
                                              (let ((_hd248276248363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e248277248360_)))
                                                    (_tl248275248365_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e248277248360_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd248276248363_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd248276248363_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl248275248365_))
                                                            (let ((_e248280248368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl248275248365_))))
                      (let ((_hd248279248371_
                             (let ()
                               (declare (not safe))
                               (##car _e248280248368_)))
                            (_tl248278248373_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248280248368_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248278248373_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl248272248357_))
                                (let ((_e248283248376_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl248272248357_))))
                                  (let ((_hd248282248379_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248283248376_)))
                                        (_tl248281248381_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248283248376_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd248282248379_))
                                        (let ((_e248286248384_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd248282248379_))))
                                          (let ((_hd248285248387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e248286248384_)))
                                                (_tl248284248389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e248286248384_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd248285248387_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd248285248387_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl248284248389_))
                                                        (let ((_e248289248392_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl248284248389_))))
                  (let ((_hd248288248395_
                         (let () (declare (not safe)) (##car _e248289248392_)))
                        (_tl248287248397_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248289248392_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl248287248397_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248281248381_))
                            (let ((_e248292248400_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248281248381_))))
                              (let ((_hd248291248403_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248292248400_)))
                                    (_tl248290248405_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248292248400_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd248291248403_))
                                    (let ((_e248295248408_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd248291248403_))))
                                      (let ((_hd248294248411_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248295248408_)))
                                            (_tl248293248413_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248295248408_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd248294248411_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd248294248411_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl248293248413_))
                                                    (let ((_e248298248416_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl248293248413_))))
                                                      (let ((_hd248297248419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e248298248416_)))
                    (_tl248296248421_
                     (let () (declare (not safe)) (##cdr _e248298248416_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl248296248421_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248290248405_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl248290248405_))
                                  '1)
                            (let ((_g255391_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248290248405_
                                      '1))))
                              (begin
                                (let ((_g255392_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255391_)
                                             (##vector-length _g255391_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255392_ 2)))
                                      (error "Context expects 2 values"
                                             _g255392_)))
                                (let ((_target248299248424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255391_ 0)))
                                      (_tl248301248426_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255391_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl248301248426_))
                                      (let ((_e248310248429_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl248301248426_))))
                                        (let ((_hd248309248432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248310248429_)))
                                              (_tl248308248434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248310248429_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl248308248434_))
                                              (letrec ((_loop248302248437_
                                                        (lambda (_hd248300248440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref248306248442_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd248300248440_))
                      (let ((_e248303248445_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd248300248440_))))
                        (let ((_lp-hd248304248448_
                               (let ()
                                 (declare (not safe))
                                 (##car _e248303248445_)))
                              (_lp-tl248305248450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e248303248445_))))
                          (let ((__tmp255478
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd248304248448_
                                         _kw-ref248306248442_))))
                            (declare (not safe))
                            (_loop248302248437_
                             _lp-tl248305248450_
                             __tmp255478))))
                      (let ((_kw-ref248307248453_
                             (reverse _kw-ref248306248442_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl248266248341_))
                            ((lambda (_L248456_
                                      _L248457_
                                      _L248458_
                                      _L248459_
                                      _L248460_)
                               (let* ((_kw-count248511_
                                       (length (let ((__tmp255393
                                                      (lambda (_g248503248506_
                                                               _g248504248508_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248503248506_
                                                                _g248504248508_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp255393
                                                         '()
                                                         _L248457_))))
                                      (_self-index248513_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count248511_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L248212_))
                                     (let* ((_g248516248530_
                                             (lambda (_g248517248527_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248517248527_))))
                                            (_g248515248701_
                                             (lambda (_g248517248533_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248517248533_))
                                                   (let ((_e248522248535_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248517248533_))))
                                                     (let ((_hd248521248538_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248522248535_)))
                                                           (_tl248520248540_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248522248535_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248520248540_))
                                                           (let ((_e248525248543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248520248540_))))
                     (let ((_hd248524248546_
                            (let ()
                              (declare (not safe))
                              (##car _e248525248543_)))
                           (_tl248523248548_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248525248543_))))
                       ((lambda (_L248551_ _L248552_)
                          (let ((_self248568_
                                 (list-ref _L248552_ _self-index248513_)))
                            (for-each
                             (lambda (_g248569248571_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g248569248571_
                                  _self248568_
                                  _method-calls246218_
                                  _slot-refs246219_
                                  _class-type-check246220_
                                  _struct-type-check246221_
                                  _struct-type-assert246222_)))
                             _L248551_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?246225_))
                                _stx246124_
                                (let* ((_specializer-id248580_
                                        (let* ((_id248574_
                                                (let ((__tmp255444
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L246199_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp255444
                                                   '"::specialize")))
                                               (_specializer-id248577_
                                                (let ((__tmp255445
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx246124_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id248574_
                                                   __tmp255445))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id248577_))
                                          _specializer-id248577_))
                                       (_lifted-specializer-id248587_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?246227_))
                                            (let* ((_id248582_
                                                    (let ((__tmp255446
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246199_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp255446
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id248584_
                                                    (let ((__tmp255447
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx246124_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id248582_
                                                       __tmp255447))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id248584_))
                                              _lifted-specializer-id248584_)
                                            '#f))
                                       (_$t248589_
                                        (let ((__tmp255448 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp255448)))
                                       (_methods248591_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls246218_)))
                                       (_$methods248595_
                                        (map (lambda (_id248593_)
                                               (let ((__tmp255449
                                                      (gensym _id248593_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255449)))
                                             _methods248591_))
                                       (_g255450_
                                        (for-each
                                         (lambda (_g248596248599_
                                                  _g248597248601_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls246218_
                                              _g248596248599_
                                              _g248597248601_)))
                                         _methods248591_
                                         _$methods248595_))
                                       (_methods-bind248612_
                                        (map (lambda (_g248604248607_
                                                      _g248605248609_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind246126_
                                                  _$t248589_
                                                  _g248604248607_
                                                  _g248605248609_)))
                                             _methods248591_
                                             _$methods248595_))
                                       (_slots248614_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs246219_)))
                                       (_$slots248618_
                                        (map (lambda (_id248616_)
                                               (let ((__tmp255451
                                                      (gensym _id248616_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp255451)))
                                             _slots248614_))
                                       (_g255452_
                                        (for-each
                                         (lambda (_g248619248622_
                                                  _g248620248624_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs246219_
                                              _g248619248622_
                                              _g248620248624_)))
                                         _slots248614_
                                         _$slots248618_))
                                       (_slots-bind248635_
                                        (map (lambda (_g248627248630_
                                                      _g248628248632_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind246127_
                                                  _$t248589_
                                                  _g248627248630_
                                                  _g248628248632_)))
                                             _slots248614_
                                             _$slots248618_))
                                       (_class-check248637_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check246220_)))
                                       (_$class-check248640_
                                        (map (lambda (_g255453_)
                                               (let ((__tmp255454
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255454)))
                                             _class-check248637_))
                                       (_g255455_
                                        (for-each
                                         (lambda (_g248641248644_
                                                  _g248642248646_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check246220_
                                              _g248641248644_
                                              _g248642248646_)))
                                         _class-check248637_
                                         _$class-check248640_))
                                       (_class-check-bind248657_
                                        (map (lambda (_g248649248652_
                                                      _g248650248654_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind246128_
                                                  _$t248589_
                                                  _g248649248652_
                                                  _g248650248654_)))
                                             _class-check248637_
                                             _$class-check248640_))
                                       (_struct-check-all248659_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check246221_
                                           _struct-type-assert246222_)))
                                       (_struct-check248661_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all248659_)))
                                       (_$struct-check248664_
                                        (map (lambda (_g255456_)
                                               (let ((__tmp255457
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp255457)))
                                             _struct-check248661_))
                                       (_g255458_
                                        (for-each
                                         (lambda (_g248665248668_
                                                  _g248666248670_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all248659_
                                              _g248665248668_
                                              _g248666248670_)))
                                         _struct-check248661_
                                         _$struct-check248664_))
                                       (_struct-check-bind248681_
                                        (map (lambda (_g248673248676_
                                                      _g248674248678_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind246129_
                                                  _$t248589_
                                                  _g248673248676_
                                                  _g248674248678_)))
                                             _struct-check248661_
                                             _$struct-check248664_))
                                       (_make-specializer-impl248692_
                                        (lambda (_struct-type-check1248683_
                                                 _struct-type-check2248684_)
                                          (let* ((_specializer-body248690_
                                                  (map (lambda (_g248685248687_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g248685248687_
                                                            _self248568_
                                                            _$t248589_
                                                            _method-calls246218_
                                                            _slot-refs246219_
                                                            _class-type-check246220_
                                                            _struct-type-check1248683_
                                                            _struct-type-check2248684_)))
                                                       _L248551_))
                                                 (__tmp255459
                                                  (let ((__tmp255460
                                                         (let ((__tmp255462
                                                                (let ((__tmp255463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255475
                                      (let ()
                                        (declare (not safe))
                                        (cons _L248214_ '())))
                                     (__tmp255464
                                      (let ((__tmp255465
                                             (let ((__tmp255466
                                                    (let ((__tmp255468
                                                           (let ((__tmp255469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255474
                                 (let ()
                                   (declare (not safe))
                                   (cons _L248213_ '())))
                                (__tmp255470
                                 (let ((__tmp255471
                                        (let ((__tmp255472
                                               (let ((__tmp255473
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248552_
                                                              _specializer-body248690_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp255473))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp255472
                                           _L248212_))))
                                   (declare (not safe))
                                   (cons __tmp255471 '()))))
                            (declare (not safe))
                            (cons __tmp255474 __tmp255470))))
                     (declare (not safe))
                     (cons __tmp255469 '())))
                  (__tmp255467
                   (let () (declare (not safe)) (cons _L248211_ '()))))
              (declare (not safe))
              (cons __tmp255468 __tmp255467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp255466))))
                                        (declare (not safe))
                                        (cons __tmp255465 '()))))
                                 (declare (not safe))
                                 (cons __tmp255475 __tmp255464))))
                          (declare (not safe))
                          (cons __tmp255463 '())))
                       (__tmp255461
                        (let () (declare (not safe)) (cons _L248210_ '()))))
                   (declare (not safe))
                   (cons __tmp255462 __tmp255461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp255460))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp255459
                                             _stx246124_))))
                                       (_specializer-impl248694_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl248692_
                                           _struct-check-all248659_
                                           _empty246223_)))
                                       (_unchecked-specializer-impl248696_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?246226_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl248692_
                                               _empty246223_
                                               _struct-check-all248659_))
                                            '#f))
                                       (_specializer-impl248698_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl246130_
                                           _$t248589_
                                           _methods-bind248612_
                                           _slots-bind248635_
                                           _class-check-bind248657_
                                           _struct-check-bind248681_
                                           _specializer-impl248694_
                                           _lifted-specializer-id248587_
                                           _unchecked-specializer-impl248696_))))
                                  (let ((__tmp255477
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L246199_)))
                                        (__tmp255476
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id248580_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp255477
                                     '" => "
                                     __tmp255476))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def246131_
                                     _L246199_
                                     _specializer-id248580_
                                     _specializer-impl248698_
                                     _lifted-specializer-id248587_
                                     _unchecked-specializer-impl248696_))))))
                        _tl248523248548_
                        _hd248524248546_)))
                   (let ()
                     (declare (not safe))
                     (_g248516248530_ _g248517248533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248516248530_
                                                      _g248517248533_))))))
                                       (declare (not safe))
                                       (_g248515248701_ _L248212_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L248212_))
                                         (let* ((_g248704248734_
                                                 (lambda (_g248705248731_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248705248731_))))
                                                (_g248703249359_
                                                 (lambda (_g248705248737_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248705248737_))
                                                       (let ((_e248711248739_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248705248737_))))
                 (let ((_hd248710248742_
                        (let () (declare (not safe)) (##car _e248711248739_)))
                       (_tl248709248744_
                        (let () (declare (not safe)) (##cdr _e248711248739_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl248709248744_))
                       (let ((_e248714248747_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248709248744_))))
                         (let ((_hd248713248750_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248714248747_)))
                               (_tl248712248752_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248714248747_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd248713248750_))
                               (let ((_e248717248755_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd248713248750_))))
                                 (let ((_hd248716248758_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248717248755_)))
                                       (_tl248715248760_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248717248755_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248716248758_))
                                       (let ((_e248720248763_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248716248758_))))
                                         (let ((_hd248719248766_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248720248763_)))
                                               (_tl248718248768_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248720248763_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248719248766_))
                                               (let ((_e248723248771_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248719248766_))))
                                                 (let ((_hd248722248774_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248723248771_)))
                                                       (_tl248721248776_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248723248771_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248721248776_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248718248768_))
                                                           (let ((_e248726248779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248718248768_))))
                     (let ((_hd248725248782_
                            (let ()
                              (declare (not safe))
                              (##car _e248726248779_)))
                           (_tl248724248784_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248726248779_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248724248784_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248715248760_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl248712248752_))
                                   (let ((_e248729248787_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl248712248752_))))
                                     (let ((_hd248728248790_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248729248787_)))
                                           (_tl248727248792_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248729248787_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248727248792_))
                                           ((lambda (_L248795_
                                                     _L248796_
                                                     _L248797_)
                                              (let* ((_g248820248834_
                                                      (lambda (_g248821248831_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248821248831_))))
                                                     (_g248819248875_
                                                      (lambda (_g248821248837_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248821248837_))
                                                            (let ((_e248826248839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248821248837_))))
                      (let ((_hd248825248842_
                             (let ()
                               (declare (not safe))
                               (##car _e248826248839_)))
                            (_tl248824248844_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248826248839_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl248824248844_))
                            (let ((_e248829248847_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl248824248844_))))
                              (let ((_hd248828248850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e248829248847_)))
                                    (_tl248827248852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e248829248847_))))
                                ((lambda (_L248855_ _L248856_)
                                   (let ((_self248869_
                                          (list-ref
                                           _L248856_
                                           _self-index248513_)))
                                     (for-each
                                      (lambda (_g248870248872_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g248870248872_
                                           _self248869_
                                           _method-calls246218_
                                           _slot-refs246219_
                                           _class-type-check246220_
                                           _struct-type-check246221_
                                           _struct-type-assert246222_)))
                                      _L248855_)))
                                 _tl248827248852_
                                 _hd248828248850_)))
                            (let ()
                              (declare (not safe))
                              (_g248820248834_ _g248821248837_)))))
                    (let ()
                      (declare (not safe))
                      (_g248820248834_ _g248821248837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248819248875_ _L248796_))
                                              (let* ((_g248878248897_
                                                      (lambda (_g248879248894_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g248879248894_))))
                                                     (_g248877249002_
                                                      (lambda (_g248879248900_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g248879248900_))
                                                            (let ((_e248883248902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g248879248900_))))
                      (let ((_hd248882248905_
                             (let ()
                               (declare (not safe))
                               (##car _e248883248902_)))
                            (_tl248881248907_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248883248902_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl248881248907_))
                            (let ((_g255394_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl248881248907_
                                      '0))))
                              (begin
                                (let ((_g255395_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g255394_)
                                             (##vector-length _g255394_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g255395_ 2)))
                                      (error "Context expects 2 values"
                                             _g255395_)))
                                (let ((_target248884248910_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255394_ 0)))
                                      (_tl248886248912_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g255394_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl248886248912_))
                                      (letrec ((_loop248887248915_
                                                (lambda (_hd248885248918_
                                                         _clause248891248920_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd248885248918_))
                                                      (let ((_e248888248923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd248885248918_))))
                (let ((_lp-hd248889248926_
                       (let () (declare (not safe)) (##car _e248888248923_)))
                      (_lp-tl248890248928_
                       (let () (declare (not safe)) (##cdr _e248888248923_))))
                  (let ((__tmp255397
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd248889248926_ _clause248891248920_))))
                    (declare (not safe))
                    (_loop248887248915_ _lp-tl248890248928_ __tmp255397))))
              (let ((_clause248892248931_ (reverse _clause248891248920_)))
                ((lambda (_L248934_)
                   (for-each
                    (lambda (_clause248947_)
                      (let* ((_g248949248960_
                              (lambda (_g248950248957_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g248950248957_))))
                             (_g248948248992_
                              (lambda (_g248950248963_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g248950248963_))
                                    (let ((_e248955248965_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g248950248963_))))
                                      (let ((_hd248954248968_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e248955248965_)))
                                            (_tl248953248970_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e248955248965_))))
                                        ((lambda (_L248973_ _L248974_)
                                           (let ((_self248986_
                                                  (list-ref
                                                   _L248974_
                                                   _self-index248513_)))
                                             (for-each
                                              (lambda (_g248987248989_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g248987248989_
                                                   _self248986_
                                                   _method-calls246218_
                                                   _slot-refs246219_
                                                   _class-type-check246220_
                                                   _struct-type-check246221_
                                                   _struct-type-assert246222_)))
                                              _L248973_)))
                                         _tl248953248970_
                                         _hd248954248968_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248949248960_ _g248950248963_))))))
                        (declare (not safe))
                        (_g248948248992_ _clause248947_)))
                    (let ((__tmp255396
                           (lambda (_g248994248997_ _g248995248999_)
                             (let ()
                               (declare (not safe))
                               (cons _g248994248997_ _g248995248999_)))))
                      (declare (not safe))
                      (foldr1 __tmp255396 '() _L248934_))))
                 _clause248892248931_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop248887248915_
                                           _target248884248910_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g248878248897_ _g248879248900_))))))
                            (let ()
                              (declare (not safe))
                              (_g248878248897_ _g248879248900_)))))
                    (let ()
                      (declare (not safe))
                      (_g248878248897_ _g248879248900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g248877249002_ _L248795_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?246225_))
                                                  _stx246124_
                                                  (let* ((_specializer-id249011_
                                                          (let* ((_id249005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp255398
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246199_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp255398 '"::specialize")))
                         (_specializer-id249008_
                          (let ((__tmp255399
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246124_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249005_ __tmp255399))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id249008_))
                    _specializer-id249008_))
                 (_lifted-specializer-id249018_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?246227_))
                      (let* ((_id249013_
                              (let ((__tmp255400
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246199_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp255400
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id249015_
                              (let ((__tmp255401
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246124_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id249013_
                                 __tmp255401))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id249015_))
                        _lifted-specializer-id249015_)
                      '#f))
                 (_$t249020_
                  (let ((__tmp255402 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp255402)))
                 (_methods249022_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246218_)))
                 (_$methods249026_
                  (map (lambda (_id249024_)
                         (let ((__tmp255403 (gensym _id249024_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255403)))
                       _methods249022_))
                 (_g255404_
                  (for-each
                   (lambda (_g249027249030_ _g249028249032_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246218_
                        _g249027249030_
                        _g249028249032_)))
                   _methods249022_
                   _$methods249026_))
                 (_methods-bind249043_
                  (map (lambda (_g249035249038_ _g249036249040_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246126_
                            _$t249020_
                            _g249035249038_
                            _g249036249040_)))
                       _methods249022_
                       _$methods249026_))
                 (_slots249045_
                  (let () (declare (not safe)) (hash-keys _slot-refs246219_)))
                 (_$slots249049_
                  (map (lambda (_id249047_)
                         (let ((__tmp255405 (gensym _id249047_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp255405)))
                       _slots249045_))
                 (_g255406_
                  (for-each
                   (lambda (_g249050249053_ _g249051249055_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246219_
                        _g249050249053_
                        _g249051249055_)))
                   _slots249045_
                   _$slots249049_))
                 (_slots-bind249066_
                  (map (lambda (_g249058249061_ _g249059249063_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246127_
                            _$t249020_
                            _g249058249061_
                            _g249059249063_)))
                       _slots249045_
                       _$slots249049_))
                 (_class-check249068_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246220_)))
                 (_$class-check249071_
                  (map (lambda (_g255407_)
                         (let ((__tmp255408 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255408)))
                       _class-check249068_))
                 (_g255409_
                  (for-each
                   (lambda (_g249072249075_ _g249073249077_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246220_
                        _g249072249075_
                        _g249073249077_)))
                   _class-check249068_
                   _$class-check249071_))
                 (_class-check-bind249088_
                  (map (lambda (_g249080249083_ _g249081249085_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246128_
                            _$t249020_
                            _g249080249083_
                            _g249081249085_)))
                       _class-check249068_
                       _$class-check249071_))
                 (_struct-check-all249090_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check246221_
                     _struct-type-assert246222_)))
                 (_struct-check249092_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all249090_)))
                 (_$struct-check249095_
                  (map (lambda (_g255410_)
                         (let ((__tmp255411 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp255411)))
                       _struct-check249092_))
                 (_g255412_
                  (for-each
                   (lambda (_g249096249099_ _g249097249101_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all249090_
                        _g249096249099_
                        _g249097249101_)))
                   _struct-check249092_
                   _$struct-check249095_))
                 (_struct-check-bind249112_
                  (map (lambda (_g249104249107_ _g249105249109_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246129_
                            _$t249020_
                            _g249104249107_
                            _g249105249109_)))
                       _struct-check249092_
                       _$struct-check249095_))
                 (_make-specializer-lambda-expr249198_
                  (lambda (_struct-type-check1249114_
                           _struct-type-check2249115_)
                    (let* ((_g249117249131_
                            (lambda (_g249118249128_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249118249128_))))
                           (_g249116249195_
                            (lambda (_g249118249134_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249118249134_))
                                  (let ((_e249123249136_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249118249134_))))
                                    (let ((_hd249122249139_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249123249136_)))
                                          (_tl249121249141_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249123249136_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl249121249141_))
                                          (let ((_e249126249144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl249121249141_))))
                                            (let ((_hd249125249147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e249126249144_)))
                                                  (_tl249124249149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e249126249144_))))
                                              ((lambda (_L249152_ _L249153_)
                                                 (let* ((_self249186_
                                                         (list-ref
                                                          _L249153_
                                                          _self-index248513_))
                                                        (_body249192_
                                                         (map (lambda (_g249187249189_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g249187249189_
                           _self249186_
                           _$t249020_
                           _method-calls246218_
                           _slot-refs246219_
                           _class-type-check246220_
                           _struct-type-check1249114_
                           _struct-type-check2249115_)))
                      _L249152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp255413
                                                          (let ((__tmp255414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L249153_ _body249192_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp255414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255413
                                                      _L248796_))))
                                               _tl249124249149_
                                               _hd249125249147_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g249117249131_
                                             _g249118249134_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249117249131_ _g249118249134_))))))
                      (declare (not safe))
                      (_g249116249195_ _L248796_))))
                 (_make-specializer-case-lambda-expr249337_
                  (lambda (_struct-type-check1249200_
                           _struct-type-check2249201_)
                    (let* ((_g249203249222_
                            (lambda (_g249204249219_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249204249219_))))
                           (_g249202249334_
                            (lambda (_g249204249225_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249204249225_))
                                  (let ((_e249208249227_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249204249225_))))
                                    (let ((_hd249207249230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249208249227_)))
                                          (_tl249206249232_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249208249227_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl249206249232_))
                                          (let ((_g255415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl249206249232_
                                                    '0))))
                                            (begin
                                              (let ((_g255416_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g255415_)
                                                           (##vector-length
                                                            _g255415_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g255416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g255416_)))
                                              (let ((_target249209249235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255415_
                                                        0)))
                                                    (_tl249211249237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g255415_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249211249237_))
                                                    (letrec ((_loop249212249240_
                                                              (lambda (_hd249210249243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause249216249245_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249210249243_))
                            (let ((_e249213249248_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249210249243_))))
                              (let ((_lp-hd249214249251_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249213249248_)))
                                    (_lp-tl249215249253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249213249248_))))
                                (let ((__tmp255419
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd249214249251_
                                               _clause249216249245_))))
                                  (declare (not safe))
                                  (_loop249212249240_
                                   _lp-tl249215249253_
                                   __tmp255419))))
                            (let ((_clause249217249256_
                                   (reverse _clause249216249245_)))
                              ((lambda (_L249259_)
                                 (let* ((_clauses249332_
                                         (map (lambda (_clause249274_)
                                                (let* ((_g249276249287_
                                                        (lambda (_g249277249284_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g249277249284_))))
                                                       (_g249275249322_
                                                        (lambda (_g249277249290_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g249277249290_))
                      (let ((_e249282249292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g249277249290_))))
                        (let ((_hd249281249295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249282249292_)))
                              (_tl249280249297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249282249292_))))
                          ((lambda (_L249300_ _L249301_)
                             (let* ((_self249313_
                                     (list-ref _L249301_ _self-index248513_))
                                    (_body249319_
                                     (map (lambda (_g249314249316_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g249314249316_
                                               _self249313_
                                               _$t249020_
                                               _method-calls246218_
                                               _slot-refs246219_
                                               _class-type-check246220_
                                               _struct-type-check1249200_
                                               _struct-type-check2249201_)))
                                          _L249300_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L249301_ _body249319_))))
                           _tl249280249297_
                           _hd249281249295_)))
                      (let ()
                        (declare (not safe))
                        (_g249276249287_ _g249277249290_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g249275249322_
                                                   _clause249274_)))
                                              (let ((__tmp255417
                                                     (lambda (_g249324249327_
                                                              _g249325249329_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g249324249327_
                                                               _g249325249329_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp255417
                                                        '()
                                                        _L249259_))))
                                        (__tmp255418
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses249332_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255418
                                    _L248795_)))
                               _clause249217249256_))))))
              (let ()
                (declare (not safe))
                (_loop249212249240_ _target249209249235_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249203249222_
                                                       _g249204249225_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g249203249222_
                                             _g249204249225_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249203249222_ _g249204249225_))))))
                      (declare (not safe))
                      (_g249202249334_ _L248795_))))
                 (_make-specializer-impl249342_
                  (lambda (_specializer-lambda-expr249339_
                           _specializer-case-lambda-expr249340_)
                    (let ((__tmp255420
                           (let ((__tmp255421
                                  (let ((__tmp255423
                                         (let ((__tmp255424
                                                (let ((__tmp255441
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L248214_ '())))
                                                      (__tmp255425
                                                       (let ((__tmp255426
                                                              (let ((__tmp255427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp255429
                                    (let ((__tmp255430
                                           (let ((__tmp255440
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L248213_ '())))
                                                 (__tmp255431
                                                  (let ((__tmp255432
                                                         (let ((__tmp255433
                                                                (let ((__tmp255434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255436
                                      (let ((__tmp255437
                                             (let ((__tmp255439
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L248797_ '())))
                                                   (__tmp255438
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr249339_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp255439
                                                     __tmp255438))))
                                        (declare (not safe))
                                        (cons __tmp255437 '())))
                                     (__tmp255435
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr249340_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp255436 __tmp255435))))
                          (declare (not safe))
                          (cons '%#let-values __tmp255434))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255433 _stx246124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255432 '()))))
                                             (declare (not safe))
                                             (cons __tmp255440 __tmp255431))))
                                      (declare (not safe))
                                      (cons __tmp255430 '())))
                                   (__tmp255428
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248211_ '()))))
                               (declare (not safe))
                               (cons __tmp255429 __tmp255428))))
                        (declare (not safe))
                        (cons '%#let-values __tmp255427))))
                 (declare (not safe))
                 (cons __tmp255426 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp255441
                                                        __tmp255425))))
                                           (declare (not safe))
                                           (cons __tmp255424 '())))
                                        (__tmp255422
                                         (let ()
                                           (declare (not safe))
                                           (cons _L248210_ '()))))
                                    (declare (not safe))
                                    (cons __tmp255423 __tmp255422))))
                             (declare (not safe))
                             (cons '%#let-values __tmp255421))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255420 _stx246124_))))
                 (_specializer-lambda-expr249344_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr249198_
                     _struct-check-all249090_
                     _empty246223_)))
                 (_specializer-case-lambda-expr249346_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr249337_
                     _struct-check-all249090_
                     _empty246223_)))
                 (_specializer-impl249348_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl249342_
                     _specializer-lambda-expr249344_
                     _specializer-case-lambda-expr249346_)))
                 (_unchecked-specializer-lambda-expr249350_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246226_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr249198_
                         _empty246223_
                         _struct-check-all249090_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr249352_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246226_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr249337_
                         _empty246223_
                         _struct-check-all249090_))
                      '#f))
                 (_unchecked-specializer-impl249354_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?246226_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl249342_
                         _unchecked-specializer-lambda-expr249350_
                         _unchecked-specializer-case-lambda-expr249352_))
                      '#f))
                 (_specializer-impl249356_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246130_
                     _$t249020_
                     _methods-bind249043_
                     _slots-bind249066_
                     _class-check-bind249088_
                     _struct-check-bind249112_
                     _specializer-impl249348_
                     _lifted-specializer-id249018_
                     _unchecked-specializer-impl249354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp255443
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246199_)))
                                                          (__tmp255442
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id249011_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp255443
                                                       '" => "
                                                       __tmp255442))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246131_
                                                       _L246199_
                                                       _specializer-id249011_
                                                       _specializer-impl249356_
                                                       _lifted-specializer-id249018_
                                                       _unchecked-specializer-impl249354_)))))
                                            _hd248728248790_
                                            _hd248725248782_
                                            _hd248722248774_)
                                           (let ()
                                             (declare (not safe))
                                             (_g248704248734_
                                              _g248705248737_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248704248734_ _g248705248737_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248704248734_ _g248705248737_)))
                           (let ()
                             (declare (not safe))
                             (_g248704248734_ _g248705248737_)))))
                   (let ()
                     (declare (not safe))
                     (_g248704248734_ _g248705248737_)))
               (let ()
                 (declare (not safe))
                 (_g248704248734_ _g248705248737_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248704248734_
                                                  _g248705248737_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248704248734_ _g248705248737_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248704248734_ _g248705248737_)))))
                       (let ()
                         (declare (not safe))
                         (_g248704248734_ _g248705248737_)))))
               (let ()
                 (declare (not safe))
                 (_g248704248734_ _g248705248737_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248703249359_ _L248212_))
                                         _stx246124_))))
                             _hd248309248432_
                             _kw-ref248307248453_
                             _hd248297248419_
                             _hd248288248395_
                             _hd248279248371_)
                            (let ()
                              (declare (not safe))
                              (_g248253248315_ _g248254248318_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop248302248437_
                                                   _target248299248424_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g248253248315_
                                                 _g248254248318_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248253248315_ _g248254248318_))))))
                            (let ()
                              (declare (not safe))
                              (_g248253248315_ _g248254248318_)))
                        (let ()
                          (declare (not safe))
                          (_g248253248315_ _g248254248318_)))
                    (let ()
                      (declare (not safe))
                      (_g248253248315_ _g248254248318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248253248315_
                                                       _g248254248318_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248253248315_
                                                   _g248254248318_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g248253248315_
                                               _g248254248318_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248253248315_ _g248254248318_)))))
                            (let ()
                              (declare (not safe))
                              (_g248253248315_ _g248254248318_)))
                        (let ()
                          (declare (not safe))
                          (_g248253248315_ _g248254248318_)))))
                (let ()
                  (declare (not safe))
                  (_g248253248315_ _g248254248318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248253248315_
                                                       _g248254248318_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248253248315_
                                                   _g248254248318_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g248253248315_ _g248254248318_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g248253248315_ _g248254248318_)))
                            (let ()
                              (declare (not safe))
                              (_g248253248315_ _g248254248318_)))))
                    (let ()
                      (declare (not safe))
                      (_g248253248315_ _g248254248318_)))
                (let ()
                  (declare (not safe))
                  (_g248253248315_ _g248254248318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248253248315_
                                                       _g248254248318_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248253248315_
                                               _g248254248318_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g248253248315_ _g248254248318_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248253248315_ _g248254248318_)))
                            (let ()
                              (declare (not safe))
                              (_g248253248315_ _g248254248318_)))))
                    (let ()
                      (declare (not safe))
                      (_g248253248315_ _g248254248318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g248253248315_
                                                       _g248254248318_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g248253248315_
                                               _g248254248318_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g248253248315_ _g248254248318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g248253248315_ _g248254248318_)))))
                            (let ()
                              (declare (not safe))
                              (_g248253248315_ _g248254248318_))))))
                (declare (not safe))
                (_g248252249362_ _L248211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd248087248205_
                                                    _hd248084248197_
                                                    _hd248081248189_
                                                    _hd248078248181_
                                                    _hd248060248133_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248040248093_
                                                      _g248041248096_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248040248093_
                                              _g248041248096_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g248040248093_ _g248041248096_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g248040248093_ _g248041248096_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248040248093_ _g248041248096_)))))
                       (let ()
                         (declare (not safe))
                         (_g248040248093_ _g248041248096_)))
                   (let ()
                     (declare (not safe))
                     (_g248040248093_ _g248041248096_)))
               (let ()
                 (declare (not safe))
                 (_g248040248093_ _g248041248096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248040248093_
                                                  _g248041248096_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248040248093_
                                              _g248041248096_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248040248093_ _g248041248096_)))))
                           (let ()
                             (declare (not safe))
                             (_g248040248093_ _g248041248096_)))))
                   (let ()
                     (declare (not safe))
                     (_g248040248093_ _g248041248096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248040248093_
                                                      _g248041248096_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248040248093_
                                                  _g248041248096_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248040248093_
                                              _g248041248096_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248040248093_ _g248041248096_)))))
                           (let ()
                             (declare (not safe))
                             (_g248040248093_ _g248041248096_)))
                       (let ()
                         (declare (not safe))
                         (_g248040248093_ _g248041248096_)))))
               (let ()
                 (declare (not safe))
                 (_g248040248093_ _g248041248096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248040248093_
                                                  _g248041248096_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248040248093_ _g248041248096_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248040248093_ _g248041248096_)))
                           (let ()
                             (declare (not safe))
                             (_g248040248093_ _g248041248096_)))
                       (let ()
                         (declare (not safe))
                         (_g248040248093_ _g248041248096_)))))
               (let ()
                 (declare (not safe))
                 (_g248040248093_ _g248041248096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248039249365_ _L246198_))
                                         _stx246124_))))))))
                  (___kont254172254173_ (lambda () _stx246124_)))
              (let ((___match254201254202_
                     (lambda (_e246140246166_
                              _hd246139246169_
                              _tl246138246171_
                              _e246143246174_
                              _hd246142246177_
                              _tl246141246179_
                              _e246146246182_
                              _hd246145246185_
                              _tl246144246187_
                              _e246149246190_
                              _hd246148246193_
                              _tl246147246195_)
                       (let ((_L246198_ _hd246148246193_)
                             (_L246199_ _hd246145246185_))
                         (if (let ((__tmp255560
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L246199_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp255560))
                             (___kont254170254171_ _L246198_ _L246199_)
                             (___kont254172254173_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254168254169_))
                    (let ((_e246140246166_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254168254169_))))
                      (let ((_tl246138246171_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246140246166_)))
                            (_hd246139246169_
                             (let ()
                               (declare (not safe))
                               (##car _e246140246166_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246138246171_))
                            (let ((_e246143246174_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246138246171_))))
                              (let ((_tl246141246179_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246143246174_)))
                                    (_hd246142246177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246143246174_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd246142246177_))
                                    (let ((_e246146246182_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd246142246177_))))
                                      (let ((_tl246144246187_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246146246182_)))
                                            (_hd246145246185_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246146246182_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl246144246187_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl246141246179_))
                                                (let ((_e246149246190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl246141246179_))))
                                                  (let ((_tl246147246195_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e246149246190_)))
                                                        (_hd246148246193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e246149246190_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl246147246195_))
                                                        (___match254201254202_
                                                         _e246140246166_
                                                         _hd246139246169_
                                                         _tl246138246171_
                                                         _e246143246174_
                                                         _hd246142246177_
                                                         _tl246141246179_
                                                         _e246146246182_
                                                         _hd246145246185_
                                                         _tl246144246187_
                                                         _e246149246190_
                                                         _hd246148246193_
                                                         _tl246147246195_)
                                                        (___kont254172254173_))))
                                                (___kont254172254173_))
                                            (___kont254172254173_))))
                                    (___kont254172254173_))))
                            (___kont254172254173_))))
                    (___kont254172254173_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx245100_
               _self245101_
               _methods245102_
               _slots245103_
               _class-check245104_
               _struct-check245105_
               _struct-assert245106_)
        (let* ((___stx254204254205_ _stx245100_)
               (_g245114245336_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx254204254205_)))))
          (let ((___kont254206254207_
                 (lambda (_L246073_ _L246074_ _L246075_ _L246076_)
                   (let ((__tmp255561
                          (let () (declare (not safe)) (gx#stx-e _L246074_))))
                     (declare (not safe))
                     (table-set! _methods245102_ __tmp255561 '#t))
                   (for-each
                    (lambda (_g246109246111_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246109246111_
                         _self245101_
                         _methods245102_
                         _slots245103_
                         _class-check245104_
                         _struct-check245105_
                         _struct-assert245106_)))
                    (let ((__tmp255562
                           (lambda (_g246113246116_ _g246114246118_)
                             (let ()
                               (declare (not safe))
                               (cons _g246113246116_ _g246114246118_)))))
                      (declare (not safe))
                      (foldr1 __tmp255562 '() _L246073_)))))
                (___kont254210254211_
                 (lambda (_L245908_ _L245909_ _L245910_ _L245911_ _L245912_)
                   (let ((__tmp255563
                          (let () (declare (not safe)) (gx#stx-e _L245909_))))
                     (declare (not safe))
                     (table-set! _methods245102_ __tmp255563 '#t))
                   (for-each
                    (lambda (_g245952245954_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g245952245954_
                         _self245101_
                         _methods245102_
                         _slots245103_
                         _class-check245104_
                         _struct-check245105_
                         _struct-assert245106_)))
                    (let ((__tmp255564
                           (lambda (_g245956245959_ _g245957245961_)
                             (let ()
                               (declare (not safe))
                               (cons _g245956245959_ _g245957245961_)))))
                      (declare (not safe))
                      (foldr1 __tmp255564 '() _L245908_)))))
                (___kont254214254215_
                 (lambda (_L245741_ _L245742_ _L245743_)
                   (let ((__tmp255565
                          (let () (declare (not safe)) (gx#stx-e _L245741_))))
                     (declare (not safe))
                     (table-set! _slots245103_ __tmp255565 '#t))))
                (___kont254216254217_
                 (lambda (_L245618_ _L245619_ _L245620_ _L245621_)
                   (let ((__tmp255566
                          (let () (declare (not safe)) (gx#stx-e _L245619_))))
                     (declare (not safe))
                     (table-set! _slots245103_ __tmp255566 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245618_
                      _self245101_
                      _methods245102_
                      _slots245103_
                      _class-check245104_
                      _struct-check245105_
                      _struct-assert245106_))))
                (___kont254218254219_
                 (lambda (_L245502_ _L245503_)
                   (let ((__tmp255567
                          (##structure-ref
                           (let ((__tmp255568
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245503_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255568))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245103_ __tmp255567 '#t))))
                (___kont254220254221_
                 (lambda (_L245412_ _L245413_ _L245414_)
                   (let ((__tmp255569
                          (##structure-ref
                           (let ((__tmp255570
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L245414_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp255570))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245103_ __tmp255569 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L245412_
                      _self245101_
                      _methods245102_
                      _slots245103_
                      _class-check245104_
                      _struct-check245105_
                      _struct-assert245106_))))
                (___kont254222254223_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx245100_
                      _self245101_
                      _methods245102_
                      _slots245103_
                      _class-check245104_
                      _struct-check245105_
                      _struct-assert245106_)))))
            (let* ((___match254703254704_
                    (lambda (_e245310245348_
                             _hd245309245351_
                             _tl245308245353_
                             _e245313245356_
                             _hd245312245359_
                             _tl245311245361_
                             _e245316245364_
                             _hd245315245367_
                             _tl245314245369_
                             _e245319245372_
                             _hd245318245375_
                             _tl245317245377_
                             _e245322245380_
                             _hd245321245383_
                             _tl245320245385_
                             _e245325245388_
                             _hd245324245391_
                             _tl245323245393_
                             _e245328245396_
                             _hd245327245399_
                             _tl245326245401_
                             _e245331245404_
                             _hd245330245407_
                             _tl245329245409_)
                      (let ((_L245412_ _hd245330245407_)
                            (_L245413_ _hd245327245399_)
                            (_L245414_ _hd245318245375_))
                        (if (and (let ((__tmp255571
                                        (let ((__tmp255572
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245414_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255572))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255571
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245413_
                                    _self245101_)))
                            (___kont254220254221_
                             _L245412_
                             _L245413_
                             _L245414_)
                            (___kont254222254223_)))))
                   (___match254701254702_
                    (lambda (_e245310245348_
                             _hd245309245351_
                             _tl245308245353_
                             _e245313245356_
                             _hd245312245359_
                             _tl245311245361_
                             _e245316245364_
                             _hd245315245367_
                             _tl245314245369_
                             _e245319245372_
                             _hd245318245375_
                             _tl245317245377_
                             _e245322245380_
                             _hd245321245383_
                             _tl245320245385_
                             _e245325245388_
                             _hd245324245391_
                             _tl245323245393_
                             _e245328245396_
                             _hd245327245399_
                             _tl245326245401_
                             _e245331245404_
                             _hd245330245407_
                             _tl245329245409_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245329245409_))
                          (___match254703254704_
                           _e245310245348_
                           _hd245309245351_
                           _tl245308245353_
                           _e245313245356_
                           _hd245312245359_
                           _tl245311245361_
                           _e245316245364_
                           _hd245315245367_
                           _tl245314245369_
                           _e245319245372_
                           _hd245318245375_
                           _tl245317245377_
                           _e245322245380_
                           _hd245321245383_
                           _tl245320245385_
                           _e245325245388_
                           _hd245324245391_
                           _tl245323245393_
                           _e245328245396_
                           _hd245327245399_
                           _tl245326245401_
                           _e245331245404_
                           _hd245330245407_
                           _tl245329245409_)
                          (___kont254222254223_))))
                   (___match254695254696_
                    (lambda (_e245310245348_
                             _hd245309245351_
                             _tl245308245353_
                             _e245313245356_
                             _hd245312245359_
                             _tl245311245361_
                             _e245316245364_
                             _hd245315245367_
                             _tl245314245369_
                             _e245319245372_
                             _hd245318245375_
                             _tl245317245377_
                             _e245322245380_
                             _hd245321245383_
                             _tl245320245385_
                             _e245325245388_
                             _hd245324245391_
                             _tl245323245393_
                             _e245328245396_
                             _hd245327245399_
                             _tl245326245401_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245320245385_))
                          (let ((_e245331245404_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245320245385_))))
                            (let ((_tl245329245409_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245331245404_)))
                                  (_hd245330245407_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245331245404_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245329245409_))
                                  (___match254703254704_
                                   _e245310245348_
                                   _hd245309245351_
                                   _tl245308245353_
                                   _e245313245356_
                                   _hd245312245359_
                                   _tl245311245361_
                                   _e245316245364_
                                   _hd245315245367_
                                   _tl245314245369_
                                   _e245319245372_
                                   _hd245318245375_
                                   _tl245317245377_
                                   _e245322245380_
                                   _hd245321245383_
                                   _tl245320245385_
                                   _e245325245388_
                                   _hd245324245391_
                                   _tl245323245393_
                                   _e245328245396_
                                   _hd245327245399_
                                   _tl245326245401_
                                   _e245331245404_
                                   _hd245330245407_
                                   _tl245329245409_)
                                  (___kont254222254223_))))
                          (___kont254222254223_))))
                   (___match254641254642_
                    (lambda (_e245286245446_
                             _hd245285245449_
                             _tl245284245451_
                             _e245289245454_
                             _hd245288245457_
                             _tl245287245459_
                             _e245292245462_
                             _hd245291245465_
                             _tl245290245467_
                             _e245295245470_
                             _hd245294245473_
                             _tl245293245475_
                             _e245298245478_
                             _hd245297245481_
                             _tl245296245483_
                             _e245301245486_
                             _hd245300245489_
                             _tl245299245491_
                             _e245304245494_
                             _hd245303245497_
                             _tl245302245499_)
                      (let ((_L245502_ _hd245303245497_)
                            (_L245503_ _hd245294245473_))
                        (if (and (let ((__tmp255573
                                        (let ((__tmp255574
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L245503_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp255574))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp255573
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245502_
                                    _self245101_)))
                            (___kont254218254219_ _L245502_ _L245503_)
                            (___kont254222254223_)))))
                   (___match254639254640_
                    (lambda (_e245286245446_
                             _hd245285245449_
                             _tl245284245451_
                             _e245289245454_
                             _hd245288245457_
                             _tl245287245459_
                             _e245292245462_
                             _hd245291245465_
                             _tl245290245467_
                             _e245295245470_
                             _hd245294245473_
                             _tl245293245475_
                             _e245298245478_
                             _hd245297245481_
                             _tl245296245483_
                             _e245301245486_
                             _hd245300245489_
                             _tl245299245491_
                             _e245304245494_
                             _hd245303245497_
                             _tl245302245499_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245296245483_))
                          (___match254641254642_
                           _e245286245446_
                           _hd245285245449_
                           _tl245284245451_
                           _e245289245454_
                           _hd245288245457_
                           _tl245287245459_
                           _e245292245462_
                           _hd245291245465_
                           _tl245290245467_
                           _e245295245470_
                           _hd245294245473_
                           _tl245293245475_
                           _e245298245478_
                           _hd245297245481_
                           _tl245296245483_
                           _e245301245486_
                           _hd245300245489_
                           _tl245299245491_
                           _e245304245494_
                           _hd245303245497_
                           _tl245302245499_)
                          (___match254695254696_
                           _e245286245446_
                           _hd245285245449_
                           _tl245284245451_
                           _e245289245454_
                           _hd245288245457_
                           _tl245287245459_
                           _e245292245462_
                           _hd245291245465_
                           _tl245290245467_
                           _e245295245470_
                           _hd245294245473_
                           _tl245293245475_
                           _e245298245478_
                           _hd245297245481_
                           _tl245296245483_
                           _e245301245486_
                           _hd245300245489_
                           _tl245299245491_
                           _e245304245494_
                           _hd245303245497_
                           _tl245302245499_))))
                   (___match254585254586_
                    (lambda (_e245251245530_
                             _hd245250245533_
                             _tl245249245535_
                             _e245254245538_
                             _hd245253245541_
                             _tl245252245543_
                             _e245257245546_
                             _hd245256245549_
                             _tl245255245551_
                             _e245260245554_
                             _hd245259245557_
                             _tl245258245559_
                             _e245263245562_
                             _hd245262245565_
                             _tl245261245567_
                             _e245266245570_
                             _hd245265245573_
                             _tl245264245575_
                             _e245269245578_
                             _hd245268245581_
                             _tl245267245583_
                             _e245272245586_
                             _hd245271245589_
                             _tl245270245591_
                             _e245275245594_
                             _hd245274245597_
                             _tl245273245599_
                             _e245278245602_
                             _hd245277245605_
                             _tl245276245607_
                             _e245281245610_
                             _hd245280245613_
                             _tl245279245615_)
                      (let ((_L245618_ _hd245280245613_)
                            (_L245619_ _hd245277245605_)
                            (_L245620_ _hd245268245581_)
                            (_L245621_ _hd245259245557_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245621_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245621_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245620_
                                    _self245101_)))
                            (___kont254216254217_
                             _L245618_
                             _L245619_
                             _L245620_
                             _L245621_)
                            (___kont254222254223_)))))
                   (___match254577254578_
                    (lambda (_e245251245530_
                             _hd245250245533_
                             _tl245249245535_
                             _e245254245538_
                             _hd245253245541_
                             _tl245252245543_
                             _e245257245546_
                             _hd245256245549_
                             _tl245255245551_
                             _e245260245554_
                             _hd245259245557_
                             _tl245258245559_
                             _e245263245562_
                             _hd245262245565_
                             _tl245261245567_
                             _e245266245570_
                             _hd245265245573_
                             _tl245264245575_
                             _e245269245578_
                             _hd245268245581_
                             _tl245267245583_
                             _e245272245586_
                             _hd245271245589_
                             _tl245270245591_
                             _e245275245594_
                             _hd245274245597_
                             _tl245273245599_
                             _e245278245602_
                             _hd245277245605_
                             _tl245276245607_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245270245591_))
                          (let ((_e245281245610_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245270245591_))))
                            (let ((_tl245279245615_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245281245610_)))
                                  (_hd245280245613_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245281245610_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245279245615_))
                                  (___match254585254586_
                                   _e245251245530_
                                   _hd245250245533_
                                   _tl245249245535_
                                   _e245254245538_
                                   _hd245253245541_
                                   _tl245252245543_
                                   _e245257245546_
                                   _hd245256245549_
                                   _tl245255245551_
                                   _e245260245554_
                                   _hd245259245557_
                                   _tl245258245559_
                                   _e245263245562_
                                   _hd245262245565_
                                   _tl245261245567_
                                   _e245266245570_
                                   _hd245265245573_
                                   _tl245264245575_
                                   _e245269245578_
                                   _hd245268245581_
                                   _tl245267245583_
                                   _e245272245586_
                                   _hd245271245589_
                                   _tl245270245591_
                                   _e245275245594_
                                   _hd245274245597_
                                   _tl245273245599_
                                   _e245278245602_
                                   _hd245277245605_
                                   _tl245276245607_
                                   _e245281245610_
                                   _hd245280245613_
                                   _tl245279245615_)
                                  (___kont254222254223_))))
                          (___match254701254702_
                           _e245251245530_
                           _hd245250245533_
                           _tl245249245535_
                           _e245254245538_
                           _hd245253245541_
                           _tl245252245543_
                           _e245257245546_
                           _hd245256245549_
                           _tl245255245551_
                           _e245260245554_
                           _hd245259245557_
                           _tl245258245559_
                           _e245263245562_
                           _hd245262245565_
                           _tl245261245567_
                           _e245266245570_
                           _hd245265245573_
                           _tl245264245575_
                           _e245269245578_
                           _hd245268245581_
                           _tl245267245583_
                           _e245272245586_
                           _hd245271245589_
                           _tl245270245591_))))
                   (___match254499254500_
                    (lambda (_e245217245661_
                             _hd245216245664_
                             _tl245215245666_
                             _e245220245669_
                             _hd245219245672_
                             _tl245218245674_
                             _e245223245677_
                             _hd245222245680_
                             _tl245221245682_
                             _e245226245685_
                             _hd245225245688_
                             _tl245224245690_
                             _e245229245693_
                             _hd245228245696_
                             _tl245227245698_
                             _e245232245701_
                             _hd245231245704_
                             _tl245230245706_
                             _e245235245709_
                             _hd245234245712_
                             _tl245233245714_
                             _e245238245717_
                             _hd245237245720_
                             _tl245236245722_
                             _e245241245725_
                             _hd245240245728_
                             _tl245239245730_
                             _e245244245733_
                             _hd245243245736_
                             _tl245242245738_)
                      (let ((_L245741_ _hd245243245736_)
                            (_L245742_ _hd245234245712_)
                            (_L245743_ _hd245225245688_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245743_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L245743_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L245742_
                                    _self245101_)))
                            (___kont254214254215_
                             _L245741_
                             _L245742_
                             _L245743_)
                            (___match254703254704_
                             _e245217245661_
                             _hd245216245664_
                             _tl245215245666_
                             _e245220245669_
                             _hd245219245672_
                             _tl245218245674_
                             _e245223245677_
                             _hd245222245680_
                             _tl245221245682_
                             _e245226245685_
                             _hd245225245688_
                             _tl245224245690_
                             _e245229245693_
                             _hd245228245696_
                             _tl245227245698_
                             _e245232245701_
                             _hd245231245704_
                             _tl245230245706_
                             _e245235245709_
                             _hd245234245712_
                             _tl245233245714_
                             _e245238245717_
                             _hd245237245720_
                             _tl245236245722_)))))
                   (___match254497254498_
                    (lambda (_e245217245661_
                             _hd245216245664_
                             _tl245215245666_
                             _e245220245669_
                             _hd245219245672_
                             _tl245218245674_
                             _e245223245677_
                             _hd245222245680_
                             _tl245221245682_
                             _e245226245685_
                             _hd245225245688_
                             _tl245224245690_
                             _e245229245693_
                             _hd245228245696_
                             _tl245227245698_
                             _e245232245701_
                             _hd245231245704_
                             _tl245230245706_
                             _e245235245709_
                             _hd245234245712_
                             _tl245233245714_
                             _e245238245717_
                             _hd245237245720_
                             _tl245236245722_
                             _e245241245725_
                             _hd245240245728_
                             _tl245239245730_
                             _e245244245733_
                             _hd245243245736_
                             _tl245242245738_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl245236245722_))
                          (___match254499254500_
                           _e245217245661_
                           _hd245216245664_
                           _tl245215245666_
                           _e245220245669_
                           _hd245219245672_
                           _tl245218245674_
                           _e245223245677_
                           _hd245222245680_
                           _tl245221245682_
                           _e245226245685_
                           _hd245225245688_
                           _tl245224245690_
                           _e245229245693_
                           _hd245228245696_
                           _tl245227245698_
                           _e245232245701_
                           _hd245231245704_
                           _tl245230245706_
                           _e245235245709_
                           _hd245234245712_
                           _tl245233245714_
                           _e245238245717_
                           _hd245237245720_
                           _tl245236245722_
                           _e245241245725_
                           _hd245240245728_
                           _tl245239245730_
                           _e245244245733_
                           _hd245243245736_
                           _tl245242245738_)
                          (___match254577254578_
                           _e245217245661_
                           _hd245216245664_
                           _tl245215245666_
                           _e245220245669_
                           _hd245219245672_
                           _tl245218245674_
                           _e245223245677_
                           _hd245222245680_
                           _tl245221245682_
                           _e245226245685_
                           _hd245225245688_
                           _tl245224245690_
                           _e245229245693_
                           _hd245228245696_
                           _tl245227245698_
                           _e245232245701_
                           _hd245231245704_
                           _tl245230245706_
                           _e245235245709_
                           _hd245234245712_
                           _tl245233245714_
                           _e245238245717_
                           _hd245237245720_
                           _tl245236245722_
                           _e245241245725_
                           _hd245240245728_
                           _tl245239245730_
                           _e245244245733_
                           _hd245243245736_
                           _tl245242245738_))))
                   (___match254487254488_
                    (lambda (_e245217245661_
                             _hd245216245664_
                             _tl245215245666_
                             _e245220245669_
                             _hd245219245672_
                             _tl245218245674_
                             _e245223245677_
                             _hd245222245680_
                             _tl245221245682_
                             _e245226245685_
                             _hd245225245688_
                             _tl245224245690_
                             _e245229245693_
                             _hd245228245696_
                             _tl245227245698_
                             _e245232245701_
                             _hd245231245704_
                             _tl245230245706_
                             _e245235245709_
                             _hd245234245712_
                             _tl245233245714_
                             _e245238245717_
                             _hd245237245720_
                             _tl245236245722_
                             _e245241245725_
                             _hd245240245728_
                             _tl245239245730_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd245240245728_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245239245730_))
                              (let ((_e245244245733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245239245730_))))
                                (let ((_tl245242245738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245244245733_)))
                                      (_hd245243245736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245244245733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245242245738_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl245236245722_))
                                          (___match254499254500_
                                           _e245217245661_
                                           _hd245216245664_
                                           _tl245215245666_
                                           _e245220245669_
                                           _hd245219245672_
                                           _tl245218245674_
                                           _e245223245677_
                                           _hd245222245680_
                                           _tl245221245682_
                                           _e245226245685_
                                           _hd245225245688_
                                           _tl245224245690_
                                           _e245229245693_
                                           _hd245228245696_
                                           _tl245227245698_
                                           _e245232245701_
                                           _hd245231245704_
                                           _tl245230245706_
                                           _e245235245709_
                                           _hd245234245712_
                                           _tl245233245714_
                                           _e245238245717_
                                           _hd245237245720_
                                           _tl245236245722_
                                           _e245241245725_
                                           _hd245240245728_
                                           _tl245239245730_
                                           _e245244245733_
                                           _hd245243245736_
                                           _tl245242245738_)
                                          (___match254577254578_
                                           _e245217245661_
                                           _hd245216245664_
                                           _tl245215245666_
                                           _e245220245669_
                                           _hd245219245672_
                                           _tl245218245674_
                                           _e245223245677_
                                           _hd245222245680_
                                           _tl245221245682_
                                           _e245226245685_
                                           _hd245225245688_
                                           _tl245224245690_
                                           _e245229245693_
                                           _hd245228245696_
                                           _tl245227245698_
                                           _e245232245701_
                                           _hd245231245704_
                                           _tl245230245706_
                                           _e245235245709_
                                           _hd245234245712_
                                           _tl245233245714_
                                           _e245238245717_
                                           _hd245237245720_
                                           _tl245236245722_
                                           _e245241245725_
                                           _hd245240245728_
                                           _tl245239245730_
                                           _e245244245733_
                                           _hd245243245736_
                                           _tl245242245738_))
                                      (___match254701254702_
                                       _e245217245661_
                                       _hd245216245664_
                                       _tl245215245666_
                                       _e245220245669_
                                       _hd245219245672_
                                       _tl245218245674_
                                       _e245223245677_
                                       _hd245222245680_
                                       _tl245221245682_
                                       _e245226245685_
                                       _hd245225245688_
                                       _tl245224245690_
                                       _e245229245693_
                                       _hd245228245696_
                                       _tl245227245698_
                                       _e245232245701_
                                       _hd245231245704_
                                       _tl245230245706_
                                       _e245235245709_
                                       _hd245234245712_
                                       _tl245233245714_
                                       _e245238245717_
                                       _hd245237245720_
                                       _tl245236245722_))))
                              (___match254701254702_
                               _e245217245661_
                               _hd245216245664_
                               _tl245215245666_
                               _e245220245669_
                               _hd245219245672_
                               _tl245218245674_
                               _e245223245677_
                               _hd245222245680_
                               _tl245221245682_
                               _e245226245685_
                               _hd245225245688_
                               _tl245224245690_
                               _e245229245693_
                               _hd245228245696_
                               _tl245227245698_
                               _e245232245701_
                               _hd245231245704_
                               _tl245230245706_
                               _e245235245709_
                               _hd245234245712_
                               _tl245233245714_
                               _e245238245717_
                               _hd245237245720_
                               _tl245236245722_))
                          (___match254701254702_
                           _e245217245661_
                           _hd245216245664_
                           _tl245215245666_
                           _e245220245669_
                           _hd245219245672_
                           _tl245218245674_
                           _e245223245677_
                           _hd245222245680_
                           _tl245221245682_
                           _e245226245685_
                           _hd245225245688_
                           _tl245224245690_
                           _e245229245693_
                           _hd245228245696_
                           _tl245227245698_
                           _e245232245701_
                           _hd245231245704_
                           _tl245230245706_
                           _e245235245709_
                           _hd245234245712_
                           _tl245233245714_
                           _e245238245717_
                           _hd245237245720_
                           _tl245236245722_))))
                   (___match254419254420_
                    (lambda (_e245166245780_
                             _hd245165245783_
                             _tl245164245785_
                             _e245169245788_
                             _hd245168245791_
                             _tl245167245793_
                             _e245172245796_
                             _hd245171245799_
                             _tl245170245801_
                             _e245175245804_
                             _hd245174245807_
                             _tl245173245809_
                             _e245178245812_
                             _hd245177245815_
                             _tl245176245817_
                             _e245181245820_
                             _hd245180245823_
                             _tl245179245825_
                             _e245184245828_
                             _hd245183245831_
                             _tl245182245833_
                             _e245187245836_
                             _hd245186245839_
                             _tl245185245841_
                             _e245190245844_
                             _hd245189245847_
                             _tl245188245849_
                             _e245193245852_
                             _hd245192245855_
                             _tl245191245857_
                             _e245196245860_
                             _hd245195245863_
                             _tl245194245865_
                             _e245199245868_
                             _hd245198245871_
                             _tl245197245873_
                             _e245202245876_
                             _hd245201245879_
                             _tl245200245881_
                             ___splice254212254213_
                             _target245203245884_
                             _tl245205245886_)
                      (letrec ((_loop245206245889_
                                (lambda (_hd245204245892_ _args245210245894_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245204245892_))
                                      (let ((_e245207245897_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245204245892_))))
                                        (let ((_lp-tl245209245902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245207245897_)))
                                              (_lp-hd245208245900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245207245897_))))
                                          (let ((__tmp255575
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245208245900_
                                                         _args245210245894_))))
                                            (declare (not safe))
                                            (_loop245206245889_
                                             _lp-tl245209245902_
                                             __tmp255575))))
                                      (let ((_args245211245905_
                                             (reverse _args245210245894_)))
                                        (let ((_L245908_ _args245211245905_)
                                              (_L245909_ _hd245201245879_)
                                              (_L245910_ _hd245192245855_)
                                              (_L245911_ _hd245183245831_)
                                              (_L245912_ _hd245174245807_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245912_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L245911_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L245910_
                                                      _self245101_)))
                                              (___kont254210254211_
                                               _L245908_
                                               _L245909_
                                               _L245910_
                                               _L245911_
                                               _L245912_)
                                              (___kont254222254223_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245206245889_ _target245203245884_ '())))))
                   (___match254377254378_
                    (lambda (_e245166245780_
                             _hd245165245783_
                             _tl245164245785_
                             _e245169245788_
                             _hd245168245791_
                             _tl245167245793_
                             _e245172245796_
                             _hd245171245799_
                             _tl245170245801_
                             _e245175245804_
                             _hd245174245807_
                             _tl245173245809_
                             _e245178245812_
                             _hd245177245815_
                             _tl245176245817_
                             _e245181245820_
                             _hd245180245823_
                             _tl245179245825_
                             _e245184245828_
                             _hd245183245831_
                             _tl245182245833_
                             _e245187245836_
                             _hd245186245839_
                             _tl245185245841_
                             _e245190245844_
                             _hd245189245847_
                             _tl245188245849_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd245189245847_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245188245849_))
                              (let ((_e245193245852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245188245849_))))
                                (let ((_tl245191245857_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245193245852_)))
                                      (_hd245192245855_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245193245852_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245191245857_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245185245841_))
                                          (let ((_e245196245860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245185245841_))))
                                            (let ((_tl245194245865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245196245860_)))
                                                  (_hd245195245863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245196245860_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245195245863_))
                                                  (let ((_e245199245868_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245195245863_))))
                                                    (let ((_tl245197245873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245199245868_)))
                                                          (_hd245198245871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245199245868_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd245198245871_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd245198245871_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245197245873_))
                          (let ((_e245202245876_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245197245873_))))
                            (let ((_tl245200245881_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245202245876_)))
                                  (_hd245201245879_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245202245876_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245200245881_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245194245865_))
                                      (let ((___splice254212254213_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245194245865_
                                                '0))))
                                        (let ((_tl245205245886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254212254213_
                                                  '1)))
                                              (_target245203245884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254212254213_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245205245886_))
                                              (___match254419254420_
                                               _e245166245780_
                                               _hd245165245783_
                                               _tl245164245785_
                                               _e245169245788_
                                               _hd245168245791_
                                               _tl245167245793_
                                               _e245172245796_
                                               _hd245171245799_
                                               _tl245170245801_
                                               _e245175245804_
                                               _hd245174245807_
                                               _tl245173245809_
                                               _e245178245812_
                                               _hd245177245815_
                                               _tl245176245817_
                                               _e245181245820_
                                               _hd245180245823_
                                               _tl245179245825_
                                               _e245184245828_
                                               _hd245183245831_
                                               _tl245182245833_
                                               _e245187245836_
                                               _hd245186245839_
                                               _tl245185245841_
                                               _e245190245844_
                                               _hd245189245847_
                                               _tl245188245849_
                                               _e245193245852_
                                               _hd245192245855_
                                               _tl245191245857_
                                               _e245196245860_
                                               _hd245195245863_
                                               _tl245194245865_
                                               _e245199245868_
                                               _hd245198245871_
                                               _tl245197245873_
                                               _e245202245876_
                                               _hd245201245879_
                                               _tl245200245881_
                                               ___splice254212254213_
                                               _target245203245884_
                                               _tl245205245886_)
                                              (___kont254222254223_))))
                                      (___kont254222254223_))
                                  (___kont254222254223_))))
                          (___kont254222254223_))
                      (___kont254222254223_))
                  (___kont254222254223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254222254223_))))
                                          (___match254701254702_
                                           _e245166245780_
                                           _hd245165245783_
                                           _tl245164245785_
                                           _e245169245788_
                                           _hd245168245791_
                                           _tl245167245793_
                                           _e245172245796_
                                           _hd245171245799_
                                           _tl245170245801_
                                           _e245175245804_
                                           _hd245174245807_
                                           _tl245173245809_
                                           _e245178245812_
                                           _hd245177245815_
                                           _tl245176245817_
                                           _e245181245820_
                                           _hd245180245823_
                                           _tl245179245825_
                                           _e245184245828_
                                           _hd245183245831_
                                           _tl245182245833_
                                           _e245187245836_
                                           _hd245186245839_
                                           _tl245185245841_))
                                      (___match254701254702_
                                       _e245166245780_
                                       _hd245165245783_
                                       _tl245164245785_
                                       _e245169245788_
                                       _hd245168245791_
                                       _tl245167245793_
                                       _e245172245796_
                                       _hd245171245799_
                                       _tl245170245801_
                                       _e245175245804_
                                       _hd245174245807_
                                       _tl245173245809_
                                       _e245178245812_
                                       _hd245177245815_
                                       _tl245176245817_
                                       _e245181245820_
                                       _hd245180245823_
                                       _tl245179245825_
                                       _e245184245828_
                                       _hd245183245831_
                                       _tl245182245833_
                                       _e245187245836_
                                       _hd245186245839_
                                       _tl245185245841_))))
                              (___match254701254702_
                               _e245166245780_
                               _hd245165245783_
                               _tl245164245785_
                               _e245169245788_
                               _hd245168245791_
                               _tl245167245793_
                               _e245172245796_
                               _hd245171245799_
                               _tl245170245801_
                               _e245175245804_
                               _hd245174245807_
                               _tl245173245809_
                               _e245178245812_
                               _hd245177245815_
                               _tl245176245817_
                               _e245181245820_
                               _hd245180245823_
                               _tl245179245825_
                               _e245184245828_
                               _hd245183245831_
                               _tl245182245833_
                               _e245187245836_
                               _hd245186245839_
                               _tl245185245841_))
                          (___match254487254488_
                           _e245166245780_
                           _hd245165245783_
                           _tl245164245785_
                           _e245169245788_
                           _hd245168245791_
                           _tl245167245793_
                           _e245172245796_
                           _hd245171245799_
                           _tl245170245801_
                           _e245175245804_
                           _hd245174245807_
                           _tl245173245809_
                           _e245178245812_
                           _hd245177245815_
                           _tl245176245817_
                           _e245181245820_
                           _hd245180245823_
                           _tl245179245825_
                           _e245184245828_
                           _hd245183245831_
                           _tl245182245833_
                           _e245187245836_
                           _hd245186245839_
                           _tl245185245841_
                           _e245190245844_
                           _hd245189245847_
                           _tl245188245849_))))
                   (___match254309254310_
                    (lambda (_e245122245969_
                             _hd245121245972_
                             _tl245120245974_
                             _e245125245977_
                             _hd245124245980_
                             _tl245123245982_
                             _e245128245985_
                             _hd245127245988_
                             _tl245126245990_
                             _e245131245993_
                             _hd245130245996_
                             _tl245129245998_
                             _e245134246001_
                             _hd245133246004_
                             _tl245132246006_
                             _e245137246009_
                             _hd245136246012_
                             _tl245135246014_
                             _e245140246017_
                             _hd245139246020_
                             _tl245138246022_
                             _e245143246025_
                             _hd245142246028_
                             _tl245141246030_
                             _e245146246033_
                             _hd245145246036_
                             _tl245144246038_
                             _e245149246041_
                             _hd245148246044_
                             _tl245147246046_
                             ___splice254208254209_
                             _target245150246049_
                             _tl245152246051_)
                      (letrec ((_loop245153246054_
                                (lambda (_hd245151246057_ _args245157246059_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245151246057_))
                                      (let ((_e245154246062_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245151246057_))))
                                        (let ((_lp-tl245156246067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245154246062_)))
                                              (_lp-hd245155246065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245154246062_))))
                                          (let ((__tmp255576
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245155246065_
                                                         _args245157246059_))))
                                            (declare (not safe))
                                            (_loop245153246054_
                                             _lp-tl245156246067_
                                             __tmp255576))))
                                      (let ((_args245158246070_
                                             (reverse _args245157246059_)))
                                        (let ((_L246073_ _args245158246070_)
                                              (_L246074_ _hd245148246044_)
                                              (_L246075_ _hd245139246020_)
                                              (_L246076_ _hd245130245996_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246076_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246075_
                                                      _self245101_)))
                                              (___kont254206254207_
                                               _L246073_
                                               _L246074_
                                               _L246075_
                                               _L246076_)
                                              (___match254497254498_
                                               _e245122245969_
                                               _hd245121245972_
                                               _tl245120245974_
                                               _e245125245977_
                                               _hd245124245980_
                                               _tl245123245982_
                                               _e245128245985_
                                               _hd245127245988_
                                               _tl245126245990_
                                               _e245131245993_
                                               _hd245130245996_
                                               _tl245129245998_
                                               _e245134246001_
                                               _hd245133246004_
                                               _tl245132246006_
                                               _e245137246009_
                                               _hd245136246012_
                                               _tl245135246014_
                                               _e245140246017_
                                               _hd245139246020_
                                               _tl245138246022_
                                               _e245143246025_
                                               _hd245142246028_
                                               _tl245141246030_
                                               _e245146246033_
                                               _hd245145246036_
                                               _tl245144246038_
                                               _e245149246041_
                                               _hd245148246044_
                                               _tl245147246046_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245153246054_ _target245150246049_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx254204254205_))
                  (let ((_e245122245969_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx254204254205_))))
                    (let ((_tl245120245974_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245122245969_)))
                          (_hd245121245972_
                           (let ()
                             (declare (not safe))
                             (##car _e245122245969_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245120245974_))
                          (let ((_e245125245977_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245120245974_))))
                            (let ((_tl245123245982_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245125245977_)))
                                  (_hd245124245980_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245125245977_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd245124245980_))
                                  (let ((_e245128245985_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd245124245980_))))
                                    (let ((_tl245126245990_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245128245985_)))
                                          (_hd245127245988_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245128245985_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd245127245988_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd245127245988_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl245126245990_))
                                                  (let ((_e245131245993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl245126245990_))))
                                                    (let ((_tl245129245998_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245131245993_)))
                                                          (_hd245130245996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245131245993_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl245129245998_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl245123245982_))
                      (let ((_e245134246001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl245123245982_))))
                        (let ((_tl245132246006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245134246001_)))
                              (_hd245133246004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245134246001_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd245133246004_))
                              (let ((_e245137246009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd245133246004_))))
                                (let ((_tl245135246014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245137246009_)))
                                      (_hd245136246012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245137246009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd245136246012_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd245136246012_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl245135246014_))
                                              (let ((_e245140246017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl245135246014_))))
                                                (let ((_tl245138246022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245140246017_)))
                                                      (_hd245139246020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245140246017_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl245138246022_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl245132246006_))
                                                          (let ((_e245143246025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl245132246006_))))
                    (let ((_tl245141246030_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245143246025_)))
                          (_hd245142246028_
                           (let ()
                             (declare (not safe))
                             (##car _e245143246025_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd245142246028_))
                          (let ((_e245146246033_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd245142246028_))))
                            (let ((_tl245144246038_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245146246033_)))
                                  (_hd245145246036_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245146246033_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd245145246036_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd245145246036_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245144246038_))
                                          (let ((_e245149246041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245144246038_))))
                                            (let ((_tl245147246046_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245149246041_)))
                                                  (_hd245148246044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245149246041_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl245147246046_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl245141246030_))
                                                      (let ((___splice254208254209_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl245141246030_ '0))))
                (let ((_tl245152246051_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254208254209_ '1)))
                      (_target245150246049_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254208254209_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl245152246051_))
                      (___match254309254310_
                       _e245122245969_
                       _hd245121245972_
                       _tl245120245974_
                       _e245125245977_
                       _hd245124245980_
                       _tl245123245982_
                       _e245128245985_
                       _hd245127245988_
                       _tl245126245990_
                       _e245131245993_
                       _hd245130245996_
                       _tl245129245998_
                       _e245134246001_
                       _hd245133246004_
                       _tl245132246006_
                       _e245137246009_
                       _hd245136246012_
                       _tl245135246014_
                       _e245140246017_
                       _hd245139246020_
                       _tl245138246022_
                       _e245143246025_
                       _hd245142246028_
                       _tl245141246030_
                       _e245146246033_
                       _hd245145246036_
                       _tl245144246038_
                       _e245149246041_
                       _hd245148246044_
                       _tl245147246046_
                       ___splice254208254209_
                       _target245150246049_
                       _tl245152246051_)
                      (___match254497254498_
                       _e245122245969_
                       _hd245121245972_
                       _tl245120245974_
                       _e245125245977_
                       _hd245124245980_
                       _tl245123245982_
                       _e245128245985_
                       _hd245127245988_
                       _tl245126245990_
                       _e245131245993_
                       _hd245130245996_
                       _tl245129245998_
                       _e245134246001_
                       _hd245133246004_
                       _tl245132246006_
                       _e245137246009_
                       _hd245136246012_
                       _tl245135246014_
                       _e245140246017_
                       _hd245139246020_
                       _tl245138246022_
                       _e245143246025_
                       _hd245142246028_
                       _tl245141246030_
                       _e245146246033_
                       _hd245145246036_
                       _tl245144246038_
                       _e245149246041_
                       _hd245148246044_
                       _tl245147246046_))))
              (___match254497254498_
               _e245122245969_
               _hd245121245972_
               _tl245120245974_
               _e245125245977_
               _hd245124245980_
               _tl245123245982_
               _e245128245985_
               _hd245127245988_
               _tl245126245990_
               _e245131245993_
               _hd245130245996_
               _tl245129245998_
               _e245134246001_
               _hd245133246004_
               _tl245132246006_
               _e245137246009_
               _hd245136246012_
               _tl245135246014_
               _e245140246017_
               _hd245139246020_
               _tl245138246022_
               _e245143246025_
               _hd245142246028_
               _tl245141246030_
               _e245146246033_
               _hd245145246036_
               _tl245144246038_
               _e245149246041_
               _hd245148246044_
               _tl245147246046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match254701254702_
                                                   _e245122245969_
                                                   _hd245121245972_
                                                   _tl245120245974_
                                                   _e245125245977_
                                                   _hd245124245980_
                                                   _tl245123245982_
                                                   _e245128245985_
                                                   _hd245127245988_
                                                   _tl245126245990_
                                                   _e245131245993_
                                                   _hd245130245996_
                                                   _tl245129245998_
                                                   _e245134246001_
                                                   _hd245133246004_
                                                   _tl245132246006_
                                                   _e245137246009_
                                                   _hd245136246012_
                                                   _tl245135246014_
                                                   _e245140246017_
                                                   _hd245139246020_
                                                   _tl245138246022_
                                                   _e245143246025_
                                                   _hd245142246028_
                                                   _tl245141246030_))))
                                          (___match254701254702_
                                           _e245122245969_
                                           _hd245121245972_
                                           _tl245120245974_
                                           _e245125245977_
                                           _hd245124245980_
                                           _tl245123245982_
                                           _e245128245985_
                                           _hd245127245988_
                                           _tl245126245990_
                                           _e245131245993_
                                           _hd245130245996_
                                           _tl245129245998_
                                           _e245134246001_
                                           _hd245133246004_
                                           _tl245132246006_
                                           _e245137246009_
                                           _hd245136246012_
                                           _tl245135246014_
                                           _e245140246017_
                                           _hd245139246020_
                                           _tl245138246022_
                                           _e245143246025_
                                           _hd245142246028_
                                           _tl245141246030_))
                                      (___match254377254378_
                                       _e245122245969_
                                       _hd245121245972_
                                       _tl245120245974_
                                       _e245125245977_
                                       _hd245124245980_
                                       _tl245123245982_
                                       _e245128245985_
                                       _hd245127245988_
                                       _tl245126245990_
                                       _e245131245993_
                                       _hd245130245996_
                                       _tl245129245998_
                                       _e245134246001_
                                       _hd245133246004_
                                       _tl245132246006_
                                       _e245137246009_
                                       _hd245136246012_
                                       _tl245135246014_
                                       _e245140246017_
                                       _hd245139246020_
                                       _tl245138246022_
                                       _e245143246025_
                                       _hd245142246028_
                                       _tl245141246030_
                                       _e245146246033_
                                       _hd245145246036_
                                       _tl245144246038_))
                                  (___match254701254702_
                                   _e245122245969_
                                   _hd245121245972_
                                   _tl245120245974_
                                   _e245125245977_
                                   _hd245124245980_
                                   _tl245123245982_
                                   _e245128245985_
                                   _hd245127245988_
                                   _tl245126245990_
                                   _e245131245993_
                                   _hd245130245996_
                                   _tl245129245998_
                                   _e245134246001_
                                   _hd245133246004_
                                   _tl245132246006_
                                   _e245137246009_
                                   _hd245136246012_
                                   _tl245135246014_
                                   _e245140246017_
                                   _hd245139246020_
                                   _tl245138246022_
                                   _e245143246025_
                                   _hd245142246028_
                                   _tl245141246030_))))
                          (___match254701254702_
                           _e245122245969_
                           _hd245121245972_
                           _tl245120245974_
                           _e245125245977_
                           _hd245124245980_
                           _tl245123245982_
                           _e245128245985_
                           _hd245127245988_
                           _tl245126245990_
                           _e245131245993_
                           _hd245130245996_
                           _tl245129245998_
                           _e245134246001_
                           _hd245133246004_
                           _tl245132246006_
                           _e245137246009_
                           _hd245136246012_
                           _tl245135246014_
                           _e245140246017_
                           _hd245139246020_
                           _tl245138246022_
                           _e245143246025_
                           _hd245142246028_
                           _tl245141246030_))))
                  (___match254639254640_
                   _e245122245969_
                   _hd245121245972_
                   _tl245120245974_
                   _e245125245977_
                   _hd245124245980_
                   _tl245123245982_
                   _e245128245985_
                   _hd245127245988_
                   _tl245126245990_
                   _e245131245993_
                   _hd245130245996_
                   _tl245129245998_
                   _e245134246001_
                   _hd245133246004_
                   _tl245132246006_
                   _e245137246009_
                   _hd245136246012_
                   _tl245135246014_
                   _e245140246017_
                   _hd245139246020_
                   _tl245138246022_))
              (___kont254222254223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont254222254223_))
                                          (___kont254222254223_))
                                      (___kont254222254223_))))
                              (___kont254222254223_))))
                      (___kont254222254223_))
                  (___kont254222254223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont254222254223_))
                                              (___kont254222254223_))
                                          (___kont254222254223_))))
                                  (___kont254222254223_))))
                          (___kont254222254223_))))
                  (___kont254222254223_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx244046_
               _self244047_
               _$t244048_
               _methods244049_
               _slots244050_
               _class-check244051_
               _struct-check244052_
               _struct-assert244053_)
        (letrec ((_force-e244055_
                  (lambda (_what245098_)
                    (let ((__tmp255577
                           (let ((__tmp255581
                                  (let ((__tmp255582
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp255582)))
                                 (__tmp255578
                                  (let ((__tmp255579
                                         (let ((__tmp255580
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what245098_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp255580))))
                                    (declare (not safe))
                                    (cons __tmp255579 '()))))
                             (declare (not safe))
                             (cons __tmp255581 __tmp255578))))
                      (declare (not safe))
                      (cons '%#call __tmp255577)))))
          (let* ((___stx254706254707_ _stx244046_)
                 (_g244063244285_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254706254707_)))))
            (let ((___kont254708254709_
                   (lambda (_L245044_ _L245045_ _L245046_ _L245047_)
                     (let ((_$method245092_
                            (let ((__tmp255583
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245045_))))
                              (declare (not safe))
                              (table-ref _methods244049_ __tmp255583)))
                           (_args245093_
                            (map (lambda (_g245080245082_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245080245082_
                                      _self244047_
                                      _$t244048_
                                      _methods244049_
                                      _slots244050_
                                      _class-check244051_
                                      _struct-check244052_
                                      _struct-assert244053_)))
                                 (let ((__tmp255584
                                        (lambda (_g245084245087_
                                                 _g245085245089_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245084245087_
                                                  _g245085245089_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255584 '() _L245044_)))))
                       (let ((__tmp255585
                              (let ((__tmp255586
                                     (let ((__tmp255590
                                            (let ()
                                              (declare (not safe))
                                              (_force-e244055_
                                               _$method245092_)))
                                           (__tmp255587
                                            (let ((__tmp255588
                                                   (let ((__tmp255589
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self244047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255589))))
                                              (declare (not safe))
                                              (cons __tmp255588
                                                    _args245093_))))
                                       (declare (not safe))
                                       (cons __tmp255590 __tmp255587))))
                                (declare (not safe))
                                (cons '%#call __tmp255586))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255585 _stx244046_)))))
                  (___kont254712254713_
                   (lambda (_L244876_ _L244877_ _L244878_ _L244879_ _L244880_)
                     (let ((_$method244932_
                            (let ((__tmp255591
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244877_))))
                              (declare (not safe))
                              (table-ref _methods244049_ __tmp255591)))
                           (_args244933_
                            (map (lambda (_g244920244922_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g244920244922_
                                      _self244047_
                                      _$t244048_
                                      _methods244049_
                                      _slots244050_
                                      _class-check244051_
                                      _struct-check244052_
                                      _struct-assert244053_)))
                                 (let ((__tmp255592
                                        (lambda (_g244924244927_
                                                 _g244925244929_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244924244927_
                                                  _g244925244929_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp255592 '() _L244876_)))))
                       (let ((__tmp255593
                              (let ((__tmp255594
                                     (let ((__tmp255600
                                            (let ((__tmp255601
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255601)))
                                           (__tmp255595
                                            (let ((__tmp255599
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e244055_
                                                      _$method244932_)))
                                                  (__tmp255596
                                                   (let ((__tmp255597
                                                          (let ((__tmp255598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244047_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255597
                                                           _args244933_))))
                                              (declare (not safe))
                                              (cons __tmp255599 __tmp255596))))
                                       (declare (not safe))
                                       (cons __tmp255600 __tmp255595))))
                                (declare (not safe))
                                (cons '%#call __tmp255594))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255593 _stx244046_)))))
                  (___kont254716254717_
                   (lambda (_L244707_ _L244708_ _L244709_)
                     (let* ((_$field244741_
                             (let ((__tmp255602
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L244707_))))
                               (declare (not safe))
                               (table-ref _slots244050_ __tmp255602)))
                            (__tmp255603
                             (let ((__tmp255604
                                    (let ((__tmp255611
                                           (let ((__tmp255612
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t244048_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp255612)))
                                          (__tmp255605
                                           (let ((__tmp255609
                                                  (let ((__tmp255610
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field244741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp255610)))
                                                 (__tmp255606
                                                  (let ((__tmp255607
                                                         (let ((__tmp255608
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self244047_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp255608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp255607 '()))))
                                             (declare (not safe))
                                             (cons __tmp255609 __tmp255606))))
                                      (declare (not safe))
                                      (cons __tmp255611 __tmp255605))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp255604))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255603 _stx244046_))))
                  (___kont254718254719_
                   (lambda (_L244581_ _L244582_ _L244583_ _L244584_)
                     (let ((_$field244619_
                            (let ((__tmp255613
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L244582_))))
                              (declare (not safe))
                              (table-ref _slots244050_ __tmp255613)))
                           (_expr244620_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L244581_
                               _self244047_
                               _$t244048_
                               _methods244049_
                               _slots244050_
                               _class-check244051_
                               _struct-check244052_
                               _struct-assert244053_))))
                       (let ((__tmp255614
                              (let ((__tmp255615
                                     (let ((__tmp255623
                                            (let ((__tmp255624
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244048_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255624)))
                                           (__tmp255616
                                            (let ((__tmp255621
                                                   (let ((__tmp255622
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255622)))
                                                  (__tmp255617
                                                   (let ((__tmp255619
                                                          (let ((__tmp255620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244047_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255620)))
                 (__tmp255618
                  (let () (declare (not safe)) (cons _expr244620_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255619
                                                           __tmp255618))))
                                              (declare (not safe))
                                              (cons __tmp255621 __tmp255617))))
                                       (declare (not safe))
                                       (cons __tmp255623 __tmp255616))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255615))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255614 _stx244046_)))))
                  (___kont254720254721_
                   (lambda (_L244460_ _L244461_)
                     (let* ((_slot244483_
                             (##structure-ref
                              (let ((__tmp255625
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244461_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255625))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field244485_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244050_ _slot244483_))))
                       (let ((__tmp255626
                              (let ((__tmp255627
                                     (let ((__tmp255634
                                            (let ((__tmp255635
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244048_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255635)))
                                           (__tmp255628
                                            (let ((__tmp255632
                                                   (let ((__tmp255633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255633)))
                                                  (__tmp255629
                                                   (let ((__tmp255630
                                                          (let ((__tmp255631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244047_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255630 '()))))
                                              (declare (not safe))
                                              (cons __tmp255632 __tmp255629))))
                                       (declare (not safe))
                                       (cons __tmp255634 __tmp255628))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp255627))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255626 _stx244046_)))))
                  (___kont254722254723_
                   (lambda (_L244361_ _L244362_ _L244363_)
                     (let* ((_slot244392_
                             (##structure-ref
                              (let ((__tmp255636
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L244363_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp255636))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field244394_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244050_ _slot244392_)))
                            (_expr244396_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L244361_
                                _self244047_
                                _$t244048_
                                _methods244049_
                                _slots244050_
                                _class-check244051_
                                _struct-check244052_
                                _struct-assert244053_))))
                       (let ((__tmp255637
                              (let ((__tmp255638
                                     (let ((__tmp255646
                                            (let ((__tmp255647
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244048_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp255647)))
                                           (__tmp255639
                                            (let ((__tmp255644
                                                   (let ((__tmp255645
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field244394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp255645)))
                                                  (__tmp255640
                                                   (let ((__tmp255642
                                                          (let ((__tmp255643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244047_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp255643)))
                 (__tmp255641
                  (let () (declare (not safe)) (cons _expr244396_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp255642
                                                           __tmp255641))))
                                              (declare (not safe))
                                              (cons __tmp255644 __tmp255640))))
                                       (declare (not safe))
                                       (cons __tmp255646 __tmp255639))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp255638))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255637 _stx244046_)))))
                  (___kont254724254725_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx244046_
                        _self244047_
                        _$t244048_
                        _methods244049_
                        _slots244050_
                        _class-check244051_
                        _struct-check244052_
                        _struct-assert244053_)))))
              (let* ((___match255205255206_
                      (lambda (_e244259244297_
                               _hd244258244300_
                               _tl244257244302_
                               _e244262244305_
                               _hd244261244308_
                               _tl244260244310_
                               _e244265244313_
                               _hd244264244316_
                               _tl244263244318_
                               _e244268244321_
                               _hd244267244324_
                               _tl244266244326_
                               _e244271244329_
                               _hd244270244332_
                               _tl244269244334_
                               _e244274244337_
                               _hd244273244340_
                               _tl244272244342_
                               _e244277244345_
                               _hd244276244348_
                               _tl244275244350_
                               _e244280244353_
                               _hd244279244356_
                               _tl244278244358_)
                        (let ((_L244361_ _hd244279244356_)
                              (_L244362_ _hd244276244348_)
                              (_L244363_ _hd244267244324_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244362_
                                      _self244047_))
                                   (let ((__tmp255648
                                          (let ((__tmp255649
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244363_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255649))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255648
                                      'gxc#!mutator::t)))
                              (___kont254722254723_
                               _L244361_
                               _L244362_
                               _L244363_)
                              (___kont254724254725_)))))
                     (___match255203255204_
                      (lambda (_e244259244297_
                               _hd244258244300_
                               _tl244257244302_
                               _e244262244305_
                               _hd244261244308_
                               _tl244260244310_
                               _e244265244313_
                               _hd244264244316_
                               _tl244263244318_
                               _e244268244321_
                               _hd244267244324_
                               _tl244266244326_
                               _e244271244329_
                               _hd244270244332_
                               _tl244269244334_
                               _e244274244337_
                               _hd244273244340_
                               _tl244272244342_
                               _e244277244345_
                               _hd244276244348_
                               _tl244275244350_
                               _e244280244353_
                               _hd244279244356_
                               _tl244278244358_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244278244358_))
                            (___match255205255206_
                             _e244259244297_
                             _hd244258244300_
                             _tl244257244302_
                             _e244262244305_
                             _hd244261244308_
                             _tl244260244310_
                             _e244265244313_
                             _hd244264244316_
                             _tl244263244318_
                             _e244268244321_
                             _hd244267244324_
                             _tl244266244326_
                             _e244271244329_
                             _hd244270244332_
                             _tl244269244334_
                             _e244274244337_
                             _hd244273244340_
                             _tl244272244342_
                             _e244277244345_
                             _hd244276244348_
                             _tl244275244350_
                             _e244280244353_
                             _hd244279244356_
                             _tl244278244358_)
                            (___kont254724254725_))))
                     (___match255197255198_
                      (lambda (_e244259244297_
                               _hd244258244300_
                               _tl244257244302_
                               _e244262244305_
                               _hd244261244308_
                               _tl244260244310_
                               _e244265244313_
                               _hd244264244316_
                               _tl244263244318_
                               _e244268244321_
                               _hd244267244324_
                               _tl244266244326_
                               _e244271244329_
                               _hd244270244332_
                               _tl244269244334_
                               _e244274244337_
                               _hd244273244340_
                               _tl244272244342_
                               _e244277244345_
                               _hd244276244348_
                               _tl244275244350_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244269244334_))
                            (let ((_e244280244353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244269244334_))))
                              (let ((_tl244278244358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244280244353_)))
                                    (_hd244279244356_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244280244353_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244278244358_))
                                    (___match255205255206_
                                     _e244259244297_
                                     _hd244258244300_
                                     _tl244257244302_
                                     _e244262244305_
                                     _hd244261244308_
                                     _tl244260244310_
                                     _e244265244313_
                                     _hd244264244316_
                                     _tl244263244318_
                                     _e244268244321_
                                     _hd244267244324_
                                     _tl244266244326_
                                     _e244271244329_
                                     _hd244270244332_
                                     _tl244269244334_
                                     _e244274244337_
                                     _hd244273244340_
                                     _tl244272244342_
                                     _e244277244345_
                                     _hd244276244348_
                                     _tl244275244350_
                                     _e244280244353_
                                     _hd244279244356_
                                     _tl244278244358_)
                                    (___kont254724254725_))))
                            (___kont254724254725_))))
                     (___match255143255144_
                      (lambda (_e244235244404_
                               _hd244234244407_
                               _tl244233244409_
                               _e244238244412_
                               _hd244237244415_
                               _tl244236244417_
                               _e244241244420_
                               _hd244240244423_
                               _tl244239244425_
                               _e244244244428_
                               _hd244243244431_
                               _tl244242244433_
                               _e244247244436_
                               _hd244246244439_
                               _tl244245244441_
                               _e244250244444_
                               _hd244249244447_
                               _tl244248244449_
                               _e244253244452_
                               _hd244252244455_
                               _tl244251244457_)
                        (let ((_L244460_ _hd244252244455_)
                              (_L244461_ _hd244243244431_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244460_
                                      _self244047_))
                                   (let ((__tmp255650
                                          (let ((__tmp255651
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L244461_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp255651))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp255650
                                      'gxc#!accessor::t)))
                              (___kont254720254721_ _L244460_ _L244461_)
                              (___kont254724254725_)))))
                     (___match255141255142_
                      (lambda (_e244235244404_
                               _hd244234244407_
                               _tl244233244409_
                               _e244238244412_
                               _hd244237244415_
                               _tl244236244417_
                               _e244241244420_
                               _hd244240244423_
                               _tl244239244425_
                               _e244244244428_
                               _hd244243244431_
                               _tl244242244433_
                               _e244247244436_
                               _hd244246244439_
                               _tl244245244441_
                               _e244250244444_
                               _hd244249244447_
                               _tl244248244449_
                               _e244253244452_
                               _hd244252244455_
                               _tl244251244457_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244245244441_))
                            (___match255143255144_
                             _e244235244404_
                             _hd244234244407_
                             _tl244233244409_
                             _e244238244412_
                             _hd244237244415_
                             _tl244236244417_
                             _e244241244420_
                             _hd244240244423_
                             _tl244239244425_
                             _e244244244428_
                             _hd244243244431_
                             _tl244242244433_
                             _e244247244436_
                             _hd244246244439_
                             _tl244245244441_
                             _e244250244444_
                             _hd244249244447_
                             _tl244248244449_
                             _e244253244452_
                             _hd244252244455_
                             _tl244251244457_)
                            (___match255197255198_
                             _e244235244404_
                             _hd244234244407_
                             _tl244233244409_
                             _e244238244412_
                             _hd244237244415_
                             _tl244236244417_
                             _e244241244420_
                             _hd244240244423_
                             _tl244239244425_
                             _e244244244428_
                             _hd244243244431_
                             _tl244242244433_
                             _e244247244436_
                             _hd244246244439_
                             _tl244245244441_
                             _e244250244444_
                             _hd244249244447_
                             _tl244248244449_
                             _e244253244452_
                             _hd244252244455_
                             _tl244251244457_))))
                     (___match255087255088_
                      (lambda (_e244200244493_
                               _hd244199244496_
                               _tl244198244498_
                               _e244203244501_
                               _hd244202244504_
                               _tl244201244506_
                               _e244206244509_
                               _hd244205244512_
                               _tl244204244514_
                               _e244209244517_
                               _hd244208244520_
                               _tl244207244522_
                               _e244212244525_
                               _hd244211244528_
                               _tl244210244530_
                               _e244215244533_
                               _hd244214244536_
                               _tl244213244538_
                               _e244218244541_
                               _hd244217244544_
                               _tl244216244546_
                               _e244221244549_
                               _hd244220244552_
                               _tl244219244554_
                               _e244224244557_
                               _hd244223244560_
                               _tl244222244562_
                               _e244227244565_
                               _hd244226244568_
                               _tl244225244570_
                               _e244230244573_
                               _hd244229244576_
                               _tl244228244578_)
                        (let ((_L244581_ _hd244229244576_)
                              (_L244582_ _hd244226244568_)
                              (_L244583_ _hd244217244544_)
                              (_L244584_ _hd244208244520_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244584_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244584_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244583_
                                      _self244047_)))
                              (___kont254718254719_
                               _L244581_
                               _L244582_
                               _L244583_
                               _L244584_)
                              (___kont254724254725_)))))
                     (___match255079255080_
                      (lambda (_e244200244493_
                               _hd244199244496_
                               _tl244198244498_
                               _e244203244501_
                               _hd244202244504_
                               _tl244201244506_
                               _e244206244509_
                               _hd244205244512_
                               _tl244204244514_
                               _e244209244517_
                               _hd244208244520_
                               _tl244207244522_
                               _e244212244525_
                               _hd244211244528_
                               _tl244210244530_
                               _e244215244533_
                               _hd244214244536_
                               _tl244213244538_
                               _e244218244541_
                               _hd244217244544_
                               _tl244216244546_
                               _e244221244549_
                               _hd244220244552_
                               _tl244219244554_
                               _e244224244557_
                               _hd244223244560_
                               _tl244222244562_
                               _e244227244565_
                               _hd244226244568_
                               _tl244225244570_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244219244554_))
                            (let ((_e244230244573_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244219244554_))))
                              (let ((_tl244228244578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244230244573_)))
                                    (_hd244229244576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244230244573_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244228244578_))
                                    (___match255087255088_
                                     _e244200244493_
                                     _hd244199244496_
                                     _tl244198244498_
                                     _e244203244501_
                                     _hd244202244504_
                                     _tl244201244506_
                                     _e244206244509_
                                     _hd244205244512_
                                     _tl244204244514_
                                     _e244209244517_
                                     _hd244208244520_
                                     _tl244207244522_
                                     _e244212244525_
                                     _hd244211244528_
                                     _tl244210244530_
                                     _e244215244533_
                                     _hd244214244536_
                                     _tl244213244538_
                                     _e244218244541_
                                     _hd244217244544_
                                     _tl244216244546_
                                     _e244221244549_
                                     _hd244220244552_
                                     _tl244219244554_
                                     _e244224244557_
                                     _hd244223244560_
                                     _tl244222244562_
                                     _e244227244565_
                                     _hd244226244568_
                                     _tl244225244570_
                                     _e244230244573_
                                     _hd244229244576_
                                     _tl244228244578_)
                                    (___kont254724254725_))))
                            (___match255203255204_
                             _e244200244493_
                             _hd244199244496_
                             _tl244198244498_
                             _e244203244501_
                             _hd244202244504_
                             _tl244201244506_
                             _e244206244509_
                             _hd244205244512_
                             _tl244204244514_
                             _e244209244517_
                             _hd244208244520_
                             _tl244207244522_
                             _e244212244525_
                             _hd244211244528_
                             _tl244210244530_
                             _e244215244533_
                             _hd244214244536_
                             _tl244213244538_
                             _e244218244541_
                             _hd244217244544_
                             _tl244216244546_
                             _e244221244549_
                             _hd244220244552_
                             _tl244219244554_))))
                     (___match255001255002_
                      (lambda (_e244166244627_
                               _hd244165244630_
                               _tl244164244632_
                               _e244169244635_
                               _hd244168244638_
                               _tl244167244640_
                               _e244172244643_
                               _hd244171244646_
                               _tl244170244648_
                               _e244175244651_
                               _hd244174244654_
                               _tl244173244656_
                               _e244178244659_
                               _hd244177244662_
                               _tl244176244664_
                               _e244181244667_
                               _hd244180244670_
                               _tl244179244672_
                               _e244184244675_
                               _hd244183244678_
                               _tl244182244680_
                               _e244187244683_
                               _hd244186244686_
                               _tl244185244688_
                               _e244190244691_
                               _hd244189244694_
                               _tl244188244696_
                               _e244193244699_
                               _hd244192244702_
                               _tl244191244704_)
                        (let ((_L244707_ _hd244192244702_)
                              (_L244708_ _hd244183244678_)
                              (_L244709_ _hd244174244654_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244709_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L244709_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L244708_
                                      _self244047_)))
                              (___kont254716254717_
                               _L244707_
                               _L244708_
                               _L244709_)
                              (___match255205255206_
                               _e244166244627_
                               _hd244165244630_
                               _tl244164244632_
                               _e244169244635_
                               _hd244168244638_
                               _tl244167244640_
                               _e244172244643_
                               _hd244171244646_
                               _tl244170244648_
                               _e244175244651_
                               _hd244174244654_
                               _tl244173244656_
                               _e244178244659_
                               _hd244177244662_
                               _tl244176244664_
                               _e244181244667_
                               _hd244180244670_
                               _tl244179244672_
                               _e244184244675_
                               _hd244183244678_
                               _tl244182244680_
                               _e244187244683_
                               _hd244186244686_
                               _tl244185244688_)))))
                     (___match254999255000_
                      (lambda (_e244166244627_
                               _hd244165244630_
                               _tl244164244632_
                               _e244169244635_
                               _hd244168244638_
                               _tl244167244640_
                               _e244172244643_
                               _hd244171244646_
                               _tl244170244648_
                               _e244175244651_
                               _hd244174244654_
                               _tl244173244656_
                               _e244178244659_
                               _hd244177244662_
                               _tl244176244664_
                               _e244181244667_
                               _hd244180244670_
                               _tl244179244672_
                               _e244184244675_
                               _hd244183244678_
                               _tl244182244680_
                               _e244187244683_
                               _hd244186244686_
                               _tl244185244688_
                               _e244190244691_
                               _hd244189244694_
                               _tl244188244696_
                               _e244193244699_
                               _hd244192244702_
                               _tl244191244704_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244185244688_))
                            (___match255001255002_
                             _e244166244627_
                             _hd244165244630_
                             _tl244164244632_
                             _e244169244635_
                             _hd244168244638_
                             _tl244167244640_
                             _e244172244643_
                             _hd244171244646_
                             _tl244170244648_
                             _e244175244651_
                             _hd244174244654_
                             _tl244173244656_
                             _e244178244659_
                             _hd244177244662_
                             _tl244176244664_
                             _e244181244667_
                             _hd244180244670_
                             _tl244179244672_
                             _e244184244675_
                             _hd244183244678_
                             _tl244182244680_
                             _e244187244683_
                             _hd244186244686_
                             _tl244185244688_
                             _e244190244691_
                             _hd244189244694_
                             _tl244188244696_
                             _e244193244699_
                             _hd244192244702_
                             _tl244191244704_)
                            (___match255079255080_
                             _e244166244627_
                             _hd244165244630_
                             _tl244164244632_
                             _e244169244635_
                             _hd244168244638_
                             _tl244167244640_
                             _e244172244643_
                             _hd244171244646_
                             _tl244170244648_
                             _e244175244651_
                             _hd244174244654_
                             _tl244173244656_
                             _e244178244659_
                             _hd244177244662_
                             _tl244176244664_
                             _e244181244667_
                             _hd244180244670_
                             _tl244179244672_
                             _e244184244675_
                             _hd244183244678_
                             _tl244182244680_
                             _e244187244683_
                             _hd244186244686_
                             _tl244185244688_
                             _e244190244691_
                             _hd244189244694_
                             _tl244188244696_
                             _e244193244699_
                             _hd244192244702_
                             _tl244191244704_))))
                     (___match254989254990_
                      (lambda (_e244166244627_
                               _hd244165244630_
                               _tl244164244632_
                               _e244169244635_
                               _hd244168244638_
                               _tl244167244640_
                               _e244172244643_
                               _hd244171244646_
                               _tl244170244648_
                               _e244175244651_
                               _hd244174244654_
                               _tl244173244656_
                               _e244178244659_
                               _hd244177244662_
                               _tl244176244664_
                               _e244181244667_
                               _hd244180244670_
                               _tl244179244672_
                               _e244184244675_
                               _hd244183244678_
                               _tl244182244680_
                               _e244187244683_
                               _hd244186244686_
                               _tl244185244688_
                               _e244190244691_
                               _hd244189244694_
                               _tl244188244696_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd244189244694_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244188244696_))
                                (let ((_e244193244699_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244188244696_))))
                                  (let ((_tl244191244704_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244193244699_)))
                                        (_hd244192244702_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244193244699_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244191244704_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244185244688_))
                                            (___match255001255002_
                                             _e244166244627_
                                             _hd244165244630_
                                             _tl244164244632_
                                             _e244169244635_
                                             _hd244168244638_
                                             _tl244167244640_
                                             _e244172244643_
                                             _hd244171244646_
                                             _tl244170244648_
                                             _e244175244651_
                                             _hd244174244654_
                                             _tl244173244656_
                                             _e244178244659_
                                             _hd244177244662_
                                             _tl244176244664_
                                             _e244181244667_
                                             _hd244180244670_
                                             _tl244179244672_
                                             _e244184244675_
                                             _hd244183244678_
                                             _tl244182244680_
                                             _e244187244683_
                                             _hd244186244686_
                                             _tl244185244688_
                                             _e244190244691_
                                             _hd244189244694_
                                             _tl244188244696_
                                             _e244193244699_
                                             _hd244192244702_
                                             _tl244191244704_)
                                            (___match255079255080_
                                             _e244166244627_
                                             _hd244165244630_
                                             _tl244164244632_
                                             _e244169244635_
                                             _hd244168244638_
                                             _tl244167244640_
                                             _e244172244643_
                                             _hd244171244646_
                                             _tl244170244648_
                                             _e244175244651_
                                             _hd244174244654_
                                             _tl244173244656_
                                             _e244178244659_
                                             _hd244177244662_
                                             _tl244176244664_
                                             _e244181244667_
                                             _hd244180244670_
                                             _tl244179244672_
                                             _e244184244675_
                                             _hd244183244678_
                                             _tl244182244680_
                                             _e244187244683_
                                             _hd244186244686_
                                             _tl244185244688_
                                             _e244190244691_
                                             _hd244189244694_
                                             _tl244188244696_
                                             _e244193244699_
                                             _hd244192244702_
                                             _tl244191244704_))
                                        (___match255203255204_
                                         _e244166244627_
                                         _hd244165244630_
                                         _tl244164244632_
                                         _e244169244635_
                                         _hd244168244638_
                                         _tl244167244640_
                                         _e244172244643_
                                         _hd244171244646_
                                         _tl244170244648_
                                         _e244175244651_
                                         _hd244174244654_
                                         _tl244173244656_
                                         _e244178244659_
                                         _hd244177244662_
                                         _tl244176244664_
                                         _e244181244667_
                                         _hd244180244670_
                                         _tl244179244672_
                                         _e244184244675_
                                         _hd244183244678_
                                         _tl244182244680_
                                         _e244187244683_
                                         _hd244186244686_
                                         _tl244185244688_))))
                                (___match255203255204_
                                 _e244166244627_
                                 _hd244165244630_
                                 _tl244164244632_
                                 _e244169244635_
                                 _hd244168244638_
                                 _tl244167244640_
                                 _e244172244643_
                                 _hd244171244646_
                                 _tl244170244648_
                                 _e244175244651_
                                 _hd244174244654_
                                 _tl244173244656_
                                 _e244178244659_
                                 _hd244177244662_
                                 _tl244176244664_
                                 _e244181244667_
                                 _hd244180244670_
                                 _tl244179244672_
                                 _e244184244675_
                                 _hd244183244678_
                                 _tl244182244680_
                                 _e244187244683_
                                 _hd244186244686_
                                 _tl244185244688_))
                            (___match255203255204_
                             _e244166244627_
                             _hd244165244630_
                             _tl244164244632_
                             _e244169244635_
                             _hd244168244638_
                             _tl244167244640_
                             _e244172244643_
                             _hd244171244646_
                             _tl244170244648_
                             _e244175244651_
                             _hd244174244654_
                             _tl244173244656_
                             _e244178244659_
                             _hd244177244662_
                             _tl244176244664_
                             _e244181244667_
                             _hd244180244670_
                             _tl244179244672_
                             _e244184244675_
                             _hd244183244678_
                             _tl244182244680_
                             _e244187244683_
                             _hd244186244686_
                             _tl244185244688_))))
                     (___match254921254922_
                      (lambda (_e244115244748_
                               _hd244114244751_
                               _tl244113244753_
                               _e244118244756_
                               _hd244117244759_
                               _tl244116244761_
                               _e244121244764_
                               _hd244120244767_
                               _tl244119244769_
                               _e244124244772_
                               _hd244123244775_
                               _tl244122244777_
                               _e244127244780_
                               _hd244126244783_
                               _tl244125244785_
                               _e244130244788_
                               _hd244129244791_
                               _tl244128244793_
                               _e244133244796_
                               _hd244132244799_
                               _tl244131244801_
                               _e244136244804_
                               _hd244135244807_
                               _tl244134244809_
                               _e244139244812_
                               _hd244138244815_
                               _tl244137244817_
                               _e244142244820_
                               _hd244141244823_
                               _tl244140244825_
                               _e244145244828_
                               _hd244144244831_
                               _tl244143244833_
                               _e244148244836_
                               _hd244147244839_
                               _tl244146244841_
                               _e244151244844_
                               _hd244150244847_
                               _tl244149244849_
                               ___splice254714254715_
                               _target244152244852_
                               _tl244154244854_)
                        (letrec ((_loop244155244857_
                                  (lambda (_hd244153244860_ _args244159244862_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244153244860_))
                                        (let ((_e244156244865_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244153244860_))))
                                          (let ((_lp-tl244158244870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244156244865_)))
                                                (_lp-hd244157244868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244156244865_))))
                                            (let ((__tmp255652
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244157244868_
                                                           _args244159244862_))))
                                              (declare (not safe))
                                              (_loop244155244857_
                                               _lp-tl244158244870_
                                               __tmp255652))))
                                        (let ((_args244160244873_
                                               (reverse _args244159244862_)))
                                          (let ((_L244876_ _args244160244873_)
                                                (_L244877_ _hd244150244847_)
                                                (_L244878_ _hd244141244823_)
                                                (_L244879_ _hd244132244799_)
                                                (_L244880_ _hd244123244775_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244880_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L244879_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L244878_
                                                        _self244047_)))
                                                (___kont254712254713_
                                                 _L244876_
                                                 _L244877_
                                                 _L244878_
                                                 _L244879_
                                                 _L244880_)
                                                (___kont254724254725_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244155244857_ _target244152244852_ '())))))
                     (___match254879254880_
                      (lambda (_e244115244748_
                               _hd244114244751_
                               _tl244113244753_
                               _e244118244756_
                               _hd244117244759_
                               _tl244116244761_
                               _e244121244764_
                               _hd244120244767_
                               _tl244119244769_
                               _e244124244772_
                               _hd244123244775_
                               _tl244122244777_
                               _e244127244780_
                               _hd244126244783_
                               _tl244125244785_
                               _e244130244788_
                               _hd244129244791_
                               _tl244128244793_
                               _e244133244796_
                               _hd244132244799_
                               _tl244131244801_
                               _e244136244804_
                               _hd244135244807_
                               _tl244134244809_
                               _e244139244812_
                               _hd244138244815_
                               _tl244137244817_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd244138244815_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244137244817_))
                                (let ((_e244142244820_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244137244817_))))
                                  (let ((_tl244140244825_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244142244820_)))
                                        (_hd244141244823_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244142244820_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244140244825_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244134244809_))
                                            (let ((_e244145244828_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244134244809_))))
                                              (let ((_tl244143244833_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244145244828_)))
                                                    (_hd244144244831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244145244828_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd244144244831_))
                                                    (let ((_e244148244836_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd244144244831_))))
                                                      (let ((_tl244146244841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244148244836_)))
                    (_hd244147244839_
                     (let () (declare (not safe)) (##car _e244148244836_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd244147244839_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd244147244839_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244146244841_))
                            (let ((_e244151244844_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244146244841_))))
                              (let ((_tl244149244849_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244151244844_)))
                                    (_hd244150244847_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244151244844_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244149244849_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl244143244833_))
                                        (let ((___splice254714254715_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl244143244833_
                                                  '0))))
                                          (let ((_tl244154244854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254714254715_
                                                    '1)))
                                                (_target244152244852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice254714254715_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244154244854_))
                                                (___match254921254922_
                                                 _e244115244748_
                                                 _hd244114244751_
                                                 _tl244113244753_
                                                 _e244118244756_
                                                 _hd244117244759_
                                                 _tl244116244761_
                                                 _e244121244764_
                                                 _hd244120244767_
                                                 _tl244119244769_
                                                 _e244124244772_
                                                 _hd244123244775_
                                                 _tl244122244777_
                                                 _e244127244780_
                                                 _hd244126244783_
                                                 _tl244125244785_
                                                 _e244130244788_
                                                 _hd244129244791_
                                                 _tl244128244793_
                                                 _e244133244796_
                                                 _hd244132244799_
                                                 _tl244131244801_
                                                 _e244136244804_
                                                 _hd244135244807_
                                                 _tl244134244809_
                                                 _e244139244812_
                                                 _hd244138244815_
                                                 _tl244137244817_
                                                 _e244142244820_
                                                 _hd244141244823_
                                                 _tl244140244825_
                                                 _e244145244828_
                                                 _hd244144244831_
                                                 _tl244143244833_
                                                 _e244148244836_
                                                 _hd244147244839_
                                                 _tl244146244841_
                                                 _e244151244844_
                                                 _hd244150244847_
                                                 _tl244149244849_
                                                 ___splice254714254715_
                                                 _target244152244852_
                                                 _tl244154244854_)
                                                (___kont254724254725_))))
                                        (___kont254724254725_))
                                    (___kont254724254725_))))
                            (___kont254724254725_))
                        (___kont254724254725_))
                    (___kont254724254725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254724254725_))))
                                            (___match255203255204_
                                             _e244115244748_
                                             _hd244114244751_
                                             _tl244113244753_
                                             _e244118244756_
                                             _hd244117244759_
                                             _tl244116244761_
                                             _e244121244764_
                                             _hd244120244767_
                                             _tl244119244769_
                                             _e244124244772_
                                             _hd244123244775_
                                             _tl244122244777_
                                             _e244127244780_
                                             _hd244126244783_
                                             _tl244125244785_
                                             _e244130244788_
                                             _hd244129244791_
                                             _tl244128244793_
                                             _e244133244796_
                                             _hd244132244799_
                                             _tl244131244801_
                                             _e244136244804_
                                             _hd244135244807_
                                             _tl244134244809_))
                                        (___match255203255204_
                                         _e244115244748_
                                         _hd244114244751_
                                         _tl244113244753_
                                         _e244118244756_
                                         _hd244117244759_
                                         _tl244116244761_
                                         _e244121244764_
                                         _hd244120244767_
                                         _tl244119244769_
                                         _e244124244772_
                                         _hd244123244775_
                                         _tl244122244777_
                                         _e244127244780_
                                         _hd244126244783_
                                         _tl244125244785_
                                         _e244130244788_
                                         _hd244129244791_
                                         _tl244128244793_
                                         _e244133244796_
                                         _hd244132244799_
                                         _tl244131244801_
                                         _e244136244804_
                                         _hd244135244807_
                                         _tl244134244809_))))
                                (___match255203255204_
                                 _e244115244748_
                                 _hd244114244751_
                                 _tl244113244753_
                                 _e244118244756_
                                 _hd244117244759_
                                 _tl244116244761_
                                 _e244121244764_
                                 _hd244120244767_
                                 _tl244119244769_
                                 _e244124244772_
                                 _hd244123244775_
                                 _tl244122244777_
                                 _e244127244780_
                                 _hd244126244783_
                                 _tl244125244785_
                                 _e244130244788_
                                 _hd244129244791_
                                 _tl244128244793_
                                 _e244133244796_
                                 _hd244132244799_
                                 _tl244131244801_
                                 _e244136244804_
                                 _hd244135244807_
                                 _tl244134244809_))
                            (___match254989254990_
                             _e244115244748_
                             _hd244114244751_
                             _tl244113244753_
                             _e244118244756_
                             _hd244117244759_
                             _tl244116244761_
                             _e244121244764_
                             _hd244120244767_
                             _tl244119244769_
                             _e244124244772_
                             _hd244123244775_
                             _tl244122244777_
                             _e244127244780_
                             _hd244126244783_
                             _tl244125244785_
                             _e244130244788_
                             _hd244129244791_
                             _tl244128244793_
                             _e244133244796_
                             _hd244132244799_
                             _tl244131244801_
                             _e244136244804_
                             _hd244135244807_
                             _tl244134244809_
                             _e244139244812_
                             _hd244138244815_
                             _tl244137244817_))))
                     (___match254811254812_
                      (lambda (_e244071244940_
                               _hd244070244943_
                               _tl244069244945_
                               _e244074244948_
                               _hd244073244951_
                               _tl244072244953_
                               _e244077244956_
                               _hd244076244959_
                               _tl244075244961_
                               _e244080244964_
                               _hd244079244967_
                               _tl244078244969_
                               _e244083244972_
                               _hd244082244975_
                               _tl244081244977_
                               _e244086244980_
                               _hd244085244983_
                               _tl244084244985_
                               _e244089244988_
                               _hd244088244991_
                               _tl244087244993_
                               _e244092244996_
                               _hd244091244999_
                               _tl244090245001_
                               _e244095245004_
                               _hd244094245007_
                               _tl244093245009_
                               _e244098245012_
                               _hd244097245015_
                               _tl244096245017_
                               ___splice254710254711_
                               _target244099245020_
                               _tl244101245022_)
                        (letrec ((_loop244102245025_
                                  (lambda (_hd244100245028_ _args244106245030_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244100245028_))
                                        (let ((_e244103245033_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244100245028_))))
                                          (let ((_lp-tl244105245038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244103245033_)))
                                                (_lp-hd244104245036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244103245033_))))
                                            (let ((__tmp255653
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244104245036_
                                                           _args244106245030_))))
                                              (declare (not safe))
                                              (_loop244102245025_
                                               _lp-tl244105245038_
                                               __tmp255653))))
                                        (let ((_args244107245041_
                                               (reverse _args244106245030_)))
                                          (let ((_L245044_ _args244107245041_)
                                                (_L245045_ _hd244097245015_)
                                                (_L245046_ _hd244088244991_)
                                                (_L245047_ _hd244079244967_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245047_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245046_
                                                        _self244047_)))
                                                (___kont254708254709_
                                                 _L245044_
                                                 _L245045_
                                                 _L245046_
                                                 _L245047_)
                                                (___match254999255000_
                                                 _e244071244940_
                                                 _hd244070244943_
                                                 _tl244069244945_
                                                 _e244074244948_
                                                 _hd244073244951_
                                                 _tl244072244953_
                                                 _e244077244956_
                                                 _hd244076244959_
                                                 _tl244075244961_
                                                 _e244080244964_
                                                 _hd244079244967_
                                                 _tl244078244969_
                                                 _e244083244972_
                                                 _hd244082244975_
                                                 _tl244081244977_
                                                 _e244086244980_
                                                 _hd244085244983_
                                                 _tl244084244985_
                                                 _e244089244988_
                                                 _hd244088244991_
                                                 _tl244087244993_
                                                 _e244092244996_
                                                 _hd244091244999_
                                                 _tl244090245001_
                                                 _e244095245004_
                                                 _hd244094245007_
                                                 _tl244093245009_
                                                 _e244098245012_
                                                 _hd244097245015_
                                                 _tl244096245017_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244102245025_ _target244099245020_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254706254707_))
                    (let ((_e244071244940_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254706254707_))))
                      (let ((_tl244069244945_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244071244940_)))
                            (_hd244070244943_
                             (let ()
                               (declare (not safe))
                               (##car _e244071244940_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244069244945_))
                            (let ((_e244074244948_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244069244945_))))
                              (let ((_tl244072244953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244074244948_)))
                                    (_hd244073244951_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244074244948_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244073244951_))
                                    (let ((_e244077244956_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244073244951_))))
                                      (let ((_tl244075244961_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244077244956_)))
                                            (_hd244076244959_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244077244956_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244076244959_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244076244959_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244075244961_))
                                                    (let ((_e244080244964_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244075244961_))))
                                                      (let ((_tl244078244969_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244080244964_)))
                    (_hd244079244967_
                     (let () (declare (not safe)) (##car _e244080244964_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244078244969_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244072244953_))
                        (let ((_e244083244972_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244072244953_))))
                          (let ((_tl244081244977_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244083244972_)))
                                (_hd244082244975_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244083244972_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244082244975_))
                                (let ((_e244086244980_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244082244975_))))
                                  (let ((_tl244084244985_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244086244980_)))
                                        (_hd244085244983_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244086244980_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd244085244983_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd244085244983_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244084244985_))
                                                (let ((_e244089244988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244084244985_))))
                                                  (let ((_tl244087244993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244089244988_)))
                                                        (_hd244088244991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244089244988_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244087244993_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244081244977_))
                                                            (let ((_e244092244996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244081244977_))))
                      (let ((_tl244090245001_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244092244996_)))
                            (_hd244091244999_
                             (let ()
                               (declare (not safe))
                               (##car _e244092244996_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd244091244999_))
                            (let ((_e244095245004_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd244091244999_))))
                              (let ((_tl244093245009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244095245004_)))
                                    (_hd244094245007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244095245004_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244094245007_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd244094245007_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244093245009_))
                                            (let ((_e244098245012_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244093245009_))))
                                              (let ((_tl244096245017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244098245012_)))
                                                    (_hd244097245015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244098245012_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl244096245017_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl244090245001_))
                                                        (let ((___splice254710254711_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl244090245001_ '0))))
                  (let ((_tl244101245022_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254710254711_ '1)))
                        (_target244099245020_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice254710254711_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244101245022_))
                        (___match254811254812_
                         _e244071244940_
                         _hd244070244943_
                         _tl244069244945_
                         _e244074244948_
                         _hd244073244951_
                         _tl244072244953_
                         _e244077244956_
                         _hd244076244959_
                         _tl244075244961_
                         _e244080244964_
                         _hd244079244967_
                         _tl244078244969_
                         _e244083244972_
                         _hd244082244975_
                         _tl244081244977_
                         _e244086244980_
                         _hd244085244983_
                         _tl244084244985_
                         _e244089244988_
                         _hd244088244991_
                         _tl244087244993_
                         _e244092244996_
                         _hd244091244999_
                         _tl244090245001_
                         _e244095245004_
                         _hd244094245007_
                         _tl244093245009_
                         _e244098245012_
                         _hd244097245015_
                         _tl244096245017_
                         ___splice254710254711_
                         _target244099245020_
                         _tl244101245022_)
                        (___match254999255000_
                         _e244071244940_
                         _hd244070244943_
                         _tl244069244945_
                         _e244074244948_
                         _hd244073244951_
                         _tl244072244953_
                         _e244077244956_
                         _hd244076244959_
                         _tl244075244961_
                         _e244080244964_
                         _hd244079244967_
                         _tl244078244969_
                         _e244083244972_
                         _hd244082244975_
                         _tl244081244977_
                         _e244086244980_
                         _hd244085244983_
                         _tl244084244985_
                         _e244089244988_
                         _hd244088244991_
                         _tl244087244993_
                         _e244092244996_
                         _hd244091244999_
                         _tl244090245001_
                         _e244095245004_
                         _hd244094245007_
                         _tl244093245009_
                         _e244098245012_
                         _hd244097245015_
                         _tl244096245017_))))
                (___match254999255000_
                 _e244071244940_
                 _hd244070244943_
                 _tl244069244945_
                 _e244074244948_
                 _hd244073244951_
                 _tl244072244953_
                 _e244077244956_
                 _hd244076244959_
                 _tl244075244961_
                 _e244080244964_
                 _hd244079244967_
                 _tl244078244969_
                 _e244083244972_
                 _hd244082244975_
                 _tl244081244977_
                 _e244086244980_
                 _hd244085244983_
                 _tl244084244985_
                 _e244089244988_
                 _hd244088244991_
                 _tl244087244993_
                 _e244092244996_
                 _hd244091244999_
                 _tl244090245001_
                 _e244095245004_
                 _hd244094245007_
                 _tl244093245009_
                 _e244098245012_
                 _hd244097245015_
                 _tl244096245017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match255203255204_
                                                     _e244071244940_
                                                     _hd244070244943_
                                                     _tl244069244945_
                                                     _e244074244948_
                                                     _hd244073244951_
                                                     _tl244072244953_
                                                     _e244077244956_
                                                     _hd244076244959_
                                                     _tl244075244961_
                                                     _e244080244964_
                                                     _hd244079244967_
                                                     _tl244078244969_
                                                     _e244083244972_
                                                     _hd244082244975_
                                                     _tl244081244977_
                                                     _e244086244980_
                                                     _hd244085244983_
                                                     _tl244084244985_
                                                     _e244089244988_
                                                     _hd244088244991_
                                                     _tl244087244993_
                                                     _e244092244996_
                                                     _hd244091244999_
                                                     _tl244090245001_))))
                                            (___match255203255204_
                                             _e244071244940_
                                             _hd244070244943_
                                             _tl244069244945_
                                             _e244074244948_
                                             _hd244073244951_
                                             _tl244072244953_
                                             _e244077244956_
                                             _hd244076244959_
                                             _tl244075244961_
                                             _e244080244964_
                                             _hd244079244967_
                                             _tl244078244969_
                                             _e244083244972_
                                             _hd244082244975_
                                             _tl244081244977_
                                             _e244086244980_
                                             _hd244085244983_
                                             _tl244084244985_
                                             _e244089244988_
                                             _hd244088244991_
                                             _tl244087244993_
                                             _e244092244996_
                                             _hd244091244999_
                                             _tl244090245001_))
                                        (___match254879254880_
                                         _e244071244940_
                                         _hd244070244943_
                                         _tl244069244945_
                                         _e244074244948_
                                         _hd244073244951_
                                         _tl244072244953_
                                         _e244077244956_
                                         _hd244076244959_
                                         _tl244075244961_
                                         _e244080244964_
                                         _hd244079244967_
                                         _tl244078244969_
                                         _e244083244972_
                                         _hd244082244975_
                                         _tl244081244977_
                                         _e244086244980_
                                         _hd244085244983_
                                         _tl244084244985_
                                         _e244089244988_
                                         _hd244088244991_
                                         _tl244087244993_
                                         _e244092244996_
                                         _hd244091244999_
                                         _tl244090245001_
                                         _e244095245004_
                                         _hd244094245007_
                                         _tl244093245009_))
                                    (___match255203255204_
                                     _e244071244940_
                                     _hd244070244943_
                                     _tl244069244945_
                                     _e244074244948_
                                     _hd244073244951_
                                     _tl244072244953_
                                     _e244077244956_
                                     _hd244076244959_
                                     _tl244075244961_
                                     _e244080244964_
                                     _hd244079244967_
                                     _tl244078244969_
                                     _e244083244972_
                                     _hd244082244975_
                                     _tl244081244977_
                                     _e244086244980_
                                     _hd244085244983_
                                     _tl244084244985_
                                     _e244089244988_
                                     _hd244088244991_
                                     _tl244087244993_
                                     _e244092244996_
                                     _hd244091244999_
                                     _tl244090245001_))))
                            (___match255203255204_
                             _e244071244940_
                             _hd244070244943_
                             _tl244069244945_
                             _e244074244948_
                             _hd244073244951_
                             _tl244072244953_
                             _e244077244956_
                             _hd244076244959_
                             _tl244075244961_
                             _e244080244964_
                             _hd244079244967_
                             _tl244078244969_
                             _e244083244972_
                             _hd244082244975_
                             _tl244081244977_
                             _e244086244980_
                             _hd244085244983_
                             _tl244084244985_
                             _e244089244988_
                             _hd244088244991_
                             _tl244087244993_
                             _e244092244996_
                             _hd244091244999_
                             _tl244090245001_))))
                    (___match255141255142_
                     _e244071244940_
                     _hd244070244943_
                     _tl244069244945_
                     _e244074244948_
                     _hd244073244951_
                     _tl244072244953_
                     _e244077244956_
                     _hd244076244959_
                     _tl244075244961_
                     _e244080244964_
                     _hd244079244967_
                     _tl244078244969_
                     _e244083244972_
                     _hd244082244975_
                     _tl244081244977_
                     _e244086244980_
                     _hd244085244983_
                     _tl244084244985_
                     _e244089244988_
                     _hd244088244991_
                     _tl244087244993_))
                (___kont254724254725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont254724254725_))
                                            (___kont254724254725_))
                                        (___kont254724254725_))))
                                (___kont254724254725_))))
                        (___kont254724254725_))
                    (___kont254724254725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254724254725_))
                                                (___kont254724254725_))
                                            (___kont254724254725_))))
                                    (___kont254724254725_))))
                            (___kont254724254725_))))
                    (___kont254724254725_))))))))))
