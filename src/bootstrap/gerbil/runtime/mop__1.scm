(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx8529_)
    (let* ((_g85338559_
            (lambda (_g85348555_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g85348555_)))
           (_g85328643_
            (lambda (_g85348563_)
              (if (gx#stx-pair? _g85348563_)
                  (let ((_e85418566_ (gx#syntax-e _g85348563_)))
                    (let ((_hd85408570_
                           (let () (declare (not safe)) (##car _e85418566_)))
                          (_tl85398573_
                           (let () (declare (not safe)) (##cdr _e85418566_))))
                      (if (gx#stx-pair? _tl85398573_)
                          (let ((_e85448576_ (gx#syntax-e _tl85398573_)))
                            (let ((_hd85438580_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e85448576_)))
                                  (_tl85428583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e85448576_))))
                              (if (gx#stx-pair? _tl85428583_)
                                  (let ((_e85478586_
                                         (gx#syntax-e _tl85428583_)))
                                    (let ((_hd85468590_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e85478586_)))
                                          (_tl85458593_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e85478586_))))
                                      (if (gx#stx-pair? _tl85458593_)
                                          (let ((_e85508596_
                                                 (gx#syntax-e _tl85458593_)))
                                            (let ((_hd85498600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e85508596_)))
                                                  (_tl85488603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e85508596_))))
                                              (if (gx#stx-pair? _tl85488603_)
                                                  (let ((_e85538606_
                                                         (gx#syntax-e
                                                          _tl85488603_)))
                                                    (let ((_hd85528610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e85538606_)))
                                                          (_tl85518613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e85538606_))))
                                                      (if (gx#stx-null?
                                                           _tl85518613_)
                                                          ((lambda (_L8616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8618_
                            _L8619_
                            _L8620_)
                     (let ((__tmp10261 (gx#datum->syntax '#f 'if))
                           (__tmp10215
                            (let ((__tmp10258
                                   (let ((__tmp10260
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10259
                                          (let ()
                                            (declare (not safe))
                                            (cons _L8620_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10260 __tmp10259)))
                                  (__tmp10216
                                   (let ((__tmp10221
                                          (let ((__tmp10257
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10222
                                                 (let ((__tmp10251
                                                        (let ((__tmp10256
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10252
                                                               (let ((__tmp10253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10255
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10254
                                     (let ()
                                       (declare (not safe))
                                       (cons _L8620_ '()))))
                                (declare (not safe))
                                (cons __tmp10255 __tmp10254))))
                         (declare (not safe))
                         (cons __tmp10253 '()))))
                  (declare (not safe))
                  (cons __tmp10256 __tmp10252)))
               (__tmp10223
                (let ((__tmp10224
                       (let ((__tmp10250 (gx#datum->syntax '#f 'cond))
                             (__tmp10225
                              (let ((__tmp10233
                                     (let ((__tmp10237
                                            (let ((__tmp10249
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10238
                                                   (let ((__tmp10245
                                                          (let ((__tmp10248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10246
                         (let ((__tmp10247 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10247 '()))))
                    (declare (not safe))
                    (cons __tmp10248 __tmp10246)))
                 (__tmp10239
                  (let ((__tmp10240
                         (let ((__tmp10244
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp10241
                                (let ((__tmp10243
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10242
                                       (let ()
                                         (declare (not safe))
                                         (cons _L8619_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10243 __tmp10242))))
                           (declare (not safe))
                           (cons __tmp10244 __tmp10241))))
                    (declare (not safe))
                    (cons __tmp10240 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10245
                                                           __tmp10239))))
                                              (declare (not safe))
                                              (cons __tmp10249 __tmp10238)))
                                           (__tmp10234
                                            (let ((__tmp10236
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10235
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L8618_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10236 __tmp10235))))
                                       (declare (not safe))
                                       (cons __tmp10237 __tmp10234)))
                                    (__tmp10226
                                     (let ((__tmp10227
                                            (let ((__tmp10232
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10228
                                                   (let ((__tmp10229
                                                          (let ((__tmp10230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10231
                                (let ()
                                  (declare (not safe))
                                  (cons _L8619_ '()))))
                           (declare (not safe))
                           (cons _L8620_ __tmp10231))))
                    (declare (not safe))
                    (cons _L8616_ __tmp10230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10229 '()))))
                                              (declare (not safe))
                                              (cons __tmp10232 __tmp10228))))
                                       (declare (not safe))
                                       (cons __tmp10227 '()))))
                                (declare (not safe))
                                (cons __tmp10233 __tmp10226))))
                         (declare (not safe))
                         (cons __tmp10250 __tmp10225))))
                  (declare (not safe))
                  (cons __tmp10224 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10251
                                                         __tmp10223))))
                                            (declare (not safe))
                                            (cons __tmp10257 __tmp10222)))
                                         (__tmp10217
                                          (let ((__tmp10218
                                                 (let ((__tmp10219
                                                        (let ((__tmp10220
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L8619_ '()))))
                  (declare (not safe))
                  (cons _L8620_ __tmp10220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L8616_ __tmp10219))))
                                            (declare (not safe))
                                            (cons __tmp10218 '()))))
                                     (declare (not safe))
                                     (cons __tmp10221 __tmp10217))))
                              (declare (not safe))
                              (cons __tmp10258 __tmp10216))))
                       (declare (not safe))
                       (cons __tmp10261 __tmp10215)))
                   _hd85528610_
                   _hd85498600_
                   _hd85468590_
                   _hd85438580_)
                  (_g85338559_ _g85348563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85338559_ _g85348563_))))
                                          (_g85338559_ _g85348563_))))
                                  (_g85338559_ _g85348563_))))
                          (_g85338559_ _g85348563_))))
                  (_g85338559_ _g85348563_)))))
      (_g85328643_ _$stx8529_))))
